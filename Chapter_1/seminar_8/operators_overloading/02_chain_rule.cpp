// Операторы вида op= (кроме >= и <=) 
// являются цепочечными и правоассоциативными

#include <iostream>

struct Vector2d {
    double x, y;

    Vector2d& operator+=(const Vector2d& rhs) {
        x += rhs.x; 
        y += rhs.y;
        return *this;
    };

    Vector2d& operator*=(double rhs) {
        x *= rhs; 
        y *= rhs;
        return *this;
    };

    Vector2d& operator-=(const Vector2d& rhs) {
        x -= rhs.x;
        y -= rhs.y;
        return *this;
    };

    Vector2d& operator=(const Vector2d& rhs) {
        x = rhs.x;
        y = rhs.y;
        return *this;
    };
};

int main() {
    Vector2d a{1, 2};
    Vector2d b{2, 1};
    a += b;
    Vector2d c{3, 0};
    c = a = b;
    std::cout << c.x << ' ' << c.y << std::endl;
};

// Что на выводе?