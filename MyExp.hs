re1 x y = x**(1-sqrt y)/(3*y-tan x)
re2 l = odd (maximum l - minimum l) == (l !! 3 /= minimum l)

re3 :: Char -> Char -> String -> String
re3 p z [] = []
re3 p z (h:t) | h == p = z : re3 p z t
              | otherwise = h : re3 p z t

fib 1 = 1
fib 2 = 1
fib n = fib (n-1) + fib (n-2)

fact 1 = 1
fact n = n*fact (n-1)

re4 n m		
		| odd(n+m)		= fact(n) - fib(m)
		| otherwise		= fib((n+m)/2) - fact((n+m)/2)