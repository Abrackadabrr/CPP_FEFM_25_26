#include <iostream>

// Функторы можно куда-то передавать как объекты

class ConstantMultiplier{
    int a = 0;

public:
    ConstantMultiplier(int constant) { a = constant;};  // нормальный конструктор?
    int operator()(int b) const {return b * a;}; 
};

template<typename Callable>
int invoke(const Callable& functor, int a) {
    // --- some stuff --- //
    return functor(a);
};

// Что нужно написать в возвращаемое значение?
// Что нужно написать в аргументы?

int main() {
    ConstantMultiplier f_10(10);
    std::cout << invoke(f_10, 10) << std::endl;;
}

// Надо как-то понять, что мы будем передавать в шаблоны

// Пример не надуман, а имеет четкое и 
// понятное применение, например, интегрирование
