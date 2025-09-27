#include <iostream>

void swap_arrays(int *a, int *b, int n) {
    for (int i = 0; i < n; ++i) {
        int tmp;
        tmp = a[i];
        a[i] = b[i];
        b[i] = tmp;
        // 3n копирований
    }
}

void print_array(int n, int* a) {
        for (int i = 0; i < n; i++) {
                std::cout << a[i] << ' ';
        }
        std::cout << std::endl;
}

int main() {
	int *a = new int[3]; 
        a[0] = 0; a[1] = 1; a[2] = 2;
        int *b = new int[3]; 
        b[0] = 3; b[1] = 4; b[2] = 5;

        swap_arrays(a, b, 3);

        print_array(3, a);
        print_array(3, b);


	delete[] a;
	delete[] b;
}
