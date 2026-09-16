package app

import (
	"github.com/honmaple/maple-file/server/internal/platform/config"
)

const (
	ApplicationPath = "app.path"
	ServerAddr      = "server.addr"
	ServerMode      = "server.mode"
	ServerSecretKey = "server.secret_key"
)

func NewConfig() *config.Config {
	return config.New(config.WithMap(map[string]any{
		ServerAddr: "unix://server.sock",
	}))
}
