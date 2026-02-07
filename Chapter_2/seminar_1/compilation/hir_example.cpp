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

// Промежуточное представление HIR можно получить так
// g++ -O2 -fdump-tree-gimple -c file.cpp

// Представление HIR с оптимизациями
// g++ -O2 -fdump-tree-optimized -c file.cpp

// Есть ещё LIR, на котором проводятся машинно зависимые оптимизации, но мы не посмотрим их

