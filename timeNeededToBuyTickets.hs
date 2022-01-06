timeRequiredToBuy :: [Int] -> Int -> Int
timeRequiredToBuy tickets k = (sum loweredTickets) `subtract` (length filteredBack)
    where 
        target = tickets !! k
        filteredBack = filter (<target) tickets
        loweredTickets = map (=)