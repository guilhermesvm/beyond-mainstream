package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	lowest := 0
	pos := 0

	for i := 0; i < N; i++ {
		var number int
		fmt.Scan(&number)

		if lowest == 0 {
			lowest = number
		}

		if number < lowest {
			lowest = number
			pos = i
		}
	}

	fmt.Printf("Menor valor: %d\n", lowest)
	fmt.Printf("Posicao: %d\n", pos)
}