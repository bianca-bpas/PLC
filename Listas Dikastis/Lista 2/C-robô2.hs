data Command = Forward Int | Backward Int | TurnLeft | TurnRight 
               deriving (Eq, Show, Read)

data Direction = North | South | West | East
                 deriving (Read, Show)

main = do
        a <- getLine
        b <- getLine
        let result = faces (read a) (read b)
        print result

turn :: Direction -> Int -> Direction
turn d 0 = d
turn North n = turn East (n-1)
turn East n = turn South (n-1)
turn South n = turn West (n-1)
turn West n = turn North (n-1)

    
faces :: Direction -> [Command] -> Direction
faces d [] = d
faces d (a:as) = case a of
    Forward _  -> faces d as
    Backward _ -> faces d as
    TurnLeft   -> faces (turn d 3) as
    TurnRight  -> faces (turn d 1) as
