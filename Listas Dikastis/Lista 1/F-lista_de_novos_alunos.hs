bSort :: [String] -> [String]
bSort [] = []
bSort (pivot:resto) = bSort menores ++ [pivot] ++ bSort maiores
    where 
        menores = [x | x <- resto, x <= pivot]
        maiores = [x | x <- resto, x > pivot]

main = do
       a <- getLine
       let result = bSort (read a :: [String])
       print result