// Давайте посмотрим на то, как можно раскрывать
// пачки параметров

#include <iostream>
#include <string>

template<typename ... Args>
int foo(Args ... args) {
    return sizeof...(Args);
}

template<typename ... Args>
??? bar(Args ... args) {

    // Тут происходит раскрытие пачки аргументов
    // и затем проброс внутрь функции foo
    return foo(args ...);
}

template<typename T>
T hush(T value) {
    return value * 10;
}

template<typename ... Args>
decltype(auto) bar_modified(Args ... args) {
    // Тут происходит раскрытие пачки аргументов,
    // затем применение к каждому аргументу функции hush
    // и затем проброс внутрь функции foo
    return foo(hush(args) ...);
}

template<typename ... Args>
decltype(auto) bar_very_modified(Args ... args) {
    // Тут происходит раскрытие пачки аргументов,
    // затем применение к каждому аргументу функции hush,
    // затем для каждого аргумента вычисляется значение arg + hush(arg),
    // и затем проброс внутрь функции foo
    return foo(args + hush(args) ...); // == foo(agr1 + h(arg1), ....)
}

template<typename ... Args>
decltype(auto) bar_very_very_modified(Args ... args) {
    // Тут происходит  совместное раскрытие 
    // пачки аргументов и пачки параметров
    return foo(static_cast<const Args*>(&args) ...);
}


int main() {
    std::cout << bar_very_modified(1, 2, 3, 4, 5) << std::endl;
}

// Паттерн раскрытия -- это наиболее длинное синтаксически 
// корректное выражение, стоящее перед "..."
