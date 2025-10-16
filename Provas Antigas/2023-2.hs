fibonacci :: [Int]
fibonacci = fib 0 1
    where
        fib a b = a : fib b (a + b)

merge :: Ord t => [t] -> [t] -> [t]
merge [] [] = []
merge [] (a:as) = a : merge [] as
merge (a:as) [] = a : merge [] as
merge (a:as) (b:bs)
    | a <= b = a : merge as (b:bs)
    | otherwise = b : merge bs (a:as)

mergesort :: Ord t => [t] -> [t]
mergesort lista = foldl merge [] (map (:[]) lista)

type Pilha t = [t]

exemploPilhaElem :: Pilha Elemento
exemploPilhaElem = [Valor 10, Valor 20, Soma, Valor 30, Multiplica]

gera_string :: Pilha Elemento -> String
-- exemplo de uso: gera_string exemploPilhaElem ——> "((10+20)*30)"

data Elemento = Valor Int | Soma | Multiplica deriving (Show)