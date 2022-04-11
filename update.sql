

-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

--     **ATENÇÃO**
-- SEMPRE USE O WHERE, ou ele vai modificar todos os dados

-------------------------------------------
UPDATE demo
SET Hint = 'dica', Name = 'Bob'
WHERE Name = 'Twitter';

-- para mostrar o resultado
SELECT * FROM demo;
