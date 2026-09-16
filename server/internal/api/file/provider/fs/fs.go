package fs

import (
	"context"
	"os"
	stdpath "path"
	"strings"
	"time"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/maple-file/server/internal/api/file/types"
	"github.com/honmaple/maple-file/server/internal/platform/runner"
	"github.com/honmaple/maple-file/server/internal/platform/utils/pathutil"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/file"
)

type (
	FS interface {
		cloudfs.FS
		GetFS(string) (cloudfs.FS, string, error)
		SubmitTask(Task) runner.Task
	}
	Task interface {
		String() string
		Execute(runner.Task, FS) error
	}
)

type defaultFS struct {
	ctx      *types.Context
	resolver RepoResolver
}

var _ FS = (*defaultFS)(nil)

func (d *defaultFS) List(ctx context.Context, rawPath string) ([]cloudfs.FileInfo, error) {
	path, query := cloudfs.ParsePath(rawPath)

	results := make([]cloudfs.FileInfo, 0)
	repoMap := make(map[string]bool)
	if path != "/" && d.resolver.Get(path) != nil {
		fs, realPath, err := d.GetFS(path)
		if err != nil {
			return nil, err
		}
		files, err := fs.List(ctx, cloudfs.PathWithQuery(realPath, query))
		if err != nil {
			return nil, err
		}
		root := strings.TrimSuffix(path, realPath)
		for _, file := range files {
			if file.IsDir() {
				repoMap[file.Name()] = true
			}
			results = append(results, NewFile(stdpath.Join(root, file.Path()), file))
		}
	}

	d.resolver.Range(func(repo *pb.Repo) bool {
		if !repo.GetStatus() {
			return true
		}
		if path == repo.GetPath() {
			if name := repo.GetName(); !repoMap[name] {
				results = append(results, NewDir(path, name, func(entry *cloudfs.Entry) {
					entry.ModTime = repo.GetUpdatedAt().AsTime()
				}))
				repoMap[name] = true
			}
		} else if pathutil.IsSubPath(path, repo.GetPath()) {
			relPath := strings.TrimPrefix(repo.GetPath(), strings.TrimSuffix(path, "/")+"/")
			if root := strings.SplitN(relPath, "/", 2); len(root) > 0 && !repoMap[root[0]] {
				results = append(results, NewDir(path, root[0], func(entry *cloudfs.Entry) {
					entry.ModTime = repo.GetUpdatedAt().AsTime()
				}))
				repoMap[root[0]] = true
			}
		}
		return true
	})
	return results, nil
}

func (d *defaultFS) Stat(ctx context.Context, path string) (cloudfs.FileInfo, error) {
	if path == "/" {
		return NewDir("/", "/", func(entry *cloudfs.Entry) {
			entry.ModTime = time.Now()
		}), nil
	}

	repo := d.resolver.Get(path)
	if repo == nil {
		var result cloudfs.FileInfo
		d.resolver.Range(func(repo *pb.Repo) bool {
			if repo.GetStatus() && pathutil.IsSubPath(path, repo.GetPath()) {
				result = NewDir(stdpath.Dir(path), stdpath.Base(path), func(entry *cloudfs.Entry) {
					entry.ModTime = repo.GetUpdatedAt().AsTime()
				})
				return false
			}
			return true
		})
		if result != nil {
			return result, nil
		}
		return nil, os.ErrNotExist
	}
	if path == stdpath.Join(repo.GetPath(), repo.GetName()) {
		return NewDir(repo.GetPath(), repo.GetName(), func(entry *cloudfs.Entry) {
			entry.ModTime = repo.GetUpdatedAt().AsTime()
		}), nil
	}

	fs, realPath, err := d.GetFS(path)
	if err != nil {
		return nil, err
	}
	file, err := fs.Stat(ctx, realPath)
	if err != nil {
		return nil, err
	}
	return NewFile(stdpath.Join(strings.TrimSuffix(path, realPath), file.Path()), file), nil
}

func (d *defaultFS) Open(ctx context.Context, path string) (cloudfs.File, error) {
	fs, realPath, err := d.GetFS(path)
	if err != nil {
		return nil, err
	}
	return fs.Open(ctx, realPath)
}

func (d *defaultFS) Create(ctx context.Context, path string) (cloudfs.FileWriter, error) {
	fs, realPath, err := d.GetFS(path)
	if err != nil {
		return nil, err
	}
	return fs.Create(ctx, realPath)
}

func (d *defaultFS) Copy(ctx context.Context, src, dst string) error {
	srcFS, srcPath, err := d.GetFS(src)
	if err != nil {
		return err
	}
	_, dstPath, err := d.GetFS(dst)
	if err != nil {
		return err
	}
	if strings.TrimSuffix(src, srcPath) != strings.TrimSuffix(dst, dstPath) {
		return cloudfs.ErrNotSupport
	}
	return srcFS.Copy(ctx, srcPath, dstPath)
}

func (d *defaultFS) Move(ctx context.Context, src, dst string) error {
	srcFS, srcPath, err := d.GetFS(src)
	if err != nil {
		return err
	}
	_, dstPath, err := d.GetFS(dst)
	if err != nil {
		return err
	}
	if strings.TrimSuffix(src, srcPath) != strings.TrimSuffix(dst, dstPath) {
		return cloudfs.ErrNotSupport
	}
	return srcFS.Move(ctx, srcPath, dstPath)
}

func (d *defaultFS) Rename(ctx context.Context, path, newName string) error {
	fs, realPath, err := d.GetFS(path)
	if err != nil {
		return err
	}
	return fs.Rename(ctx, realPath, newName)
}

func (d *defaultFS) Remove(ctx context.Context, path string) error {
	fs, realPath, err := d.GetFS(path)
	if err != nil {
		return err
	}
	return fs.Remove(ctx, realPath)
}

func (d *defaultFS) MakeDir(ctx context.Context, path string) error {
	fs, realPath, err := d.GetFS(path)
	if err != nil {
		return err
	}
	return fs.MakeDir(ctx, realPath)
}

func (d *defaultFS) Close() error {
	return nil
}

func (d *defaultFS) GetFS(path string) (cloudfs.FS, string, error) {
	return d.resolver.Resolve(path)
}

func (d *defaultFS) SubmitTask(task Task) runner.Task {
	return d.ctx.Runner.SubmitByOption(runner.NewFuncOptionWithArg[FS](task, d))
}

func New(ctx *types.Context, resolver RepoResolver) FS {
	return &defaultFS{ctx: ctx, resolver: resolver}
}
