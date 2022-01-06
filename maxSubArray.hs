
-- Fold over list

maxSubArray :: [Int] -> Int
maxSubArray = maximum . scanl1 sumIfPositive 

sumIfPositive :: Int -> (Int -> Int)
sumIfPositive x
    | x > 0 = (x+)
    | otherwise = id