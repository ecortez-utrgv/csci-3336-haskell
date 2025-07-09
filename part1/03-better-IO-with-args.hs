import qualified Control.Monad
count :: Int -> Int -> IO ()
count n m = do
    print n
    Control.Monad.when (n < m) $ count (n+1) m