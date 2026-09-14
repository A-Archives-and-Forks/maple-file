package driver

import (
	"io/fs"

	"github.com/honmaple/cloudfs"
)

func NewDir(path, name string, opts ...func(*cloudfs.Entry)) cloudfs.FileInfo {
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

func NewFile(path string, info fs.FileInfo, opts ...func(*cloudfs.Entry)) cloudfs.FileInfo {
	return cloudfs.NewFileInfo(info, append([]func(*cloudfs.Entry){
		func(entry *cloudfs.Entry) {
			entry.Path = path
		},
	}, opts...)...)
}
