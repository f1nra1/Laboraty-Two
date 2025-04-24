import Foundation

func readInt() -> Int {
    var input: Int?
    repeat {
        if let line = readLine() {
            input = Int(line)
        }
    } while input == nil
    return input!
}

func main() {
    var sum = 0

    print("Введите количество чисел:")
    let n = readInt()

    for i in 1...n {
        print("Введите число \(i):")
        var number = abs(readInt())

        // Разбираем число по цифрам
        while number > 0 {
            let digit = number % 10
            if digit % 3 == 0 && digit != 0 {
                sum += digit
            }
            number /= 10
        }
    }

    print("Сумма цифр, делящихся на 3: \(sum)")
}

main()