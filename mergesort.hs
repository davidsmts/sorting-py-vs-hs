

mergesort :: [Int] -> [Int]
mergesort arr = (conquerAll (divideAll arr)) !! 0

divideAll :: [Int] -> [[Int]]
divideAll [] = []
divideAll (x:xs)
    | null xs = [[x]]
    | otherwise = [x] : divideAll xs

conquerAll :: [[Int]] -> [[Int]]
conquerAll [] = []
conquerAll [[]] = [[]]
conquerAll (x:xs)
    | null xs   = [x]
    | otherwise = conquerAll (conquer x (xs !! 0) : (drop 1 xs))


conquer :: [Int] -> [Int] -> [Int]
conquer [] [] = []
conquer arr [] = arr
conquer [] arr = arr
conquer (x:xs) (y:ys)
    | y < x     = y : (conquer (x:xs) ys)
    | otherwise = x : (conquer xs (y:ys))


-- !!!UNUSED!!!
divide :: [Int] -> ([Int], [Int])
divide arr
    | length arr <= 1    = (arr, [])
    | otherwise         = (take mid arr, drop mid arr)
    where
        mid = (length arr) `div` 2
-- !!!UNUSED!!!
