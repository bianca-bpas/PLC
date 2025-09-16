cabecalho :: String
cabecalho = "Semana  Venda\n"

vendas :: Int -> Int
vendas 0 = 10
vendas 1 = 20
vendas 2 = 25
vendas 3 = 10
vendas 4 = 10
vendas 5 = 25
vendas n = 0

addEspacos :: Int -> String
addEspacos 0 = " "
addEspacos n = " " ++ addEspacos(n-1)

paraDireita :: Int -> String -> String
paraDireita n x = addEspacos n ++ x ++ addEspacos n

imprimeSemanas :: Int -> String
imprimeSemanas 0 = paraDireita 2 "0" ++ paraDireita 2 (show(vendas 0)) ++ "\n"
imprimeSemanas n = imprimeSemanas (n-1) 
                    ++ paraDireita 2 (show(n)) ++ paraDireita 2 (show(vendas n)) ++ "\n"
                 
totalVendas :: Int -> Int
totalVendas 0 = vendas 0
totalVendas n = totalVendas (n-1) + vendas n

imprimeTotal :: Int -> String
imprimeTotal n = paraDireita 0 "Total" ++ paraDireita 2 (show(totalVendas n)) ++ "\n"

mediaVendas :: Int -> Double
mediaVendas n = fromIntegral (totalVendas n) / fromIntegral (n+1)

imprimeMedia :: Int -> String
imprimeMedia n = paraDireita 0 "Média" ++ paraDireita 2 (show(mediaVendas n)) ++ "\n"

imprimeTabela :: Int -> IO()
imprimeTabela n = putStr(cabecalho
                ++ imprimeSemanas n
                ++ imprimeTotal n
                ++ imprimeMedia n)