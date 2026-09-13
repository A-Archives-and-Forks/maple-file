package syncutil

import (
	"iter"
	"sync"
)

type Map[K comparable, V any] struct {
	m *sync.Map
}

func (c *Map[K, V]) Load(key K) (value V, ok bool) {
	v, ok := c.m.Load(key)
	if !ok {
		return
	}
	value = v.(V)
	return
}

func (c *Map[K, V]) Store(key K, value V) {
	c.m.Store(key, value)
}

func (c *Map[K, V]) Delete(key K) {
	c.m.Delete(key)
}

func (c *Map[K, V]) Iter() iter.Seq2[K, V] {
	return func(yield func(key K, value V) bool) {
		c.Range(yield)
	}
}

func (c *Map[K, V]) Range(f func(K, V) bool) {
	c.m.Range(func(key, value any) bool {
		return f(key.(K), value.(V))
	})
}

func (c *Map[K, V]) Reset() {
	c.m.Range(func(key, value any) bool {
		c.m.Delete(key.(K))
		return true
	})
}

func (c *Map[K, V]) Len() int {
	len := 0
	c.m.Range(func(key, value any) bool {
		len++
		return true
	})
	return len
}

func NewMap[K comparable, V any]() Map[K, V] {
	return Map[K, V]{m: new(sync.Map)}
}
