package syncutil

import (
	"context"
	"sync"

	"golang.org/x/sync/errgroup"
)

type Group[T any] struct {
	ch  chan T
	eg  *errgroup.Group
	wg  sync.WaitGroup
	ctx context.Context
}

func (p *Group[T]) Go(fn func() (T, error)) {
	p.eg.Go(func() error {
		select {
		case <-p.ctx.Done():
			return p.ctx.Err()
		default:
			result, err := fn()
			if err != nil {
				return err
			}
			p.ch <- result
			return nil
		}
	})
}

func (p *Group[T]) Listen(fn func(T)) {
	p.wg.Add(1)

	go func() {
		defer p.wg.Done()
		for result := range p.ch {
			fn(result)
		}
	}()
}

func (p *Group[T]) Wait() error {
	err := p.eg.Wait()
	close(p.ch)
	p.wg.Wait()
	return err
}

func NewErrGroup[T any](ctx context.Context, size int) *Group[T] {
	eg, ctx := errgroup.WithContext(ctx)

	eg.SetLimit(size)

	return &Group[T]{
		ch:  make(chan T, size),
		eg:  eg,
		ctx: ctx,
	}
}
