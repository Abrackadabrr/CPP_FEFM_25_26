#include <iostream>
#include <string>
#include <vector>

template<typename ... Args>
void foo(Args ... args) {
    std::cout << sizeof...(Args) << std::endl;
}

int main() {
    foo(1);
    foo(1234,2345,2345);
    foo(34, 45, 56, 24, 3., std::string{}, std::vector<int>{1, 1, 2});
}
