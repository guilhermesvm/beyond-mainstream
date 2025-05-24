package main

import (
	"fmt"
	"os"
)

func absolute_value(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func main() {
	var P, N int
	fmt.Scan(&P, &N)

	var numbers []int = make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&numbers[i])
	}

	for i := 0; i < len(numbers)-1; i++ {
		pipeHeight := absolute_value((numbers[i] - numbers[i+1]))
		if pipeHeight > P {
			fmt.Println("GAME OVER")
			os.Exit(0)
		}
	}
	fmt.Println("YOU WIN")
}
