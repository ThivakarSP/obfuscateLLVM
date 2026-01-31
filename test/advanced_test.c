#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

// ============== SECRETS ==============
const char* MASTER_KEY = "ULTRA_SECRET_MASTER_KEY_2024!@#$";
const char* ENCRYPTION_SALT = "x9Km$vQ2pLn8@wZr";
const char* DB_CONNECTION = "mongodb://admin:s3cr3t_p@ss@localhost:27017/prod";

// ============== DATA STRUCTURES ==============

// Linked List Node
typedef struct Node {
    int data;
    struct Node* next;
} Node;

// Binary Tree Node  
typedef struct TreeNode {
    int value;
    struct TreeNode* left;
    struct TreeNode* right;
} TreeNode;

// Hash Table Entry
typedef struct HashEntry {
    char key[64];
    int value;
    struct HashEntry* next;
} HashEntry;

// Employee record with nested struct
typedef struct {
    int id;
    char name[50];
    float salary;
    struct {
        int day, month, year;
    } joinDate;
} Employee;

// Function pointer type
typedef int (*MathOperation)(int, int);

// ============== LINKED LIST OPERATIONS ==============

Node* createNode(int data) {
    Node* node = (Node*)malloc(sizeof(Node));
    node->data = data;
    node->next = NULL;
    return node;
}

void insertNode(Node** head, int data) {
    Node* newNode = createNode(data);
    if (*head == NULL) {
        *head = newNode;
        return;
    }
    Node* temp = *head;
    while (temp->next != NULL) temp = temp->next;
    temp->next = newNode;
}

void printList(Node* head) {
    printf("  LinkedList: ");
    while (head != NULL) {
        printf("%d -> ", head->data);
        head = head->next;
    }
    printf("NULL\n");
}

int countNodes(Node* head) {
    int count = 0;
    while (head != NULL) {
        count++;
        head = head->next;
    }
    return count;
}

void freeList(Node* head) {
    while (head != NULL) {
        Node* temp = head;
        head = head->next;
        free(temp);
    }
}

// ============== BINARY TREE OPERATIONS ==============

TreeNode* createTreeNode(int value) {
    TreeNode* node = (TreeNode*)malloc(sizeof(TreeNode));
    node->value = value;
    node->left = node->right = NULL;
    return node;
}

TreeNode* insertBST(TreeNode* root, int value) {
    if (root == NULL) return createTreeNode(value);
    if (value < root->value)
        root->left = insertBST(root->left, value);
    else
        root->right = insertBST(root->right, value);
    return root;
}

void inorderTraversal(TreeNode* root) {
    if (root != NULL) {
        inorderTraversal(root->left);
        printf("%d ", root->value);
        inorderTraversal(root->right);
    }
}

int treeHeight(TreeNode* root) {
    if (root == NULL) return 0;
    int leftH = treeHeight(root->left);
    int rightH = treeHeight(root->right);
    return (leftH > rightH ? leftH : rightH) + 1;
}

void freeTree(TreeNode* root) {
    if (root != NULL) {
        freeTree(root->left);
        freeTree(root->right);
        free(root);
    }
}

// ============== ADVANCED ALGORITHMS ==============

// Quick sort
void swap(int* a, int* b) {
    int temp = *a;
    *a = *b;
    *b = temp;
}

int partition(int arr[], int low, int high) {
    int pivot = arr[high];
    int i = low - 1;
    for (int j = low; j < high; j++) {
        if (arr[j] < pivot) {
            i++;
            swap(&arr[i], &arr[j]);
        }
    }
    swap(&arr[i + 1], &arr[high]);
    return i + 1;
}

void quickSort(int arr[], int low, int high) {
    if (low < high) {
        int pi = partition(arr, low, high);
        quickSort(arr, low, pi - 1);
        quickSort(arr, pi + 1, high);
    }
}

// Merge sort
void merge(int arr[], int l, int m, int r) {
    int n1 = m - l + 1, n2 = r - m;
    int L[50], R[50];
    for (int i = 0; i < n1; i++) L[i] = arr[l + i];
    for (int j = 0; j < n2; j++) R[j] = arr[m + 1 + j];
    
    int i = 0, j = 0, k = l;
    while (i < n1 && j < n2) {
        arr[k++] = (L[i] <= R[j]) ? L[i++] : R[j++];
    }
    while (i < n1) arr[k++] = L[i++];
    while (j < n2) arr[k++] = R[j++];
}

void mergeSort(int arr[], int l, int r) {
    if (l < r) {
        int m = l + (r - l) / 2;
        mergeSort(arr, l, m);
        mergeSort(arr, m + 1, r);
        merge(arr, l, m, r);
    }
}

// ============== FUNCTION POINTERS ==============

int add(int a, int b) { return a + b; }
int subtract(int a, int b) { return a - b; }
int multiply(int a, int b) { return a * b; }
int divide(int a, int b) { return b != 0 ? a / b : 0; }

int applyOperation(MathOperation op, int a, int b) {
    return op(a, b);
}

// ============== STRING CRYPTOGRAPHY ==============

void caesarCipher(char* str, int shift) {
    for (int i = 0; str[i] != '\0'; i++) {
        char c = str[i];
        if (c >= 'A' && c <= 'Z')
            str[i] = ((c - 'A' + shift) % 26) + 'A';
        else if (c >= 'a' && c <= 'z')
            str[i] = ((c - 'a' + shift) % 26) + 'a';
    }
}

