package syncutil

import "sync/atomic"

type Value[T any] struct {
	v atomic.Value
}

func (s *Value[T]) Load() T {
	return s.v.Load().(T)
}

func (s *Value[T]) Store(val T) {
	s.v.Store(val)
}

func (s *Value[T]) Swap(new T) T {
	return s.v.Swap(new).(T)
}

func NewValue[T any](val T) Value[T] {
	var v atomic.Value

	v.Store(val)
	return Value[T]{v: v}
}
