--------------------------------------------------------
-- REGEXP
-- NOT CASE SENSITIVE -> '[RUE]' = '[rue]'
-- [...]
-- [^...]
-- ^ 
-- $
-- a|b|c
-- *
-- +
-- {n}
-- {m,n}
--------------------------------------------------------

-- SEARCH CITIES STARTING WITH NUMBERS AND WITH A COMMA
-- ORDER FIRST BY CITY THEN ADDRESS

SELECT * FROM Customers
WHERE address REGEXP '^[0-9]' AND address REGEXP ','
ORDER BY City, Address ASC

-------------------------------------------------------
-------------------------------------------------------
-- SEARCH CITIES THAT DOESN'T(^) END($) WITH NUMBERS(0-9)
SELECT * FROM Customers
WHERE address REGEXP '[^0-9]$'

-------------------------------------------------------
-------------------------------------------------------
-- SEARCH CITIES WITH 2 Numbers 3 -> 33, 333, 3333, 33 33,
SELECT * FROM Customers
WHERE address REGEXP '3{2}'       

-------------------------------------------------------
-------------------------------------------------------
-- SEARCH CITIES STARTING WITH 0,N NUMBERS AND A COMMA -> , 2, 42, 241, 523 32,
SELECT * FROM Customers
WHERE address REGEXP '^[0-9]*,'
-- SEARCH CITIES STARTING WITH 1,N NUMBERS AND A COMMA
SELECT * FROM Customers
WHERE address REGEXP '[0-9]+,'
