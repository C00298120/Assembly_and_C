#include "stdio.h"

int main()
{
    int a = 10;
    int b = 20;

    int total = a + b;
    printf("Addition Example total: %d\n", total);

    total = b - a;
    printf("Subtraction Example total: %d\n", total);

    total = b * a;
    printf("Multiplication Example total: %d\n", total);

    total = b / a;
    printf("Division Example total: %d\n", total);

    total = b % a;
    printf("Modulus Example total: %d\n", total);

    return 0;
}
