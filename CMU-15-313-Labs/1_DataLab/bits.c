/* 
 * CS:APP Data Lab 
 * 
 * Ahmed Salah Youssef
 *
 * 
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.  
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */


#endif
//1
/* 
 * bitXor - x^y using only ~ and & 
 *   Example: bitXor(4, 5) = 1
 *   Legal ops: ~ &
 *   Max ops: 14
 *   Rating: 1
 */
int bitXor(int x, int y) {
    /* exploit DE Morgan's Theorem */
    // return ~(~(x & ~y) & ~(~x & y));

    // Better Style
    int xOneYZero = (x & ~y);
    int xZeroYOne = (~x & y);
    int result = ~(~xOneYZero & ~xZeroYOne); // xOneYZero | xZeroYOne
    return result;
}
/* 
 * tmin - return minimum two's complement integer 
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 4
 *   Rating: 1
 */
int tmin(void) {
  /* exploit the ability of left shift to position the MSB */
  return 1 << 31;
}
//2
/*
 * isTmax - returns 1 if x is the maximum, two's complement number,
 *     and 0 otherwise 
 *   Legal ops: ! ~ & ^ | +
 *   Max ops: 10
 *   Rating: 2
 */
int isTmax(int x) {
  // exploit the property that (2 * 0x01111...11) + 2 == 0,
  // but also (2 * 0x1111...11) + 2 == 0,
  // so we exploit the property that reverse of 0x0111...11 == 1,
  // and reverse of 0x1111...11 == 0 */
  int reverse = !!(~x);
  return !(x + x + 1 + reverse);
}
/* 
 * allOddBits - return 1 if all odd-numbered bits in word set to 1
 *   Examples allOddBits(0xFFFFFFFD) = 0, allOddBits(0xAAAAAAAA) = 1
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 2
 */
int allOddBits(int x) {
  /* check odd bits of X agains 0xAAAAAAAA */
  int oddOnly;
  int As = 0xAA;
  int slice = 0xAA;
  As = (As << 8) + slice; // 0xAAAA
  As = (As << 8) + slice; // 0xAAAAAA
  As = (As << 8) + slice; // 0xAAAAAAAA

  oddOnly = x & As;
  return !(oddOnly ^ As); 
  // return !(~oddOnly+1 + As); // if a equals b, then ~a+1 + b == 0
}
/* 
 * negate - return -x 
 *   Example: negate(1) = -1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 5
 *   Rating: 2
 */
int negate(int x) {
  return (~x) + 1;
}
//3
/* 
 * isAsciiDigit - return 1 if 0x30 <= x <= 0x39 (ASCII codes for characters '0' to '9')
 *   Example: isAsciiDigit(0x35) = 1.
 *            isAsciiDigit(0x3a) = 0.
 *            isAsciiDigit(0x05) = 0.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 3
 */
int isAsciiDigit(int x) {
  /* return 1 if x == 0x000000AB (most significant 6 bits are all zeros),
   * and A == 3 and B is between [0, 9] */

  int isBackZeros = !((x >> 8)); // return 1 if the most significant 6 bits are all zeros
  int sHexaDigit = (x >> 4) & 0x0F; // A
  int fHexaDigit = (x & 0x0F); // B

  int diff = fHexaDigit + ~10+1;
  int diffSign = diff >> 31; // sign is 1 if fHexaDigit is less than 10, 0 otherwise

  return !!(isBackZeros & (!(sHexaDigit ^ 3)) & (diffSign));
}
/* 
 * conditional - same as x ? y : z 
 *   Example: conditional(2,4,5) = 4
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 16
 *   Rating: 3
 */
int conditional(int x, int y, int z) {
  x = !!x;
  x = ~x+1; // x is 0x000...00 if x == 0 and 0xfff...ff otherwise
  return (x & y) | (z & ~x); // return y if x is 0xfff..ff, and z if x is 0x000...00
}
/* 
 * isLessOrEqual - if x <= y  then return 1, else return 0 
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y) {
  /* if sign of x equals sign of y then answer depend on sign of the remainder,
   * if not equal, then it depend on the sign of x */
  int xSign = x >> 31;
  int ySign = y >> 31;
  int isEqualSign = !(xSign ^ ySign);
  int rem = y + (~x + 1);
  int remSign = rem >> 31;
  
  return (isEqualSign & !remSign) | (!isEqualSign & xSign);
}
//4
/* 
 * logicalNeg - implement the ! operator, using all of 
 *              the legal operators except !
 *   Examples: logicalNeg(3) = 0, logicalNeg(0) = 1
 *   Legal ops: ~ & ^ | + << >>
 *   Max ops: 12
 *   Rating: 4 
 */
