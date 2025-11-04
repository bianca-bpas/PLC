type Chave = [(Char, Char)]

letras :: [Char]
letras = ['A'..'Z']

cria_chave :: Int -> Chave
cria_chave n = zip letras cifra
    where cifra = (drop n letras) ++ (take n letras)

-- exemplo: cria_chave 3 => [('A', 'D'), ('B', 'E'), ('C', 'F'),..., ('Z', 'C')]

crypt :: Chave -> String -> String
crypt chave str = map (troca_letra chave) str

troca_letra :: Chave -> Char -> Char
troca_letra [] letra = letra
troca_letra ((x, y):as) letra
    | x == letra = y
    | otherwise = troca_letra as letra

-- exemplo: crypt (cria_chave 3) "A LIGEIRA RAPOSA" => "D OLJHLUD UDSRVD"

data ChaveTree = Node Char Char ChaveTree ChaveTree 
                | Leaf deriving (Show)

cryptT :: ChaveTree -> String -> String
cryptT chave str = map (troca_letra_t chave) str

troca_letra_t :: ChaveTree -> Char -> Char
troca_letra_t Leaf letra = letra
troca_letra_t (Node ch1 ch2 t1 t2) letra
    | letra == ch1 = ch2
    | letra < ch1 = troca_letra_t t1 letra
    | letra > ch1 = troca_letra_t t2 letra

-- exemplo:
{- chave_parcial :: ChaveTree
chave_parcial = Node 'I' 'L' 
                    (Node 'A' 'D' Leaf Leaf)
                    (Node 'L' 'O' Leaf Leaf) -}

-- exemplo: cryptT chave_parcial "A LIGEIRA RAPOSA" ⇒ "D OLGELRD RDPOSD"

ctree_to_chave :: ChaveTree -> Chave
ctree_to_chave Leaf = []
ctree_to_chave (Node ch1 ch2 t1 t2) = ctree_to_chave t1 ++ [(ch1, ch2)] ++ ctree_to_chave t2