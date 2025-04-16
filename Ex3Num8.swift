import Foundation

print("Введите количество чисел: ", terminator: "")
guard let nInput = readLine(), let n = Int(nInput) else {
    print("Некорректный ввод.")
    exit(0)
}

var sum = 0

for i in 1...n {
    print("Введите число \(i): ", terminator: "")
    guard let input = readLine() else {
        print("Некорректный ввод.")
        exit(0)
    }

    for char in input {
        if let digit = char.wholeNumberValue, digit % 3 == 0 {
            sum += digit
        }
    }
}

print("Сумма цифр, делящихся на 3: \(sum)")

