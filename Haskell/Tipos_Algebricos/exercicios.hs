data Expr = Lit Int | Add Expr Expr | Sub Expr Expr
showExpr :: Expr -> String
showExpr (Lit n) = show n
showExpr (Add e1 e2) = "(" ++ showExpr e1 ++ "+" ++ showExpr e2 ++ ")"
showExpr (Sub e1 e2) = "(" ++ showExpr e1 ++ "-" ++ showExpr e2 ++ ")"

data List t = Nil | Cons t (List t)
toList :: List t -> [t]
toList Nil = []
toList (Cons x xs) = x : toList xs

fromList :: [t] -> List t
fromList [] = Nil
fromList (x:xs) = Cons x (fromList xs)

data Tree t = NilT | Node t (Tree t) (Tree t)
depth :: Tree t => Int
depth Nilt = 0
depth (Node _ esq dir) = 1 + max (depth esq) (deth dir)

collapse :: Tree t -> [t]
collapse NilT = []
collapse (Node x esq dir) = collapse esq ++ [x] ++ collapse dir

mapTree :: (t -> u) -> Tree t -> Tree u
mapTree _ NilT = NilT
mapTree f (Node x esq dir) = Node (f x) (mapTree f esq) (mapTree f dir)