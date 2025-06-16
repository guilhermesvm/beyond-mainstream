package main

import "fmt"

func main() {
	var N int
	fmt.Scan(&N)

	var word string

	for i := 0; i < N; i++ {
		var diamonds int = 0
		var openCount int = 0
		fmt.Scan(&word)

		for j := 0; j < len(word); j++ {
			if word[j] == '<' {
				openCount += 1

			} else if word[j] == '>' && openCount >= 1 {
				diamonds += 1
				openCount -= 1
			}
		}
		fmt.Printf("%d\n", diamonds)
	}
}