package config

import (
	"github.com/jinzhu/gorm"
	_ "github.com/jinzhu/gorm/dialects/mysql"
)

var db *gorm.DB

type MysqlConfig struct {
	UserName string
	Password string
	DbName   string
	Port     uint
	Host     string
}

func Connect() {
	// dsn := fmt.Sprint("%s:%s@/%s", config.UserName,config.Password,config.Dbname)
	d, err := gorm.Open("mysql", "root:@root@/db?charset=utf8&parseTime=True&loc=Local")
	// d, err := gorm.Open("mysql", GetConnectionString())
	if err != nil {
		panic(err)
	}
	db = d
}

func GetDB() *gorm.DB {
	return db

}
