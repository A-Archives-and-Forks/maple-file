package app

import (
	"context"
	"errors"

	"github.com/honmaple/maple-file/server/internal/platform/config"
	"github.com/honmaple/maple-file/server/internal/platform/database"
	"github.com/honmaple/maple-file/server/internal/platform/logger"
)

var (
	PROCESS     = "maple-file"
	VERSION     = "dev"
	DESCRIPTION = "Multi-protocol cloud file upload and management with serverless."
)

type Context struct {
	context.Context
	DB     *database.DB
	Logger *logger.Logger
	Config *config.Config
}

func NewContext(cfg *config.Config, log *logger.Logger, db *database.DB) (*Context, error) {
	if cfg == nil {
		return nil, errors.New("config is required")
	}
	if log == nil {
		return nil, errors.New("logger is required")
	}
	if db == nil {
		return nil, errors.New("database is required")
	}
	return &Context{Context: context.Background(), Config: cfg, Logger: log, DB: db}, nil
}
