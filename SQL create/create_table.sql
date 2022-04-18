-- TO RUN: https://sqliteonline.com/

DROP TABLE Jogador;

-------------------------------
-- NOVA TABELA
CREATE TABLE Jogador (
    jogadorID int,
    Name varchar(255),
    Position varchar(255),
    Age int,
    Overall int
);

-- TABELA CÓPIA DE UMA OUTRA
CREATE TABLE JogadorCopy AS
SELECT Name, jogadorID
FROM Jogador;

-------------------------------
-- ALTERAR
ALTER TABLE Jogador
ADD Gols int
ADD Dia date;

ALTER TABLE Jogador
MODIFY COLUMN Gols double;


ALTER TABLE Jogador
DROP COLUMN  Gols;
