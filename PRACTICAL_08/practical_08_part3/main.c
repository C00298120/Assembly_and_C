#include "stdio.h"

int main()
{
    int a = 0;

    printf("Value of a is %d\n", a);

    {
        a = 10;
        printf("Value of a is %d\n", a);
    }

    {
        a = 100;
        printf("Value of a is %d\n", a);
    }

    printf("Value of a is %d\n", a);

    return 0;
}