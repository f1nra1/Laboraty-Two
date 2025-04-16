using System;

class Program
{
    static void Main()
    {
        int n, sum = 0;
        Console.Write("Введите количество чисел: ");
        n = int.Parse(Console.ReadLine());

        for (int i = 0; i < n; i++) // Считываем каждое число
        {
            Console.Write("Введите число " + (i + 1) + ": ");
            string input = Console.ReadLine(); // Вводим одно число как строку

            foreach (char c in input) // Разбираем каждое число
            {
                if (Char.IsDigit(c)) // Проверяем, является ли символ цифрой
                {
                    int digit = c - '0'; // Преобразуем символ в цифру
                    if (digit % 3 == 0)
                    {
                        sum += digit;
                    }
                }
            }
        }

        Console.WriteLine("Сумма цифр, делящихся на 3: " + sum);
    }
}

