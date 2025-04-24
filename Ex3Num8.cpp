#include <iostream>
using namespace std;

int main()
{
    int n;
    cout << "Введите количество чисел: ";
    cin >> n;

    int sum = 0;
    for (int i = 0; i < n; i++)
    {
        int number;
        cout << "Введите число " << i + 1 << ": ";
        cin >> number;


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

    cout << "Сумма цифр, делящихся на 3: " << sum << endl;
    return 0;
}