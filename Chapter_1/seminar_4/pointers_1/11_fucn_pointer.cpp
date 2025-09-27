#include <iostream>

void incr (int * x_pointer) {
    (*x_pointer) += 1;
    // *x_pointer = (*x_pointer) + 1;
}

void incr_1(int x) {
    x += 1;
}

int main ( ) {
    int x = 1;
    int y = 1;
    for (int i = 0; i < 3; i++) {
        incr(&x);
        incr_1(y);
        std::cout << "x = " << x << std::endl;
        std::cout << "y = " << y << std::endl;
    }
    return 0;
}
