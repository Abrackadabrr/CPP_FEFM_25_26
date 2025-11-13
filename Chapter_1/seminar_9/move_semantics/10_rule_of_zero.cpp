#include <iostream>

template<typename MyClass>
class ScopedPointer {
	MyClass *ptr_;
public:
	ScopedPointer(MyClass *ptr = nullptr) : ptr_(ptr) {
    }

	~ScopedPointer() { 
        delete ptr_; 
    }

	ScopedPointer(const ScopedPointer& rhs) : 
		ptr_(new MyClass{*rhs.ptr_}) {
            std::cout << "Copy Ctor with copy and allocation" << std::endl;
        }
	
	ScopedPointer& operator=(const ScopedPointer& rhs) {
		if (this == &rhs) return *this;
		delete [] ptr_;
		ptr_ = new MyClass{*rhs.ptr_};
        std::cout << "Optor = with copy and allocation" << std::endl;
		return *this;
	}

    ScopedPointer(ScopedPointer && rhs): ptr_(rhs.ptr_) {
        rhs.ptr_ = nullptr;
        std::cout << "Move Ctor without copy and allocation" << std::endl;
    }

    ScopedPointer& operator=(ScopedPointer && rhs){
        delete ptr_;
        ptr_ = rhs.ptr_;
        rhs.ptr_ = nullptr;
        std::cout << "Move Assign without copy and allocation" << std::endl;
        return *this;
    }
};


// Давайте рассмотрим структуру

struct Data {
    int a;
    char c;
    ScopedPointer<int> p;
};

int main() {
    Data v1{10, 'a', ScopedPointer<int>{new int(10)}};
    Data v2{10, 'a', ScopedPointer<int>{new int(10)}};
    v1 = v2;
    Data v3{v2};
    v1 = std::move(v2);
}

// Нужно ли что-то из тех 6 функций определять для Data?