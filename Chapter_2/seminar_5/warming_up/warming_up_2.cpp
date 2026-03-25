#include <iostream>
#include "warming.hpp"

template<typename T>
class MyTWrapper {
    MyT<T> myT;

public:
    // Сделаем логичный конструктор
    MyTWrapper(const MyT<T>& value) : myT(value) {};
    // А теперь я хочу сделать "move" 
    // MyT внутрь этого враппера из внешнего кода
    MyTWrapper(MyT<T>&& value) : myT(std::move(value)) {};
    // Получилось?
};

int main() {
    MyT<int> a{5};

    MyTWrapper wrap1(a);
    MyTWrapper wrap2(MyT<int>{7});
}
