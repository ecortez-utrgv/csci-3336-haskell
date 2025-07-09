functionApplication :: (a -> b) -> a -> b
functionApplication unaryFunction argument1 = unaryFunction argument1

six = functionApplication (\x -> x+1) 5

-- map :: (a -> b) -> [a] -> [b]
oneToTen = map (+1) [0..9]

-- filter :: (a -> Bool) -> [a] -> [a]
evensUpToTen = filter (\n -> n `mod` 2 == 0 {- could use even -}) [0..10]

-- foldr :: (a -> b -> b) -> b -> t a -> b
sumInts :: [Integer] -> Integer
sumInts = foldl (+) 0