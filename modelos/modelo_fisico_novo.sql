CREATE TABLE Bairro (
CD_Bairro INT NOT NULL, /* Chave primária */
NM_Bairro VARCHAR(20),
PRIMARY KEY(CD_Bairro)
);

CREATE TABLE Cidade (
CD_Cidade INT NOT NULL, /* Chave primária */
NM_Cidade VARCHAR(20),
PRIMARY KEY(CD_Cidade)
);

CREATE TABLE Especialidade (
CD_Especialidade INT NOT NULL, /* Chave primária */
NM_Especialidade VARCHAR(30),
PRIMARY KEY(CD_Especialidade) 
);

CREATE TABLE Pessoa (
ID_Pessoa INT NOT NULL,
NM_Pessoa VARCHAR (100),
PRIMARY KEY(ID_Pessoa)
);

CREATE TABLE Paciente (
ID_Pessoa INT NOT NULL,
CPF_Paciente BIGINT,
Senha VARCHAR(15)

);

CREATE TABLE Medico (
CRM_Medico VARCHAR(15), /* Chave primária */
Senha VARCHAR(25),
ID_Pessoa INT NOT NULL,
CD_Especialidade INT NOT NULL

); 

CREATE TABLE Tipo_Contato (
CD_Tipo INT NOT NULL, /* Chave primária */
NM_Tipo VARCHAR(50)

);

CREATE TABLE Contato (
ID_Contato INT NOT NULL, 
ID_Pessoa INT NOT NULL,
NM_Contato VARCHAR(50),
CD_Tipo INT NOT NULL

);

CREATE TABLE Exame_Paciente (
CD_Exame_Paciente INT NOT NULL, 
ID_Pessoa INT NOT NULL,
CD_Exame INT NOT NULL,
CRM_Medico VARCHAR(15),
DT_Exame DATE,
Realizado CHAR

);

CREATE TABLE Unidade (
ID_Pessoa INT NOT NULL, 
Logradouro VARCHAR(100),
CD_Bairro INT NOT NULL,
Complemento VARCHAR(100),
CD_Cidade INT NOT NULL,
CEP BIGINT,
Numero INT NOT NULL,
CNPJ VARCHAR(20)

);

