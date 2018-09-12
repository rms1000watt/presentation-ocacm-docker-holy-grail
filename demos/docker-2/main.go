package main

import (
	"fmt"
	"log"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Printf("Path: [/%s]\n", r.URL.Path[1:])
	fmt.Fprintf(w, "Path: [/%s]", r.URL.Path[1:])
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Listening on :8080 ...")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
