#include <iostream>
#include "print_type.hpp"
#include "print_type.cpp"

template<typename T>
struct SomeStr {

    template<typename U>
    static U get(U&& value) {
        std::cout << "value type = " << type_name<decltype(value)>() << std::endl;
        return value;
    };
};

int main() {
    std::cout << SomeStr<int>::get(5) << std::endl;

    double b = 3.;
    auto && c = std::move(b);
    std::cout << SomeStr<double>::get(c) << std::endl;
}
