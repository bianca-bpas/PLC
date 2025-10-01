mul2 :: [Int] -> [Int] -> [Int]
mul2 lista1 lista2  = [x * y | (x, y) <- zip lista1' lista2']
    where
        tam1 = length lista1
        tam2 = length lista2
        lista1' = lista1 ++ replicate (tam2 - tam1) 0
        lista2' = lista2 ++ replicate (tam1 - tam2) 0

main = do
    sa <- getLine
    let a = read sa :: [Int]
    sb <- getLine
    let b = read sb :: [Int]
    let result = mul2 a b
    print result
{- Case: 1
Input
[1,2,3]
[3,3,3]
Output
[3,6,9]

Case: 2
Input
[1,2]
[4,5,6]
Output
[4,10,0] -}