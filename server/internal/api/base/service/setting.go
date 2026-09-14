package service

import (
	"context"

	pb "github.com/honmaple/maple-file/server/internal/proto/api/base"
)

func (srv *serviceImpl) GetSetting(ctx context.Context, req *pb.Setting_GetRequest) (*pb.Setting_GetResponse, error) {
	result, err := srv.repo.GetSetting(ctx, req.GetKey())
	if err != nil {
		return nil, err
	}
	return &pb.Setting_GetResponse{Result: result}, nil
}

func (srv *serviceImpl) UpdateSetting(ctx context.Context, req *pb.Setting_UpdateRequest) (*pb.Setting_UpdateResponse, error) {
	result, err := srv.repo.UpdateSetting(ctx, &pb.Setting{Key: req.GetKey(), Value: req.GetValue()})
	if err != nil {
		return nil, err
	}
	return &pb.Setting_UpdateResponse{Result: result}, nil
}

func (srv *serviceImpl) ResetSetting(context.Context, *pb.Setting_ResetRequest) (*pb.Setting_ResetResponse, error) {
	return &pb.Setting_ResetResponse{}, nil
}
