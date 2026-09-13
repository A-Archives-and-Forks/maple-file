package database

import (
	"context"
	"errors"
	"strings"

	"gorm.io/driver/mysql"
	"gorm.io/driver/postgres"
	"gorm.io/driver/sqlite"
	"gorm.io/gorm"
	"gorm.io/gorm/logger"
	"gorm.io/gorm/schema"

	"github.com/honmaple/maple-file/server/internal/platform/config"
	"github.com/honmaple/maple-file/server/internal/platform/database/serializer"
)

type (
	DB struct {
		*gorm.DB
	}
	Table struct {
		Name  string
		Model any
	}
	Config struct {
		DSN  string `json:"dsn" yaml:"dsn"`
		Echo bool   `json:"echo" yaml:"echo"`
	}
)

func (db *DB) WithContext(ctx context.Context) *DB {
	return &DB{db.DB.WithContext(ctx)}
}

func (db *DB) AutoMigrate(dst ...any) (err error) {
	for _, m := range dst {
		if table, ok := m.(*Table); ok {
			err = db.DB.Table(table.Name).AutoMigrate(table.Model)
		} else {
			err = db.DB.AutoMigrate(m)
		}
		if err != nil {
			return err
		}
	}
	return
}

func (db *DB) DropTable(tables ...any) error {
	for _, table := range tables {
		stmt := &gorm.Statement{DB: db.DB}
		if err := stmt.Parse(table); err != nil {
			return err
		}
		if err := db.Migrator().DropTable(table); err != nil {
			return err
		}
		for _, relation := range stmt.Schema.Relationships.Relations {
			if relation.Type == schema.Many2Many {
				if err := db.Migrator().DropTable(relation.JoinTable.Table); err != nil {
					return err
				}
			}
		}
	}
	return nil
}

func (db *DB) RecreateTable(tables ...any) error {
	if err := db.DropTable(tables...); err != nil {
		return err
	}
	return db.AutoMigrate(tables...)
}

func New(conf *Config) (*DB, error) {
	var (
		db  *gorm.DB
		err error
		dsn = conf.DSN
	)
	if dsn == "" {
		return nil, errors.New("database dsn is required")
	}
	gcfg := &gorm.Config{
		Logger: logger.Default,
		NamingStrategy: &schema.NamingStrategy{
			SingularTable: false,
		},
		DisableForeignKeyConstraintWhenMigrating: true,
	}
	switch {
	case strings.HasPrefix(dsn, "mysql://"):
		db, err = gorm.Open(mysql.Open(dsn[8:]), gcfg)
	case strings.HasPrefix(dsn, "sqlite://"):
		db, err = gorm.Open(sqlite.Open(dsn[9:]), gcfg)
	case strings.HasPrefix(dsn, "postgres://"):
		db, err = gorm.Open(postgres.Open(dsn[11:]), gcfg)
	default:
		return nil, errors.New("unknown or unsupported sql driver")
	}
	if err != nil {
		return nil, err
	}

	if conf.Echo {
		db = db.Debug()
	}

	schema.RegisterSerializer("protobuf_timestamp", serializer.ProtobufTimestamp{})
	return &DB{DB: db}, nil
}

func NewWithConfig(conf *config.Config) (*DB, error) {
	return New(&Config{
		DSN:  conf.GetString("database.dsn"),
		Echo: conf.GetBool("database.echo"),
	})
}
