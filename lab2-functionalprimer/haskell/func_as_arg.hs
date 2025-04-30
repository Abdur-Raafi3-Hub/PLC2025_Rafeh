-- Create inpFunc
inpFunc a b = [a..b]

-- Define applicatorFunc
applicatorFunc inpFunc s
    | s == 's' = (sum inpFunc)  -- Convert Int to Double
    | otherwise = (sum inpFunc) / 5  -- Use Double division

main = do
    putStrLn "Gimme 2 numbers separately"
    line1 <- getLine
    line2 <- getLine
    let input1 = read line1   -- Explicit type annotation
    let input2 = read line2 
    let list = inpFunc input1 input2
    let result = applicatorFunc list 's'
    putStrLn (show result)