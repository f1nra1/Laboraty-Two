package main

import (
	"fmt"
	"math"
)

func main() {
	var n int // количество цветов
	fmt.Print("Введите количество цветов: ")
	fmt.Scan(&n)

	water := make([]int, n) // потребность каждого цветка
	fmt.Println("Введите потребность каждого цветка через пробел:")
	for i := 0; i < n; i++ {
		fmt.Scan(&water[i])
	}

	var capacity int // объем лейки
	fmt.Print("Введите объем лейки: ")
	fmt.Scan(&capacity)

	steps := 0
	currentWater := capacity
	position := -1 // начинаем с реки

	for i := 0; i < n; i++ {
		if currentWater >= water[i] {
			steps += int(math.Abs(float64(position - i)))
			currentWater -= water[i]
			position = i
		} else {
			// идем к реке и обратно
			steps += int(math.Abs(float64(position - (-1)))) // до реки
			position = -1
			currentWater = capacity

			steps += int(math.Abs(float64(position - i))) // обратно к цветку
			currentWater -= water[i]
			position = i
		}
	}

	fmt.Printf("Общее количество шагов: %d\n", steps)
}

