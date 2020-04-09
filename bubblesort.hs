



sort :: [Int] -> (Int, [Int])
sort (x:xs)
    | null xs       = (0, [x])
    | x > xs1   = (cnt +1, xs1 : arr)
    | otherwise     = (cnt, x : arr)
    where
        xs1 = xs !! 0
        (cnt, arr) = sort ((maximum (x:[(xs!!0)])) : (drop 1 xs))