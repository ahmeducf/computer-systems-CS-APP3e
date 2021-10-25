/// To create a stride-1 reference pattern, the loops must be permuted so that the
/// rightmost indices change most rapidly.

#define N 10

int productarray3d(int a[N][N][N])
{
    int i, j, k, product = 1;
    for (j = N-1; j >= 0; j--) {
        for (k = N-1; k >= 0; k--) {
            for (i = N-1; i >= 0; i--) {
                product *= a[j][k][i];
            }
        }
    }
    return product;
}