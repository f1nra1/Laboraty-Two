n = int(input("Введите n: "))

for i in range(1, n + 1):
    for ch in range(ord('A') + n - 1, ord('A') + n - i - 1, -1):
        print(chr(ch), end=' ')
    print()

