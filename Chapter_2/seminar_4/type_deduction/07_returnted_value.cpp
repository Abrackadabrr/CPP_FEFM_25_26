// Давайте теперь использовать мощь 
// всего того, что мы сейчас узнали

template<typename T>
struct stupid_class {
    const T& get_value() const { return T{}; }
};

template<typename class_with_method_get_value>
auto get(const class_with_method_get_value& obj) -> decltype(obj.get_value()) {
    return obj.get_value();
}

template<typename Integrable>
auto intgrate(const Integrable& func) -> decltype(func(0., 0.)) {
    
}

// Что ставим вместо ??? ?

auto main() -> int {
    stupid_class<int> int_c;
    stupid_class<double> double_c;

    get(int_c);
    get(double_c);
}





// Так можно писать функцию main, но стоит ли....

template<typename class_with_method_get_value>
auto get(const class_with_method_get_value& obj) -> decltype(obj.get_value()) {
    return obj.get_value();
} 
