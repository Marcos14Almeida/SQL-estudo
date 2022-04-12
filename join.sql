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

--> Em comum onde o Customer começa com 'A'
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID AND Customers.CustomerName LIKE 'a%'
ORDER BY Customers.CustomerName;

-- 3 TABELAS
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM ((Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID)
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);
--------------------------------------------------------------
                        LEFT JOIN
--------------------------------------------------------------
-- Mostra tudo de Customers + Comum(Orders,Customers)
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Orders.CustomerID=Customers.CustomerID AND Customers.CustomerName LIKE 'a%'
ORDER BY Customers.CustomerName;
--------------------------------------------------------------
                        RIGHT JOIN
--------------------------------------------------------------
-- Mostra tudo de Orders + Comum(Orders,Customers)
--> Right Join(Customers,Orders) = Left Join(Orders,Customers)
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Customers
RIGHT JOIN Orders ON Orders.CustomerID=Customers.CustomerID AND Customers.CustomerName LIKE 'a%'
ORDER BY Customers.CustomerName;
--------------------------------------------------------------
                        CROSS JOIN
--------------------------------------------------------------
