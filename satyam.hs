age_func x = if x > 18
				then putStrLn "Allowed to drive"
				else putStrLn "Not allowed to drive"

demo_length xs = sum[1 | _ <- xs]

keeplowercase xs = [c | c <- xs, c `elem` ['a'..'z']]

evenlist mylists = [ [ x | x <- list2, even x ] | list2 <- mylists]

{-
> lists must be homogenous
> if we add tuple in lists, the tuple sizes must be same
> but tuple is independent of such constraints
-}

right_triangle = [(a, b, c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2]