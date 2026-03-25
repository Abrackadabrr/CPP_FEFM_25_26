#include <iostream>
#include <vector>
#include "print_type.hpp"
#include "print_type.cpp"

int foo(int x) {return x;}

double GLOBAL_DOUBLE = 5;

double & foo(double x) {return GLOBAL_DOUBLE;}

int main() {
    // Какие типы будут у введенных переменных?
    auto d = foo(1.0);
    auto i = foo(1);

    std::cout << type_name<decltype(d)>() << std::endl;
    std::cout << type_name<decltype(i)>() << std::endl;
};
