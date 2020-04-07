


selection_sort :: [Int] -> [Int]
selection_sort arr
    | null arr = []
    | otherwise = (selection_sort (start ++ end)) ++ [maxi]
    where
        maxi = getmax arr (arr !! 0)
        index = getindexof maxi arr
        start = take (index-1) arr
        end = drop (index+1) arr

getindexof :: Int -> [Int] -> Int
getindexof target (x:xs)
    | x == target = 0
    | otherwise = (getindexof target xs) + 1

getmax :: [Int] -> Int -> Int
getmax arr currMax 
    | null arr              = currMax
    | (head arr) > currMax  = getmax (drop 1 arr) (head arr)
    | otherwise             = getmax (drop 1 arr) currMax


