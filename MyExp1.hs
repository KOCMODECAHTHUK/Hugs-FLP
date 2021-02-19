-- Решение №1
solveFun x y = x**(1-sqrt y)/(3*y-tan x)
-- $ solveFun 7.03 4.92
-- > 0.00671984452001409

-- Решение №2
compareFun l = odd (maximum l - minimum l) == (l !! 3 /= minimum l)
-- $ compareFun [1,2,3,4,5]
-- > False

-- Это и есть файл для №3

-- Решение №4
{-	"Описание:
	snd (3,5) - Берем второй элемент кортежа. (5)
	init [1,2,3,4,5]	- удаляем последний элемент кортежа, и получим [1,2,3,4].
	: 	- И присоединяем элемент к списку, [5] и [1,2,3,4], получим [5,1,2,3,4]
	== 	- Сравнивание двух кортежей, True."
-}

-- Решение №5
replaceFun :: Eq a => [a] -> a -> a -> [a]
replaceFun [] _ _ = []
replaceFun (x:xs) element1 element2 
            | x == element1 = element2 : replaceFun xs element1 element2
            | otherwise     = x : replaceFun xs element1 element2
-- $ replaceFun "hello world" 'l' '$'
-- > "he$$o wor$d"

-- Решение №6
choiceFun n m 
	| odd nm 			 = fact n - fib m
    | otherwise = let k  = nm `div` 2 in fib k - fact k
	where nm= n+m
-- $ choiceFun 2 5
-- > -3
-- $ choiceFun 4 5
-- > 19