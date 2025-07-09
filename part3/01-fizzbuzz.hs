fizzBuzz :: (Show a, Integral a) => a -> String
fizzBuzz n = if null translation then show n else translation
    where translation = concat [word | (factor, word) <- fizzBuzzMap, n `mod` factor == 0]
          fizzBuzzMap = [(3,"Fizz")
                        ,(5,"Buzz")
                        ,(7,"Baz")]

main :: IO ()
main = mapM_ (putStrLn . fizzBuzz) [1..105]