inline int add(int a, int b) {
    return a + b;
}

int sink = 0;

int main() {
    int s1 = 0, s2 = 0;

    for (int i = 0; i < 1000000; ++i) {
        s2 += add(i, 3);
    }

    sink = s1 + s2;
    return sink & 1;
}

// Компилируем это с -fno-inline
// g++ inline_demo.cpp -fno-inline -S -O2 -masm=intel
// g++ inline_demo.cpp  -S -O2 -masm=intel

// Посмотреть как при этом изменился и весь код в main.
// Обратить внимание на знак сравнения в цикле
