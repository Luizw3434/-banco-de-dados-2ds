-- Criar tabela de Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL UNIQUE
);

-- Criar tabela de Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- Exemplos de inserção de dados
-- INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('João Silva', 'joao@email.com');
-- INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('Maria Santos', 'maria@email.com');
-- INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('Carlos Oliveira', 'carlos@email.com');

-- INSERT INTO Compras (ClienteID, NomeLivro) VALUES (1, 'O Senhor dos Anéis');
-- INSERT INTO Compras (ClienteID, NomeLivro) VALUES (1, '1984');
-- INSERT INTO Compras (ClienteID, NomeLivro) VALUES (2, 'Dom Casmurro');
-- INSERT INTO Compras (ClienteID, NomeLivro) VALUES (3, 'O Pequeno Príncipe');

-- Consultas úteis
-- SELECT * FROM Clientes;
-- SELECT * FROM Compras;
-- SELECT c.nomeCliente, c.emailCliente, cp.NomeLivro 
-- FROM Clientes c 
-- INNER JOIN Compras cp ON c.ID = cp.ClienteID;
SELECT * FROM Clientes;  
SELECT * FROM Compras; 
-- ===================================
-- BANCO DE DADOS - SISTEMA LIVRARIA
-- ===================================

-- Criar tabela de Clientes
CREATE TABLE Clientes (
    ID INTEGER PRIMARY KEY AUTOINCREMENT,
    nomeCliente VARCHAR(100) NOT NULL,
    emailCliente VARCHAR(100) NOT NULL UNIQUE
);

-- Criar tabela de Compras
CREATE TABLE Compras (
    CompraID INTEGER PRIMARY KEY AUTOINCREMENT,
    ClienteID INTEGER NOT NULL,
    NomeLivro VARCHAR(150) NOT NULL,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID)
);

-- ===================================
-- INSERÇÃO DE DADOS DE EXEMPLO
-- ===================================

INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('João Silva', 'joao@email.com');
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('Maria Santos', 'maria@email.com');
INSERT INTO Clientes (nomeCliente, emailCliente) VALUES ('Carlos Oliveira', 'carlos@email.com');

INSERT INTO Compras (ClienteID, NomeLivro) VALUES (1, 'O Senhor dos Anéis');
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (1, '1984');
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (2, 'Dom Casmurro');
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (3, 'O Pequeno Príncipe');
INSERT INTO Compras (ClienteID, NomeLivro) VALUES (2, 'O Cortiço');

-- ===================================
-- CONSULTA COM INNER JOIN
-- ===================================
-- Retorna o nome do cliente e o nome do livro para todas as compras realizadas

SELECT 
    c.nomeCliente AS 'Nome do Cliente',
    cp.NomeLivro AS 'Nome do Livro'
FROM Clientes c 
INNER JOIN Compras cp ON c.ID = cp.ClienteID
ORDER BY c.nomeCliente, cp.NomeLivro;
