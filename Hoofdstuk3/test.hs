module Test
    where
x = 5
y = (6, "Hello")
z = x + fst y

square x = x*x


signum' x   | x < 0 = -1
            | x > 0 = 1
            | otherwise = 0


f 0 = 1
f 1 = 5
f 2 = 2
f _ = -1

--let binding example
root a b c = 
    let det = sqrt (b * b + 4 * a * c)
        a2 = 2 * a
    in ((-b + det) /(a2) , (-b - det) /(a2))

factorial 1 = 1
factorial n = n* factorial (n-1)

expo a 1 = a
expo a b = a * expo a (b-1)

my_length [] = 0
my_length (x:xs) = 1 + my_length (xs)

my_filter p [] = []
my_filter p (x:xs)  | p x = x : my_filter p xs
                    | otherwise = my_filter p xs
