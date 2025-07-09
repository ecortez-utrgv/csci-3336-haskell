import Data.List (partition)

qsort1 [] = []
qsort1 (pivot:rest) = qsort1 [lessThan | lessThan <- rest, lessThan < pivot]
                   ++        [pivot]
                   ++ qsort1 [atLeast | atLeast <- rest, atLeast >= pivot]

-- requires import
qsort2 [] = []
qsort2 (pivot:rest) = qsort2 left
                   ++       [pivot]
                   ++ qsort2 right
    where (left, right) = partition (< pivot) rest
