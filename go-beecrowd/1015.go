package main

import (
	"fmt"
	"math"
)

func main() {
	var x1, y1, x2, y2 float64

	fmt.Scan(&x1, &y1, &x2, &y2)

	var xDiff = x2 - x1
	var yDiff = y2 - y1

	var x = math.Pow(xDiff, 2)
	var y = math.Pow(yDiff, 2)

	var res = math.Sqrt(x + y)
	fmt.Printf("%.4f\n", res)
}