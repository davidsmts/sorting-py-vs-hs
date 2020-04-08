
-- todo: integrated maximum and indexof function to make it more efficient

selection_sort :: [Int] -> [Int]
selection_sort arr
    | null arr = []
    | otherwise = (selection_sort (start ++ end)) ++ [maxi]
    where
        maxi = maximum arr
        index = getindexof maxi arr
        start = take index arr
        end = drop (index+1) arr

getindexof :: Int -> [Int] -> Int
getindexof target (x:xs)
    | x == target = 0
    | otherwise = (getindexof target xs) + 1

