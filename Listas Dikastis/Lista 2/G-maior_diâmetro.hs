data Tree t = Nilt |
              Node t (Tree t) (Tree t)
              deriving (Read)
              
alturaArvore :: Tree t -> Int
alturaArvore Nilt = 0
alturaArvore (Node _ esq dir) = 1 + max (alturaArvore esq) (alturaArvore dir)

maiorDiametro :: Ord t => Tree t -> Int
maiorDiametro Nilt = 0
maiorDiametro (Node _ esq dir) = 
        maximum [atual, maiorDiametro esq, maiorDiametro dir]
        where
                atual = 1 + (alturaArvore esq) + (alturaArvore dir)

main = do
        s <- getLine
        let result = maiorDiametro (read s::Tree Int)
        print result