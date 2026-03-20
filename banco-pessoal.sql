CREATE TABLE Funcionarios (
    ID_Funcionario INT PRIMARY KEY,
    Nome_Completo VARCHAR(100) NOT NULL,
    Salario_Base DECIMAL(10, 2) NOT NULL,
    Historico_Profissional TEXT
);

SELECT * FROM Funcionarios;
