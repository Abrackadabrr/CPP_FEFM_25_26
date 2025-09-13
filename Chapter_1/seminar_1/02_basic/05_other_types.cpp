#include <iostream>

/* 
    производные типы --- это указатели, ссылки, массивы
    int*
    int&
    int[8]
*/

// пользовательнские типы --- то, что создает пользователь: стуктура, класс, enum и так далее

struct UserStructure {
    int first_int;
    bool second_bool;
    long third_long;
};

int main() {
    UserStructure structure1;
    UserStructure structure2;
    // присваивание поля в структуру происходит через точку
    structure1.first_int = 5;
    structure1.second_bool = true;
    structure1.third_long = 2300;
    // ---------
    structure2.first_int = 5;
    structure2.second_bool = true;
    structure2.third_long = 2300;
    // посмотрим на размер типа. что будет выведено на экран?
    std::cout << structure1.first_int << ' ' 
    << structure1.second_bool << ' ' 
    << structure1.third_long << std::endl;
    return 0;
}
