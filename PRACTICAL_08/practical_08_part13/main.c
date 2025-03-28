#include "stdio.h"  
#include "stdlib.h"  

typedef enum
{
    T_INT,
    T_FLOAT
} Overloaded;

typedef struct
{
    Overloaded type;
    union
    {
        int i;
        float f;
    } value; // Renamed from UnionType to value
} OverloadedType;

void type(OverloadedType *overloaded_type, char *value)
{
    switch (overloaded_type->type)
    {
    case T_INT:
        overloaded_type->value.i = atoi(value); // Fixed incorrect union member reference
        break;
    case T_FLOAT:
        overloaded_type->value.f = atof(value); // Fixed incorrect union member reference
        break;
    }
}

void add(OverloadedType *arg1, OverloadedType *arg2)
{
    if (arg1->type != arg2->type) // Added type check to prevent mismatched operations
    {
        printf("Error: Cannot add different types!\n");
        return;
    }

    switch (arg1->type)
    {
    case T_INT:
        printf("Result: %d\n", arg1->value.i + arg2->value.i);
        break;
    case T_FLOAT:
        printf("Result: %.2f\n", arg1->value.f + arg2->value.f);
        break;
    }
}

int main()
{
    OverloadedType ot1;
    ot1.type = T_INT;
    type(&ot1, "22");

    OverloadedType ot2;
    ot2.type = T_INT;
    type(&ot2, "20");

    add(&ot1, &ot2);

    ot1.type = T_FLOAT;
    type(&ot1, "22.01");

    ot2.type = T_FLOAT;
    type(&ot2, "20.12");

    add(&ot1, &ot2);

    return 0;
}