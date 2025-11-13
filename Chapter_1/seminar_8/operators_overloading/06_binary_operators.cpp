// Операторы есть и бинарные
// их можно реализовать как внутри класса, так и вне класса

#include <iostream>
#define INSIDE true

struct Vector2d {
    double x, y;

#if INSIDE
    Vector2d operator+(const Vector2d& rhs) {
        std::cout << "Inside" << std::endl;
        return Vector2d{x + rhs.x, y + rhs.y};
    };
#endif

    double& operator[](int index) {
        std::cout << "Non const" << std::endl;
        return index > 0 ? y : x;
    }

    double operator[](int index) const {
        std::cout << "const" << std::endl;
        return index > 0 ? y : x;
    }
};

// Another option
#if INSIDE
Vector2d operator+(const Vector2d& lhs, const Vector2d& rhs) {
    std::cout << "Outside" << std::endl;
    return Vector2d{lhs.x + rhs.x, lhs.y + rhs.y};
};
#endif

std::ostream& operator<<(std::ostream& os, const Vector2d& vec) {
    os << vec.x << ' ' << vec.y << std::endl;
    return os;
}

int main() {
    Vector2d a{1, 2};
    const Vector2d b{2, 1};
    a[0] = 1;
    std::cout << a[0] << ' ' << b[1] << std::endl;
}
