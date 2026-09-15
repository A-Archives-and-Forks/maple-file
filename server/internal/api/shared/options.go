package shared

import (
	"github.com/spf13/viper"
)

type Filter struct {
	*viper.Viper
}

func NewFilter(values map[string]string) *Filter {
	filter := viper.New()
	for key, value := range values {
		filter.Set(key, value)
	}
	return &Filter{filter}
}

func WithPassword(password string) map[string]any {
	return map[string]any{"password": password}
}

func WithOrder(order string, desc bool) map[string]any {
	return map[string]any{
		"desc":  desc,
		"order": order,
	}
}

func WithPagination(page int, pageSize int) map[string]any {
	if page < 1 {
		page = 1
	}
	if pageSize < 0 {
		pageSize = 0
	}

	offset := (page - 1) * pageSize
	if offset < 0 {
		offset = 0
	}

	return map[string]any{
		"page":      page,
		"offset":    offset,
		"page_size": pageSize,
	}
}

func WithQueryParams(values ...map[string]any) map[string]any {
	params := make(map[string]any)
	for _, value := range values {
		for key, item := range value {
			params[key] = item
		}
	}
	return params
}
