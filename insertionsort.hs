

insertion_sort :: [Int] -> Int -> [Int]
insertion_sort arr i
    | length arr == i = arr
    | otherwise = insertion_sort (start ++ [(arr !! i)] ++ mid ++ ass) (i+1)
    where currPos = find_pos arr (i-1) (arr !! i)
          start = take currPos arr
          ass = drop i arr
          mid = drop currPos (take (i-1) arr)

find_pos :: [Int] -> Int -> Int -> Int
find_pos arr i var
    | i == -1           = 0
    | var >= (arr !! i) = i
    | otherwise         = find_pos arr (i-1) var