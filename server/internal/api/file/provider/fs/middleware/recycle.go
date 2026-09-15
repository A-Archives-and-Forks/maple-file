package middleware

import (
	"context"
	"fmt"
	"io/fs"
	stdpath "path"
	"time"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/maple-file/server/internal/platform/utils/pathutil"
)

const recycleName = ".maplerecycle"

type RecycleOption struct {
	Path string `json:"path" validate:"omitempty,startswith=/"`
}

func (opt *RecycleOption) NewFS(fs cloudfs.FS) (cloudfs.FS, error) {
	return newRecycleFS(fs, opt)
}

type recycleFS struct {
	cloudfs.FS
	opt *RecycleOption
}

func recycleWrap(opt *RecycleOption) cloudfs.WrapFunc {
	return func(fs cloudfs.FS) (cloudfs.FS, error) {
		if opt.Path == "" {
			opt.Path = "/" + recycleName
		}
		return &recycleFS{FS: fs, opt: opt}, nil
	}
}

func (d *recycleFS) List(ctx context.Context, path string) ([]cloudfs.FileInfo, error) {
	if path == d.opt.Path {
		_, err := d.FS.Stat(ctx, path)
		if err != nil {
			err = d.FS.MakeDir(ctx, path)
		}
		if err != nil {
			return nil, err
		}
	}
	files, err := d.FS.List(ctx, path)
	if err != nil {
		return nil, err
	}

	if path == stdpath.Dir(d.opt.Path) {
		exists := false
		for i, file := range files {
			if file.IsDir() && file.Name() == stdpath.Base(d.opt.Path) {
				files[i] = cloudfs.NewFileInfo(file, func(info *cloudfs.Entry) {
					info.Type = "RECYCLE"
				})
				exists = true
				break
			}
		}
		if !exists {
			files = append(files, newDir(path, stdpath.Base(d.opt.Path), func(entry *cloudfs.Entry) {
				entry.Type = "RECYCLE"
				entry.Mode = fs.ModeDir
			}))
		}
	}
	return files, nil
}

func (d *recycleFS) Remove(ctx context.Context, path string) error {
	if pathutil.IsSubPath(d.opt.Path, path) {
		return d.FS.Remove(ctx, path)
	}
	newName := fmt.Sprintf("%s.%s", stdpath.Base(path), time.Now().Format("20060102150405"))
	if err := d.FS.Rename(ctx, path, newName); err != nil {
		return err
	}
	return d.FS.Move(ctx, stdpath.Join(stdpath.Dir(path), newName), d.opt.Path)
}

func newDir(path, name string, opts ...func(*cloudfs.Entry)) cloudfs.FileInfo {
	entry := &cloudfs.Entry{
		Path:  path,
		Name:  name,
		Mode:  fs.ModeDir,
		IsDir: true,
	}
	for _, opt := range opts {
		opt(entry)
	}
	return entry.FileInfo()
}

func newRecycleFS(fs cloudfs.FS, opt *RecycleOption) (cloudfs.FS, error) {
	return &recycleFS{FS: fs, opt: opt}, nil
}
