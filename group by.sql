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

-------------------------------------------
-- WITH JOIN
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

SELECT Orders.EmployeeID,Employees.LastName,COUNT(Orders.EmployeeID) FROM Orders
LEFT JOIN Employees ON Employees.EmployeeID = Orders.EmployeeID
GROUP BY Orders.EmployeeID;
