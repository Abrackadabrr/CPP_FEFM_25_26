#include "../../type_deduction/deduce_type.hpp"

template<typename T>
struct remove_const {
    using type = T;
};

template<typename T>
struct remove_const<const T> {
    using type = T;
};

int main() {
    using type = const int;
    using out_type = std::remove_const<type>::type;

    out_type value = 10;

    deduce_type<out_type> d(value);
}
