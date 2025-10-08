-- 1) Escreva uma função que insira um número em sua posição correta em uma lista ordenada
insert :: Int -> [Int] -> [Int]
insert x [] = [x]
insert x (a:as)
    | a > x = x : a : as
    | otherwise = a : insert x as

-- 2) Escreva uma função que verifica se um número é primo. Um número primo é divisível apenas por 1 e por ele mesmo. O primeiro número primo é o número 2
ehPrimo :: Int -> Bool
ehPrimo 0 = False
ehPrimo 1 = False
ehPrimo 2 = True
ehPrimo x = not (any (\n -> x `mod` n == 0) [2..x-1])

{- verificaDivisores :: Int -> Int -> Bool
verificaDivisores n d
    | d == n = True
    | n `mod` d == 0 = False
    | otherwise = not verificaDivisores n (d+1)

ehPrimo2 :: Int -> Bool
ehPrimo2 0 = False
ehPrimo2 1 = False
ehPrimo2 2 = True
ehPrimo2 n = verificaDivisores n 2

ehPrimo3 :: Int -> Bool
ehPrimo3 0 = False
ehPrimo3 1 = False
ehPrimo3 2 = True
ehPrimo3 n = verifica 2
    where
        verifica d
            | d == n = True
            | n `mod` d == 0 = False
            | otherwise = verifica (d+1) -}

-- 3 ) Usando as funções map, filter e alguma das funções de fold, escreva uma função que retorna a soma dos quadrados dos números primos existentes entre dois números (dois parâmetros). Por exemplo: os números primos entre 30 e 50 são 31, 37, 41, 43, 47. Esses 5 números elevados ao quadrado são 961, 1369, 1681, 1849, 2209. A soma desses números é 8069
sumPrimeSquares1 :: Int -> Int -> Int
-- sumPrimeSquares1 30 50 --> 8069
sumPrimeSquares1 x y = foldr (+) 0 quadrados
    where
        primos = filter (ehPrimo2) [x..y]

        ehPrimo2 :: Int -> Bool
        ehPrimo2 0 = False
        ehPrimo2 1 = False
        ehPrimo2 2 = True
        ehPrimo2 x = not (any (\n -> x `mod` n == 0) [2..x-1])
        
        quadrados = map (^2) primos

-- 5) Reescreva a função da questão 3 sem usar map e filter, usando compreensão de listas onde for adequado
sumPrimeSquares2 x y = foldr (+) 0 quadrados
    where
        primos = [a | a <- [x..y], ehPrimo a]
        quadrados = elevaQuadrado primos

        elevaQuadrado :: [Int] -> [Int]
        elevaQuadrado [] = []
        elevaQuadrado (a:as) = a^2: elevaQuadrado as
