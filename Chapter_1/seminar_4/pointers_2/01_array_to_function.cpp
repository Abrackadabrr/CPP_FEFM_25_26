#include <iostream>

void print_array(int a[3], int n) {
	for (int i = 0; i < n; i++)
		std::cout << a[i] << ' ';
	std::cout << std::endl;
}

int main() {
	int a[3] = {0, 1, 2};
	int *a_p = new int[5];

	// где при вызове происходит преобразование типа, а где нет?
	print_array(a, 3);
	print_array(a_p, 3);
	// ответ закопан в ответе на вопрос "одинаковый ли тип у a и а_р?"
	
}
