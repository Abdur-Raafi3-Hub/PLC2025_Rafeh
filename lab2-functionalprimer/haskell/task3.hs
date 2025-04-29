sgn x = if x < 0 then -1 else if x == 0 then 0 else 1

main = do
    putStrLn "Please enter a number"
    input <- getLine 
    let x = (read input :: Int)
    putStrLn( show (sgn (x)) )

    putStrLn "we#ll do another"
    n <- getLine
    putStrLn (show( sgnGuard(read n::Int)))


--Writing using guards

-- Declaring type signature for functions explicitly not 100% necessary
sgnGuard x | x < 0 = -1
           | x == 0 = 0
           | otherwise = 1


            
            
