#include <iostream>

#include "print_type.hpp"
#include "print_type.cpp"

//  Reference collapsing работает так: 
//  1) Если есть &, то &
//  2) Если && + &&, то &&

// А ещё должны выполниться две вещи
// 1) Уточнение либо &, либо && и ничем больше
// 2) Тип должен выводиться, а не подставляться

int main() {
    int a = 5;
    const int ca = a;
    const int & ca_r = a;

    auto b = ca_r;
    auto & c = a;
    const auto & d = ca_r;

    std::cout << "/ ---- auto && ---- /" << std::endl;

    auto && e = a;  // вот сюда добавляется ещё одна ссылка, 
                    // то есть у нас получается int & && -> int &
    auto && f = ca_r;  // const int & && -> const int &
    auto && g = c;    
    auto && h = ca;
    auto && j = 5;

    std::cout <<  type_name<decltype(e)>() << std::endl;
    std::cout <<  type_name<decltype(f)>() << std::endl;
    std::cout <<  type_name<decltype(g)>() << std::endl;
    std::cout <<  type_name<decltype(h)>() << std::endl;
    std::cout <<  type_name<decltype(j)>() << std::endl;

    std::cout << "/ ---- auto & ---- /" << std::endl;

    auto & e1 = a;
    auto & f1 = ca_r;  // const int & & f1 -> const int &
    auto & g1 = c;      // int & & -> int &
    auto & h1 = ca;     // const int &

    std::cout <<  type_name<decltype(e1)>() << std::endl;
    std::cout <<  type_name<decltype(f1)>() << std::endl;
    std::cout <<  type_name<decltype(g1)>() << std::endl;
    std::cout <<  type_name<decltype(h1)>() << std::endl;
}
