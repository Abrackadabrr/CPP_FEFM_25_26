#include <iostream>

// Посмотрим на преинткеремент и постинкремент 

class NoticableClassName {
    int value;

public:
    NoticableClassName& operator++() {
        value += 1;
    }

    NoticableClassName operator++(int) {
        NoticableClassName old{};
        old.value = value;
        value += 1;
        return old;
    }
};

int main() {
    NoticableClassName value;
    std::cout << value++ << std::endl;
    std::cout << ++value << std::endl;
}
