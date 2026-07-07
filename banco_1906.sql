-- Remove a tabela anterior se ela já existir
DROP TABLE IF EXISTS Clientes;

-- Criação da tabela do banco de dados
CREATE TABLE Clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(50),
    idade INT,
    cidade VARCHAR(50),
    status VARCHAR(20)
);

-- Inserção de dados na tabela
INSERT INTO Clientes (id, nome, idade, cidade, status) VALUES
(1, 'Ana', 25, 'Curitiba', 'Ativo'),
(2, 'Bruno', 32, 'Londrina', 'Ativo'),
(3, 'Carla', 29, 'Maringá', 'Inativo'),
(4, 'Diego', 40, 'Curitiba', 'Ativo'),
(5, 'Elisa', 22, 'Maringá', 'Ativo');

-- Consulta dos dados
SELECT * FROM Clientes;
