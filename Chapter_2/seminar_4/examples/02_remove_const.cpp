// Напишем штуку, которая удаляет const

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

int main() {
    remove_const_t<int> a = 6;
    double d_ = a;
    remove_const_t<const double> d = d_;
}
