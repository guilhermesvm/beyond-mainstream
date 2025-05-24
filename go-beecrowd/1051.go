package main

import (
	"fmt"
)

func main() {
	var table map[string]string = make(map[string]string)

	table["vertebrado ave carnivoro"] = "aguia"
	table["vertebrado ave onivoro"] = "pomba"
	table["vertebrado mamifero onivoro"] = "homem"
	table["vertebrado mamifero herbivoro"] = "vaca"
	table["invertebrado inseto hematofago"] = "pulga"
	table["invertebrado inseto herbivoro"] = "lagarta"
	table["invertebrado anelideo hematofago"] = "sanguessuga"
	table["invertebrado anelideo onivoro"] = "minhoca"

	var in1, in2, in3 string
	fmt.Scan(&in1, &in2, &in3)

	var animal string = in1 + " " + in2 + " " + in3
	fmt.Println(table[animal])
}
