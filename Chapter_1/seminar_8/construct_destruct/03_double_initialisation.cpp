#include <iostream>

// Попробуем угадать что выведет этот код

struct myInt {
	int a;

	myInt() {
		a = 0;
		std::cout << "default" << std::endl;
	}

	myInt(int value) {
		a = value; 
		std::cout << "direct" << std::endl;
	}
};

struct Node {
	myInt value_;
	Node * next_;

	Node(int a) {
		value_ = myInt{a};
		next_ = nullptr;
	}
};

int main() {
	Node node{3};
}

// что будет на экране?
