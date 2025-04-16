n = int(input("Введите количество чисел: "))
total = 0

for i in range(n):
    input_str = input(f"Введите число {i + 1}: ")
    
    for c in input_str:
        if c.isdigit():
            digit = int(c)
            if digit % 3 == 0:
                total += digit

print("Сумма цифр, делящихся на 3:", total)

