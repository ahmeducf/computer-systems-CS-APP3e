#include <Vector-Implementation.h>

typedef int data_t;
#define IDENT 0
#define OP +

/* create abstract data type for vector */
typedef struct {
    size_t len;
    data_t *data;
} vec_rec, *vec_ptr;


/* Create vector of specified length */
vec_ptr new_vec (size_t len) {
    /* Allocate header structure */
    vec_ptr result = malloc(sizeof(vec_rec));
    if (result == NULL)
        return NULL;    /* Couldn’t allocate storage */
    
    data_t *data = NULL;
    result->len = len;

    /* Allocate array */
    if (len > 0){
        data = calloc(len, sizeof(data_t));

        if (data == NULL){
            free(result);
            return NULL;    /* Couldn’t allocate storage */
        }
    }

    /* Data will either be NULL or allocated array */
    result->data = data;

    return result;
}

/*
* Retrieve vector element and store at dest.
* Return 0 (out of bounds) or 1 (successful)
*/
int get_vec_element (vec_ptr v, size_t index, data_t *dest) {
    if (index < 0 || index >= v->len)
        return 0;
    
    *dest = v->data[index];
    return 1;
}

/* Return length of vector */
size_t vec_length (vec_ptr v) {
    return v->len;
}