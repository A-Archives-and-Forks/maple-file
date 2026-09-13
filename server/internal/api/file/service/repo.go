package service

import (
	"context"
	"errors"
	mapledriver "github.com/honmaple/maple-file/server/internal/api/file/provider/driver"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/file"
)

var (
	errBadRequest = errors.New("错误的参数")
)

func (srv *serviceImpl) ListRepos(ctx context.Context, req *pb.ListReposRequest) (*pb.ListReposResponse, error) {
	results, err := srv.repo.ListRepos(ctx)
	if err != nil {
		return nil, err
	}
	return &pb.ListReposResponse{Results: results}, nil
}

func (srv *serviceImpl) CreateRepo(ctx context.Context, req *pb.CreateRepoRequest) (*pb.CreateRepoResponse, error) {
	opt := req.GetPayload()
	if opt == nil {
		return nil, errBadRequest
	}
	result, err := srv.repo.CreateRepo(ctx, opt)
	if err != nil {
		return nil, err
	}
	srv.fs.CreateRepo(result)
	return &pb.CreateRepoResponse{Result: result}, nil
}

func (srv *serviceImpl) UpdateRepo(ctx context.Context, req *pb.UpdateRepoRequest) (*pb.UpdateRepoResponse, error) {
	opt := req.GetPayload()
	if opt == nil {
		return nil, errBadRequest
	}

	old, result, err := srv.repo.UpdateRepo(ctx, opt)
	if err != nil {
		return nil, err
	}
	srv.fs.UpdateRepo(old, result)
	return &pb.UpdateRepoResponse{Result: old}, nil
}

func (srv *serviceImpl) DeleteRepo(ctx context.Context, req *pb.DeleteRepoRequest) (*pb.DeleteRepoResponse, error) {
	ins, err := srv.repo.DeleteRepo(ctx, req.GetId())
	if err != nil {
		return nil, err
	}
	srv.fs.DeleteRepo(ins)
	return &pb.DeleteRepoResponse{}, nil
}

func (srv *serviceImpl) TestRepo(ctx context.Context, req *pb.TestRepoRequest) (*pb.TestRepoResponse, error) {
	opt := req.GetPayload()
	if opt == nil {
		return nil, errBadRequest
	}

	if err := srv.repo.VerifyRepo(opt); err != nil {
		return nil, err
	}

	fs, err := mapledriver.NewCloudFS(opt.Driver, opt.Option)
	if err != nil {
		return nil, err
	}
	defer fs.Close()

	if _, err := fs.List(ctx, "/"); err != nil {
		return nil, err
	}
	return &pb.TestRepoResponse{Success: true}, nil
}
