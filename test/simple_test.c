#include <stdio.h>

int main() {
    int a = 10;
    int b = 20;
    int sum = a + b;
    
    printf("Simple Test Program\n");
    printf("%d + %d = %d\n", a, b, sum);
    
    if (sum > 25) {
        printf("Sum is greater than 25\n");
    } else {
        printf("Sum is 25 or less\n");
    }
    
    return 0;
}
