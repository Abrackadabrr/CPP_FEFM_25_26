#include <iostream>
#include <vector>
#include <chrono>

double sum_over_vector(const std::vector<double>& values) {
    double res[4];
    res[0] = 0; res[1] = 0; res[2] = 0; res[3] = 0;
    for (int i = 0; i < values.size(); i += 4) {
        res[0] += values[i];
        res[1] += values[i+1];
        res[2] += values[i+2];
        res[3] += values[i+3];
    }
    return res[1] + res[2] + res[3] + res[0];
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
// g++ 04_for_cycle_vectorized.cpp
// g++ 04_for_cycle_vectorized.cpp -O1
// g++ 04_for_cycle_vectorized.cpp -O2
// g++ 04_for_cycle_vectorized.cpp -O3
// g++ 04_for_cycle_vectorized.cpp -O3 -ffast-math
// g++ 04_for_cycle_vectorized.cpp -O3 -ffast-math -march-native

// И посмотрим на ассемблер на годболте
// https://godbolt.org/z/efP13srPM
