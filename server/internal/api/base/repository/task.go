package repository

import (
	"context"
	"errors"

	"github.com/honmaple/maple-file/server/internal/platform/runner"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/base"
)

type TaskRepository interface {
	VerifyPersistTask(*pb.PersistTask) error
	ListPersistTasks(context.Context) ([]*pb.PersistTask, error)
	CreatePersistTask(context.Context, *pb.PersistTask) (*pb.PersistTask, error)
	UpdatePersistTask(context.Context, *pb.PersistTask) (*pb.PersistTask, error)
	DeletePersistTask(context.Context, int32) error
	GetPersistTask(context.Context, int32) (*pb.PersistTask, error)
}

var _ TaskRepository = (*repository)(nil)

func (repo *repository) VerifyPersistTask(task *pb.PersistTask) error {
	if task.GetName() == "" {
		return errors.New("任务名称不能为空")
	}
	if task.GetType() == "" {
		return errors.New("任务类型不能为空")
	}
	if task.GetOption() == "" {
		return errors.New("任务选项不能为空")
	}
	return runner.Verify(task.GetType(), task.GetOption())
}

func (repo *repository) ListPersistTasks(ctx context.Context) ([]*pb.PersistTask, error) {
	results := make([]*pb.PersistTask, 0)
	err := repo.ctx.DB.WithContext(ctx).Model(pb.PersistTask{}).Order("id DESC").Find(&results).Error
	return results, err
}

func (repo *repository) CreatePersistTask(ctx context.Context, task *pb.PersistTask) (*pb.PersistTask, error) {
	if task == nil {
		return nil, errors.New("错误的参数")
	}
	if err := repo.VerifyPersistTask(task); err != nil {
		return nil, err
	}
	if err := repo.ctx.DB.WithContext(ctx).Create(task).Error; err != nil {
		return nil, err
	}
	return task, nil
}

func (repo *repository) UpdatePersistTask(ctx context.Context, task *pb.PersistTask) (*pb.PersistTask, error) {
	if task == nil {
		return nil, errors.New("错误的参数")
	}
	if err := repo.VerifyPersistTask(task); err != nil {
		return nil, err
	}
	current, err := repo.GetPersistTask(ctx, task.GetId())
	if err != nil {
		return nil, err
	}
	diff := map[string]any{}
	if task.GetType() != current.GetType() {
		diff["type"] = task.GetType()
	}
	if task.GetName() != "" && task.GetName() != current.GetName() {
		diff["name"] = task.GetName()
	}
	if task.GetStatus() != current.GetStatus() {
		diff["status"] = task.GetStatus()
	}
	if task.GetOption() != current.GetOption() {
		diff["option"] = task.GetOption()
	}
	if task.GetCronOption() != current.GetCronOption() {
		diff["cron_option"] = task.GetCronOption()
	}
	if len(diff) == 0 {
		return nil, errors.New("无修改")
	}
	if err := repo.ctx.DB.WithContext(ctx).Model(current).Updates(diff).Error; err != nil {
		return nil, err
	}
	return current, nil
}

func (repo *repository) DeletePersistTask(ctx context.Context, id int32) error {
	return repo.ctx.DB.WithContext(ctx).Delete(&pb.PersistTask{}, "id = ?", id).Error
}

func (repo *repository) GetPersistTask(ctx context.Context, id int32) (*pb.PersistTask, error) {
	task := new(pb.PersistTask)
	if err := repo.ctx.DB.WithContext(ctx).First(task, "id = ?", id).Error; err != nil {
		return nil, err
	}
	return task, nil
}
