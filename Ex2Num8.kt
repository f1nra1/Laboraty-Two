import kotlin.math.abs

fun main() {
    print("Введите количество цветов: ")
    val n = readLine()!!.toInt()

    val water = mutableListOf<Int>()
    print("Введите потребность каждого цветка через пробел:\n")
    water.addAll(readLine()!!.split(" ").map { it.toInt() })

    print("Введите объем лейки: ")
    val capacity = readLine()!!.toInt()

    var steps = 0
    var currentWater = capacity
    var position = -1 // начинаем с реки

    for (i in 0 until n) {
        if (currentWater >= water[i]) {
            steps += abs(position - i)
            currentWater -= water[i]
            position = i
        } else {
            steps += abs(position - (-1)) // до реки
            position = -1
            currentWater = capacity

            steps += abs(position - i) // обратно к цветку
            currentWater -= water[i]
            position = i
        }
    }

    println("Общее количество шагов: $steps")
}

