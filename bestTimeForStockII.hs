-- You are given an integer array prices where prices[i] is the price of a given stock on the ith day.

-- On each day, you may decide to buy and/or sell the stock. You can only hold at most one share of the stock at any time. However, you can buy it then immediately sell it on the same day.

-- Find and return the maximum profit you can achieve.

-- https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

maxProfitII :: (Num a) => [a] -> a
maxProfitII = sum . mapAdjacent (\(x,y) -> y-x if y>x else 0)


maxProfitII :: (Num a) => [a] -> a
maxProfitII = sum . filter (>0) . mapAdjacent (flip (-))