#include "stdio.h"

int main()
{
    int a = 0;
    int loops = 0;

    printf("Enter a number of times to loop (1-3): ");
    scanf("%d", &loops);

    switch (loops)
    {
    case 1:
        printf("Loop will Run Once\n");
        break;
    case 2:
        printf("Loop will Run Twice\n");
        break;
    case 3:
        printf("Loop will Run Thrice\n");
        break;
    default:
        printf("Invalid number of loops [ %d ], try between 1 and 3\n", loops);
        return 1; // Exit the program if input is invalid
    }

    if (loops >= 1 && loops <= 3)
    {
        printf("While Loop.......will run [%d] times\n", loops);
        printf("STARTS:\n");
        while (a < loops)
        {
            printf("Loop number %d \n", a + 1); // Adjusting to count from 1
            a++;
        }
        printf("ENDS:\n\n");
    }

    return 0;
}