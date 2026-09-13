package service

import (
	"context"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/setting"
)

func (srv *serviceImpl) GetSetting(ctx context.Context, req *pb.GetSettingRequest) (*pb.GetSettingResponse, error) {
	result, err := srv.repo.GetSetting(ctx, req.GetKey())
	if err != nil {
		return nil, err
	}
	return &pb.GetSettingResponse{Result: result}, nil
}

func (srv *serviceImpl) UpdateSetting(ctx context.Context, req *pb.UpdateSettingRequest) (*pb.UpdateSettingResponse, error) {
	result, err := srv.repo.UpdateSetting(ctx, &pb.Setting{Key: req.GetKey(), Value: req.GetValue()})
	if err != nil {
		return nil, err
	}
	return &pb.UpdateSettingResponse{Result: result}, nil
}

func (srv *serviceImpl) ResetSetting(context.Context, *pb.ResetSettingRequest) (*pb.ResetSettingResponse, error) {
	return &pb.ResetSettingResponse{}, nil
}
