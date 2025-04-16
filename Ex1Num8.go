package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Print("Введите n: ")
	fmt.Scan(&n)

	for i := 1; i <= n; i++ {
		for ch := 'A' + rune(n-1); ch >= 'A'+rune(n-i); ch-- {
			fmt.Printf("%c ", ch)
		}
		fmt.Println()
	}
}

