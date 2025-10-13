from enum import Enum

class Maybe(Enum):
    Just = 1
    Nothing = 2

def safeSecond(lista):
    if len(lista) == 1:
        return Maybe.Nothing
    else:
        return (Maybe.Just, lista[1])
    

print(safeSecond([1]))
print(safeSecond([1, 4, 5, 6]))
