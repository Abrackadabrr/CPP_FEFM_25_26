#include <iostream>

int main() {
    // инициализация + присваивание
    unsigned a_lonely_uint = 10; // 0xA;
    
    // инициализация, затем присваивание
    int a_lonely_char;
    // a_lonely_char = 'w';

    // инициализаровать переменную можно только один раз
    // a_lonely_char = 'k';

    // модификатор const делает переменную недоступную к записи после инициализации
    // const int CONSTANT_INT;
    // CONSTANT_INT = 40;
    
    // и недоступную к инициализации без присваивания
    // const int ANOTHER_CONSTANT_INT;
    // ANOTHER_CONSTANT_INT = 10;

    // = CONSTANT_INT;
    // CONSTANT_INT = ANOTHER_CONSTANT_INT;
    
    std::cout << a_lonely_char << std::endl;
    // std::cout << CONSTANT_INT << std::endl;
    return 0;
}
