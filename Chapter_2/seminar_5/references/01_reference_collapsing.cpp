#include <iostream>
#include "print_type.hpp"
#include "print_type.cpp"


// Давайте посмотрим на auto, уточненное разными штуками

int main() {
    int a = 5;
    const int ca = a;
    const int & ca_r = a;

    auto b = ca_r;      // int
    auto & c = a;       // int &
    const auto & d = ca_r;  // const int &

    std::cout <<  type_name<decltype(b)>() << std::endl;
    std::cout <<  type_name<decltype(c)>() << std::endl;
    std::cout <<  type_name<decltype(d)>() << std::endl;

    std::cout << "/ ---- auto && ---- /" << std::endl;

    auto && e = a;   // int&
    auto && f = ca_r;// const int &
    auto && g = c;   // int &
    auto && h = ca;  // const int   
    auto && j = 5;   // int 
    auto && e_but_moved = std::move(a); // int &&

    std::cout <<  type_name<decltype(e)>() << std::endl;
    std::cout <<  type_name<decltype(f)>() << std::endl;
    std::cout <<  type_name<decltype(g)>() << std::endl;
    std::cout <<  type_name<decltype(h)>() << std::endl;
    std::cout <<  type_name<decltype(j)>() << std::endl;
    std::cout <<  type_name<decltype(e_but_moved)>() << std::endl;
}
