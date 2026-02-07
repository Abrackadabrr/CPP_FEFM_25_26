#include <iostream>

double pow_6(double x) {
    return x * x * x * x * x * x;
}

int main() {
    double n;
    std::cin >> n;
    return pow_6(n);
}