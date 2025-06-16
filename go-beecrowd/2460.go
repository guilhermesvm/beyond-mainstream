package main

import "fmt"

func main() {
	var N, M, whoLeft int
	fmt.Scan(&N)

	var queue []int = make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&queue[i])
	}

	fmt.Scan(&M)

	for j := 0; j < M; j++ {
		fmt.Scan(&whoLeft)
		for k := 0; k < len(queue); k++ {
			if queue[k] == whoLeft {
				queue = append(queue[:k], queue[k+1:]...)
				break
			}
		}
	}

	for l, v := range queue {
		if l > 0 {
			fmt.Print(" ")
		}
		fmt.Print(v)
	}
	fmt.Println()
}