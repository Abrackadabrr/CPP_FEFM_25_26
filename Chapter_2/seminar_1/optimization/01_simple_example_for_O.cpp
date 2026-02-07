int sumeven(int *x, int n) {
    int sum = 0;
    for (int i = 0; i < n; ++i)
    if ((x[i] % 2) == 0)
    sum += x[i];
    return sum;
}

int sum(int n) {
    if (n == 0)
        return 0;
    return n + sum(n-1);
}

int main () {
    int * x_p = new int[10]{1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    return sum(10);
}

// Посмотрим на ассемблерный листинг в зависимости от разлчных уровней O
// g++ -O0 simple_example_for_O.cpp -S -o asm.s
// g++ -O1 simple_example_for_O.cpp -S -o asm.s
// g++ -O2 simple_example_for_O.cpp -S -o asm.s
// g++ -O3 simple_example_for_O.cpp -S -o asm.s

// Список всех оптимизация можно найти здесь: https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
