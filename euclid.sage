def euclid(x, y):
    """Implements Euclid's Algorithm to find the gcd."""
    if y == 0:
        return x
    else:
        return euclid(y, x % y)

%cython
def euclid2(x, y):
    """Implements Euclid's Algorithm to find the gcd."""
    if y == 0:
        return x
    else:
        return euclid2(y, x % y)

%cython
def euclid3(x, y):
    """Implements Euclid's Algorithm to find the gcd."""
    while y != 0:
        temp = y;
        y = x % y
        x = temp
    return x

%cython
def euclid4(long x, long y):
    """Implements Euclid's Algorithm to find the gcd (fastest)."""
    cdef long temp
    while y != 0:
        temp = y;
        y = x % y
        x = temp
    return x
