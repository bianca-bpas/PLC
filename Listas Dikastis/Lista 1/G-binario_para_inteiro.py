def btoi(binario: str) -> int:
    soma = 0
    tam = len(binario)
    for i in range(tam):
        soma += (int(binario[i]) * (2**(tam-1-i)))
    return soma

def btoi2(binario: str) -> int:
    if (len(binario) == 1):
        return int(binario)
    
    ultimo = binario[-1]
    resto = binario[:-1]
    
    return btoi(resto) * 2 + int(ultimo)
    
print(btoi2("1010"))