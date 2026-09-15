package fs

import (
	"fmt"

	"github.com/honmaple/maple-file/server/internal/platform/runner"
)

type RemoveTask struct {
	Path string `json:"path"`
}

func (opt *RemoveTask) String() string {
	return fmt.Sprintf("删除 [%s]", opt.Path)
}

func (opt *RemoveTask) Execute(task runner.Task, fs FS) error {
	return fs.Remove(task.Context(), opt.Path)
}
