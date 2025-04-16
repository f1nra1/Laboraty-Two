n = int(input("Введите количество цветов: "))

water = list(map(int, input("Введите потребность каждого цветка через пробел:\n").split()))

capacity = int(input("Введите объем лейки: "))

steps = 0
current_water = capacity
position = -1  # начинаем с реки

for i in range(n):
    if current_water >= water[i]:
        steps += abs(position - i)
        current_water -= water[i]
        position = i
    else:
        steps += abs(position - (-1))  # до реки
        position = -1
        current_water = capacity

        steps += abs(position - i)  # обратно к цветку
        current_water -= water[i]
        position = i

print("Общее количество шагов:", steps)

