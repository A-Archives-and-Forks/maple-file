package middleware

import (
	"context"
	"os"
	"testing"

	"github.com/honmaple/cloudfs"
)

type recordingFS struct {
	cloudfs.BaseFS
	listPath    string
	statPath    string
	makeDirPath string
}

func (fs *recordingFS) List(_ context.Context, path string) ([]cloudfs.FileInfo, error) {
	fs.listPath = path
	return nil, nil
}

func (fs *recordingFS) Stat(_ context.Context, path string) (cloudfs.FileInfo, error) {
	fs.statPath = path
	return nil, os.ErrNotExist
}

func (fs *recordingFS) MakeDir(_ context.Context, path string) error {
	fs.makeDirPath = path
	return nil
}

func TestRecycleFSListPreservesQuery(t *testing.T) {
	base := &recordingFS{}
	fs, err := newRecycleFS(base, &RecycleOption{})
	if err != nil {
		t.Fatalf("newRecycleFS() error = %v", err)
	}

	if _, err := fs.List(context.Background(), "/.maplerecycle?page=2&order=name"); err != nil {
		t.Fatalf("List() error = %v", err)
	}
	if got, want := base.statPath, "/.maplerecycle"; got != want {
		t.Errorf("Stat() path = %q, want %q", got, want)
	}
	if got, want := base.makeDirPath, "/.maplerecycle"; got != want {
		t.Errorf("MakeDir() path = %q, want %q", got, want)
	}
	if got, want := base.listPath, "/.maplerecycle?order=name&page=2"; got != want {
		t.Errorf("List() path = %q, want %q", got, want)
	}
}
