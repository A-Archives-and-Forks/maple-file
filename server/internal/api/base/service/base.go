package service

import (
	"context"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"github.com/honmaple/maple-file/server/internal/api/base/repository"
	"github.com/honmaple/maple-file/server/internal/api/base/types"
	"github.com/honmaple/maple-file/server/internal/api/shared"
	settingpb "github.com/honmaple/maple-file/server/internal/proto/api/setting"
	taskpb "github.com/honmaple/maple-file/server/internal/proto/api/task"
	"google.golang.org/grpc"
)

type (
	Service interface {
		shared.Service
		taskpb.TaskServiceServer
		settingpb.SystemServiceServer
	}
	serviceImpl struct {
		shared.ServiceImpl
		settingpb.UnimplementedSystemServiceServer
		taskpb.UnimplementedTaskServiceServer
		ctx  *types.Context
		repo repository.Repository
	}
)

func (srv *serviceImpl) Register(server *grpc.Server) {
	taskpb.RegisterTaskServiceServer(server, srv)
	settingpb.RegisterSystemServiceServer(server, srv)
}

func (srv *serviceImpl) RegisterGateway(ctx context.Context, mux *runtime.ServeMux) {
	taskpb.RegisterTaskServiceHandlerServer(ctx, mux, srv)
	settingpb.RegisterSystemServiceHandlerServer(ctx, mux, srv)
}

func New(ctx *types.Context, repo repository.Repository) (Service, error) {
	if err := ctx.DB.AutoMigrate(new(settingpb.Setting), new(taskpb.PersistTask)); err != nil {
		return nil, err
	}
	return &serviceImpl{ctx: ctx, repo: repo}, nil
}
