#include <iostream>
#include <vector>
#include <cmath>

using namespace std;

int main() {
    int n; // количество цветов
    cout << "Введите количество цветов: ";
    cin >> n;

    vector<int> water(n); // потребность каждого цветка
    cout << "Введите потребность каждого цветка через пробел:\n";
    for (int i = 0; i < n; ++i) {
        cin >> water[i];
    }

    int capacity; // объем лейки
    cout << "Введите объем лейки: ";
    cin >> capacity;

    int steps = 0;
    int current_water = capacity;
    int position = -1; // начинаем с реки

    for (int i = 0; i < n; ++i) {
        if (current_water >= water[i]) {
            steps += abs(position - i);
            current_water -= water[i];
            position = i;
        } else {
            // идем к реке и обратно
            steps += abs(position - (-1)); // до реки
            position = -1;
            current_water = capacity;

            steps += abs(position - i); // обратно к цветку
            current_water -= water[i];
            position = i;
        }
    }

    cout << "Общее количество шагов: " << steps << endl;
    return 0;
}
