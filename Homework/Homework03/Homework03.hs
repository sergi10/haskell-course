-- Question 1
-- Write a function that checks if the monthly consumption of an electrical device is bigger, equal, or smaller than the maximum allowed and
-- returns a message accordingly. 
-- The function has to take the hourly consumption of an electrical device, the hours of daily use, and the maximum monthly consumption allowed.
-- (Monthly usage = consumption (kW) * hours of daily use (h) * 30 days).
consumptionMonthly :: Int -> Int -> Int -> String 
consumptionMonthly kw hours monthly 
    | consumption < monthly = "Well done!!!."
    | consumption == monthly = "Need to improbe it."
    | otherwise  = "So bad d'ont use this device."
    where
        consumption = kw * hours * 30


-- Question 2
-- Prelude:
-- We use the function `show :: a -> String` to transform any type into a String.
-- So `show 3` will produce `"3"` and `show (3 > 2)` will produce `"True"`.

-- In the previous function, return the excess/savings of consumption as part of the message.
consumptionMonthly2 :: Int -> Int -> Int -> String 
consumptionMonthly2 kw hours monthly 
    | consumption < monthly = "Well done!!! are you saving " ++ show (monthly - consumption) ++ " kws."
    | consumption == monthly = "Need to improbe it."
    | otherwise  = "So bad d'ont use this device are you exceded " ++ show (consumption - monthly) ++ " kws."
    where
        consumption = kw * hours * 30

-- Question 3
-- Write a function that showcases the advantages of using let expressions to split a big expression into smaller ones.
-- Then, share it with other students in Canvas.
advantages :: Int -> Int 
advantages x =  
    let first h = h * 2
        second i = i * 3
        thirth j = j + 10
    in if x + 5 > first x then second x else thirth x

-- Question 4
-- Write a function that takes in two numbers and returns their quotient such that it is not greater than 1.
-- Return the number as a string, and in case the divisor is 0, return a message why the division is not
-- possible. To implement this function using both guards and if-then-else statements.  
quotient :: Float -> Float -> String 
quotient number divisor 
    | divisor == 0 = "Division is not possible divisor = 0."
    | otherwise = 
        if (number/divisor) > 1.0 
        then "Quotinent bigger than 1"
        else "Quotinent less than 1"


-- Question 5
-- Write a function that takes in two numbers and calculates the sum of squares for the product and quotient
-- of those numbers. Write the function such that you use a where block inside a let expression and a
-- let expression inside a where block. 
sumsquares :: Float -> Float -> Float 
sumsquares x y = squar + quotient
    where 
        squar = (x*y) ^ 2
        quotient = (x/y) ^2


sumsquares2 :: Float -> Float -> Float 
sumsquares2 x y = 
    let 
        squar = (x*y)^2
        quotient = (x/y)^2
    in squar + quotient

-- Solution
invertedConstructions :: Double -> Double -> Double
invertedConstructions a b = let sqrtProd = sqrt abProd where abProd = a * b
                            in sqrtProd + sqrtQuot
                            where sqrtQuot = let abQuot = a / b in sqrt abQuot
        