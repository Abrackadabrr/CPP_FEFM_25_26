#include <iostream>
#include "demangle.hpp"


template<typename T>
void deduce_type(T /*value*/) {
    std::cout << demangle(typeid(T).name()) << std::endl;
}

template<typename T>
T max(T lhs, T rhs) {
    return lhs < rhs ? rhs : lhs; 
}

int main() {

    // deduce_type(5);  // int
    // deduce_type(5.); // double 
    // deduce_type(5.f); // float

    int a = 5;
    deduce_type(a);  // int

    const int ca = 4;
    deduce_type(ca);  // const int

    max(a, ca);

    int & a_r = a;

    max(ca, a_r); 
    
    deduce_type(a_r);  // int &

    const int & ca_r = ca;
    deduce_type(ca_r);  // const int &

    int && a_rr = 5;
    deduce_type(a_rr);  // const int &

    int * a_ptr = &a;
    deduce_type(a_ptr); // int *
}


// Получается, что компилятор отрубает const и &/&&
