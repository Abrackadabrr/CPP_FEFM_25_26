#include "../../type_deduction/deduce_type.hpp"

template<typename T>
struct remove_const {
    using type = T;
};

template<typename T>
struct remove_const<const T> {
    using type = T;
};

template<typename T>
struct remove_reference {
    using type = T;
};

template<typename T>
struct remove_reference<T&> {
    using type = T;
};

template<typename T>
struct decay {
    using type = typename remove_const<typename remove_reference<T>::type>::type;
};

int main() {
    using type = const int&;
    using out_type = decay<type>::type;

    out_type v = 0;
    deduce_type<out_type> d(v);
}

// auto работает буквально по правилам std::decay

// Decay performs the type conversions equivalent to the ones performed when passing function arguments by value.