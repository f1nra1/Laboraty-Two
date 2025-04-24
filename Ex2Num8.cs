using System;
using System.Collections.Generic;

class Program
{
    static void Main()
    {
        // Ввод количества цветов
        Console.Write("Введите количество цветов: ");

        int n = int.Parse(Console.ReadLine());

        // Ввод потребности каждого цветка
        List<int> water = new List<int>();
        Console.WriteLine("Введите потребность каждого цветка через пробел:");
        string[] input = Console.ReadLine().Split();
        for (int i = 0; i < n; i++)
        {
            water.Add(int.Parse(input[i]));
        }

        // Ввод объема лейки
        Console.Write("Введите объем лейки: ");
        int capacity = int.Parse(Console.ReadLine());

        int steps = 0;
        int currentWater = capacity;
        int position = -1; // Начинаем с реки

        for (int i = 0; i < n; i++)
        {
            if (currentWater >= water[i])
            {
                steps += Math.Abs(position - i);
                currentWater -= water[i];
                position = i;
            }
            else
            {
                // Идем к реке и обратно
                steps += Math.Abs(position - (-1)); // До реки
                position = -1;
                currentWater = capacity;

                steps += Math.Abs(position - i); // Обратно к цветку
                currentWater -= water[i];
                position = i;
            }
        }

        // Выводим результат
        Console.WriteLine("Общее количество шагов: " + steps);
    }
}

