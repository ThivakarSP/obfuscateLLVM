// Minimal test - no stdlib
int fibonacci(int n) {
    if (n <= 1) return n;
    return fibonacci(n - 1) + fibonacci(n - 2);
}

int factorial(int n) {
    int result = 1;
    for (int i = 2; i <= n; i++) {
        result *= i;
    }
    return result;
}

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

int binarySearch(int arr[], int n, int target) {
    int left = 0, right = n - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (arr[mid] == target) return mid;
        if (arr[mid] < target) left = mid + 1;
        else right = mid - 1;
    }
    return -1;
}

// Use printf declaration only
int printf(const char*, ...);

int main() {
    printf("Test without stdlib\n");
    printf("fib(10) = %d\n", fibonacci(10));
    printf("10! = %d\n", factorial(10));
    
    int arr[] = {5, 2, 8, 1, 9, 3};
    bubbleSort(arr, 6);
    printf("Sorted: ");
    for (int i = 0; i < 6; i++) printf("%d ", arr[i]);
    printf("\n");
    
    int idx = binarySearch(arr, 6, 5);
    printf("Index of 5: %d\n", idx);
    
    return 0;
}
