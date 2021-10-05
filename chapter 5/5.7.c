#include <Vector-Implementation.h>


// loop Unrolling 5 x 1
void combine4 (vec_ptr *v, data_t *dest) {
    data_t acc = IDENT;
    size_t len = vec_length(v) - 4;
    data_t *data;
    get_vec_element(v, 0, data);
    long i;
    for (i = 0; i < len; i+= 5)
    {
        acc = (acc OP data[i]) OP (data[i+1] OP data[i+2]) OP (data[i+3] OP data[i+4]);
    }

    /* Finish any remaining elements */
    for (; i < len; i++) {
        acc = acc OP data[i];
    }

    *dest = acc;
}