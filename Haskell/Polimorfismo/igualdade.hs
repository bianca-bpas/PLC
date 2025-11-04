allEqual :: Int -> Int -> Int -> Bool
allEqual n m p = (n == m) && (m == p)

member :: Eq t => [t] -> t -> Bool
member [] b = False
member (a:as) b = (a == b) || member as b

ehIgual :: Eq a => a -> a -> Bool
ehIgual x y = x == y

{- show :: Show t => t -> String

read :: (Read t) => String -> t -}

{- (+) :: Num a => a -> a -> a

(>) :: Ord a => a -> a -> Bool -}
