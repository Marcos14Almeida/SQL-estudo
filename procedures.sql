-- PROCEDURES ARE COMMANDS THAT CAN BE REPEATED MANY TIMES

CREATE PROCEDURE SelectAllCustomers
AS
SELECT * FROM Customers
GO;

EXEC SelectAllCustomers;
