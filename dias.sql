---------------------------------------------------
-- Separa as datas em dias,mes,ano, cria uma coluna com a data separada por '/'
SELECT OrderDate, CONCAT_WS('/',DAY(OrderDate),MONTH(OrderDate),YEAR(OrderDate)) AS 'Data Modificada', DAY(OrderDate) AS Dia, MONTH(OrderDate) AS Mes, YEAR(OrderDate) AS Ano 
FROM Orders;
