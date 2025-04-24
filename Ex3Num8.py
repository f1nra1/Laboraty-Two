n = int(input("Введите количество чисел: "))
sum = 0
for i in range(1, n + 1):
    number = int(input(f"Введите число {i}: "))

    # Обрабатываем отрицательные числа
    number = abs(number)

    # Разбираем число по цифрам
    temp = number
    while temp > 0:
        digit = temp % 10
        if digit % 3 == 0 and digit != 0:
            sum_ += digit
        temp = temp // 10

print(f"Сумма цифр, делящихся на 3: {sum_}")