standardFunction :: (Int, Int) -> Int
standardFunction (a,b) = a + b

curryableFunction :: Int -> Int -> Int  -- Int -> (Int -> Int)
curryableFunction a b = a + b

curriedFunction :: Int -> Int
curriedFunction b = curryableFunction 5 b
{-
by eta reduction, could be written as
curriedFunction = curryableFunction 5
-}

seven :: Int
seven = curriedFunction 2