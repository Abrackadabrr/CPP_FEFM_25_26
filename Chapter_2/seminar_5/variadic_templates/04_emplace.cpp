#include <iostream>
#include <vector>

struct S {
    int a; short b;

    S(int a_, int b_) : a(a_), b(b_) {
        std::cout << "value ctor" << std::endl;
    }
    S(const S& other): a(other.a), b(other.b) {
        std::cout << "copy ctor" << std::endl;
    }
    S(S&& other): S(other) {
        std::cout << "move ctor" << std::endl;
    }
    S& operator=(const S &) = delete;
    S& operator=(S&&) = delete;
};

int main() {
    std::vector<S> v{3, S{30, 40}};
    std::cout << std::endl;

    v.reserve(6);
    std::cout << std::endl;

    v.push_back(S{7, 8});
    std::cout << "emplace below" << std::endl;

    // Метод emplace принимает 
    // произвольное число аргмуентов
    v.emplace_back(7, 8);
    std::cout << std::endl;

    v.emplace_back(S {7, 8});
}
