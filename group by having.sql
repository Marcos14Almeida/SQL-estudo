The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)

--------------------------------------------
-- number of customers in each country:
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

-----------------------------------------
-- Items que aparecem pelo menos 5 vezes
SELECT *,COUNT(OrderID) as Total FROM OrderDetails
GROUP BY OrderID HAVING COUNT(*)>5;

-------------------------------------------
-- WITH JOIN
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

-- outro teste
SELECT Orders.EmployeeID,Employees.LastName,COUNT(Orders.EmployeeID) FROM Orders
LEFT JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID;

-- Em ordem decrescente
SELECT Orders.EmployeeID,Employees.LastName,COUNT(Employees.LastName) AS total FROM Orders
INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID 
ORDER BY total DESC;

--Com contagem >50 -> HAVING
SELECT Orders.EmployeeID,Employees.LastName,COUNT(Employees.LastName) AS total FROM Orders
INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID HAVING total>50
ORDER BY total DESC;

--Adiciona coluna Se >100 =1, se <100 =0
SELECT Orders.EmployeeID,Employees.LastName,COUNT(Employees.LastName) AS total, if(COUNT(Employees.LastName) > 100,1,0) as binario 
FROM Orders
INNER JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID HAVING total>50
ORDER BY total DESC;
