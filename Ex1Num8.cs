using System;

class Program
{
    static void Main()
    {
        int n;
        Console.Write("Введите n: ");
        n = int.Parse(Console.ReadLine());

        for (int i = 1; i <= n; i++)
        {
            for (char ch = (char)('A' + n - 1); ch >= 'A' + n - i; ch--)
            {
                Console.Write(ch + " ");
            }
            Console.WriteLine();
        }
    }
}

