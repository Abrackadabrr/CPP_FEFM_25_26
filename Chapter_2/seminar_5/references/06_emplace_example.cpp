#include "../warming_up/warming.hpp"

#include <vector>

int main() {
    std::vector<MyT<int>> v(3);
    std::cout << std::endl;

    v.reserve(6);
    std::cout << std::endl;

    MyT<int> b{7};
    v.push_back(b);
    std::cout << std::endl;

    v.emplace_back(7);
    std::cout << std::endl;
#if 0
    v.emplace_back(MyT<int> {7});
#endif
}
