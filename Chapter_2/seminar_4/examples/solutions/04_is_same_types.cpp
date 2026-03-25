#include <iostream>
#include "../../type_deduction/deduce_type.hpp"

template<typename T, typename U>
struct is_same {
    const static bool value = false; 
};

template<typename T>
struct is_same<T, T> {
    const static bool value = true; 
};

template<typename T, typename U>
bool is_same_v = is_same<T, U>::value;

int main() {
    const int & a = 10;

    auto v = a;

    deduce_type<decltype(v)> d0(v);

    std::cout << std::boolalpha << is_same_v<decltype(v), std::decay_t<decltype(a)>> << std::endl;
}