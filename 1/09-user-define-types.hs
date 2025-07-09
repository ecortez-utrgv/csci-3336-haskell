data DayEnum = Mon | Tue | Wed | Thu | Fri | Sat | SundayWhichDoesn'tExist

data Shape = Circle { 
    radius :: Double
} | Rectangle {
    length :: Double,
    width :: Double
}

type AliasOfInt = Int

newtype NotAliasOfInt = NotAliasOfInt Int

structuralEquivalenceOnInt :: Int -> Int
structuralEquivalenceOnInt n = n

works = structuralEquivalenceOnInt (5 :: AliasOfInt)
{-
doesNotWork = structuralEquivalenceOnInt (NotAliasOfInt 5)
-}

area :: Shape -> Double
area (Circle r) = undefined
area (Rectangle l w) = undefined