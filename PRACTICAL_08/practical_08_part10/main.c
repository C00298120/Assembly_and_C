#include "stdio.h"

#define MAX_VALUE 3

int main()
{
    int a = 0;

    printf("While Loop.......\n");
    printf("STARTS:\n");
    while (a < MAX_VALUE)
    {
        printf("Loop number %d \n", a);
        a++;
    }
    printf("ENDS:\n\n");

    a = 0;

    printf("Do-While.........\n");
    printf("STARTS:\n");
    do
    {
        printf("Loop number %d \n", a);
        a++;
    } while (a < MAX_VALUE);
    printf("ENDS:\n\n");

    printf("\nFor Loop.....\n");
    printf("STARTS:\n");
    for (a = 0; a < MAX_VALUE; a++)
    {
        printf("Loop number %d \n", a);
    }
    printf("ENDS:\n");

    return 0;
}
