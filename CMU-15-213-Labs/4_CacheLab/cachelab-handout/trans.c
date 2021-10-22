/* 
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */ 
#include <stdio.h>
#include "cachelab.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);
void blockSize_8_32_32(int M, int N, int A[N][M], int B[M][N]);
void blockSize_4_64_64(int M, int N, int A[N][M], int B[M][N]);
void blocksize_16_67_61(int M, int N, int A[N][M], int B[M][N]);

/* 
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. 
 */
char transpose_submit_desc[] = "Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    switch (M)
    {
        case 32:
            blockSize_8_32_32(M, N, A, B);
            break;
        case 64:
            blockSize_4_64_64(M, N, A, B);
            break;
        case 61:
            blocksize_16_67_61(M, N, A, B);
            break;
        default:
            break;
    }
}

/* 
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started. 
 */ 

/* 
 * trans - A simple baseline transpose function, not optimized for the cache.
 */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }    
}


/*
 * Use 8 x 8 block size. Reasoning:
 *     For N = M = 32, each row contains 32 ints. So the cache can store at most 8
 *     rows of input. Thus, the block size <= 8. In general, we want to have larger 
 *     block size.
**/
char trans_8_32_32[] = "blockSize_8_32_32";
void blockSize_8_32_32(int M, int N, int A[N][M], int B[M][N])
{
    // ii, jj stands for index of level1 block start
    // i, j stands for index at element level within block
    for (int ii = 0; ii < N; ii += 8)
    {
        for (int jj = 0; jj < M; jj += 8)
        {
            if (ii == jj) {  // Diagonal block
                // The diagonal block requires special treatment because the
                // first row of B evicts the first row of A
                for (int i = ii; i < ii + 8; ++i) {
                    for (int j = jj; j < jj + 8; ++j) {
                        if (i == j) {
                            continue;
                        } else {
                            B[j][i] = A[i][j];
                        }
                    }

                    // Avoid evication
                    B[i][i] = A[i][i];
                }
            } else {  // Non-diagonal block, no eviction problem
                for (int i = ii; i < ii + 8; ++i) {
                    for (int j = jj; j < jj + 8; ++j) {
                        B[i][j] = A[j][i];
                    }
                }
            }
        }   
    }
}


/*
 * For N = M = 64, each row contains 64 ints. So the cache can store at most 4
 *  rows of input. Thus, the block size <= 4.
**/
char trans_4_64_64[] = "blockSize_4_64_64";
void blockSize_4_64_64(int M, int N, int A[N][M], int B[M][N])
{
    // ii, jj stands for index of level1 block start
    // i, j stands for index at element level within block
    for (int ii = 0; ii < N; ii += 4)
    {
        for (int jj = 0; jj < M; jj += 4)
        {
            if (ii == jj) {  // Diagonal block
                // The diagonal block requires special treatment because the
                // first row of B evicts the first row of A
                for (int i = ii; i < ii + 4; ++i) {
                    for (int j = jj; j < jj + 4; ++j) {
                        if (i == j) {
                            continue;
                        } else {
                            B[j][i] = A[i][j];
                        }
                    }

                    // Avoid evication
                    B[i][i] = A[i][i];
                }
            } else {  // Non-diagonal block, no eviction problem
                for (int i = ii; i < ii + 4; ++i) {
                    for (int j = jj; j < jj + 4; ++j) {
                        B[i][j] = A[j][i];
                    }
                }
            }
        }   
    }
}

char trans_16_67_61[] = "blockSize_16_67_61";
void blocksize_16_67_61(int M, int N, int A[N][M], int B[M][N])
{
    int ii, jj, i, j;
    for (ii = 0; ii < N; ii += 16) {
        for (jj = 0; jj < M; jj += 16) {
            for (i = ii; i < ii + 16 && i < N; i++) {
                for (j = jj; j < jj + 16 && j < M; j++) {
                    B[j][i] = A[i][j];
                }
            }
        }
    }
}


/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc); 

    /* Register any additional transpose functions */
    registerTransFunction(trans, trans_desc);

    registerTransFunction(blockSize_8_32_32, trans_8_32_32);

    registerTransFunction(blockSize_4_64_64, trans_4_64_64);

    registerTransFunction(blocksize_16_67_61, trans_16_67_61);

}

/* 
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

