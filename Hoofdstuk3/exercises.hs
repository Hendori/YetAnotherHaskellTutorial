-- Exercise 3.3
import Data.Char
answer33 = map Data.Char.isUpper "aBCde"

answer34 xs = length (filter Data.Char.isLower xs)

answer35 xs = foldr max 0 xs

answer36 xs = fst (head (tail xs))
