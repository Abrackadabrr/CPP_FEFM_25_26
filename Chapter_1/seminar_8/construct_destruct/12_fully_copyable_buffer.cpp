#include <iostream>
#include <cassert>

class CharBuffer {
public:
	CharBuffer(int size) : m_size (size), m_buffer (new char[size]) {
		std::cout << "Ctor" << std::endl;
	}

	~CharBuffer() {
		delete[] m_buffer;
		std::cout << "Dtor" << std::endl;
	}

	//  нетривиальный конструктор копирования
	CharBuffer(const CharBuffer& rhs) {
		m_size = rhs.m_size;
		m_buffer = new char[m_size];
		std::copy(m_buffer, m_buffer + m_size, rhs.m_buffer);
		
		std::cout << "Copy Ctor" << std::endl;
	}

	CharBuffer& operator=(const CharBuffer & rhs) {
		// добавили проверку на копирование в себя
		if (this == &rhs) return *this;
		m_size = rhs.m_size;
		// освободили свою память
		delete [] m_buffer;
		// начали копировать в себя из правой части, которая теперь точно не this
		m_buffer = new char[m_size];
		std::copy(m_buffer, m_buffer + m_size, rhs.m_buffer);
		
		std::cout << "Assign optor" << std::endl;
		
		return *this;
	}

	char &get(int x) {
		assert(x >= 0 && x < m_size);
		return m_buffer[x];
	}

private:
	char *m_buffer;
	int m_size;
};

void wrong() {
        CharBuffer b1{10};
        CharBuffer b2 = b1;
 } 
/*
	 Segfault here now???
*/

int main() {
	wrong();
	CharBuffer a{10};
	CharBuffer c(a);
	CharBuffer v{12};
	a = c = v;
	return 0;
}
