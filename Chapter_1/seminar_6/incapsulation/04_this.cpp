#include <iostream>

struct MyClass {
	int a;
	int b;

	MyClass * getThis() {
		return this;	
	}
};

int main() {
	MyClass a{4, 5};
	std::cout << a.getThis() << std::endl;
	std::cout << &a << std::endl;
}
