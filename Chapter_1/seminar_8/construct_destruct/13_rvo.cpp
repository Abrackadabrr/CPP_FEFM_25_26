#include <iostream>

using std::cout;
using std::endl;

// у конструктора копирования есть специальная семантика -- 
// он используется в RVO (Return Value Optimization)

struct foo {
  int a = 0;
  foo() { cout << "Ctor" << endl; }
  foo(const foo &) { 
    a = 0;
    cout << "Copy Ctor" << endl; 
  }
  ~foo() { cout << "Dtor" << endl; }
};

foo bar() {
  foo local_foo;
  local_foo.a = 10;
  return local_foo;
}

int main() { 
  foo f = bar(); 
  std::cout << f.a << std::endl;
}

// объект до копирования эквивалентен объекту после
// 
// компилятор протянул, что bar()::local_foo эквивалентен main::f 
// по опеределению копирования.
// это сделано даже выше чем уровень оптимизации, на уровне фрондтенда языка.

