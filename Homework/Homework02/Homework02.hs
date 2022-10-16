-- Question 1
-- Add the type signatures for the functions below and then remove the comments and try to compile.
-- (Use the types presented in the lecture.)
f1 :: Float -> Float -> Float -> Float 
f1 x y z = x ** (y/z)

f2 :: Float -> Float -> Float -> Float 
f2 x y z = sqrt (x/y - z)

f3 :: Bool -> Bool -> [Bool]
f3 x y = [x == True] ++ [y]

f4 :: String -> String -> String -> Bool
f4 x y z = x == (y ++ z)


-- Question 2
-- Are really all variables in Haskell immutable? Try googling for the answer.
Yes

-- Question 3
-- Why should we define type signatures of functions? How can they help you? How can they help others?
They help express how data flows through a function, helping you and others quickly gain a high level view of what the function should be doing.

-- Question 4
-- Why should you define type signatures for variables? How can they help you?
Defining type signatures for variables ensures the format of the data in the variable matches what you expect to pass through the function.
It can also help by indicating the format of data a variable contains when considering its place within the function.

-- Question 5
-- Are there any functions in Haskell that let you transform one type to the other? Try googling for the answer.
Not at runtime due to static typing but you get some leeway with polymorphic values like numbers, which can be cast into many types as needed.
"Conversion between numerical types in Haskell must be done explicitly

-- Question 6
-- Can you also define in Haskell list of lists? Did we showed any example of that? How would you access the inner
-- most elements?
listOfNames :: [[[Char]]]
listOfNames = [["Andre", "Angelo"], ["Bruno", "Bianca"], ["Carlos", "Claudia"]]