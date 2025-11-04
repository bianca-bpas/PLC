classificaNumero :: Int -> String
classificaNumero x =
    case x of
        0 -> "Zero"
        1 -> "Um"
        2 -> "Dois"
        _ -> "Outro número"

describeList :: [a] -> String
describeList xs =
    case xs of
        [] -> "Lista vazia"
        [x] -> "Lista com um elemento"
        (x:y:_) -> "Lista com dois ou mais elementos"

myLength :: [t] -> Int
myLength [] = 0
myLength (a:as) = 1 + myLength as

{- (++) :: [t] -> [t] -> [t]
[] ++ y = y
(x:xs) ++ y = x : (xs ++ y) -}

myZip :: [t] -> [u] -> [(t, u)]
myZip (a:as) (b:bs) = (a,b):myZip as bs
myZip _ _ = []

myReverse :: [t] -> [t]
myReverse [] = []
myReverse (a:as) = myReverse as ++ [a]

myId :: t -> t
myId x = x

rep :: Int -> a -> [a]
rep 0 ch = []
rep n ch = ch : rep (n-1) ch

doubleList :: [Int] -> [Int]
doubleList xs = [2 * a | a <- xs]

doubleIfEven :: [Int] -> [Int]
doubleIfEven xs = [2 * a | a <- xs, isEven a]

isEven :: Int -> Bool
isEven x = (x `mod` 2 == 0) 
