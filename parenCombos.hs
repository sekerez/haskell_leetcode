paren :: Int -> [String]
paren 0 = [""]
paren n = [ "(" ++ x ++ ")" ++ y 
          | m <- [0..n-1], x <- paren m, y <- paren $ n-m-1]