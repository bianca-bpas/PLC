def trianguloValido(a: int, b: int, c: int) -> bool:
    if (a + b) > c and (b + c) > a and (c + a) > b:
        return True
    else:
        return False