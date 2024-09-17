# 1 "For_h.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 361 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "For_h.c" 2

# 1 "./add.h" 1
int add(int a, int b);
# 3 "For_h.c" 2

int main() {
    int result = add(2, 3);
    std::cout << "Result: " << result << std::endl;
    return 0;
}
