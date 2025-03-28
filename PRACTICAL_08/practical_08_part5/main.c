#include "stdio.h"

int main()
{
    int a = 10;
    int b = -a;
    printf("Unary Example: %d\n", b);
    b = +a;

    int total = a + b;
    printf("Binary Example: %d\n", total);

    char *result = (total % 2 == 0) ? "even" : "odd";
    printf("Ternary Example: %d is %s\n", total, result);

    return 0;
}