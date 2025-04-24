using System;

class Program
{
    static void Main()
    {
        int n, sum = 0;
        Console.Write("Введите количество чисел: ");
        n = int.Parse(Console.ReadLine());

        for (int i = 0; i < n; i++)
        {
            int number;
            Console.Write($"Введите число {i + 1}: ");
            number = int.Parse(Console.ReadLine());

            // Обрабатываем отрицательные числа
            if (number < 0)
            {
                number = -number;
            }

            // Разбираем число по цифрам
            while (number > 0)
            {
                int digit = number % 10;
                if (digit % 3 == 0 && digit != 0)
                {
                    sum += digit;
                }
                number /= 10;
            }
        }

        Console.WriteLine($"Сумма цифр, делящихся на 3: {sum}");
    }
}