
rainWater :: [Int] -> Int
rainWater xs = sum $ zipWith (-) mins xs
    where mins = zipWith min maxl maxr
          maxr = scanr1 max xs
          maxl = scanl1 max xs