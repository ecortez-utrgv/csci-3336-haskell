import Data.Char (toUpper)

main :: IO ()
main = do
    putStrLn "Give me something nice (つ°ヮ°)つ "
    somethingNice <- getLine
    putStrLn ("Ew, didn't like that, take it back （ノ￣＾￣）ノ 彡 " ++ somethingNice)
    putStrLn "Got anything else? (͡° ʖ̯ ͡°) "
    anythingElse <- getLine
    let sanitizedAnythingElse = map toUpper anythingElse
    if sanitizedAnythingElse == "NO" then do
        putStrLn "aw rats (｡•́︿•̀｡)"
        return ()
    else
        main