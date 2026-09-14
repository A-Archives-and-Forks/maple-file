package service

import (
	"context"

	"github.com/honmaple/maple-file/server/internal/api/file/types"
)

func (srv *serviceImpl) getFileSetting(ctx context.Context) *types.FileSetting {
	setting := new(types.FileSetting)
	_ = srv.settings.LoadSetting(ctx, "app.file", setting)
	return setting
}
