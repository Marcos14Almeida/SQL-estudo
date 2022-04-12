--  Cria a coluna meta=mês*2
-- 'Sucesso' Se o dia>meta
-- Conta o numero de 'Sucesso' ou 0
-- Agrupa pelas diferentes metas e resultados
-- Tudo isso sem considerar o ano de 1997
SELECT OrderDate, MONTH(OrderDate)*2 As Meta, DAY(OrderDate) AS Dia, MONTH(OrderDate) AS Mes, YEAR(OrderDate) AS Ano, 
IF(DAY(OrderDate)>MONTH(OrderDate)*2,'Sucesso',0) AS Resul, COUNT(IF(DAY(OrderDate)>MONTH(OrderDate)*2,'Sucesso',0)) AS total
WHERE YEAR(OrderDate) <> 1997
GROUP BY Meta,Ano;

-------------------------------------------------------------------
-- SÓ A TABELA PURA
SELECT OrderDate, MONTH(OrderDate)*2 As Meta, DAY(OrderDate) AS Dia, MONTH(OrderDate) AS Mes, YEAR(OrderDate) AS Ano, 
IF(DAY(OrderDate)>MONTH(OrderDate)*2,'Sucesso',0) AS Resul
FROM Orders 
WHERE YEAR(OrderDate) <> 1997
