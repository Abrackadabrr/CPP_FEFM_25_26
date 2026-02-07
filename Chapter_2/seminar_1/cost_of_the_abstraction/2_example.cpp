#include <algorithm>
#include <chrono>
#include <complex>
#include <concepts>
#include <iostream>
#include <random>


struct Point {
  int N_;  
  double *coords;

  Point(int N): N_(N), coords(new double[N]) {
    for (int i = 0; i < N; ++i) {
      coords[i] = 0;
    }
  }
  Point operator+(const Point &rhs) const {
    Point p(N_);
    for (int i = 0; i < N_; ++i) {
      p.coords[i] = coords[i] + rhs.coords[i];
    }
    return p;
  }
  Point operator*(double alpha) const {
    Point p(N_);
    for (int i = 0; i < N_; ++i) {
      p.coords[i] = alpha * coords[i];
    }
    return p;
  }
  Point operator/(double alpha) const { return this->operator*(1. / alpha); }
};

Point random_point(int N) {
  Point p(N);
  std::normal_distribution<double> d;
  std::default_random_engine re;
  for (int i = 0; i < N; ++i) {
    p.coords[i] = d(re);
  }
  return p;
}

void axpby(double alpha, Point x, double beta, Point &y) {
  for (int i = 0; i < x.N_; ++i) {
    y.coords[i] = alpha * x.coords[i] + beta * y.coords[i];
  }
}

void ax(double alpha, Point &x) {
  for (int i = 0; i < x.N_; ++i) {
    x.coords[i] *= alpha;
  }
}

int main() {
  size_t m = 1000000;
  size_t N;
  std::cin >> N;

  std::vector<Point> v(3*m, N);
  std::vector<Point> c(m, N);
  std::vector<double> a(m);
  std::vector<double> b(m);
  
  std::generate(v.begin(), v.end(), [N](){ return random_point(N); });
  std::generate(a.begin(), a.end(), [](){return rand() % 42;});
  std::generate(b.begin(), b.end(), [](){return rand() % 42;});

  {
    std::cout << "operators:\n";
    auto t1 = std::chrono::steady_clock::now();
    for (int i = 0; i < m; ++i) {
      c[i] = (v[3 * i] * a[i] + v[3 * i + 1] * b[i] + v[3 * i + 2] * a[i]) / 3;
    }
    auto t2 = std::chrono::steady_clock::now();
    auto dur = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    std::cout << dur.count() << std::endl;
    for (int i = 0; i < N; ++i) {
      std::cout << c.back().coords[i] << ' ';
    }
    std::cout << std::endl;
  }
  std::generate(c.begin(), c.end(), [N]() { return Point(N); });
  {
    std::cout << "axpby:\n";
    auto t1 = std::chrono::steady_clock::now();
    for (int i = 0; i < m; ++i) {
      axpby(a[i], v[3 * i], 1., c[i]);
      axpby(b[i], v[3 * i + 1], 1., c[i]);
      axpby(a[i], v[3 * i + 2], 1., c[i]);
      ax(1. / 3, c[i]);
    }
    auto t2 = std::chrono::steady_clock::now();
    auto dur = std::chrono::duration_cast<std::chrono::milliseconds>(t2 - t1);
    std::cout << dur.count() << std::endl;
    for (int i = 0; i < N; ++i) {
      std::cout << c.back().coords[i] << ' ';
    }
    std::cout << std::endl;
  }
}
// https://godbolt.org/z/xx46M9TKq