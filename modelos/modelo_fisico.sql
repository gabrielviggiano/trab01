CREATE TABLE Paciente (
ID_Paciente INT NOT NULL,
CPF_Paciente INT NOT NULL,
NM_Paciente VARCHAR(100),
Email_Paciente VARCHAR(50),
Tel_Paciente INT NOT NULL,
Senha_Paciente VARCHAR(25),
PRIMARY KEY(ID_Paciente)
);

CREATE TABLE Exame_Paciente (
CD_Exame_Paciente INT NOT NULL,
CPF_Paciente INT NOT NULL,
CD_Exame INT NOT NULL,
CRM_Medico VARCHAR(15),
DT_Exame DATE,
Realizado BOOLEAN,
PRIMARY KEY (CD_Exame_Paciente),
FOREIGN KEY (CD_Exame) REFERENCES Exame (CD_Exame),
FOREIGN KEY (CRM_Medico) REFERENCES Medico (CRM_Medico),
FOREIGN KEY (CPF_Paciente) REFERENCES Paciente (CPF_Paciente)
);

CREATE TABLE Exame (
CD_Exame INT NOT NULL,
Tipo_Exame VARCHAR(30),
Preco FLOAT,
PRIMARY KEY (CD_Exame)
);

CREATE TABLE Medico (
CRM_Medico VARCHAR(15),
NM_Medico VARCHAR(100),
Email_Medico VARCHAR(50),
Especialidade_Medico VARCHAR(30),
PRIMARY KEY (CRM_Medico)
);

CREATE TABLE Unidade (
CD_Unidade INT NOT NULL,
Logradouro VARCHAR(100),
Bairro VARCHAR(50),
Complemento VARCHAR(100),
Cidade VARCHAR(50),
CEP INT NOT NULL,
Numero INT NOT NULL,
Tel INT NOT NULL,

PRIMARY KEY (CD_Unidade)
);