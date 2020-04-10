

--
bubblesort :: [Int] -> [Int]
bubblesort arr
    | (cnt == 0) || (length arr <= 2) = new
    | otherwise = (bubblesort (take ((length arr)-1) new)) ++ [(new !! ((length arr)-1))]
    where
        (cnt, new) = sort arr
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