mergesort :: [Int] -> [Int]
mergesort inp
    | length inp > 2    = mergesort (fst splitted) ++ mergesort (snd splitted)
    | otherwise         = conquer inp
    where splitted = splitAt ((length inp) 'div' 2) inp


conquer :: [Int] -> [Int] -> [Int]
conquer (x:xs) (y:ys)
    | null (x:xs) = 
    | x > y     = y : conquer ys (x:xs)
    | x <= y    = x : conquer xs (y:ys)