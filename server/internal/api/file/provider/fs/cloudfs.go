package fs

import (
	"io/fs"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/cloudfs/driver"
	"github.com/honmaple/maple-file/server/internal/api/file/provider/fs/middleware"
)

func normalizeDriverName(name string) string {
	switch name {
	case "alist":
		return "openlist"
	case "githubRelease":
		return "github-release"
	default:
		return name
	}
}

func Verify(name string, option string) error {
	if err := driver.VerifyOption(normalizeDriverName(name), option); err != nil {
		return err
	}
	return middleware.VerifyOptionJSON(option)
}

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

func NewCloudFS(name, option string) (cloudfs.FS, error) {
	wraps, err := middleware.NewFromOptionJSON(option)
	if err != nil {
		return nil, err
	}

	raw, err := driver.NewFromString(normalizeDriverName(name), option)
	if err != nil {
		return nil, err
	}
	return cloudfs.New(raw, wraps...)
}
