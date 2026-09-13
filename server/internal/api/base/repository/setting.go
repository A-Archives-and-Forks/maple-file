package repository

import (
	"context"
	"errors"
	"strings"

	"gorm.io/gorm"

	pb "github.com/honmaple/maple-file/server/internal/proto/api/setting"
)

type SettingRepository interface {
	GetSetting(context.Context, string) (*pb.Setting, error)
	UpdateSetting(context.Context, *pb.Setting) (*pb.Setting, error)
}

var _ SettingRepository = (*repository)(nil)

func (repo *repository) GetSetting(ctx context.Context, key string) (*pb.Setting, error) {
	result := new(pb.Setting)
	if err := repo.ctx.DB.WithContext(ctx).First(result, "key = ?", key).Error; err != nil {
		return nil, err
	}
	return result, nil
}

func (repo *repository) UpdateSetting(ctx context.Context, setting *pb.Setting) (*pb.Setting, error) {
	if !strings.HasPrefix(setting.Key, "app.") {
		return nil, errors.New("未知的设置")
	}
	result, err := repo.GetSetting(ctx, setting.Key)
	if errors.Is(err, gorm.ErrRecordNotFound) {
		if err := repo.ctx.DB.WithContext(ctx).Create(setting).Error; err != nil {
			return nil, err
		}
		return setting, nil
	}
	if err != nil {
		return nil, err
	}
	if setting.Value != result.Value {
		if err := repo.ctx.DB.WithContext(ctx).Model(result).Update("value", setting.Value).Error; err != nil {
			return nil, err
		}
	}
	return result, nil
}
