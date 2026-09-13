package service

import (
	"context"
	"errors"
	"github.com/honmaple/maple-file/server/internal/platform/runner"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/task"
)

func (srv *serviceImpl) ListPersistTasks(ctx context.Context, _ *pb.ListPersistTasksRequest) (*pb.ListPersistTasksResponse, error) {
	results, err := srv.repo.ListPersistTasks(ctx)
	if err != nil {
		return nil, err
	}
	return &pb.ListPersistTasksResponse{Results: results}, nil
}

func (srv *serviceImpl) CreatePersistTask(ctx context.Context, req *pb.CreatePersistTaskRequest) (*pb.CreatePersistTaskResponse, error) {
	result, err := srv.repo.CreatePersistTask(ctx, req.GetPayload())
	if err != nil {
		return nil, err
	}
	return &pb.CreatePersistTaskResponse{Result: result}, nil
}

func (srv *serviceImpl) UpdatePersistTask(ctx context.Context, req *pb.UpdatePersistTaskRequest) (*pb.UpdatePersistTaskResponse, error) {
	result, err := srv.repo.UpdatePersistTask(ctx, req.GetPayload())
	if err != nil {
		return nil, err
	}
	return &pb.UpdatePersistTaskResponse{Result: result}, nil
}

func (srv *serviceImpl) DeletePersistTask(ctx context.Context, req *pb.DeletePersistTaskRequest) (*pb.DeletePersistTaskResponse, error) {
	if err := srv.repo.DeletePersistTask(ctx, req.GetId()); err != nil {
		return nil, err
	}
	return &pb.DeletePersistTaskResponse{}, nil
}

func (srv *serviceImpl) TestPersistTask(_ context.Context, req *pb.TestPersistTaskRequest) (*pb.TestPersistTaskResponse, error) {
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
	return &pb.TestPersistTaskResponse{}, nil
}

func (srv *serviceImpl) ExecutePersistTask(ctx context.Context, req *pb.ExecutePersistTaskRequest) (*pb.ExecutePersistTaskResponse, error) {
	task, err := srv.repo.GetPersistTask(ctx, req.GetId())
	if err != nil {
		return nil, err
	}
	opt, err := runner.NewFuncOption(task.GetType(), task.GetOption())
	if err != nil {
		return nil, err
	}
	srv.ctx.Runner.Submit(opt.String(), opt.Execute, runner.WithDryRun(req.GetDryRun()))
	return &pb.ExecutePersistTaskResponse{}, nil
}
