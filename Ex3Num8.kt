fun main() {
    print("Введите количество чисел: ")
    val n = readLine()!!.toInt()

    var sum = 0

    for (i in 1..n) {
        print("Введите число $i: ")
        val input = readLine()!!

        for (c in input) {
            if (c.isDigit()) {
                val digit = c.digitToInt()
                if (digit % 3 == 0) {
                    sum += digit
                }
            }
        }
    }

    println("Сумма цифр, делящихся на 3: $sum")
}

