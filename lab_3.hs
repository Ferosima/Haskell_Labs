qs :: Ord a => [a] -> [a]
qs [] = []
qs list = 
    let small_list = filter(<head list)list
        big_list = filter(>head list)list
    in qs small_list ++ [head list] ++ qs big_list