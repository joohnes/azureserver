package main

import (
	"fmt"
	"net/http"
)

func main() {
	///sd
	//create hello world http server
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		fmt.Fprintf(w, "Hello World")
	})
	http.ListenAndServe(":8080", nil)
}
