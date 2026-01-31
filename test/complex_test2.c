#include <stdio.h>
#include <string.h>

// Global secrets for string encryption testing
const char* API_KEY = "sk-secret-api-key-12345";
const char* DATABASE_PASSWORD = "db_p@ssw0rd_secure!";

// Recursive fibonacci
int fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

// Bubble sort implementation
void bubbleSort(int arr[], int n) {
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (arr[j] > arr[j + 1]) {
                int temp = arr[j];
                arr[j] = arr[j + 1];
                arr[j + 1] = temp;
            }
        }
    }
}

// Binary search
int binarySearch(int arr[], int left, int right, int target) {
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (arr[mid] == target) return mid;
        if (arr[mid] < target) left = mid + 1;
        else right = mid - 1;
    }
    return -1;
}

// String manipulation
void reverseString(char* str) {
    int len = strlen(str);
    for (int i = 0; i < len / 2; i++) {
        char temp = str[i];
        str[i] = str[len - 1 - i];
        str[len - 1 - i] = temp;
    }
}

// Calculate factorial
unsigned long long factorial(int n) {
    if (n <= 1) return 1;
    unsigned long long result = 1;
    for (int i = 2; i <= n; i++) {
        result *= i;
    }
    return result;
}

// XOR encryption demo
void xorEncrypt(char* data, int len, char key) {
    for (int i = 0; i < len; i++) {
        data[i] ^= key;
    }
}

int main() {
    printf("=== Complex Program Test (No Structs) ===\n\n");
    
    // Test 1: Secrets
    printf("[1] API Key: %s\n", API_KEY);
    printf("[1] DB Password: %s\n\n", DATABASE_PASSWORD);
    
    // Test 2: Fibonacci
    printf("[2] Fibonacci: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", fibonacci(i));
    }
    printf("\n\n");
    
    // Test 3: Sorting
    int numbers[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(numbers) / sizeof(numbers[0]);
    printf("[3] Before: ");
    for (int i = 0; i < n; i++) printf("%d ", numbers[i]);
    printf("\n");
    
    bubbleSort(numbers, n);
    printf("[3] After:  ");
    for (int i = 0; i < n; i++) printf("%d ", numbers[i]);
    printf("\n\n");
    
    // Test 4: Binary search
    int target = 25;
    int result = binarySearch(numbers, 0, n - 1, target);
    printf("[4] Search %d: index %d\n\n", target, result);
    
    // Test 5: String ops
    char testStr[] = "Hello World";
    printf("[5] Original: %s\n", testStr);
    reverseString(testStr);
    printf("[5] Reversed: %s\n\n", testStr);
    
    // Test 6: Factorial
    printf("[6] 10! = %llu\n\n", factorial(10));
    
    // Test 7: XOR
    char secret[] = "TopSecret";
    printf("[7] Before XOR: %s\n", secret);
    xorEncrypt(secret, strlen(secret), 0x42);
    printf("[7] XOR'd bytes: ");
    for (int i = 0; i < 9; i++) printf("%02X ", (unsigned char)secret[i]);
    printf("\n");
    xorEncrypt(secret, strlen(secret), 0x42);
    printf("[7] Decrypted: %s\n\n", secret);
    
    printf("=== Done ===\n");
    return 0;
}
