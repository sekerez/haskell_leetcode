-- Write a function to find the longest common prefix string amongst an array of strings.

-- If there is no common prefix, return an empty string "".

-- https://leetcode.com/problems/longest-common-prefix/

longestCommonPrefix :: [String] -> String
longestCommonPrefix = foldl1 (\xs ys -> map fst
                                      $ takeWhile (uncurry (==))
                                      $ zip xs ys)
