package repository

import (
	"context"
	"errors"

	"github.com/honmaple/maple-file/server/internal/api/file/provider/driver"
	"github.com/honmaple/maple-file/server/internal/platform/utils/pathutil"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/file"
)

type RepoRepository interface {
	VerifyRepo(*pb.Repo) error
	ListRepos(context.Context) ([]*pb.Repo, error)
	CreateRepo(context.Context, *pb.Repo) (*pb.Repo, error)
	UpdateRepo(context.Context, *pb.Repo) (*pb.Repo, *pb.Repo, error)
	DeleteRepo(context.Context, int32) (*pb.Repo, error)
}

var _ RepoRepository = (*repository)(nil)

func (repo *repository) VerifyRepo(value *pb.Repo) error {
	if value.GetName() == "" {
		return errors.New("存储名称不能为空")
	}
	if value.GetDriver() == "" {
		return errors.New("存储类型不能为空")
	}
	if value.GetOption() == "" {
		return errors.New("存储选项不能为空")
	}
	if value.GetPath() == "" {
		value.Path = "/"
	}
	if pathutil.CleanPath(value.GetPath()) != value.GetPath() {
		return errors.New("挂载目录格式错误")
	}
	old := new(pb.Repo)
	result := repo.ctx.DB.First(old, "path = ? AND name = ?", value.GetPath(), value.GetName())
	if result.RowsAffected > 0 && old.GetId() != value.GetId() {
		return errors.New("重复挂载")
	}
	return driver.Verify(value.GetDriver(), value.GetOption())
}

func (repo *repository) ListRepos(ctx context.Context) ([]*pb.Repo, error) {
	results := make([]*pb.Repo, 0)
	err := repo.ctx.DB.WithContext(ctx).Order("id DESC").Find(&results).Error
	return results, err
}

func (repo *repository) CreateRepo(ctx context.Context, value *pb.Repo) (*pb.Repo, error) {
	if value == nil {
		return nil, errors.New("错误的参数")
	}
	if err := repo.VerifyRepo(value); err != nil {
		return nil, err
	}
	if err := repo.ctx.DB.WithContext(ctx).Create(value).Error; err != nil {
		return nil, err
	}
	return value, nil
}

func (repo *repository) UpdateRepo(ctx context.Context, value *pb.Repo) (*pb.Repo, *pb.Repo, error) {
	if value == nil {
		return nil, nil, errors.New("错误的参数")
	}
	if err := repo.VerifyRepo(value); err != nil {
		return nil, nil, err
	}
	old := new(pb.Repo)
	if err := repo.ctx.DB.WithContext(ctx).First(old, "id = ?", value.GetId()).Error; err != nil {
		return nil, nil, err
	}
	diff := map[string]any{}
	if value.GetName() != "" && value.GetName() != old.GetName() {
		diff["name"] = value.GetName()
	}
	if value.GetPath() != old.GetPath() {
		diff["path"] = value.GetPath()
	}
	if value.GetStatus() != old.GetStatus() {
		diff["status"] = value.GetStatus()
	}
	if value.GetOption() != old.GetOption() {
		diff["option"] = value.GetOption()
	}
	if value.GetDriver() != old.GetDriver() {
		diff["driver"] = value.GetDriver()
	}
	if len(diff) == 0 {
		return nil, nil, errors.New("无修改")
	}
	if err := repo.ctx.DB.WithContext(ctx).Model(old).Updates(diff).Error; err != nil {
		return nil, nil, err
	}
	return old, value, nil
}

func (repo *repository) DeleteRepo(ctx context.Context, id int32) (*pb.Repo, error) {
	value := new(pb.Repo)
	if err := repo.ctx.DB.WithContext(ctx).First(value, "id = ?", id).Error; err != nil {
		return nil, err
	}
	if err := repo.ctx.DB.WithContext(ctx).Delete(value).Error; err != nil {
		return nil, err
	}
	return value, nil
}
