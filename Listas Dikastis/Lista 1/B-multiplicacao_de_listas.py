from itertools import zip_longest

def mul2(lista1, lista2):
    return [x * y for x, y in zip_longest(lista1, lista2, fillvalue=0)]


print(mul2([1, 2, 3], [3, 3, 3]))
print(mul2([1, 2], [4, 5, 6]))

