// Мы не хотим копировать код, так что пусть типы "выводит" компилятор

#include <iostream>

template <typename value_type>
value_type max(value_type lhs, value_type rhs) {
    return lhs < rhs ? rhs : lhs;
}

// И больше ничего!

// Шаблон -- это некоторое правило, по которому необходимо 
// "сконструировать" то или иное имя в программе.
// В данном примере мы явно задали шаблон для функции max

int main() {
    int a = 0;
    int b = 1;
    float c = 3;
    float d = 4;
    std::cout << max<float>(a, b) << std::endl;
    std::cout << max<int>(c, d) << std::endl;
}
