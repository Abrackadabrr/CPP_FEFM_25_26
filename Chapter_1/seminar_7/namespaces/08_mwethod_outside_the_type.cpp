#include <iostream>

namespace A {
	
struct myClass {
	int a_;
	myClass(int a);
	int getA();
	~myClass();
};
}

A::myClass::myClass(int a) {
	a_ = a;
}

A::myClass::~myClass() {};

int A::myClass::getA() {
	return a;
}

// классы и структуры тоже опеределяют свое просранство имен
// так что теперь синтаксис определения функции вне класса не есть запоминалка с магией
