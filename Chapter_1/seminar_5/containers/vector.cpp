#include <iostream>

struct Vector{
    int *data;
    int size;
    int cap;
};

Vector init(int n) {
    Vector result;
    result.data = new int[n];
    result.size = 0;
    result.cap = n;
    return result;
};

void destroy(Vector* v_p) {
    delete[] v_p->data;
}

void extend(Vector* v_p) {
    int *new_data = new int[2 * v_p->cap];
    for (int i = 0; i < v_p->size; i+=1) {
        new_data[i] = v_p->data[i];
    }
    delete[] v_p->data;
    v_p->data = new_data;
    v_p->cap *= 2;
}

void push_back(Vector* v_p, int elem) {
    if (v_p->size < v_p->cap) {
        v_p->data[v_p->size++] = elem;
    } else {
        extend(v_p);
        v_p->data[v_p->size++] = elem;
    };
}

int main() {
    Vector v = init(3);
    std::cout << "-- After init ---" << std::endl;
    std::cout << v.size << ' ' << v.cap << std::endl;

    push_back(&v, 5);
    std::cout << "-- After push_back ---" << std::endl;
    std::cout << v.size << ' ' << v.cap << std::endl;
    std::cout << v.data[0] << std::endl;

    push_back(&v, 6);
    push_back(&v, 7);
    push_back(&v, 8);
    
    int i;
    // some code
    v.data[i] = v.data[7];

    std::cout << "-- After push_back ---" << std::endl;
    std::cout << v.size << ' ' << v.cap << std::endl;

}
