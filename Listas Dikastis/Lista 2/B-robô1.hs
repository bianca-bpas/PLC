data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show, Read)

data Direction = North | South | West | East
                 deriving (Read, Show)


turn :: Direction -> Int -> Direction
turn d 0 = d
turn North n = turn East (n-1)
turn East n = turn South (n-1)
turn South n = turn West (n-1)
turn West n = turn North (n-1)

move :: (Int, Int) -> Direction -> Int -> (Int, Int)
move (x, y) North n = (x, y + n)
move (x, y) South n = (x, y - n)
move (x, y) East n = (x + n, y)
move (x, y) West n = (x - n, y)

go :: (Int, Int) -> Direction -> [Command] -> (Int, Int)
go pos _ [] = pos
go pos dir (a:as) =
    case a of
        Forward n -> go (move pos dir n) dir as
        Backward n -> go (move pos dir (-n)) dir as
        TurnLeft -> go pos (turn dir 3) as
        TurnRight -> go pos (turn dir 1) as

destination :: (Int,Int) -> [Command] -> (Int,Int) 
destination pos comandos = go pos North comandos


main = do
       a <- getLine
       b <- getLine
       let result = destination (read a) (read b)
       print result
