{- Entendimento do problema:

A função agrupar deve:

Receber uma lista de listas (ex: [[4,2,4],[1,2]]).
Juntar todos os elementos.
Contar quantas vezes cada valor aparece.
Retornar uma lista de pares (valor, quantidade).
Exemplo:
agrupar [[4,2,4,3,4,4,4,5,4,6], [1,2,3,4,5],[2]]
-- [(4,7),(2,3),(3,2),(5,2),(6,1),(1,1)]
 -}

juntarListaDeLista :: [[t]] -> [t]
juntarListaDeLista [] = []
juntarListaDeLista (a:b) = juntarListas a (juntarListaDeLista b)

juntarListas :: [t] -> [t] -> [t]
juntarListas [] c = c
juntarListas (d:e) c = d : juntarListas e c

pertence :: Eq t => t -> [t] -> Bool
pertence _ [] = False
pertence a (b:c)
    | a == b = True
    | otherwise = pertence a c

removeAll :: Eq t => t -> [t] -> [t]
removeAll _ [] = []
removeAll a (b:c)
    | a == b = removeAll a c
    | otherwise = b : removeAll a c

removeDuplicatas :: Eq t => [t] -> [t]
removeDuplicatas [] = []
removeDuplicatas (a:b) = a : removeDuplicatas (removeAll a b)

contar :: Eq t => t -> [t] -> Int
contar _ [] = 0
contar a (b:c) 
    | a == b = 1 + contar a c
    | otherwise = contar a c

montarPares :: Eq t => [t] -> [t] -> [(t, Int)]
montarPares [] _ = []
montarPares (a:b) c = (a, contar a c) : montarPares b c

agrupar :: Eq t => [[t]] -> [(t, Int)]
agrupar x =
    let listas = juntarListaDeLista x
        unicos = removeDuplicatas listas
    in montarPares unicos listas

-- Exemplo de uso:
main :: IO ()
main = print $ agrupar [[4,2,4,3,4,4,4,5,4,6], [1,2,3,4,5],[2]]
-- Saída: [(4,7),(2,3),(3,2),(5,2),(6,1),(1,1)]