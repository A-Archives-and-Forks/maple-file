package bootstrap

import (
	"errors"
	"net/http"
	"strings"

	"github.com/rs/xid"
	"github.com/samber/do/v2"
	"github.com/spf13/viper"

	"github.com/honmaple/maple-file/server/internal/app"
)

var (
	_server *Server
	_result string
)

func Start(rawConfig string) (string, error) {
	if _server != nil {
		return _result, nil
	}
	parsed := viper.New()
	parsed.SetConfigType("json")
	if err := parsed.ReadConfig(strings.NewReader(rawConfig)); err != nil {
		return "", err
	}
	path := parsed.GetString("path")
	if path == "" {
		return "", errors.New("app path is required")
	}

	cfg := app.NewConfig()
	cfg.Set(app.ServerAddr, "tcp://127.0.0.1:0")
	cfg.Set(app.ServerSecretKey, xid.New().String())
	cfg.Set(app.ApplicationPath, path)

	injector := NewInjector(cfg)

	var err error
	_server, err = do.Invoke[*Server](injector)
	if err != nil {
		return "", err
	}
	_result, err = _server.Result()
	if err != nil {
		return "", err
	}
	go func() {
		if err := _server.Start(); err != nil && err != http.ErrServerClosed {
			panic(err)
		}
	}()
	return _result, nil
}

func Stop() {
	if _server != nil {
		_ = _server.Shutdown()
	}
	_server, _result = nil, ""
}
