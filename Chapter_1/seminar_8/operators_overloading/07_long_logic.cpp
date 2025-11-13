// Никогда не перегружать длинную логику

#include <iostream>

class NoticableClassName {
    int value;

public:
    NoticableClassName(int val): value(val) {}
    int get() const { return value; }
};

bool operator<(const NoticableClassName& lhs, const NoticableClassName& rhs) {
    return lhs.get() < rhs.get();
};

bool operator&&(NoticableClassName b1, NoticableClassName b2) {
    std::cout << "&& overloaded" << std::endl;
    return false;
}

int main() {
    NoticableClassName a(0);
    NoticableClassName a(1);
    a && a
}

