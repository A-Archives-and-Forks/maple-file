package driver

func WithPassword(pw string) map[string]any {
	return map[string]any{"password": pw}
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

func WithQueryParams(ms ...map[string]any) map[string]any {
	values := make(map[string]any)
	for _, m := range ms {
		for k, v := range m {
			values[k] = v
		}
	}
	return values
}
