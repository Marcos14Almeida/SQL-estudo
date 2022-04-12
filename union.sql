The UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order
The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
--------------------------------------------

SELECT City,Address FROM Customers
UNION
SELECT City,Address FROM Suppliers
ORDER BY City;
