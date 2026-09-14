package service

import (
	"context"
	"crypto/md5"
	"errors"
	"fmt"
	"os"
	stdpath "path"
	"path/filepath"
	"strings"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/maple-file/server/internal/api/file/provider/fs"
	"github.com/honmaple/maple-file/server/internal/app"
)

func (srv *serviceImpl) thumbHash(path string) string {
	hash := md5.Sum([]byte(path))
	return fmt.Sprintf("%x", hash)
}

func (srv *serviceImpl) thumbPath() string {
	return filepath.Join(srv.ctx.Config.GetString(app.ApplicationPath), "thumbnail")
}

func (srv *serviceImpl) thumbFile(ctx context.Context, path string, info cloudfs.FileInfo) (string, error) {
	if info.IsDir() {
		return "", errors.New("can't generate thumb for dir")
	}
	if !strings.HasPrefix(info.Type(), "image/") {
		return "", errors.New("can't generate thumb for not image")
	}

	thumbPath := filepath.Join(srv.thumbPath(), "thumb_"+srv.thumbHash(path)+stdpath.Ext(path))

	// 重新生成缩略图
	regenerate := false

	stat, err := os.Stat(thumbPath)
	if err != nil {
		if !os.IsNotExist(err) {
			return "", err
		}
		regenerate = true
	} else if stat.ModTime().Compare(info.ModTime()) != 0 {
		regenerate = true
	}

	if regenerate {
		setting := srv.getFileSetting(ctx)
		task := srv.fs.SubmitTask(&fs.ThumbTaskOption{
			Path:          path,
			ThumbFilePath: thumbPath,
			Width:         setting.Thumb.Width,
			Height:        setting.Thumb.Height,
			Quality:       setting.Thumb.Quality,
		})
		<-task.Done()

		if err := task.Err(); err != nil {
			return "", err
		}
	}
	return thumbPath, nil
}

func (srv *serviceImpl) cleanThumbFile() {
	ctx := context.TODO()
	setting := srv.getFileSetting(ctx)

	if setting.Thumb.AutoClean {
		srv.ctx.Runner.SubmitByOption(&fs.ThumbCleanTaskOption{
			ThumbPath:  srv.thumbPath(),
			ExpireTime: 24 * 30,
		})
	}
}
