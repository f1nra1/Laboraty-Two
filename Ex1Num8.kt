fun main() {
    print("Введите n: ")
    val n = readLine()?.toIntOrNull() ?: return

    for (i in 1..n) {
        for (ch in ('A' + n - 1).code downTo ('A' + n - i).code) {
            print("${ch.toChar()} ")
        }
        println()
    }
}

