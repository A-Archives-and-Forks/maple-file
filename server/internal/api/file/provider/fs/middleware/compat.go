package middleware

import (
	"encoding/json"
	stdpath "path"
	"strings"

	"github.com/honmaple/cloudfs"
	cloudmiddleware "github.com/honmaple/cloudfs/middleware"
	"github.com/honmaple/maple-file/server/internal/platform/utils/pathutil"
	"github.com/honmaple/maple-file/server/internal/platform/utils/structutil"
)

type CommonOption struct {
	RootPath        string                          `json:"root_path" validate:"omitempty,startswith=/"`
	HiddenFiles     []string                        `json:"hidden_files"`
	Encrypt         bool                            `json:"encrypt"`
	EncryptOption   cloudmiddleware.EncryptOption   `json:"encrypt_option"`
	Compress        bool                            `json:"compress"`
	CompressOption  cloudmiddleware.CompressOption  `json:"compress_option"`
	Recycle         bool                            `json:"recycle"`
	RecycleOption   RecycleOption                   `json:"recycle_option"`
	Cache           bool                            `json:"cache"`
	CacheOption     cloudmiddleware.CacheOption     `json:"cache_option"`
	RateLimit       bool                            `json:"rate_limit"`
	RateLimitOption cloudmiddleware.RateLimitOption `json:"rate_limit_option"`
}

func VerifyOptionJSON(option string) error {
	var opt CommonOption
	if err := json.Unmarshal([]byte(option), &opt); err != nil {
		return err
	}
	return structutil.VerifyOption(&opt)
}

func WrapFuncsFromJSON(option string) ([]cloudfs.WrapFunc, error) {
	var opt CommonOption
	if option == "" {
		return NewCommonWraps(&opt)
	}
	if err := json.Unmarshal([]byte(option), &opt); err != nil {
		return nil, err
	}
	return NewCommonWraps(&opt)
}

func NewCommonWraps(opt *CommonOption) ([]cloudfs.WrapFunc, error) {
	if err := structutil.VerifyOption(opt); err != nil {
		return nil, err
	}

	wraps := make([]cloudfs.WrapFunc, 0)
	if opt.Encrypt {
		wraps = append(wraps, cloudmiddleware.EncryptFS(&opt.EncryptOption))
	}
	if opt.Compress {
		wraps = append(wraps, cloudmiddleware.CompressFS(&opt.CompressOption))
	}
	if opt.Recycle {
		wraps = append(wraps, recycleWrap(&opt.RecycleOption))
	}
	if opt.RateLimit {
		wraps = append(wraps, cloudmiddleware.RateLimitFS(&opt.RateLimitOption))
	}
	if opt.Cache {
		wraps = append(wraps, cloudmiddleware.CacheFS(&opt.CacheOption))
	}

	if opt.RootPath != "" || len(opt.HiddenFiles) > 0 {
		wraps = append(wraps, cloudmiddleware.PredicateFS(&cloudmiddleware.PredicateOption{
			PathFn: func(path string) string {
				path = pathutil.CleanPath(path)
				if opt.RootPath == "" {
					return path
				}
				return stdpath.Join(opt.RootPath, path)
			},
			FileFn: func(file cloudfs.FileInfo) (cloudfs.FileInfo, bool) {
				if opt.RootPath != "" {
					file = cloudfs.NewFileInfo(file, func(info *cloudfs.Entry) {
						info.Path = strings.TrimPrefix(file.Path(), opt.RootPath)
					})
				}
				if len(opt.HiddenFiles) > 0 && included(file, opt.HiddenFiles) {
					return file, false
				}
				return file, true
			},
		}))
	}

	return wraps, nil
}

func included(file cloudfs.FileInfo, types []string) bool {
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
