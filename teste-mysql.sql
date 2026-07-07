CREATE TABLE Clientes (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Data_Cadastro DATE NOT NULL
);

INSERT INTO Clientes (Nome, Email, Data_Cadastro) 
VALUES ('Ana Silva', 'ana.silva@example.com', '2026-07-07');

-- Novo comando único para inserir as linhas 2 e 3
INSERT INTO Clientes (Nome, Email, Data_Cadastro) VALUES 
('Carlos Souza', 'carlos.souza@example.com', '2026-07-07'),
('Maria Oliveira', 'maria.oliveira@example.com', '2026-07-07');
