#include <iostream>

struct MyClass {
	int c;
	int a;
	int b;

	MyClass(): c(5), b(c / 2), a(c / 1324) {}
	// порядок инициализации согласлован не со списком инициализации,
	// а с порядок объявления полей
	// в данном кейсе в любом случае будет порядок a, b, c
};


int main() {
	MyClass c{};
	std::cout << c.a << ' ' << c.b << ' ' << c.c << std::endl;
}
