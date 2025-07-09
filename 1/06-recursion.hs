factorialV1 0 = 1
factorialV1 n = n * factorialV1 (n-1)

factorialV2 n 
    | n >= 0    = implemenation 1 n
    | otherwise = error "Negative Factorial!"
    where implemenation accumulator 0 = accumulator
          implemenation accumulator n = implemenation (accumulator*n) (n-1)