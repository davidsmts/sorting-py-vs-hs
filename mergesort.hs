{- mergesort :: [Int] -> [Int]
mergesort inp
    | length inp > 2    = mergesort (fst splitted) ++ mergesort (snd splitted)
    | otherwise         = conquer inp
    where splitted = splitAt ((length inp) 'div' 2) inp
 -}

conquer :: [Int] -> [Int] -> [Int]
conquer [] [] = []
conquer arr [] = arr
conquer [] arr = arr
conquer (x:xs) (y:ys)
    | y < x     = y : (conquer (x:xs) ys)
    | otherwise = x : (conquer xs (y:ys))


test :: [Int] -> [Int]
test (x:xs) = (x:xs)