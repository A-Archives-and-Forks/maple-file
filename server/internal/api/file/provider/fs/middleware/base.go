package middleware

import (
	"encoding/json"
	stdpath "path"
	"strings"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/cloudfs/middleware"
	"github.com/honmaple/maple-file/server/internal/platform/utils/pathutil"
	"github.com/honmaple/maple-file/server/internal/platform/utils/structutil"
)

type Option struct {
	RootPath        string                     `json:"root_path" validate:"omitempty,startswith=/"`
	HiddenFiles     []string                   `json:"hidden_files"`
	Encrypt         bool                       `json:"encrypt"`
	EncryptOption   middleware.EncryptOption   `json:"encrypt_option"`
	Compress        bool                       `json:"compress"`
	CompressOption  middleware.CompressOption  `json:"compress_option"`
	Recycle         bool                       `json:"recycle"`
	RecycleOption   RecycleOption              `json:"recycle_option"`
	Cache           bool                       `json:"cache"`
	CacheOption     middleware.CacheOption     `json:"cache_option"`
	RateLimit       bool                       `json:"rate_limit"`
	RateLimitOption middleware.RateLimitOption `json:"rate_limit_option"`
}

func (opt *Option) isHidden(file cloudfs.FileInfo, types []string) bool {
	if len(types) == 0 {
		return false
	}
	ext := stdpath.Ext(file.Name())
	for _, typ := range types {
		exclude := false
		if strings.HasPrefix(typ, "-") {
			typ = typ[1:]
			exclude = true
		}
		if ext == typ {
			return !exclude
		}

		name := file.Name()
		if strings.Contains(typ, "/") {
			name = strings.TrimPrefix(stdpath.Join(file.Path(), name), "/")
		}
		if m, _ := stdpath.Match(typ, name); m {
			return !exclude
		}
	}
	return false
}

func (opt *Option) getActualPath(path string) string {
	path = pathutil.CleanPath(path)
	if opt.RootPath == "" {
		return path
	}
	return stdpath.Join(opt.RootPath, path)
}

func (opt *Option) getActualFile(file cloudfs.FileInfo) (cloudfs.FileInfo, bool) {
	if opt.RootPath != "" {
		file = cloudfs.NewFileInfo(file, func(info *cloudfs.Entry) {
			info.Path = strings.TrimPrefix(file.Path(), opt.RootPath)
		})
	}
	if len(opt.HiddenFiles) > 0 && opt.isHidden(file, opt.HiddenFiles) {
		return file, false
	}
	return file, true
}

func (opt *Option) NewFS(fs cloudfs.FS) (cloudfs.FS, error) {
	wraps, err := newWrapFuncs(opt)
	if err != nil {
		return nil, err
	}
	return cloudfs.New(fs, wraps...)
}

func newWrapFuncs(opt *Option) ([]cloudfs.WrapFunc, error) {
	if err := structutil.VerifyOption(opt); err != nil {
		return nil, err
	}

	wraps := make([]cloudfs.WrapFunc, 0)
	if opt.Encrypt {
		wraps = append(wraps, middleware.EncryptFS(&opt.EncryptOption))
	}
	if opt.Compress {
		wraps = append(wraps, middleware.CompressFS(&opt.CompressOption))
	}
	if opt.Recycle {
		wraps = append(wraps, RecycleFS(&opt.RecycleOption))
	}
	if opt.RateLimit {
		wraps = append(wraps, middleware.RateLimitFS(&opt.RateLimitOption))
	}
	if opt.Cache {
		wraps = append(wraps, middleware.CacheFS(&opt.CacheOption))
	}
	wraps = append(wraps, middleware.PredicateFS(&middleware.PredicateOption{
		PathFn: opt.getActualPath,
		FileFn: opt.getActualFile,
	}))
	return wraps, nil
}

func VerifyOptionJSON(option string) error {
	var opt Option
	if err := json.Unmarshal([]byte(option), &opt); err != nil {
		return err
	}
	return structutil.VerifyOption(&opt)
}

func NewFromOptionJSON(option string) ([]cloudfs.WrapFunc, error) {
	var opt Option
	if option == "" {
		return newWrapFuncs(&opt)
	}
	if err := json.Unmarshal([]byte(option), &opt); err != nil {
		return nil, err
	}
	return newWrapFuncs(&opt)
}
