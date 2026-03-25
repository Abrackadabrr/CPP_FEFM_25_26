#include <iostream>

template<typename Callable>
struct FunctionTraits {};

template<typename R_t, typename A_t>
struct FunctionTraits<R_t(A_t)> {
    using return_type = R_t;
    using arg_type = A_t;  
};

template<typename R_t, typename A_t>
struct FunctionTraits<R_t(*)(A_t)> {
    using return_type = R_t;
    using arg_type = A_t;  
};

template<typename Callable>
typename FunctionTraits<Callable>::return_type
invoke(const Callable& func, 
        typename FunctionTraits<Callable>::arg_type args) {
    return func(args);
}

int get(int a) {
    return a;
} 

int main() {
    std::cout << invoke(get, 1) << std::endl;
}
