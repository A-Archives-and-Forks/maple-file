package types

import (
	"github.com/honmaple/maple-file/server/internal/app"
	"github.com/honmaple/maple-file/server/internal/platform/runner"
)

type Context struct {
	*app.Context
	Runner runner.Runner
}

func NewContext(ctx *app.Context, runner runner.Runner) *Context {
	return &Context{Context: ctx, Runner: runner}
}
