#include <iostream>

struct Animal {
	virtual void say(std::ostream&) = 0;  
    Animal() {std::cout << "Animal Ctor" << std::endl;}
    ~Animal() {std::cout << "Animal Dtor" << std::endl;}
};

struct Dog: public Animal {
    Dog() {std::cout << "Dog Ctor" << std::endl;}
    ~Dog() {std::cout << "Dog Dtor" << std::endl;}
};

struct Cat: public Animal {
    Cat() {std::cout << "Cat Ctor" << std::endl;}
    ~Cat() {std::cout << "Cat Dtor" << std::endl;}
};

struct CrazyDog: public Dog {
    CrazyDog() {std::cout << "CrazyDog Ctor" << std::endl;}
    ~CrazyDog() {std::cout << "CrazyDog Dtor" << std::endl;}
};

// что на экране?

int main() {
    Animal* cd = new CrazyDog{};
    delete cd;
}
