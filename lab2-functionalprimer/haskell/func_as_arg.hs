--create inpFunc
inpFunc a b = [a..b]

--Define applicatorFunc
applicatorFunc inpFunc s = if s=='s' then sum inpFunc else (sum inpFunc)/5  

main = do
    putStrLn "Gimme 2 numbers seperately"
    line1 <- getLine
    line2 <- getLine
    let input1 = (read line1 )
    let input2 = (read line2 ) -- all inputs now taken in, plug into a list:
    let list = inpFunc input1 input2
    let result = applicatorFunc list 'a' --put that into result
    putStrLn (show result)
 