#include <iostream>

class CharBuffer {
	char *m_buffer;
 	int m_size = 10;
 public:
 	CharBuffer(int size): m_size(size), m_buffer(new char[size]) {}

	~CharBuffer() { delete[] m_buffer; }

	char &get(int x) { 
		if(x >= 0 && x < m_size)
			std::cout << "Flaliure: x >= 0 && x < m_size" << std::endl; 
		return m_buffer[x]; 
	}
};

void wrong() {
	CharBuffer b1{10};
	CharBuffer b2 = b1;
} /* Segfault here */


int main() {
	wrong();
}
