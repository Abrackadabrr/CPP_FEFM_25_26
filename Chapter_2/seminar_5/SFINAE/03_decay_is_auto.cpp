// Давайте напишем код, который будет одновременно снимать 
// константность и удалять ссылки

#include <utility>

template<typename T>
struct remove_const {
    using type = T;
};

template<typename T>
struct remove_const<const T> {
    using type = T;
};

template<typename T>
using remove_const_t = remove_const<T>::type;

template<typename T>
struct remove_ref {
    using type = T;
};

template<typename T>
struct remove_ref<T&> {
    using type = T;
};

template<typename T>
using remove_ref_t = remove_ref<T>::type;

template<typename T>
using decay_t = remove_const_t<remove_ref_t<T>>>;

int main() {
    const int & a = 10;
    decay_t<decltype(a)> b = a;
    auto c = a;
}
