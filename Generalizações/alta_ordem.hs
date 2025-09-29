applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

total :: (Int -> Int) -> Int -> Int
total f 0 = f 0
total f n = total f (n-1) + f n

sq :: Int -> Int
sq x = x*x

sumSquares :: Int -> Int
sumSquares n = total sq n

maxFun :: (Int -> Int) -> Int -> Int
maxFun f 0 = f 0
maxFun f n = maxi (maxFun f (n-1)) (f n)

zeroInRange :: (Int -> Int) -> Int -> Bool
zeroInRange f 0 = (f 0 == 0)
zeroInRange f n = zeroInRange f (n-1) || (f n == 0)

double :: [Int] -> [Int]
double [] = []
double (a:xs) = (2*a) : double xs

sqrList :: [Int] -> [Int]
sqrList [] = []
sqrList (a:xs) = (a*a) : sqrList xs

times2 :: Int -> Int
times2 n = 2 * n

sqr :: Int -> Int
sqr n = n * n

map :: (t -> u) -> [t] -> [u]
map f [] = []
map f (a:as) = f a : map f as

doubleList xs = map times2 xs
sqrList xs = map sqr xs

snds :: [(t, u)] -> [u]
snds xs = map snd xs

sumList :: [Int] -> Int
sumList [] = 0
sumList (a:as) = a + sumList as

foldrl :: (t -> t -> t) -> [t] -> t
foldrl f [a] = a
foldrl f (a:as) = f a (foldrl f as)

sumList l = foldrl (+) l

and :: [Bool] -> Bool
and xs = folldrl (&&) xs

concat :: [[t]] -> [t]
concat xs = foldrl (++) xs

maximum :: [Int] -> Int
maximum xs = foldrl maxi xs

foldr :: (t -> u -> u) -> u -> [t] -> u
foldr f s [] = s
foldr f s (a:as) = f a (foldr f s as)

foldll f [x] = x
foldll f (x:xs) = foldl f x xs

concat :: [[t]] -> [t]
concat xs = foldr (++) [] xs 

and :: [Bool] -> Bool
and bs = foldr (&&) True bs

foldl f z [] = z
foldl f z (x:xs) = foldl f (f z x) xs

foldll f [x] = x
foldll f (x:xs) = foldl f x xs

digits, letters :: String -> String

filter :: (t -> Bool) -> [t] -> [t]
filter p [] = []
filter p (a:as)
    | p a = a : filter p as
    | otherwise = filter p as

digits st = filter isDigit st
letters st = filter isLetter st

evens xs = filter isEven xs
    where isEven n = (n `mod` 2 == 0)