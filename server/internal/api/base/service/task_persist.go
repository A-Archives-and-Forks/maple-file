package service

import (
	"context"
	"errors"
	"github.com/honmaple/maple-file/server/internal/platform/runner"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/base"
)

func (srv *serviceImpl) ListPersistTasks(ctx context.Context, _ *pb.PersistTask_ListRequest) (*pb.PersistTask_ListResponse, error) {
	results, err := srv.repo.ListPersistTasks(ctx)
	if err != nil {
		return nil, err
	}
	return &pb.PersistTask_ListResponse{Results: results}, nil
}

func (srv *serviceImpl) CreatePersistTask(ctx context.Context, req *pb.PersistTask_CreateRequest) (*pb.PersistTask_CreateResponse, error) {
	result, err := srv.repo.CreatePersistTask(ctx, req.GetPayload())
	if err != nil {
		return nil, err
	}
	return &pb.PersistTask_CreateResponse{Result: result}, nil
}

func (srv *serviceImpl) UpdatePersistTask(ctx context.Context, req *pb.PersistTask_UpdateRequest) (*pb.PersistTask_UpdateResponse, error) {
	result, err := srv.repo.UpdatePersistTask(ctx, req.GetPayload())
	if err != nil {
		return nil, err
	}
	return &pb.PersistTask_UpdateResponse{Result: result}, nil
}

func (srv *serviceImpl) DeletePersistTask(ctx context.Context, req *pb.PersistTask_DeleteRequest) (*pb.PersistTask_DeleteResponse, error) {
	if err := srv.repo.DeletePersistTask(ctx, req.GetId()); err != nil {
		return nil, err
	}
	return &pb.PersistTask_DeleteResponse{}, nil
}

func (srv *serviceImpl) TestPersistTask(_ context.Context, req *pb.PersistTask_TestRequest) (*pb.PersistTask_TestResponse, error) {
	payload := req.GetPayload()
	if payload == nil {
		return nil, errors.New("错误的参数")
	}
	if err := srv.repo.VerifyPersistTask(payload); err != nil {
		return nil, err
	}
	opt, err := runner.NewFuncOption(payload.GetType(), payload.GetOption())
	if err != nil {
		return nil, err
	}
	srv.ctx.Runner.Submit(opt.String(), opt.Execute, runner.WithDryRun(true))
	return &pb.PersistTask_TestResponse{}, nil
}

func (srv *serviceImpl) ExecutePersistTask(ctx context.Context, req *pb.PersistTask_ExecuteRequest) (*pb.PersistTask_ExecuteResponse, error) {
	task, err := srv.repo.GetPersistTask(ctx, req.GetId())
	if err != nil {
		return nil, err
	}
	opt, err := runner.NewFuncOption(task.GetType(), task.GetOption())
	if err != nil {
		return nil, err
	}
	srv.ctx.Runner.Submit(opt.String(), opt.Execute, runner.WithDryRun(req.GetDryRun()))
	return &pb.PersistTask_ExecuteResponse{}, nil
}
