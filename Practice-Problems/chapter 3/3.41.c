#include <stdio.h>

struct ACE
{
    short v;
    struct ACE *p;
};


short test(struct ACE *ptr){
    short result = 0;
    while (ptr != 0)
    {
        result *= ptr->v;
        ptr->v = ptr->p;        
    }
    return result;
}


///B. We can see that each structure is an element in a singly linked list, with field
///   v being the value of the element and p being a pointer to the next element.
///   Function test computes the sum of the element values in the list.