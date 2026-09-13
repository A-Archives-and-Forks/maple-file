package bootstrap

import (
	"context"
	"encoding/json"
	"errors"
	"net"
	"net/http"
	"os"
	"strings"
	"time"

	"github.com/golang-jwt/jwt/v5"
	"github.com/grpc-ecosystem/grpc-gateway/v2/runtime"
	"github.com/labstack/echo/v4"
	"github.com/labstack/echo/v4/middleware"
	"golang.org/x/net/http2"
	"golang.org/x/net/http2/h2c"
	"google.golang.org/grpc"
	"google.golang.org/grpc/metadata"

	"github.com/honmaple/maple-file/server/internal/api"
	"github.com/honmaple/maple-file/server/internal/app"
)

var (
	errInvalidToken    = errors.New("invalid token")
	errMissingMetadata = errors.New("miss metadata")
)

type Server struct {
	Mux      *runtime.ServeMux
	Echo     *echo.Echo
	Grpc     *grpc.Server
	ctx      *app.Context
	server   *http.Server
	listener net.Listener
	token    string
	services api.Services
}

func (srv *Server) Result() (string, error) {
	b, err := json.Marshal(map[string]any{
		"addr":  srv.listener.Addr().String(),
		"token": srv.token,
	})
	return string(b), err
}

func (srv *Server) Addr() string {
	return srv.listener.Addr().String()
}

func (srv *Server) Start() error {
	srv.ctx.Logger.Infoln("http server listen:", srv.Addr())
	return srv.server.Serve(srv.listener)
}

func (srv *Server) Shutdown() error {
	srv.ctx.Logger.Infoln("http server shutdown...")
	defer srv.services.Close()
	defer srv.Grpc.Stop()
	return srv.server.Shutdown(context.TODO())
}

func (srv *Server) checkToken(value string) bool {
	value = strings.TrimPrefix(value, "Bearer ")
	token, err := jwt.ParseWithClaims(
		value,
		&jwt.RegisteredClaims{},
		func(*jwt.Token) (any, error) {
			return []byte(srv.ctx.Config.GetString(app.ServerSecretKey)), nil
		},
	)
	if err != nil || token == nil {
		return false
	}
	claims, ok := token.Claims.(*jwt.RegisteredClaims)
	return ok && claims.Issuer == app.PROCESS
}

func (srv *Server) setToken() {
	token := jwt.NewWithClaims(jwt.SigningMethodHS256, &jwt.RegisteredClaims{
		Issuer:    app.PROCESS,
		ExpiresAt: jwt.NewNumericDate(time.Now().Add(365 * 24 * time.Hour)),
	})
	srv.token, _ = token.SignedString([]byte(srv.ctx.Config.GetString(app.ServerSecretKey)))
}

func (srv *Server) setGrpc() {
	check := func(ctx context.Context) error {
		md, ok := metadata.FromIncomingContext(ctx)
		if !ok {
			return errMissingMetadata
		}
		values := md.Get("Authorization")
		if len(values) > 0 && srv.checkToken(values[0]) {
			return nil
		}
		return errInvalidToken
	}
	srv.Mux = runtime.NewServeMux()
	srv.Grpc = grpc.NewServer(
		grpc.UnaryInterceptor(
			func(ctx context.Context, req any, _ *grpc.UnaryServerInfo, handler grpc.UnaryHandler) (any, error) {
				if err := check(ctx); err != nil {
					return nil, err
				}
				return handler(ctx, req)
			},
		),
		grpc.StreamInterceptor(
			func(req any, stream grpc.ServerStream, _ *grpc.StreamServerInfo, handler grpc.StreamHandler) error {
				if err := check(stream.Context()); err != nil {
					return err
				}
				return handler(req, stream)
			},
		),
	)
	srv.services.Register(srv.Grpc)
	srv.services.RegisterGateway(srv.ctx, srv.Mux)
}

func (srv *Server) setHTTP() {
	handler := http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		if r.ProtoMajor == 2 && strings.Contains(r.Header.Get("Content-Type"), "application/grpc") {
			srv.Grpc.ServeHTTP(w, r)
			return
		}
		srv.Mux.ServeHTTP(w, r)
	})
	srv.Echo = echo.New()
	srv.Echo.Use(middleware.KeyAuthWithConfig(middleware.KeyAuthConfig{
		KeyLookup:  "query:token,header:" + echo.HeaderAuthorization,
		AuthScheme: "Bearer",
		Validator: func(key string, _ echo.Context) (bool, error) {
			return srv.checkToken(key), nil
		},
	}))
	srv.Echo.Any("/*", echo.WrapHandler(handler))
	srv.services.RegisterHTTP(srv.Echo)
}

func listen(addr string) (net.Listener, error) {
	if strings.HasPrefix(addr, "unix://") {
		path := addr[7:]
		if _, err := os.Stat(path); err == nil || os.IsExist(err) {
			if err := os.Remove(path); err != nil {
				return nil, err
			}
		}
		return net.Listen("unix", path)
	}
	if strings.HasPrefix(addr, "tcp://") {
		return net.Listen("tcp", addr[6:])
	}
	return net.Listen("tcp", addr)
}

func NewServer(ctx *app.Context, services ...api.Service) (*Server, error) {
	listener, err := listen(ctx.Config.GetString(app.ServerAddr))
	if err != nil {
		return nil, err
	}
	srv := &Server{
		ctx:      ctx,
		listener: listener,
		services: services,
	}
	srv.setToken()
	srv.setGrpc()
	srv.setHTTP()
	srv.server = &http.Server{
		Handler: h2c.NewHandler(srv.Echo, &http2.Server{}),
	}
	return srv, nil
}
