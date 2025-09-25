def prod(a, b):
    if a == b:
        return a
    else:
        return a * prod(a+1, b)