#include "../references/print_type.hpp"
#include "../references/print_type.cpp"

#include <iostream>

template<typename ... TypePack>
void print_type_names() {
    (std::cout << ... << (type_name<TypePack>() + " ")) << std::endl;
}

template<typename ... TypePack>
decltype(auto) type_names(TypePack ...) {
    return ((type_name<TypePack>() + " ") + ...);
}


template<typename ... TypesPack>
void foo(TypesPack ... args) {
    print_type_names<TypesPack...>();
}

int main() {
    std::cout << type_names(1, 1, 1, 1, 1, 1) << std::endl;
}
