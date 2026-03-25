#include "../type_deduction/deduce_type.hpp"

int main() {
    int x = 0;
    double x_v = x + 1.;
    int *x_ptr = &x;

    //deduce_type<decltype(x)> d0(x); // int
    // deduce_type<decltype(x + 1.)> d1(x_v); // double
    // deduce_type<decltype(std::move(x))> d2(x);
    // deduce_type<decltype(x_ptr[0])> d3(x);  // int

    deduce_type<decltype(x)> d4(x);
    deduce_type<decltype((x))> d5(x);
}
