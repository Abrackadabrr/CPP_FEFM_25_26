#include "../warming_up/warming.hpp"

#include "print_type.hpp"
#include "print_type.cpp"


template<typename Callable, typename Arg>
decltype(auto) invoke(Callable func, Arg&& args) {
    Arg args1{std::forward<Arg>(args)};
    return func(args1);
}

MyT<int> foo(MyT<int>& a) {
    auto result{a};
    std::cout << "foo works" << std::endl;
    return result; 
}

int main() {
    MyT<int> my_class{5};
    MyT<int>& my_class_ref = my_class;
    // foo(my_class_ref);
    // const MyT<int>& value = foo(MyT<int>{5});
    const auto& value = invoke(foo, my_class_ref);
}


// && ещё называют универсальными ссылками





















#if 0
template<typename Callable, typename Arg>
decltype(auto) invoke(Callable func, Arg&& args) {
    std::cout << "function type = " << type_name<Callable>() << std::endl;
    std::cout << "Arg type = " << type_name<Arg>() << std::endl; 
    return func(std::forward<Arg>(args));
}

MyT<int> foo(MyT<int> a) {
    auto result{a};
    std::cout << "foo works" << std::endl;
    return result; 
}

int main() {
    MyT<int> my_class{5};
    // const MyT<int>& value = foo(MyT<int>{5});
    const auto& value = invoke(foo, MyT<int>{5});
}
#endif