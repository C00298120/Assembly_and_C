#include "stdio.h"
#include <stdbool.h>

int main()
{
    int a = 1;
    int b = 0;

    int result = a & b;
    printf("a & b Example: %s\n", (result == 0) ? "false" : "true");

    result = a | b;
    printf("a | b Example: %s\n", (result == 0) ? "false" : "true");

    result = a ^ b;
    printf("a ^ b Example: %s\n", (result == 0) ? "false" : "true");

    int shift_result = 0b1111 << a;
    printf("a << b Example: %d\n", shift_result);

    shift_result = shift_result >> a;
    printf("a >> b Example: %d\n", shift_result);

    return 0;
}
