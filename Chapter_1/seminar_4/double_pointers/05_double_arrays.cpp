#include <iostream>

using namespace std;

//void print_array(int **a);
void print_array(int (*a) [5]) {
	for (int i = 0; i < 5; i++)
		for (int j = 0; j < 5; j++)
			cout << a[i][j] << ' ';
}

int main () {
	int m[4][5]={0};
	std::cout << typeid(m).name() << std::endl;
	for (int i = 0; i < 5; i++)
		for (int j = 0; j < 5; j++)
			m[i][j] = i * 5 + j;
	print_array(m);
	cout << endl;
	return 0;
}
