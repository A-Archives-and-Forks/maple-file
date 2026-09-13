package shared

import (
	"context"

	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"github.com/labstack/echo/v4"
	"google.golang.org/grpc"
)

type Service interface {
	Register(*grpc.Server)
	RegisterHTTP(*echo.Echo)
	RegisterGateway(context.Context, *runtime.ServeMux)
	Close() error
}

type Services []Service

func (services Services) Register(server *grpc.Server) {
	for _, service := range services {
		service.Register(server)
	}
}
func (services Services) RegisterGateway(ctx context.Context, mux *runtime.ServeMux) {
	for _, service := range services {
		service.RegisterGateway(ctx, mux)
	}
}
func (services Services) RegisterHTTP(e *echo.Echo) {
	for _, service := range services {
		service.RegisterHTTP(e)
	}
}
func (services Services) Close() error {
	for _, service := range services {
		if err := service.Close(); err != nil {
			return err
		}
	}
	return nil
}

type ServiceImpl struct{}

func (ServiceImpl) Register(*grpc.Server)                              {}
func (ServiceImpl) RegisterHTTP(*echo.Echo)                            {}
func (ServiceImpl) RegisterGateway(context.Context, *runtime.ServeMux) {}
func (ServiceImpl) Close() error                                       { return nil }
