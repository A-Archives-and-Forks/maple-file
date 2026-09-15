package fs

import (
	"context"
	"os"
	stdpath "path"
	"strings"

	"github.com/honmaple/cloudfs"
	"github.com/honmaple/maple-file/server/internal/platform/utils/cacheutil"
	"github.com/honmaple/maple-file/server/internal/platform/utils/pathutil"
	pb "github.com/honmaple/maple-file/server/internal/proto/api/file"
)

type (
	RepoLoader interface {
		ListRepos(context.Context) ([]*pb.Repo, error)
	}
	RepoResolver interface {
		Get(string) *pb.Repo
		Range(func(*pb.Repo) bool)
		Resolve(string) (cloudfs.FS, string, error)
		Create(*pb.Repo)
		Update(*pb.Repo, *pb.Repo)
		Delete(*pb.Repo)
	}
	repoResolver struct {
		files cacheutil.Cache[string, cloudfs.FS]
		repos cacheutil.Cache[string, *pb.Repo]
	}
)

var _ RepoResolver = (*repoResolver)(nil)

func (r *repoResolver) init(ctx context.Context, loader RepoLoader) error {
	repos, err := loader.ListRepos(ctx)
	if err != nil {
		return err
	}
	for _, repo := range repos {
		r.Create(repo)
	}
	return nil
}

func (r *repoResolver) Resolve(path string) (cloudfs.FS, string, error) {
	repo := r.Get(path)
	if repo == nil {
		return nil, "", os.ErrNotExist
	}

	rootPath := stdpath.Join(repo.GetPath(), repo.GetName())
	realPath := strings.TrimPrefix(path, rootPath)
	if !strings.HasPrefix(realPath, "/") {
		realPath = "/" + realPath
	}
	if fs, ok := r.files.Load(rootPath); ok {
		return fs, realPath, nil
	}

	fs, err := NewCloudFS(repo.GetDriver(), repo.GetOption())
	if err != nil {
		return nil, "", err
	}
	r.files.Store(rootPath, fs)
	return fs, realPath, nil
}

func (r *repoResolver) Get(path string) *pb.Repo {
	path = pathutil.CleanPath(path)
	for {
		if repo, ok := r.repos.Load(path); ok && repo.GetStatus() {
			return repo
		}
		index := strings.LastIndex(path, "/")
		if index <= 0 {
			return nil
		}
		path = path[:index]
	}
}

func (r *repoResolver) Create(repo *pb.Repo) {
	r.repos.Store(stdpath.Join(repo.GetPath(), repo.GetName()), repo)
}

func (r *repoResolver) Update(oldRepo, repo *pb.Repo) {
	r.Delete(oldRepo)
	r.Create(repo)
}

func (r *repoResolver) Delete(repo *pb.Repo) {
	rootPath := stdpath.Join(repo.GetPath(), repo.GetName())
	if fs, ok := r.files.Load(rootPath); ok {
		_ = fs.Close()
	}
	r.repos.Delete(rootPath)
	r.files.Delete(rootPath)
}

func (r *repoResolver) Range(fn func(*pb.Repo) bool) {
	r.repos.Range(func(_ string, repo *pb.Repo) bool {
		return fn(repo)
	})
}

func NewRepoResolver(ctx context.Context, loader RepoLoader) (RepoResolver, error) {
	resolver := &repoResolver{
		files: cacheutil.New[string, cloudfs.FS](),
		repos: cacheutil.New[string, *pb.Repo](),
	}
	if err := resolver.init(ctx, loader); err != nil {
		return nil, err
	}
	return resolver, nil
}