int logicalNeg(int x) {
  /* use bit smearing */
  x |= (x >> 16);
  x |= (x >> 8);
  x |= (x >> 4);
  x |= (x >> 2);
  x |= (x >> 1);
  
  return ~x & 1;
}
/* howManyBits - return the minimum number of bits required to represent x in
 *             two's complement
 *  Examples: howManyBits(12) = 5
 *            howManyBits(298) = 10
 *            howManyBits(-5) = 4
 *            howManyBits(0)  = 1
 *            howManyBits(-1) = 1
 *            howManyBits(0x80000000) = 32
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 90
 *  Rating: 4
 */
int howManyBits(int x) {
  /*
     * We first bit invert all negative numbers and
     * use binary search to find out the log2(n).
     * Then we add 1 to the final result since we need
     * the MSB to represent the sign.
     * Note: finding the following things are equal:
     * 1. find the most significant bit of 1 for positive numbers
     * 2. find the most significant bit of 0 for negative numbers
     */
    
    /* I hate this, but I have to avoid parse error */
    int sign, bit0, bit1, bit2, bit4, bit8, bit16;

    sign = x >> 31;
    
    /* Bit invert x as needed */
    x = (sign & ~x) | (~sign & x);
    
    /* Binary Search on bit level */
    bit16 = !!(x >> 16) << 4;
    x = x >> bit16;
    
    bit8 = !!(x >> 8) << 3;
    x = x >> bit8;
    
    bit4 = !!(x >> 4) << 2;
    x = x >> bit4;
    
    bit2 = !!(x >> 2) << 1;
    x = x >> bit2;
    
    bit1 = !!(x >> 1);
    x = x >> bit1;
    
    bit0 = x;

    return bit16 + bit8 + bit4 + bit2 + bit1 + bit0 + 1;
}
//float
/* 
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf) {
  int tmp = uf;
  int sign = ((uf >> 31) << 31); /* 0x80000000 or 0x0 */
  int exp = uf & 0x7f800000;
  int f = uf & 0x7fffff;
  tmp = tmp & 0x7fffffff; /* remove sign */

  if ((tmp >> 23) == 0x0){
    tmp = (tmp << 1) | sign;
    return tmp;

  } else if ((tmp >> 23) == 0xff){
    return uf;

  }  else {

    if((exp >> 23) +1 == 0xff){
      return sign | 0x7f800000;
      
    }else {
      return sign | (((exp >> 23) + 1) << 23) | f;
    }

  }
  return tmp;
}
/* 
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x) {
  int e = 158;
  int mask = 1<<31;
  int sign = x&mask;
  int frac;
  if (x == mask)
      return mask | (158<<23);
  if (!x)
      return 0;
  if (sign)
      x = ~x + 1;
  while (!(x&mask)) {
      x = x<<1;
      e = e -1;
  }
  frac = (x&(~mask)) >> 8;
  if (x&0x80 && ((x&0x7F) > 0 || frac&1))
      frac = frac + 1;
  return sign + (e<<23) + frac;
}
/* 
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf) {
  int exp = (uf >> 23) & 0xFF; /*8 exponent bits*/
  int frac = uf & 0x7FFFFF; /*23 fraction bits*/
  int e = exp - 127; /*amount to shift normalized values by (bias of 127)*/

  /*returns if NaN*/
  if (exp == 0x7F800000)
    return 0x80000000u;
  /*rounds down to zero if exponent is zero*/
  if (!exp)
    return 0;
  /*rounds down to zero if there are no left shifts*/
  if (e < 0)
    return 0;
  /*return if out of range for ints*/
  if (e > 30)
    return 0x80000000u;

  frac = frac | 0x800000; /*normalized, append a 1 to the left of the frac*/
  if (e >= 23)
    frac = frac << (e-23); /*shift left if shift > 23*/
  else
    frac = frac >> (23 -e); /*else we need to shift right*/

  if (( uf >> 31 ) & 1) 
    return ~frac + 1; /*return negated value if sign bit is 1*/

  return frac;
}
