fun main() {
    var sum = 0

    print("Введите количество чисел: ")
    val n = readln().toInt()

    for (i in 1..n) {
        print("Введите число $i: ")
        var number = readln().toInt()

        // Обрабатываем отрицательные числа
        if (number < 0) {
            number = -number
        }

        // Разбираем число по цифрам
        var temp = number
        while (temp > 0) {
            val digit = temp % 10
            if (digit % 3 == 0 && digit != 0) {
                sum += digit
            }
            temp /= 10
        }
    }

    println("Сумма цифр, делящихся на 3: $sum")
}