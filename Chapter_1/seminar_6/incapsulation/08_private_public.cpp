#include <iostream>

struct stack {
private:
	int size;
	int *a;
	int top;

	int get_int() {
		return 10;
	}

public:
	stack(int stack_size) {
		a = new int[size];
		top = 0;
		std::cout << "Ctor" << std::endl;
	}

	~stack() {
		delete[] a;
		std::cout << "Dtor" << std::endl;
	}
};

int main() {
	stack s1(40);
}
