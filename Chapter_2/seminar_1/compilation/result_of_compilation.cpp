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

// Результат компиляции -- ассембрерный листинг
// g++ result_of_compilation.cpp -S -o asm.s