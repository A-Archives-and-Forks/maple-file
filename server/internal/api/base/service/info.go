package service

import (
	"context"
	"runtime"

	"github.com/honmaple/maple-file/server/internal/app"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/base"
)

func (srv *serviceImpl) Info(ctx context.Context, in *pb.Info_Request) (*pb.Info_Response, error) {
	result := &pb.Info{
		Os:          runtime.GOOS,
		Arch:        runtime.GOARCH,
		Runtime:     runtime.Version(),
		Version:     app.VERSION,
		Description: app.DESCRIPTION,
	}
	return &pb.Info_Response{Result: result}, nil
}
