import Data.Char (isDigit)

double :: [Int] -> [Int]
double [] = []
double (a:b) = (2*a) : double b 

member :: [Int] -> Int -> Bool
member [] x = False
member (a:b) x = (x == a) || (member b x)

digits :: String -> String
digits [] = []
digits (a:b) 
    | isDigit a = a : digits b
    | otherwise         = digits b

sumPairs :: [(Int,Int)] -> [Int]
sumPairs [] = []
sumPairs ((n1,n2):b) = n1+n2 : sumPairs b