package main

import (
	"fmt"
	"unicode"
)

func main() {
	var n, sum int
	fmt.Print("Введите количество чисел: ")
	fmt.Scan(&n)

	for i := 0; i < n; i++ { // Считываем каждое число
		var input string
		fmt.Printf("Введите число %d: ", i+1)
		fmt.Scan(&input) // Вводим одно число как строку

		for _, c := range input { // Разбираем каждое число
			if unicode.IsDigit(c) { // Проверяем, является ли символ цифрой
				digit := int(c - '0') // Преобразуем символ в цифру
				if digit%3 == 0 {
					sum += digit
				}
			}
		}
	}
	fmt.Printf("Сумма цифр, делящихся на 3: %d\n", sum)
}

