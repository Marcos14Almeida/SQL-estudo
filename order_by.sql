SELECT * FROM Customers
WHERE Address IS NOT NULL
ORDER BY Country ASC, CustomerName DESC;

------------------------------------------------------
SELECT * FROM Customers
WHERE Country IS NOT NULL -- SÓ PRA MOSTRAR COMO PEGAR VALORES NULOS/NÃO NULOS
ORDER BY CustomerName, Country ASC
LIMIT 10;
