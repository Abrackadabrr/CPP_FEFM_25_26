#include <iostream>
#include "demangle.hpp"

// Чтобы сказать компилятору, что мы умнее, чем он
// необходимо как-то уточнить тип

// Давайте для начала навесим ссылку

template<typename T>
struct deduce_type {
    deduce_type(T& value) {
        std::cout << demangle(typeid(*this).name()) << std::endl;
    }
};

int main() {
    int a = 5;
    deduce_type d1(a);

    const int ca = 4;
    deduce_type d2(ca);  // const int

    int & a_r = a;
    deduce_type d3(a_r);  // T == int

    const int & ca_r = ca;
    deduce_type d4(ca_r);  // T == const int

    int && a_rr = 5;
    deduce_type d5(a_rr);  // T == int

    int * a_ptr = &a;
    deduce_type d6(a_ptr); // T == int *
}


// Уточнение типа ссылкой позволяет компилятору более точно
// выводить настоящий передаваемый тип переменной.

// Уточнение указателем работает аналогично

// Заметим, что компиляция идет только с -std=c++17, то есть только начиная со стандарта 2017
// Здесь фактически комплятор вывел тип класса по агрументам конструктора!

// Уточнение const ничего не дает по сравнению с неуточнением. Попробуйте сами
