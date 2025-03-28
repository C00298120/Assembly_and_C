#include "stdio.h"

#define PI 3.14

const int MAX_VALUE = 100;

int main()
{
    const int MIN_VALUE = 10;

    printf("Value of MAX_VALUE is %d\n", MAX_VALUE);

    printf("Value of PI is %.2f\n", PI);

    printf("Value of MIN_VALUE is %d\n", MIN_VALUE);

    const int LITERAL = 0x10;

    printf("Value of LITERAL is %d\n", LITERAL);

    return 0;
}
