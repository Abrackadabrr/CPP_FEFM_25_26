#include <iostream>

// Теперь добавим сюда произвольное количество аргументов
// Где поставим?
template<typename Callable, typename ... Args>
decltype(auto) invoke(Callable func, Args&& ... args) {
    return func(std::forward<Args>(args) ...);
}

int foo(int, int) { return 1; }

int main() {
    std::cout << invoke(foo, 1, 1) << std::endl; 
}
