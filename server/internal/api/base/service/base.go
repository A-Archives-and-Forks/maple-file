package service

import (
	"context"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"github.com/honmaple/maple-file/server/internal/api/base/repository"
	"github.com/honmaple/maple-file/server/internal/api/base/types"
	"github.com/honmaple/maple-file/server/internal/api/shared"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/base"
	"google.golang.org/grpc"
)

type (
	Service interface {
		shared.Service
		pb.TaskServiceServer
		pb.SettingServiceServer
		pb.SystemServiceServer
	}
	serviceImpl struct {
		shared.ServiceImpl
		pb.UnimplementedSettingServiceServer
		pb.UnimplementedSystemServiceServer
		pb.UnimplementedTaskServiceServer
		ctx  *types.Context
		repo repository.Repository
	}
)

func (srv *serviceImpl) Register(server *grpc.Server) {
	pb.RegisterTaskServiceServer(server, srv)
	pb.RegisterSettingServiceServer(server, srv)
	pb.RegisterSystemServiceServer(server, srv)
}

func (srv *serviceImpl) RegisterGateway(ctx context.Context, mux *runtime.ServeMux) {
	pb.RegisterTaskServiceHandlerServer(ctx, mux, srv)
	pb.RegisterSettingServiceHandlerServer(ctx, mux, srv)
	pb.RegisterSystemServiceHandlerServer(ctx, mux, srv)
}

func New(ctx *types.Context, repo repository.Repository) (Service, error) {
	if err := ctx.DB.AutoMigrate(new(pb.Setting), new(pb.PersistTask)); err != nil {
		return nil, err
	}
	return &serviceImpl{ctx: ctx, repo: repo}, nil
}
