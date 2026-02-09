-- Criar tabela de Professores
CREATE TABLE Professores (
    ID_Professor INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Especialidade VARCHAR(50),
    Data_Contratacao DATE
);

-- Criar tabela de Disciplinas
CREATE TABLE Disciplinas (
    ID_Disciplina INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome_Disciplina VARCHAR(100) NOT NULL,
    Carga_Horaria INT,
    ID_Professor INT,
    FOREIGN KEY (ID_Professor) REFERENCES Professores(ID_Professor)
);

-- Criar tabela de Alunos
CREATE TABLE Alunos (
    ID_Aluno INTEGER PRIMARY KEY AUTOINCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Data_Nascimento DATE,
    Matricula VARCHAR(20) UNIQUE NOT NULL
);

-- Criar tabela de Matrículas
CREATE TABLE Matriculas (
    ID_Matricula INTEGER PRIMARY KEY AUTOINCREMENT,
    ID_Aluno INT,
    ID_Disciplina INT,
    Data_Matricula DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (ID_Aluno) REFERENCES Alunos(ID_Aluno),
    FOREIGN KEY (ID_Disciplina) REFERENCES Disciplinas(ID_Disciplina)
);
