// Попробуем перегрузить << для своего класса

#include <iostream>

class Vector2d {
    double x, y;
public:
    Vector2d(double x_, double y_): x(x_), y(y_) {}
    void dump(std::ostream& os) const {
        os << "[ " << x << ' ' << y << " ]" << std::endl;
        return;
    }
};

class DummyClass {

};

std::ostream& operator<<(std::ostream& os, const DummyClass& vec) {
    os << "I am Dummy Class";
    return os;
}

std::ostream& operator<<(std::ostream& os, const Vector2d& vec) {
    vec.dump(os);
    return os;
}

int main() {
    Vector2d a{1, 2};
    DummyClass d{};
    std::cout << a << std::endl;
}
