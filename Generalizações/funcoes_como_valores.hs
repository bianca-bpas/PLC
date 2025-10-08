{- (.) :: (u -> v) -> (t -> u) -> (t -> v)
(.) f g x = f (g x) -}
-- (.) f g = \x -> f (g x)

twice :: (t -> t) -> (t -> t)
twice f = f . f

iter :: Int -> (t -> t) -> (t -> t)
iter 0 f = id
iter n f = (iter (n-1) f) . f

addNum :: Int -> (Int -> Int)
addNum n = h
    where
        h m = n + m

{- addNum n = (\m -> n + m) -}

multiply :: Int -> Int -> Int
multiply a b = a * b

doubleList :: [Int] -> [Int]
doubleList = map (multiply 2)

