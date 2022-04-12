INNER JOIN: Returns records that have matching values in both tables
LEFT JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
CROSS JOIN: Returns all records from both tables

--------------------------------------------------------------
                        INNER JOIN
--------------------------------------------------------------
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;
--------------------------------------------------------------
                        LEFT JOIN
--------------------------------------------------------------

--------------------------------------------------------------
                        RIGHT JOIN
--------------------------------------------------------------

--------------------------------------------------------------
                        CROSS JOIN
--------------------------------------------------------------
