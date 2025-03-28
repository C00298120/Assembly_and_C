#include "stdio.h"
#include <stdbool.h>

int main()
{
    int a = 10;
    int b = 20;

    bool result = a > b;
    printf("a > b Example: %s\n", result ? "true" : "false");

    result = a < b;
    printf("a < b Example: %s\n", result ? "true" : "false");

    result = a >= b;
    printf("a >= b Example: %s\n", result ? "true" : "false");

    result = a <= b;
    printf("a <= b Example: %s\n", result ? "true" : "false");

    result = a == b;
    printf("a == b Example: %s\n", result ? "true" : "false");

    result = a != b;
    printf("a != b Example: %s\n", result ? "true" : "false");

    result = a && b;
    printf("a && b Example: %s\n", result ? "true" : "false");

    result = a || b;
    printf("a || b Example: %s\n", result ? "true" : "false");

    result = !a;
    printf("!a Example: %s\n", result ? "true" : "false");

    result = !!a;
    printf("!!a Example: %s\n", result ? "true" : "false");

    return 0;
}