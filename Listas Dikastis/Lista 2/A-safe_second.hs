import Prelude hiding (Maybe (..))

data Maybe a = Just a |
                Nothing
                deriving(Show)

main = do
    a <- getLine
    let result = safeSecond (read a::[Int])
    print result


safeSecond :: [a] -> Maybe a
safeSecond [] = Nothing
safeSecond [x] = Nothing
safeSecond (x:y:xs) = Just y