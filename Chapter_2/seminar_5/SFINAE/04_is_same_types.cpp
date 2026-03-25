// Давайте напишем штуку, которая будет 
// сравнивать типы

#include <iostream>
#include "integral_constant.hpp"

template<typename t1, typename t2>
struct is_same : false_type {};

template<typename T>
struct is_same<T, T> : true_type {};

int main() {
    std::cout << is_same<int, double>::value << std::endl;
    std::cout << is_same<int, int>::value << std::endl;
}
