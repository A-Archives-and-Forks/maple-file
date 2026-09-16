package fs

import (
	"context"
	"os"
	stdpath "path"
	"strings"
	"testing"
	"time"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/maple-file/server/internal/platform/utils/cacheutil"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/file"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type testRepoResolver struct {
	repos []*pb.Repo
	files map[string]cloudfs.FS
}

func (r *testRepoResolver) Resolve(path string) (cloudfs.FS, string, error) {
	repo := r.Get(path)
	if repo == nil {
		return nil, "", os.ErrNotExist
	}

	root := stdpath.Join(repo.GetPath(), repo.GetName())
	fs, ok := r.files[root]
	if !ok {
		return nil, "", os.ErrNotExist
	}
	realPath := strings.TrimPrefix(path, root)
	if !strings.HasPrefix(realPath, "/") {
		realPath = "/" + realPath
	}
	return fs, realPath, nil
}

func (r *testRepoResolver) Get(path string) *pb.Repo {
	for _, repo := range r.repos {
		root := stdpath.Join(repo.GetPath(), repo.GetName())
		if repo.GetStatus() && (path == root || strings.HasPrefix(path, root+"/")) {
			return repo
		}
	}
	return nil
}

func (r *testRepoResolver) Range(fn func(*pb.Repo) bool) {
	for _, repo := range r.repos {
		if !fn(repo) {
			return
		}
	}
}

func (*testRepoResolver) Create(*pb.Repo)           {}
func (*testRepoResolver) Update(*pb.Repo, *pb.Repo) {}
func (*testRepoResolver) Delete(*pb.Repo)           {}

type testCloudFS struct {
	cloudfs.BaseFS
	files    []cloudfs.FileInfo
	listPath string
}

func (fs *testCloudFS) List(_ context.Context, path string) ([]cloudfs.FileInfo, error) {
	fs.listPath = path
	return fs.files, nil
}

func (fs *testCloudFS) Stat(context.Context, string) (cloudfs.FileInfo, error) {
	return fs.files[0], nil
}

func newTestFS() *defaultFS {
	updatedAt := timestamppb.New(time.Date(2026, 9, 15, 0, 0, 0, 0, time.UTC))
	cloud := &pb.Repo{
		Path:      "/documents",
		Name:      "cloud",
		Status:    true,
		UpdatedAt: updatedAt,
	}
	archive := &pb.Repo{
		Path:      "/documents/nested",
		Name:      "archive",
		Status:    true,
		UpdatedAt: updatedAt,
	}

	cloudFS := &testCloudFS{files: []cloudfs.FileInfo{
		(&cloudfs.Entry{Name: "hello.txt", Path: "/hello.txt"}).FileInfo(),
	}}
	return &defaultFS{resolver: &testRepoResolver{
		repos: []*pb.Repo{cloud, archive},
		files: map[string]cloudfs.FS{
			"/documents/cloud":          cloudFS,
			"/documents/nested/archive": cloudFS,
		},
	}}
}

func TestDefaultFSListVirtualMounts(t *testing.T) {
	fs := newTestFS()

	files, err := fs.List(context.Background(), "/documents")
	if err != nil {
		t.Fatalf("List() error = %v", err)
	}
	if len(files) != 2 {
		t.Fatalf("List() returned %d files, want 2", len(files))
	}
	if files[0].Name() != "cloud" || !files[0].IsDir() {
		t.Errorf("first virtual mount = %q, dir = %t; want cloud directory", files[0].Name(), files[0].IsDir())
	}
	if files[1].Name() != "nested" || !files[1].IsDir() {
		t.Errorf("second virtual mount = %q, dir = %t; want nested directory", files[1].Name(), files[1].IsDir())
	}
}

func TestDefaultFSMountedRepoPath(t *testing.T) {
	fs := newTestFS()

	files, err := fs.List(context.Background(), "/documents/cloud")
	if err != nil {
		t.Fatalf("List() error = %v", err)
	}
	if len(files) != 1 {
		t.Fatalf("List() returned %d files, want 1", len(files))
	}
	if got, want := files[0].Path(), "/documents/cloud/hello.txt"; got != want {
		t.Errorf("List() file path = %q, want %q", got, want)
	}

	file, err := fs.Stat(context.Background(), "/documents/cloud/hello.txt")
	if err != nil {
		t.Fatalf("Stat() error = %v", err)
	}
	if got, want := file.Path(), "/documents/cloud/hello.txt"; got != want {
		t.Errorf("Stat() file path = %q, want %q", got, want)
	}
}

func TestDefaultFSListPreservesQuery(t *testing.T) {
	fs := newTestFS()
	resolver := fs.resolver.(*testRepoResolver)
	cloudFS := resolver.files["/documents/cloud"].(*testCloudFS)

	if _, err := fs.List(context.Background(), "/documents/cloud?page=2&order=name"); err != nil {
		t.Fatalf("List() error = %v", err)
	}
	if got, want := cloudFS.listPath, "/?order=name&page=2"; got != want {
		t.Errorf("downstream list path = %q, want %q", got, want)
	}
}

func TestRepoResolverResolvePreservesQuery(t *testing.T) {
	repo := &pb.Repo{
		Path:   "/documents",
		Name:   "cloud",
		Status: true,
	}
	cloudFS := &testCloudFS{}
	resolver := &repoResolver{
		files: cacheutil.New[string, cloudfs.FS](),
		repos: cacheutil.New[string, *pb.Repo](),
	}
	resolver.Create(repo)
	resolver.files.Store("/documents/cloud", cloudFS)
	if got := resolver.Get("/documents/cloud?page=2"); got != repo {
		t.Error("Get() did not match the repo for a path with query parameters")
	}

	gotFS, gotPath, err := resolver.Resolve("/documents/cloud?page=2&order=name")
	if err != nil {
		t.Fatalf("Resolve() error = %v", err)
	}
	if gotFS != cloudFS {
		t.Error("Resolve() returned an unexpected cloudfs.FS")
	}
	if want := "/?order=name&page=2"; gotPath != want {
		t.Errorf("Resolve() path = %q, want %q", gotPath, want)
	}
}
