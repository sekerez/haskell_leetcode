
findIndeces :: (Num a) => a -> [a] -> [a]
findIndeces t xs = map fst . filter (\(_, y) -> y == t) . zip [0..] . sort xs


quicksort :: (Num a) => [a] -> [a]
quicksort [] = 0
quicksort x:xs = small ++ x ++ big
    where small = filter (<=x) xs
          bigg  = filter ( >x) xs