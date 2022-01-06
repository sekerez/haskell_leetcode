-- Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

-- A subarray is a contiguous part of an array.

-- https://leetcode.com/problems/maximum-subarray/

maxSubArray :: [Int] -> Int
maxSubArray = maximum . scanl1 sumIfPositive 

sumIfPositive :: Int -> Int -> Int
sumIfPositive x y
    | x > 0 = x + y
    | otherwise = y