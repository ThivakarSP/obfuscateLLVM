#include <stdio.h>
#include <string.h>

// Secret password - will be encrypted by string encryption pass
const char* secret = "MySecretPassword123";

int add(int a, int b) {
    return a + b;
}

int multiply(int x, int y) {
    int result = 0;
    for (int i = 0; i < y; i++) {
        result = add(result, x);
    }
    return result;
}

int main() {
    printf("Hello from LLVM Obfuscator Demo!\n");
    printf("Secret: %s\n", secret);
    
    int a = 5, b = 3;
    printf("add(%d, %d) = %d\n", a, b, add(a, b));
    printf("multiply(%d, %d) = %d\n", a, b, multiply(a, b));
    
    if (a > b) {
        printf("a is greater than b\n");
    } else {
        printf("b is greater than or equal to a\n");
    }
    
    return 0;
}
