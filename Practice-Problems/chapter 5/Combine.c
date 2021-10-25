#include <Vector-Implementation.h>

// abstract unefficient
void combine1 (vec_ptr *v, data_t *dest) {
    *dest = IDENT;
    for (size_t i = 0; i < vec_length(v); i++)
    {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }
}

// move vec_length, better performance
void combine2 (vec_ptr *v, data_t *dest) {
    *dest = IDENT;
    size_t len = vec_length(v);
    for (size_t i = 0; i < len; i++)
    {
        data_t val;
        get_vec_element(v, i, &val);
        *dest = *dest OP val;
    }
}

// no apparent performance
void combine3 (vec_ptr *v, data_t *dest) {
    *dest = IDENT;
    size_t len = vec_length(v);
    data_t *data;
    get_vec_element(v, 0, data);
    for (size_t i = 0; i < len; i++)
    {
        *dest = *dest OP data[i];
    }
}

// significant improvement in program performance
void combine4 (vec_ptr *v, data_t *dest) {
    data_t acc = IDENT;
    size_t len = vec_length(v);
    data_t *data;
    get_vec_element(v, 0, data);
    for (size_t i = 0; i < len; i++)
    {
        acc = acc OP data[i];
    }
    *dest = acc;
}