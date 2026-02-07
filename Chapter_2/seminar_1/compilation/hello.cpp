
#include <iostream>

int main() {
    std::cout << "Hello, World!" << std::endl;
}

// Мы делаем это
// g++ hello.cpp -o hello

// На самом деле происходит это
// g++ hello.cpp --verbose -save-temps

// Первый этап -- препроцессинг. Посмотрим на файл после него
// g++ hello.cpp -E -o hello

// В preprocessing посмотрим подробнее что происходит
