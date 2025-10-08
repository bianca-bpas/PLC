-- Dada uma função, verificar se ela é crescente em um intervalo de 0 a n
-- uma função é crescente em [0..n] se f(x) <= f(x+1) para todo x entre 0 e n-1, ou seja:
-- f(0) <= f(1), f(1) <= f(2), ..., f(n-1) <= f(n)
isCrescent :: (Int -> Int) -> Int -> Bool
isCrescent f n = all comp (zip func (tail func))
    where
        func = map f [0..n]
        comp (x,y) = x <= y

{-
• Defina as seguintes funções sobre listas
    – eleva os itens ao quadrado
        • mapping
    – retorna a soma dos quadrados dos itens
        • folding
    – manter na lista todos os itens maiores que zero.
        • filtering 
-}

elevaQuadrado :: [Int] -> [Int]
elevaQuadrado l = map (^2) l

somaQuadrados :: [Int] -> Int
somaQuadrados l = foldr somaQuadrado 0 l
    where 
        somaQuadrado x sum = x^2 + sum

maiorQueZero :: [Int] -> [Int]
maiorQueZero lista = filter f lista
    where f x = (x > 0)

-- Biblioteca
{- livros :: BancoDados -> Pessoa -> [Livro]
livros bd pes = map snd (filter isPess bd)
    where isPess (p, l) = (p == pes)

devolver :: BancoDados -> Pessoa -> Livro -> BancoDados
devolver bd p l = filter notPL bd
    where notPL t = (t /= (p, l))
 -}