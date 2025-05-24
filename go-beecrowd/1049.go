package main

import "fmt"

func main() {
	var salary float64
	fmt.Scanf("%f", &salary)

	if salary > 0.00 && salary <= 2000.00 {
		fmt.Println("Isento")
	} else if salary > 2000.00 && salary <= 3000.00 {
		salary -= 2000.00
		salary *= 0.08
		fmt.Printf("R$ %.2f\n", salary)
	} else if salary > 3000.00 && salary <= 4500.00 {
		salary -= 3000.00
		tax := 1000 * 0.08
		salary *= 0.18
		salary += tax
		fmt.Printf("R$ %.2f\n", salary)
	} else {
		salary -= 4500.00
		tax := (1000 * 0.08) + (1500 * 0.18)
		salary *= 0.28
		salary += tax
		fmt.Printf("R$ %.2f\n", salary)
	}
}
