package bootstrap

import (
	"fmt"
	"path/filepath"

	"github.com/samber/do/v2"

	"github.com/honmaple/maple-file/server/internal/api"
	"github.com/honmaple/maple-file/server/internal/app"
	"github.com/honmaple/maple-file/server/internal/platform/config"
	"github.com/honmaple/maple-file/server/internal/platform/database"
	"github.com/honmaple/maple-file/server/internal/platform/logger"
)

func NewInjector(cfg *config.Config) do.Injector {
	injector := do.New()

	do.ProvideValue(injector, cfg)

	do.Provide(injector, func(i do.Injector) (*logger.Logger, error) {
		cfg, err := do.Invoke[*config.Config](i)
		if err != nil {
			return nil, err
		}
		root := cfg.GetString(app.ApplicationPath)
		return logger.New(&logger.Config{
			File:      filepath.Join(root, "server.log"),
			Output:    "stdout|file",
			Timestamp: true,
		}), nil
	})

	do.Provide(injector, func(i do.Injector) (*database.DB, error) {
		cfg, err := do.Invoke[*config.Config](i)
		if err != nil {
			return nil, err
		}
		root := cfg.GetString(app.ApplicationPath)
		return database.New(&database.Config{
			DSN:  fmt.Sprintf("sqlite://%s", filepath.Join(root, "server.db")),
			Echo: false,
		})
	})

	do.Provide(injector, func(i do.Injector) (*app.Context, error) {
		cfg, err := do.Invoke[*config.Config](i)
		if err != nil {
			return nil, err
		}
		log, err := do.Invoke[*logger.Logger](i)
		if err != nil {
			return nil, err
		}
		db, err := do.Invoke[*database.DB](i)
		if err != nil {
			return nil, err
		}
		return app.NewContext(cfg, log, db)
	})

	do.Provide(injector, func(i do.Injector) (*Server, error) {
		ctx, err := do.Invoke[*app.Context](i)
		if err != nil {
			return nil, err
		}
		services, err := do.Invoke[api.Services](i)
		if err != nil {
			return nil, err
		}
		return NewServer(ctx, services...)
	})

	api.Provide(injector)
	return injector
}
