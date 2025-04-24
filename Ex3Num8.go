package main

import "fmt"

func main() {
	var n, sum int
	fmt.Print("Введите количество чисел: ")
	fmt.Scan(&n)

	for i := 0; i < n; i++ {
		var number int
		fmt.Printf("Введите число %d: ", i+1)
		fmt.Scan(&number)

		// Обрабатываем отрицательные числа
		if number < 0
		{
			number = -number
		}

		// Разбираем число по цифрам
		for number > 0 {
			digit := number % 10
			if digit%3 == 0 && digit != 0 {
				sum += digit
			}
			number /= 10
		}
	}

	fmt.Printf("Сумма цифр, делящихся на 3: %d\n", sum)
}