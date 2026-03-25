template<typename Callable, typename Arg>
decltype(auto) invoke(Callable func, Arg&& args) {
    return func(std::forward<Arg>(args));
}

// Такая функция invoke принимает только один аргумент
// А что если у функции foo таких аргументов несколько?

// Тогда нам нужно "много шаблонных параметров"

int foo(int, int) { return 1; }

int main() {
    invoke(foo, 1, 1);
}
