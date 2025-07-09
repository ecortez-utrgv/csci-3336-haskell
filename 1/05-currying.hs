standardFunction :: (Int, Int) -> Int
standardFunction (a,b) = a + b

curryableFunction :: Int -> Int -> Int  -- Int -> (Int -> Int)
curryableFunction a b = a + b

curriedFunction :: Int -> Int
curriedFunction {-b-} = curryableFunction 5 {-b-} -- eta reduction

seven :: Int = curriedFunction 2