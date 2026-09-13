package repository

import "github.com/honmaple/maple-file/server/internal/api/file/types"

type (
	Repository interface {
		RepoRepository
	}
	repository struct {
		ctx *types.Context
	}
)

var _ Repository = (*repository)(nil)

func New(ctx *types.Context) Repository {
	return &repository{ctx: ctx}
}
