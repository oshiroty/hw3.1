def euclid(x, y):
    """Implements Euclid's Algorithm to find the gcd."""
    if y == 0:
        return x
    else:
        return euclid(y, x % y)
