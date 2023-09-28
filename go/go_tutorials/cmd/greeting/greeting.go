package main

import (
	"fmt"
)

func main() {
	fmt.Println("Please enter you name: ")
	var name string
	fmt.Scanln(&name)
	fmt.Printf("Hi, %s! I'm Go!", name)
}
