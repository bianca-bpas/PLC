agrupar :: Eq [[t]] => [[t]] -> [(t, Int)]
agrupar listas = pares (remover (juntar listas)) (juntar listas)

juntar :: [[t]] -> [t]
juntar lista [] = []
juntar lista ((a,b):c) = (a, b) ++ juntar c