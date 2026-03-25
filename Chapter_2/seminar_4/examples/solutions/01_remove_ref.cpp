// Давайте напишем какую-то штуку, которая
// будет работать как auto

// Эта конструкция должна работать с типами,
// при этом уметь удалять & и const

// Использовать будет при этом механизм специализаций шаблонов

#include "../type_deduction/deduce_type.hpp"

template<typename T>
struct remove_reference {
    using type = T;
};

template<typename T>
struct remove_reference<T&> {
    using type = T;
};


int main() {
    using type = int&;
    using out_type = remove_reference<type>::type;

    int value = 6;
    deduce_type<out_type> d(value);
}

