-- An integer array is called arithmetic if it consists of at least three elements and if the difference between any two consecutive elements is the same.

-- For example, [1,3,5,7,9], [7,7,7,7], and [3,-1,-5,-9] are arithmetic sequences.
-- Given an integer array nums, return the number of arithmetic subarrays of nums.

-- A subarray is a contiguous subsequence of the array.
import Data.List (group, tails)
import Control.Monad (liftM2)

intSlices :: [Int] -> Int
intSlices = sum . map (binom 2) . map length . group . diffs
    where diffs = liftM2 (zipWith (-)) id tail
          binom k n = product [1+n-k..n] `div` product [1..k]