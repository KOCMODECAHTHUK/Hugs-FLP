{-
    (7.03^(1-sqrt 4.92))/(3*4.92-tg(7.03))
	x = 7.03, y = 4.92;
	(x**(1-sqrt y))/(3*y-tan(x))
-}
re1 x y = x**(1-sqrt y)/(3*y-tan x)
{- №2
    «Если разница между максимальным и минимальным элементами списка [1,2,3,4,5] нечетна, 
	то третий элемент этого списка не равен минимальному».
-}
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

replacefun :: Eq a => [a] -> a -> a -> [a]
replacefun [] _ _ = []
replacefun (x:xs) element1 element2 
            | x == element1 = element2 : replacefun xs element1 element2
            | otherwise     = x : replacefun xs element1 element2
--replacefun "hello world" 'l' '$'