#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Global secrets for string encryption testing
const char* API_KEY = "sk-secret-api-key-12345";
const char* DATABASE_PASSWORD = "db_p@ssw0rd_secure!";

// Struct for complex data
typedef struct {
    int id;
    char name[50];
    float score;
} Student;

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

// Process student data
void processStudents(Student students[], int count) {
    float totalScore = 0;
    for (int i = 0; i < count; i++) {
        totalScore += students[i].score;
        printf("  Student %d: %s - Score: %.2f\n", 
               students[i].id, students[i].name, students[i].score);
    }
    printf("  Average Score: %.2f\n", totalScore / count);
}

// XOR encryption demo
void xorEncrypt(char* data, int len, char key) {
    for (int i = 0; i < len; i++) {
        data[i] ^= key;
    }
}

int main() {
    printf("=== Complex Program Test ===\n\n");
    
    // Test 1: Secrets (should be encrypted)
    printf("[1] API Key: %s\n", API_KEY);
    printf("[1] DB Password: %s\n\n", DATABASE_PASSWORD);
    
    // Test 2: Fibonacci
    printf("[2] Fibonacci Sequence: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", fibonacci(i));
    }
    printf("\n\n");
    
    // Test 3: Sorting
    int numbers[] = {64, 34, 25, 12, 22, 11, 90};
    int n = sizeof(numbers) / sizeof(numbers[0]);
    printf("[3] Before sorting: ");
    for (int i = 0; i < n; i++) printf("%d ", numbers[i]);
    printf("\n");
    
    bubbleSort(numbers, n);
    printf("[3] After sorting:  ");
    for (int i = 0; i < n; i++) printf("%d ", numbers[i]);
    printf("\n\n");
    
    // Test 4: Binary search
    int target = 25;
    int result = binarySearch(numbers, 0, n - 1, target);
    printf("[4] Binary search for %d: Found at index %d\n\n", target, result);
    
    // Test 5: String operations
    char testStr[] = "Hello World";
    printf("[5] Original string: %s\n", testStr);
    reverseString(testStr);
    printf("[5] Reversed string: %s\n\n", testStr);
    
    // Test 6: Factorial
    printf("[6] Factorials: ");
    for (int i = 1; i <= 10; i++) {
        printf("%d!=%llu ", i, factorial(i));
    }
    printf("\n\n");
    
    // Test 7: Struct processing
    Student students[] = {
        {1, "Alice", 95.5},
        {2, "Bob", 87.3},
        {3, "Charlie", 92.8}
    };
    printf("[7] Student Records:\n");
    processStudents(students, 3);
    printf("\n");
    
    // Test 8: XOR encryption
    char secret[] = "TopSecret";
    printf("[8] Before XOR: %s\n", secret);
    xorEncrypt(secret, strlen(secret), 0x42);
    printf("[8] After XOR:  ");
    for (int i = 0; i < (int)strlen(secret) + 1; i++) {
        printf("%02X ", (unsigned char)secret[i]);
    }
    printf("\n");
    xorEncrypt(secret, strlen(secret), 0x42);
    printf("[8] Decrypted:  %s\n\n", secret);
    
    printf("=== All Tests Completed ===\n");
    return 0;
}
