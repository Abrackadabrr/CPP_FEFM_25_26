#include <iostream>
#include <vector>
#include <chrono>

double sum_over_vector(const std::vector<double>& values) {
    double res = 0;
    for (int i = 0; i < values.size(); i += 1) {
        res += values[i];
    }
    return res;
}


std::vector<double> get_random_vector(int n) {
    std::vector<double> vec{}; vec.resize(n);
    for (int i = 0; i < n; ++i) {
        vec[i] = rand() % 100;
    }
    return vec;
}

int main() {
    constexpr unsigned long n = 1024 * 1024 * 1024;
    std::vector<double> v = get_random_vector(n);

    using clock = std::chrono::high_resolution_clock;

    const auto t0 = clock::now();
    double res = sum_over_vector(v);
    const auto t1 = clock::now();

    const auto dt_ms = std::chrono::duration_cast<std::chrono::duration<double, std::milli>>(t1 - t0).count();
    std::cout << "sum_over_vector time: " << dt_ms << " ms\n";
    return res;
    
}

// Сравним время работы функции по расчету суммы элементов в векторе в следующем исполнении
// g++ 03_for_cycle_default.cpp
// g++ 03_for_cycle_default.cpp -O1
// g++ 03_for_cycle_default.cpp -O2
// g++ 03_for_cycle_default.cpp -O3
// g++ 03_for_cycle_default.cpp -O3 -ffast-math
// g++ 03_for_cycle_default.cpp -O3 -ffast-math -march-native

// И посмотрим на ассемблер на годболте
// https://godbolt.org/z/Pa6hfE7bE
