package main

import (
	"fmt"
	"log"
	"net/http"

	"github.com/Manda-supraja26/moviestore/pkg/routes"
	"github.com/gorilla/mux"
)

func main() {

	r := mux.NewRouter()
	routes.RegisterMovieRoutes(r)
	http.Handle("/", r)
	fmt.Println("The Movie server is running at port: **## 8080 ##**")
	log.Fatal(http.ListenAndServe(":8080", r))

}
