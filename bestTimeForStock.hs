-- You are given an array prices where prices[i] is the price of a given stock on the ith day.
-- You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.
-- Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.

-- https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

import Control.Monad (liftM2)

maxProfit :: [Int] -> Int
maxProfit = maximum . liftM2 (zipWith (-)) id (scanl1 min) 


lM2 h f g (xs) == h(f(xs), g(xs))


maxProfit :: [Int] -> Int
maxProfit xs = maximum $ zipWith (-) xs (scal1 min xs)

    xs
   /  \
  f   g
   \ /
    h

f, g unary
h binary