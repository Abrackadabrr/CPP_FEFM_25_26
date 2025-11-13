// Одна из основных фич C++ 
// --- это перегрузка операторов

// Перегружать можно любые операторы, 
// которые определены стандартом C++

// Попробуем перегрузить базовые операторы

struct Vector2d {
    double x, y;

    Vector2d& operator+=(const Vector2d& rhs) {
        x += rhs.x;
        y += rhs.y;
        return *this;
    };
};

int main() {
    Vector2d a{1, 2};
    Vector2d b{2, 1};
    b += a += b;
};

