package file

import (
	_ "github.com/honmaple/cloudfs/driver/all"
	"github.com/honmaple/maple-file/server/internal/api/base"
	"github.com/honmaple/maple-file/server/internal/api/file/repository"
	"github.com/honmaple/maple-file/server/internal/api/file/service"
	"github.com/honmaple/maple-file/server/internal/api/file/types"
	"github.com/honmaple/maple-file/server/internal/app"
	"github.com/honmaple/maple-file/server/internal/platform/runner"
	"github.com/samber/do/v2"
)

type Context = types.Context
type Service = service.Service
type Repository = repository.Repository

func Provide(i do.Injector) {
	do.Provide(i, func(i do.Injector) (*Context, error) {
		appContext, err := do.Invoke[*app.Context](i)
		if err != nil {
			return nil, err
		}
		taskRunner, err := do.Invoke[runner.Runner](i)
		if err != nil {
			return nil, err
		}
		return types.NewContext(appContext, taskRunner), nil
	})
	do.Provide(i, func(i do.Injector) (Repository, error) {
		ctx, err := do.Invoke[*Context](i)
		if err != nil {
			return nil, err
		}
		return repository.New(ctx), nil
	})
	do.Provide(i, func(i do.Injector) (Service, error) {
		ctx, err := do.Invoke[*Context](i)
		if err != nil {
			return nil, err
		}
		repository, err := do.Invoke[Repository](i)
		if err != nil {
			return nil, err
		}
		settings, err := do.Invoke[base.Repository](i)
		if err != nil {
			return nil, err
		}
		return service.New(ctx, repository, settings)
	})
}
