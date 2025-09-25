-- main = putStr (show (maxVendas 3))

totalVendas :: Int -> Int
totalVendas 0 = vendas 0
totalVendas n = totalVendas (n-1) + vendas n

maxVendas :: Int -> Int
maxVendas 0 = vendas 0
maxVendas n = max (maxVendas (n-1)) (vendas n)

vendas :: Int -> Int
vendas 0 = 10
vendas 1 = 20
vendas 2 = 25
vendas 3 = 10
vendas 4 = 10
vendas 5 = 25
vendas n = 0

-- exercicio 1:
-- defina a funcao vendasIguaisA 28 10
-- numero de semanas com vendas iguais a 28 até a semana 10
vendasIguaisA :: Int -> Int -> Int
-- casos base
vendasIguaisA valor 0 | vendas 0 == valor = 1
vendasIguaisA valor 0 | otherwise = 0
-- caso recursivo
vendasIguaisA valor sem | vendas sem == valor = 1 + vendasIguaisA valor (sem - 1)
vendasIguaisA valor sem | otherwise = vendasIguaisA valor (sem - 1)

{- -- alternativa
vendasIguaisA' :: Int -> Int -> Int
vendasIguaisA' valor semana = vIa valor semana 0

vIa valor 0 res | vendas 0 == valor = res + 1
vIa valor 0 res | otherwise = res
vIa valor sem res | vendas sem == valor = vIa valor (sem - 1) (res + 1) 
vIa valor sem res | otherwise =  vIa valor (sem - 1) res
-}

-- exercicio 2: 
-- ehPrimo :: Int -> Bool
-- exemplo: ehPrimo 7 ---> True
-- use a função mod :: Int -> Int -> Int
-- resto da divisão: 10 `mod` 3 --> 1
-- resto da divisão: mod 10 3 --> 1
ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = testaPrimo (n-1) 
  where
    testaPrimo 1  = True
    testaPrimo aux | n `mod` aux == 0 = False
                   | otherwise = testaPrimo (aux - 1) 


-- exercicio 3: primosEntreSi :: Int -> Int -> Bool
-- primosEntreSi 9 10 ----> True -- não tem divisores comuns
-- primosEntreSi 9 6 ----> False -- 3 é um divisor comum
primosEntreSi :: Int -> Int -> Bool
primosEntreSi val_1 val_2 = auxiliar (val_2 - 1)
  where auxiliar 1 = True
        auxiliar x | val_1 `mod` x == 0 && val_2 `mod` x == 0 = False
                   | otherwise = auxiliar (x - 1)