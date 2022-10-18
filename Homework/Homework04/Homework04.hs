-- Question 1
-- Lets say you have the nested values defined bellow. How would you get the value of
-- 4 by using only pattern matching in a function?

nested :: [([Int], [Int])]
nested = [([1,2],[3,4]), ([5,6],[7,8])]
--nested [([_], snd),_]

--Solution
three :: [([Int], [Int])] -> Int
three [(_,[_,d]), _] = d
three _ = 0


-- Question 2
-- Write a function that takes a list of elements of any type and, if the list has 3 or more elements, it
-- removes them. Else, it does nothing. Do it two times, one with multiple function definitions and one with
-- case expressions.

anyList :: [a] -> [a]
anyList  []             = []
anyList  [x]            = []
anyList  [x,y]          = []
anyList  [x,y,z]        = []
anyList (x:y:z:rest)    = rest 

anyListCase :: [a] -> [a]
anyListCase mylist = case mylist of
    []             -> []
    [x]            -> []
    [x,y]          -> []
    [x,y,z]        -> []
    (x:y:z:rest)   -> rest 

--Solution
remove3 :: [a] -> [a]
remove3 (_:_:_:xs) = xs
remove3 x          = x 

remove3' :: [a] -> [a]
remove3' list = case list of
    (_:_:_:xs) -> xs
    x          -> x

-- Question 3
-- Create a function that takes a 3-element tuple (all of type Integer) and adds them together
elements :: (Int, Int, Int) -> Int  
elements (x, y, z)  = x + y +z


-- Question 4
-- Implement a function that returns True if a list is empty and False otherwise.
myEmpty :: [Int] -> Bool
myEmpty []  = True 
myEmpty _   = False



-- Question 5
-- Write the implementation of the tail function using pattern matching. But, instead of failing if
-- the list is empty, return an empty list.
myTail :: [a] -> [a]
myTail []       = []
myTail [x]      = [x]
myTail (x:rest) = rest

--Solution
tail' :: [a] -> [a]
tail' (x:xs)    = xs
tail' []        = []


-- Question 6
-- write a case expression wrapped in a function that takes an Int and adds one if it's even. Otherwise does nothing. 
-- (Use the `even` function to check if the number is even.)

myEven :: Int -> Int 
myEven num = case even num of 
    True   -> num + 1
    False  -> num
    