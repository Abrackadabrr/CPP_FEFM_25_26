// Давайте напишем какую-то штуку, которая
// будет работать как auto

// Эта конструкция должна работать с типами,
// при этом уметь удалять & и const

// Использовать будет при этом механизм специализаций шаблонов

template<typename T>
struct remove_ref {
    using type = T;
};

template<typename T>
struct remove_ref<T&> {
    using type = T;
};

template<typename T>
using remove_ref_t = typename remove_ref<T>::type;

int main() {
    remove_ref_t<int> a = 6;
    double d_ = a;
    remove_ref_t<double &> d = d_;
}
