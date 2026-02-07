#include <algorithm>
#include <chrono>
#include <complex>
#include <concepts>
#include <iostream>
#include <random>

constexpr size_t N = 3;

template <size_t N> struct Point {
  double coords[N];

  Point() {
    for (int i = 0; i < N; ++i) {
      coords[i] = 0;
    }
  }
  Point operator+(const Point<N> &rhs) const {
    Point<N> p;
    for (int i = 0; i < N; ++i) {
      p.coords[i] = this->coords[i] + rhs.coords[i];
    }
    return p;
  }
  Point operator*(double alpha) const {
    Point<N> p;
    for (int i = 0; i < N; ++i) {
      p.coords[i] = alpha * this->coords[i];
    }
    return p;
  }
  Point operator/(double alpha) const { return this->operator*(1. / alpha); }
};

template <size_t N> Point<N> random_point() {
  Point<N> p;
  std::normal_distribution d;
  std::default_random_engine re;
  for (int i = 0; i < N; ++i) {
    p.coords[i] = d(re);
  }
  return p;
}

template <size_t N>
void axpby(double alpha, Point<N> x, double beta, Point<N> &y) {
  for (int i = 0; i < N; ++i) {
    y.coords[i] = alpha * x.coords[i] + beta * y.coords[i];
  }
}

template <size_t N> void ax(double alpha, Point<N> &x) {
  for (int i = 0; i < N; ++i) {
    x.coords[i] *= alpha;
  }
}

int main() {
  size_t m = 1000000;
  std::vector<Point<3>> v(m * 3);
  std::vector<Point<3>> c(m);
  std::vector<double> a(m);
  std::vector<double> b(m);
  
  std::generate(v.begin(), v.end(), random_point<3>);
  std::generate(a.begin(), a.end(), [](){return rand() % 42;});
  std::generate(b.begin(), b.end(), [](){return rand() % 42;});

  {
    std::cout << "operators:\n";
    auto t1 = std::chrono::steady_clock::now();
    for (int i = 0; i < m; ++i) {
      c[i] = (v[3 * i] * a[i] + v[3 * i + 1] * b[i] + v[3 * i + 2] * a[i]) / 3;
    }
    auto t2 = std::chrono::steady_clock::now();
    auto dur = std::chrono::duration_cast<std::chrono::nanoseconds>(t2 - t1);
    std::cout << dur.count() << std::endl;
    for (int i = 0; i < N; ++i) {
      std::cout << c.back().coords[i] << ' ';
    }
    std::cout << std::endl;
  }
  std::generate(c.begin(), c.end(), []() { return Point<3>(); });
  {
    std::cout << "axpby:\n";
    auto t1 = std::chrono::steady_clock::now();
    for (int i = 0; i < m; ++i) {
      axpby<3>(a[i], v[3 * i], 1., c[i]);
      axpby<3>(b[i], v[3 * i + 1], 1., c[i]);
      axpby<3>(a[i], v[3 * i + 2], 1., c[i]);
      ax(1. / 3, c[i]);
    }
    auto t2 = std::chrono::steady_clock::now();
    auto dur = std::chrono::duration_cast<std::chrono::nanoseconds>(t2 - t1);
    std::cout << dur.count() << std::endl;
    for (int i = 0; i < N; ++i) {
      std::cout << c.back().coords[i] << ' ';
    }
    std::cout << std::endl;
  }
}
