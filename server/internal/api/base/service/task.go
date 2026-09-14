package service

import (
	"context"

	"github.com/honmaple/maple-file/server/internal/platform/runner"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/base"
	"google.golang.org/protobuf/types/known/timestamppb"
)

var (
	taskStates = map[runner.State]pb.TaskState{
		runner.STATE_PENDING:   pb.TaskState_TASK_STATE_PENDING,
		runner.STATE_RUNNING:   pb.TaskState_TASK_STATE_RUNNING,
		runner.STATE_SUCCEEDED: pb.TaskState_TASK_STATE_SUCCEEDED,
		runner.STATE_CANCELING: pb.TaskState_TASK_STATE_CANCELING,
		runner.STATE_CANCELED:  pb.TaskState_TASK_STATE_CANCELED,
		runner.STATE_FAILED:    pb.TaskState_TASK_STATE_FAILED,
	}
)

// TODO: 持久化任务信息
func (srv *serviceImpl) ListTasks(ctx context.Context, in *pb.Task_ListRequest) (*pb.Task_ListResponse, error) {
	results := make([]*pb.Task, 0)
	for _, m := range srv.ctx.Runner.GetAll() {
		result := &pb.Task{
			Id:            m.Id(),
			Log:           m.Log(),
			Name:          m.Name(),
			State:         taskStates[m.State()],
			Progress:      m.Progress(),
			ProgressState: m.ProgressState(),
			StartTime:     timestamppb.New(m.StartTime()),
			EndTime:       timestamppb.New(m.EndTime()),
		}
		if err := m.Err(); err != nil {
			result.Err = err.Error()
		}
		results = append(results, result)
	}
	return &pb.Task_ListResponse{Results: results}, nil
}

func (srv *serviceImpl) RetryTask(ctx context.Context, in *pb.Task_RetryRequest) (*pb.Task_RetryResponse, error) {
	for _, id := range in.GetTasks() {
		if err := srv.ctx.Runner.Retry(id); err != nil {
			return nil, err
		}
	}
	return &pb.Task_RetryResponse{}, nil
}

func (srv *serviceImpl) CancelTask(ctx context.Context, in *pb.Task_CancelRequest) (*pb.Task_CancelResponse, error) {
	for _, id := range in.GetTasks() {
		if err := srv.ctx.Runner.Cancel(id); err != nil {
			return nil, err
		}
	}
	return &pb.Task_CancelResponse{}, nil
}

func (srv *serviceImpl) RemoveTask(ctx context.Context, in *pb.Task_RemoveRequest) (*pb.Task_RemoveResponse, error) {
	for _, id := range in.GetTasks() {
		if err := srv.ctx.Runner.Remove(id); err != nil {
			return nil, err
		}
	}
	return &pb.Task_RemoveResponse{}, nil
}
