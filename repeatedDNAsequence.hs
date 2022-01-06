import Data.List
import Data.List.Unique

rDNAs :: String -> [String]
rDNAs xs = (nub tens) // tens
    where tens = map (take 10) $ tails xs
