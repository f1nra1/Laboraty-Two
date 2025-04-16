#include <iostream>
using namespace std;

int main()
{
	int n;
	cout << "Введите n: ";
	cin >> n;

	for(int i = 1; i <= n; i++)
	{
		for(char ch = 'A' + n - 1; ch >= 'A' + n - i; ch--)
		{
			cout << ch << " ";
		}
		cout << endl;
	}
	return 0;
}
