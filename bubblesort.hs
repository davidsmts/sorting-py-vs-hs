

--
bubblesort :: [Int] -> [Int]
bubblesort arr
    | null arr  = []
    | cnt > 0   = bubblesort (take ((length s_arr)-1) s_arr) ++ [last s_arr]
    | otherwise = []
    where
        (cnt, s_arr) = sort arr

-- 
sort :: [Int] -> (Int, [Int])
sort [] = (0, [])
sort (x:xs)
    | null xs       = (0, [x])
    | x > xs1   = (cnt +1, xs1 : arr)
    | otherwise     = (cnt, x : arr)
    where
        xs1 = xs !! 0
        (cnt, arr) = sort ((maximum (x:[(xs!!0)])) : (drop 1 xs))