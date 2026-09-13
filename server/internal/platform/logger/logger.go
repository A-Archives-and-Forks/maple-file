package logger

import (
	"io"
	"os"
	"strings"

	"github.com/sirupsen/logrus"
	"gopkg.in/natefinch/lumberjack.v2"

	"github.com/honmaple/maple-file/server/internal/platform/config"
)

var levels = map[string]logrus.Level{
	"debug": logrus.DebugLevel,
	"info":  logrus.InfoLevel,
	"warn":  logrus.WarnLevel,
	"error": logrus.ErrorLevel,
}

type (
	Logger struct {
		*logrus.Logger
		lu *lumberjack.Logger
	}
	Config struct {
		Level         string `json:"level" yaml:"level"`
		Output        string `json:"output" yaml:"output"`
		Timestamp     bool   `json:"timestamp" yaml:"timestamp"`
		File          string `json:"file" yaml:"file"`
		FileMaxAge    int    `json:"file_max_age" yaml:"file_max_age"`
		FileMaxSize   int    `json:"file_max_size" yaml:"file_max_size"`
		FileMaxBackup int    `json:"file_max_backup" yaml:"file_max_backup"`
	}
)

func (log *Logger) Close() error {
	if log.lu == nil {
		return nil
	}
	return log.lu.Close()
}

func New(conf *Config) *Logger {
	log := &Logger{}

	level, ok := levels[conf.Level]
	if !ok {
		level = logrus.InfoLevel
	}

	outs := make(map[string]bool)
	for _, i := range strings.Split(conf.Output, "|") {
		outs[strings.TrimSpace(i)] = true
	}

	outWriters := make([]io.Writer, 0)
	for k := range outs {
		switch k {
		case "file":
			out := &lumberjack.Logger{
				Filename:   conf.File,
				MaxAge:     conf.FileMaxAge,
				MaxSize:    conf.FileMaxSize,
				MaxBackups: conf.FileMaxBackup,
			}
			log.lu = out

			outWriters = append(outWriters, out)
		case "stdout":
			outWriters = append(outWriters, os.Stdout)
		case "stderr":
			outWriters = append(outWriters, os.Stderr)
		}
	}
	if len(outWriters) == 0 {
		outWriters = append(outWriters, os.Stdout)
	}
	log.Logger = &logrus.Logger{
		Out: io.MultiWriter(outWriters...),
		Formatter: &logrus.TextFormatter{
			DisableTimestamp: !conf.Timestamp,
			FullTimestamp:    conf.Timestamp,
		},
		Level: level,
	}
	return log
}

func NewWithConfig(conf *config.Config) *Logger {
	return New(&Config{
		Level:         conf.GetString("logger.level"),
		Output:        conf.GetString("logger.output"),
		Timestamp:     conf.GetBool("logger.timestamp"),
		File:          conf.GetString("logger.file"),
		FileMaxAge:    conf.GetInt("logger.file_max_age"),
		FileMaxSize:   conf.GetInt("logger.file_max_size"),
		FileMaxBackup: conf.GetInt("logger.file_max_backup"),
	})
}
