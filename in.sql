SELECT * FROM Customers
WHERE Country NOT IN ('Germany', 'France', 'UK');

SELECT * FROM Customers
WHERE Country IN ('Germany', 'France', 'UK');


-- É A MESMA COISA QUE: PORÉM MAIS CURTO
SELECT * FROM Customers
WHERE Country = 'Germany' OR Country='France' OR 'UK';

----------------------------------------------------------
----------------------------------------------------------
SELECT * FROM Customers
WHERE Country IN (SELECT Country FROM Suppliers);
