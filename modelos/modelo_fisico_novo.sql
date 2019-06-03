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



