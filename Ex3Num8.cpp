#include <iostream>
#include <string>
#include <sstream>

using namespace std;

int main()
{
    int n, sum = 0;
    cout << "Введите количество чисел: ";
    cin >> n;
    cin.ignore();

    for (int i = 0; i < n; i++) // Считываем каждое число
    {
        string input;
        cout << "Введите число " << i + 1 << ": ";
        getline(cin, input); // Вводим одно число как строку

        for (char c : input)  // Разбираем каждое число
        {
            if (isdigit(c)) // Проверяем, является ли символ цифрой
            {
                int digit = c - '0'; // Преобразуем символ в цифру
                if (digit % 3 == 0)
                {
                    sum += digit;
                }
            }
        }
    }
    cout << "Сумма цифр, делящихся на 3: " << sum << endl;
    return 0;
}