unsigned int simpleHash(const char* str) {
    unsigned int hash = 5381;
    int c;
    while ((c = *str++))
        hash = ((hash << 5) + hash) + c;
    return hash;
}

// ============== MATRIX OPERATIONS ==============

void matrixMultiply(int A[3][3], int B[3][3], int C[3][3]) {
    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            C[i][j] = 0;
            for (int k = 0; k < 3; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

int matrixDeterminant(int m[3][3]) {
    return m[0][0] * (m[1][1] * m[2][2] - m[1][2] * m[2][1])
         - m[0][1] * (m[1][0] * m[2][2] - m[1][2] * m[2][0])
         + m[0][2] * (m[1][0] * m[2][1] - m[1][1] * m[2][0]);
}

// ============== EMPLOYEE MANAGEMENT ==============

void printEmployee(Employee* emp) {
    printf("  ID: %d, Name: %s, Salary: $%.2f, Joined: %d/%d/%d\n",
           emp->id, emp->name, emp->salary,
           emp->joinDate.day, emp->joinDate.month, emp->joinDate.year);
}

float calculateBonus(Employee* emp, float percentage) {
    return emp->salary * (percentage / 100.0f);
}

// ============== MAIN ==============

int main() {
    printf("========================================\n");
    printf("   ADVANCED OBFUSCATION TEST SUITE\n");
    printf("========================================\n\n");

    // Test 1: Secrets
    printf("[1] SECRET STRINGS:\n");
    printf("  Master Key: %s\n", MASTER_KEY);
    printf("  Salt: %s\n", ENCRYPTION_SALT);
    printf("  Hash of key: %u\n\n", simpleHash(MASTER_KEY));

    // Test 2: Linked List
    printf("[2] LINKED LIST:\n");
    Node* list = NULL;
    for (int i = 1; i <= 5; i++) insertNode(&list, i * 10);
    printList(list);
    printf("  Node count: %d\n\n", countNodes(list));
    freeList(list);

    // Test 3: Binary Search Tree
    printf("[3] BINARY SEARCH TREE:\n");
    TreeNode* tree = NULL;
    int treeVals[] = {50, 30, 70, 20, 40, 60, 80};
    for (int i = 0; i < 7; i++) tree = insertBST(tree, treeVals[i]);
    printf("  Inorder: ");
    inorderTraversal(tree);
    printf("\n  Height: %d\n\n", treeHeight(tree));
    freeTree(tree);

    // Test 4: Quick Sort
    printf("[4] QUICK SORT:\n");
    int arr1[] = {64, 25, 12, 22, 11, 90, 45};
    printf("  Before: ");
    for (int i = 0; i < 7; i++) printf("%d ", arr1[i]);
    quickSort(arr1, 0, 6);
    printf("\n  After:  ");
    for (int i = 0; i < 7; i++) printf("%d ", arr1[i]);
    printf("\n\n");

    // Test 5: Merge Sort  
    printf("[5] MERGE SORT:\n");
    int arr2[] = {38, 27, 43, 3, 9, 82, 10};
    printf("  Before: ");
    for (int i = 0; i < 7; i++) printf("%d ", arr2[i]);
    mergeSort(arr2, 0, 6);
    printf("\n  After:  ");
    for (int i = 0; i < 7; i++) printf("%d ", arr2[i]);
    printf("\n\n");

    // Test 6: Function Pointers
    printf("[6] FUNCTION POINTERS:\n");
    MathOperation ops[] = {add, subtract, multiply, divide};
    const char* names[] = {"Add", "Sub", "Mul", "Div"};
    for (int i = 0; i < 4; i++) {
        printf("  %s(20, 5) = %d\n", names[i], applyOperation(ops[i], 20, 5));
    }
    printf("\n");

    // Test 7: Caesar Cipher
    printf("[7] CAESAR CIPHER:\n");
    char message[] = "Attack at dawn";
    printf("  Original:  %s\n", message);
    caesarCipher(message, 3);
    printf("  Encrypted: %s\n", message);
    caesarCipher(message, 23); // Decrypt (26 - 3 = 23)
    printf("  Decrypted: %s\n\n", message);

    // Test 8: Matrix Operations
    printf("[8] MATRIX OPERATIONS:\n");
    int A[3][3] = {{1, 2, 3}, {4, 5, 6}, {7, 8, 9}};
    int B[3][3] = {{9, 8, 7}, {6, 5, 4}, {3, 2, 1}};
    int C[3][3];
    matrixMultiply(A, B, C);
    printf("  A x B = [[%d,%d,%d],[%d,%d,%d],[%d,%d,%d]]\n",
           C[0][0], C[0][1], C[0][2], C[1][0], C[1][1], C[1][2], C[2][0], C[2][1], C[2][2]);
    printf("  det(A) = %d\n\n", matrixDeterminant(A));

    // Test 9: Employee Records
    printf("[9] EMPLOYEE RECORDS:\n");
    Employee employees[] = {
        {101, "Alice Johnson", 75000.00, {15, 3, 2020}},
        {102, "Bob Smith", 82500.50, {1, 7, 2019}},
        {103, "Carol White", 91000.00, {22, 11, 2018}}
    };
    for (int i = 0; i < 3; i++) {
        printEmployee(&employees[i]);
        printf("    Bonus (10%%): $%.2f\n", calculateBonus(&employees[i], 10));
    }

    printf("\n========================================\n");
    printf("   ALL TESTS COMPLETED SUCCESSFULLY!\n");
    printf("========================================\n");

    return 0;
}
