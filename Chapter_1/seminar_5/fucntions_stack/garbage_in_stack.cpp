#include <iostream>

void f() {
    int mas[100];
    mas[32] = 1241242;
    mas[44] = 3;
}

void g() {
    int mas[100];
    std::cout << mas[32] << ' ' << mas[44] << std::endl;
}

int main() {
    int a, b;
    // функция f поделала на стеке свои дела и перестала им пользоваться
    f();
    // эту же память отдали функции g
    g();
    return 0;
}
