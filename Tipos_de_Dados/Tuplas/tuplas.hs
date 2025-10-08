intP :: (Int, Int)
intP = (33,43)

(True, 'x') :: (Bool, Char)
(34, 22, 'b') :: (Int, Int, Char)

addPair :: (Int, Int) -> Int
addair (x, y) = x + y

shift :: ((Int, Int), Int) -> (Int, (Int, Int))
shift ((x, y), z) = (x, (y, z))

type Name = String
type Age = Int
type Phone = Int
type Person = (Name, Age, Phone)

name :: Person -> Name
name (n, a, p) = n

oneRoot :: Float -> Float -> Float -> Float
oneRoot a b c = -b / (2.0 * a)

twoRoots :: Float -> Float -> Float -> (Float, Float)
twoRoots a b c = (d - e, d + e)
    where
        d = -b / (2.0 * a)
        e = sqrt(b^2 - 4.0 * a * c) / (2.0 * a)

roots :: Float -> Float -> Float -> String
roots a b c
    | b^2 == 4.0 * a * c = show (oneRoot a b c)
    | b^2 > 4.0 * a * c = show f ++ " " ++ show s
    | otherwise = "no roots"
    where (f, s) = twoRoots a b c
    