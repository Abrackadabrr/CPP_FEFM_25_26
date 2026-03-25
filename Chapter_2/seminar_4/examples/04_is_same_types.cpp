// Давайте напишем штуку, которая будет 
// сравнивать типы

#include <iostream>

template<typename F, typename S>
struct is_same {
    constexpr static bool value = false;
};

template<typename F>
struct is_same<F, F> {
    constexpr static bool value = true;
};

int main() {
    std::cout << is_same<int, double>::value << std::endl;
    std::cout << is_same<int, int&>::value << std::endl;
}
