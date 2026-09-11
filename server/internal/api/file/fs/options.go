package fs

import (
	"github.com/honmaple/maple-file/server/pkg/driver"
)

func WithOrder(order string, desc bool) map[string]any {
	return driver.WithOrder(order, desc)
}

func WithPagination(page int, pageSize int) map[string]any {
	return driver.WithPagination(page, pageSize)
}

func WithQueryParams(ms ...map[string]any) map[string]any  {
	return driver.WithQueryParams(ms...)
}
