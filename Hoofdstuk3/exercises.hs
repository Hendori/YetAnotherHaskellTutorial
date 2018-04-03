-- Exercise 3.3
import Data.Char
answer33 = map Data.Char.isUpper "aBCde"

answer34 xs = length (filter Data.Char.isLower xs)

answer35 xs = foldr max 0 xs

answer36 xs = fst (head (tail xs))

-- Exercise 3.7
fib 0 = 1
fib 1 = 1
fib n = (fib (n-1))+(fib (n-2))

-- Exercise 3.8
multi a 1 = a
multi a b = a + (multi a (b-1))

-- Exercise 3.9
my_map f [] = []
my_map f (x:xs) = f x: my_map f xs
