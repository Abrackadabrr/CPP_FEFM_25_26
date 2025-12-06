template <typename T>
void push_all_back(subvector<T>& dst, const subvector<T>& src) {
    for (unsigned int i = 0; i < src.size(); ++i) {
        dst.push_back(src[i]);   // сам по себе push_back — strong
    }
};
