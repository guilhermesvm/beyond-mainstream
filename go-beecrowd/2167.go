package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	var numbers []int = make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&numbers[i])
	}

	for i := 0; i < len(numbers)-1; i++ {
		if numbers[i] > numbers[i+1] {
			fmt.Println(i + 2)
			return
		}
	}
	fmt.Println("0")
}
