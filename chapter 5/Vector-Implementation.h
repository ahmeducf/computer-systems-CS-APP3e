//
// Created by ahmed-salah on 10/2/21.
//

#ifndef VECTOR_IMPLEMENTATION
#define VECTOR_IMPLEMENTATION
#include <stdio.h>


typedef int data_t;
#define IDENT 0
#define OP +

/* create abstract data type for vector */
typedef struct {
    size_t len;
    data_t *data;
} vec_rec, *vec_ptr;

#endif //VECTOR_IMPLEMENTATION
