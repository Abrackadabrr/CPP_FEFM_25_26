#include <iostream>

// Если есть пачки параметров, то, наверное,
// с ними можно как-то работать

// Самое простое, что есть в языке -- это свёртки

template<typename ... Integers>
int sum_right(Integers ... values) {
    return (values + ...);
} 
// Правая свертка вида (args op ...) = (arg1 + (arg2 + ... (argN-1 + argN)...))

template<typename ... Integers>
int sum_left(Integers ... values) {
    return (... + values);
} 
// Левая свертка вида (... op args) = (...((arg1 + arg2) + arg3) ...+ argN)

template<typename ... Integers>
int product_right(Integers ... values) {
    return (1 * ... * values);  // (... op args) = (...(((1 + arg1) + arg2) + arg3) ...+ argN
}

// Правая свертка с инициализатором

template<typename ... Integers>
int product_left(Integers ... values) {
    int init = 1;
    return (values * ... * init); // (arg1 + (arg2 + ... (argN-1 + (argN + init)...))
}

// Левая свертка с инициализатором

// Зачем нужны правые и левые свертки?

int main() {
    std::cout << sum_right(1, 2, 3, 4, 5, 6) << std::endl;
}
