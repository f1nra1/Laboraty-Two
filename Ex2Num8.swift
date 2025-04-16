import Foundation

print("Введите количество цветов: ", terminator: "")
guard let nInput = readLine(), let n = Int(nInput) else {
    print("Некорректный ввод.")
    exit(0)
}

print("Введите потребность каждого цветка через пробел:")
guard let waterInput = readLine() else {
    print("Некорректный ввод.")
    exit(0)
}

let waterNeeds = waterInput.split(separator: " ").compactMap { Int($0) }
if waterNeeds.count != n {
    print("Количество введённых потребностей не совпадает с количеством цветов.")
    exit(0)
}

print("Введите объем лейки: ", terminator: "")
guard let capacityInput = readLine(), let capacity = Int(capacityInput) else {
    print("Некорректный ввод.")
    exit(0)
}

var steps = 0
var currentWater = capacity
var position = -1 // начинаем с реки

for i in 0..<n {
    if currentWater >= waterNeeds[i] {
        steps += abs(position - i)
        currentWater -= waterNeeds[i]
        position = i
    } else {
        // идем к реке
        steps += abs(position - (-1))
        position = -1
        currentWater = capacity

        // обратно к цветку
        steps += abs(position - i)
        currentWater -= waterNeeds[i]
        position = i
    }
}

print("Общее количество шагов: \(steps)")

