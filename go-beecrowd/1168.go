package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)

	var ledCount map[byte]int = map[byte]int{
		'0': 6,
		'1': 2,
		'2': 5,
		'3': 5,
		'4': 4,
		'5': 5,
		'6': 6,
		'7': 3,
		'8': 7,
		'9': 6,
	}

	for i := 0; i < N; i++ {
		var number string
		fmt.Scan(&number)

		var total = 0
		for j := 0; j < len(number); j++ {
			total += ledCount[number[j]]
		}
		fmt.Printf("%d leds\n", total)
	}
}
