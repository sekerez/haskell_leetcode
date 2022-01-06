

canJump :: [Int] -> Bool
canJump = (== 0) . foldr1 aux 

aux :: Int -> Int -> Int
aux x y
    | 
    | 