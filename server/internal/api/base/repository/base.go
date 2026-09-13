package repository

import "github.com/honmaple/maple-file/server/internal/api/base/types"

type (
	Repository interface {
		SettingRepository
		TaskRepository
	}
	repository struct {
		ctx *types.Context
	}
)

var _ Repository = (*repository)(nil)

func New(ctx *types.Context) Repository {
	return &repository{ctx: ctx}
}
