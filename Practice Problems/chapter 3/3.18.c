short test(short x, short y, short z) {
    short val = z+y-x;
    if (z > 5) {
      if (y > 2)
         val = x/z;
      else
         val = x/y;
    } else if (z < 3)
         val = z/y;
    return val;
}