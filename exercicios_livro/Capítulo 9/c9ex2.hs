-- a) [a] -> a, ele pega o segundo elemento da lista
second xs = head (tail xs)

-- b) p1 -> p2 -> p1, repete o primeiro elemento
const' x y = x

-- c) (b, a) -> (a, b), troca os elementos da tupla
swap (x, y) = (y, x)

-- d) (t1 -> t2) -> t1 -> t2, aplica uma função a uma entrada
apply f x = f x

-- e) (a -> b -> c) -> b -> a -> c, inverte os parâmetros da função binária
flip' f x y = f y x

-- f) a -> b -> (a, b), faz a tupla com os elementos
pair x y = (x, y)

-- g) Eq a => [a] -> Bool, verifica se uma lista é palíndroma
palindrome xs = reverse xs == xs

-- h) (t -> t) -> t -> t, aplica a função duas vezes
twice f x = f (f x)

-- i) Show a => (String, a) -> String
mostra (nome, idade) = "Nome: " ++ nome ++ ", idade: " ++ show idade