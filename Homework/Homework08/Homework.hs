-- This homework is around creating Haskell types that represent wines from over the world.

-- Question 1
-- Different wines are made from different grapes, there are around 10000 varieties over the world!
-- Create a type synonym called "Grape" for the different grape names as strings.
-- Additionally, use this type synonym for the grapes: "Sangiovese", "Cabernet-sauvignon", "Merlot" and "Garnacha".
import Test.QuickCheck.Property (Rose)
type Grape = String 

sangiovese :: Grape
sangiovese = "Sangiovese"

cabernet :: Grape
cabernet = "Cabernet-sauvignon"

merlot :: Grape
merlot = "Merlot"

garnacha :: Grape
garnacha = "Garnacha"

-- Question 2
-- The most famous regions that export wine are located in France, Italy and Spain.
-- Each of these countries is divided up in smaller regions.
-- These smaller regions are known for a certain style, for example the Champagne region in France
-- Create a type synonym called "Region" for wine region given their country and region as a tuple of strings.
-- Additionally, use this type synonym for the regions: Bordeaux in France, Tuscany in Italy and Rioja in Spain.
type Region = (String , String)
bordeaux :: Region
bordeaux = ("Bordeaux", "France" )
tuscany :: Region
tuscany =  ("Tuscany","Italy")
rioja :: Region
rioja = ("Rioja", "Spain")


-- Question 3
-- A wine is either one of three kinds, these are red, white or rose wine.
-- Besides its kind, each wine also has a given alcohol level.
-- Create a data type called "Kind" that represents these three kinds, with each capturing the level of alcohol.
-- Additionally, use this data type for the examples: red wine with 14.5% alcohol, white wine with 13% alcohol 
-- and Rose wine with 12% alcohol.
data Kind = Red Float | White Float | Rose Float deriving (Show)

red  =  Red 14.5 :: Kind
white = White 13.0 :: Kind
rose =  Rose 12.0 :: Kind


-- Question 4
-- In the world of wines, bottles display all of the above information for the consumer on its label.
-- Create a record type called "Label" that captures the grapes that are in a whine, the region its from,
-- and it's kind. Notice that some wines are a blended combination of multiple grapes!
-- Additionally, create for each of the described wine below a label.

data Label  = Label 
    {grapes :: [Grape]
    ,region :: Region 
    ,kind   :: Kind 
    } deriving (Show)

wlabel  = Label [sangiovese,garnacha] tuscany rose

-- Larrosa Rose is a rose wine from the region Rioja. It is made from the Garnacha grape and 
-- has a alcohol level of 14%.

larrosaRose  = Label [garnacha] rioja (Rose 12.5)
-- Castiglioni is a red wine from the region of Tuscany. It is made from the grape Sangiovese and
-- has an alcohol level of 12.5%.
castiglioni  = Label [sangiovese] tuscany (Red 12.5)
-- Bordeaux is known for its red wine, these are mainly a blend between Cabernet-sauvignon and Merlot.
-- Create a Label for the wine "Le Petit Haut Lafitte" that has an alcohol percentage 13.5%.
lePetitHaitLafitte  = Label [cabernet, merlot] bordeaux (Red 13.5)

-- Question 5
-- Write a function `containsGrape` that takes a list of Labels and a Grape and returns a boolean.
-- The function should check if the there exists a wine in the Label that contains this Grape.

-- This is a test list for the `containsGrape` function with an grape that is not in the list.


grapeList = [larrosaRose,castiglioni,lePetitHaitLafitte]
newGrape = "Pinot Noir"

{-}
isElement a (x:xs)
  | _ [] = False
  | a == x = True
  | otherwise = isElement a xs


containsGrape :: [Label] -> Grape -> Bool 
containsGrape [] _    = False 
containsGrape (x:xs) g
  | isElement g x
  | otherwise = containsGrape xs g

-}

--Solution
containsGrape :: [Label] -> Grape -> Bool
containsGrape labels grape = any (\Label{grapes=xs} -> grape `elem` xs) labels

