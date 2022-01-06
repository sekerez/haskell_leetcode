-- Find duplicate problem
-- where each integer is in the range [1, n] inclusive,
-- return the repeated number.

-- The repeated number repeats only once.

import Control.Monad (liftM2)

findDuplicate :: [Int] -> Int
findDuplicate = liftM2 (-) sum (sumOfRange . length)
        where sumOfRange n = div (n * (n - 1)) 2
