package main

import (
	"embed"
	"fmt"
	"os"

	"github.com/honmaple/maple-file/server/internal/app"
	"github.com/honmaple/maple-file/server/internal/bootstrap"
	"github.com/samber/do/v2"
	"github.com/urfave/cli/v2"
)

var (
	//go:embed dist
	webFS         embed.FS
	defaultConfig = app.NewConfig()
)

func before(clx *cli.Context) error {
	if err := defaultConfig.LoadFromFile(clx.String("config")); err != nil {
		return err
	}
	return nil
}

func action(clx *cli.Context) error {
	if addr := clx.String("addr"); addr != "" {
		defaultConfig.Set(app.ServerAddr, addr)
	}
	if debug := clx.Bool("debug"); debug {
		defaultConfig.Set(app.ServerMode, "dev")
	}

	injector := bootstrap.NewInjector(defaultConfig)
	server, err := do.Invoke[*bootstrap.Server](injector)
	if err != nil {
		return err
	}
	return server.Start()
}

func main() {
	app := &cli.App{
		Name:    app.PROCESS,
		Usage:   app.DESCRIPTION,
		Version: app.VERSION,
		Flags: []cli.Flag{
			&cli.BoolFlag{
				Name:    "debug",
				Aliases: []string{"D"},
				Usage:   "debug mode",
			},
			&cli.StringFlag{
				Name:    "addr",
				Aliases: []string{"a"},
				Usage:   "listen `ADDR`",
				Value:   "127.0.0.1:8000",
			},
			&cli.PathFlag{
				Name:    "config",
				Aliases: []string{"c"},
				Usage:   "load config from `FILE`",
				Value:   "config.yaml",
			},
		},
		Before: before,
		Action: action,
	}
	if err := app.Run(os.Args); err != nil {
		fmt.Println(err.Error())
	}
}
