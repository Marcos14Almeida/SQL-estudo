-- TO RUN: https://sqliteonline.com/

DROP TABLE Jogador;

-------------------------------
-- NOVA TABELA
CREATE TABLE Jogador (
    ID int NOT NULL AUTO_INCREMENT,
    Name varchar(255) NOT NULL,
    Position varchar(255),
    Age int,
    Overall int,
    PRIMARY_KEY (ID)
);

-- TABELA CÓPIA DE UMA OUTRA
CREATE TABLE JogadorCopy AS
SELECT Name, jogadorID
FROM Jogador;

-------------------------------
-- ALTERAR
ALTER TABLE Jogador
ADD Gols int DEFAULT 0
ADD Dia date;

ALTER TABLE Jogador
MODIFY COLUMN Gols double;


ALTER TABLE Jogador
DROP COLUMN  Gols;

------------------------------
-- INSERT
INSERT INTO Jogador (Name,Position,Age,Overall)
VALUES ('Dudu','ATA',28,82);

INSERT INTO Jogador
VALUES ('CR7','ATA',36,89);

INSERT INTO Jogador (Name)
VALUES ('Pirlo'); -- Create null values in other columns

DELETE FROM Jogador 
WHERE jogadorid IS NULL;

UPDATE Jogador
SET Name = 'DUDU', Age = 30
WHERE Name = 'Dudu';
