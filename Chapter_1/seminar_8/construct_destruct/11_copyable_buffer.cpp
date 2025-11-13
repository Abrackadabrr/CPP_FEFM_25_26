#include <iostream>
#include <cassert>

class intBuffer {
public:
	intBuffer(int size) : m_size (size), m_buffer (new int[size]) {
		std::cout << "Ctor" << std::endl;
	}

	~intBuffer() {
		delete[] m_buffer;
		std::cout << "Dtor" << std::endl;
	}

	//  нетривиальный конструктор копирования
	intBuffer(const intBuffer& rhs) {
		m_size = rhs.m_size;
		m_buffer = new int[m_size];
		std::copy(m_buffer, m_buffer + m_size, rhs.m_buffer);
		
		std::cout << "Copy Ctor" << std::endl;
	}

	intBuffer& operator=(const intBuffer & rhs) {
		m_size = rhs.m_size;
		// освободили свою память
		delete [] m_buffer;
		m_buffer = new int[m_size];
		std::copy(m_buffer, m_buffer + m_size, rhs.m_buffer);
		
		std::cout << "Assign optor" << std::endl;
		
		return *this;
	}

	int &get(int i) {
		return m_buffer[i];
	}

private:
	int *m_buffer;
	int m_size;
};

void wrong() {
        intBuffer b1{10};
        intBuffer b2 = b1;
 } 
/*	 Segfault here now???  */

int main() {
	// wrong();
	intBuffer a{10};
	for (int i = 0; i < 10; i++) {
		a.get(i) = i + 80;
	}
	for (int i = 0; i < 10; i++) {
		std::cout << a.get(i) << ' ';
	}
	std::cout << std::endl;
	intBuffer c(a);
	for (int i = 0; i < 10; i++) {
		std::cout << c.get(i) << ' ';
	}
	std::cout << std::endl;
	c = a;
	for (int i = 0; i < 10; i++) {
		std::cout << c.get(i) << ' ';
	}
	std::cout << std::endl;
	return 0;
}

