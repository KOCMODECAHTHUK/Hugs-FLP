{-а)должен начинаться с нечетной цифры;-}
re2_1a [] = True
re2_1a [x] = odd(head)


{-б) содержать не менее трех строчных букв;-}
re2_1b [] = True
re2_1b [_] = True
re2_1b (x:y:z:xs)
			| elem x['a'..'z'] = True
			| otherwise = foo2_1b xs

{-в) не содержать более одного символа, не являющегося ни цифрой и ни буквой.-}
re2_1v [] = True
re2_1v [x] = elem x";,.!?-"
re2_1v [x:y:xs] = ((Elem x"aoeiu")||(notElem y "aoeiu"))&&foo2_1a(y:xs)

11ww XXX

{-Пример из методички-}
{-а) не должен содержать двух подряд идущих гласных букв-}
foo2_1a [] = True
foo2_1a [_] = True
foo2_1a [x:y:xs] = ((notElem x"aoeiu")||(notElem y "aoeiu"))&&foo2_1a(y:xs)

{-б)  должен содержать хотя бы один знак пунктуации-}
foo2_1b [x] = elem x";,.!?-"
foo2_1b (x:xs)
			| elem x";,.!?-" = True
			| otherwise = foo2_1b xs

{-в) все входящие символы – цифры должны быть кратны трем -}
foo2_1v [] = True
foo2_1v (x:xs)
			| isDigit x = ((digitToInt x)`mod` 3)==0
			| otherwise = foo2_1v xs

main x=(foo2_1a x)&&(foo2_1b x)&&(foo2_1v x)