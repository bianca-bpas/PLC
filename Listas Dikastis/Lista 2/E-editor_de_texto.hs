data Cmd = Cursor Int
           | Backspace Int
           | Delete Int
           | Insert String
           deriving (Read)


moveCursor :: (String, String) -> Int -> (String, String)
moveCursor (left, right) x = splitAt pos full
    where
        full = left ++ right
        pos = max 0 (min (length full) (length left + x))

edit :: (String, String) -> [Cmd] -> (String, String)
edit state [] = state
edit (left, right) (Cursor x : cs) = edit (moveCursor (left, right) x) cs
edit (left, right) (Insert x : cs) = edit (left, x++ right) cs
edit (left, right) (Delete x : cs) = edit (left, drop x right) cs
edit (left, right) (Backspace x : cs) = edit (take (length left - x) left, right) cs

editText :: String -> [Cmd] -> String
editText str cmds = left ++ right
  where (left, right) = edit ("", str) cmds

main = do
       a <- getLine
       b <- getLine
       let result = editText a (read b)
       print result