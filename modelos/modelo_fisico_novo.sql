CREATE TABLE Pessoa (
    ID_Pessoa INTEGER,
    NM_Pessoa VARCHAR,
    PRIMARY KEY(ID_Pessoa)
);

CREATE TABLE Tipo_Contato (
    CD_Tipo INTEGER,
    NM_Tipo VARCHAR,
    PRIMARY KEY (CD_Tipo)
);

CREATE TABLE Exame (
    CD_Exame INTEGER,
    Tipo_Exame INTEGER,
    Preco FLOAT,
    PRIMARY KEY (CD_Exame)
);

CREATE TABLE Especialidade (
    CD_Especialidade INTEGER,
    NM_Especialidade VARCHAR,
    PRIMARY KEY (CD_Especialidade)
);

CREATE TABLE Paciente (
    fk_Pessoa_ID_Pessoa INTEGER PRIMARY KEY,
    CPF_Paciente BIGINT,
    Senha VARCHAR
);

CREATE TABLE Medico (
    fk_Pessoa_ID_Pessoa INTEGER,
    CD_Especialidade INTEGER,
    CRM_Medico VARCHAR,
    Senha VARCHAR,
    PRIMARY KEY (CRM_Medico),
    FOREIGN KEY (CD_Especialidade) REFERENCES Especialidade(CD_Especialidade)
);

CREATE TABLE Bairro (
    CD_Bairro INTEGER,
    NM_Bairro VARCHAR,
    PRIMARY KEY(CD_Bairro)
);

CREATE TABLE Cidade (
    CD_Cidade INTEGER,
    NM_Cidade VARCHAR,
    PRIMARY KEY(CD_Cidade)
);

CREATE TABLE Contato (
    ID_Contato INTEGER,
    ID_Pessoa INTEGER,
    CD_Tipo INTEGER,
    NM_Contato VARCHAR,
    PRIMARY KEY (ID_Contato),
    FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa(ID_Pessoa),
    FOREIGN KEY (CD_Tipo) REFERENCES Tipo_Contato(CD_Tipo)
);

CREATE TABLE Unidade (
    fk_Pessoa_ID_Pessoa INTEGER PRIMARY KEY,
    CNPJ BIGINT,
    NM_Rua VARCHAR,
    CD_Bairro INTEGER,
    Complemento VARCHAR,
    CEP BIGINT,
    Numero INTEGER,
    CD_Cidade INTEGER,                                        
    FOREIGN KEY (CD_Bairro) REFERENCES Bairro(CD_Bairro),
    FOREIGN KEY (CD_Cidade) REFERENCES Cidade(CD_Cidade)
);

CREATE TABLE Exame_Paciente (
    CD_Exame_Paciente INTEGER,
    ID_Pessoa INTEGER,
    CD_Exame INTEGER,
    CRM_Medico VARCHAR,
    DT_Exame DATE,
    Realizado CHAR,
    PRIMARY KEY (CD_Exame_Paciente,)
    FOREIGN KEY (ID_Pessoa) REFERENCES Pessoa(ID_Pessoa),
    FOREIGN KEY (CD_Exame) REFERENCES Exame(CD_Exame),
    FOREIGN KEY (CRM_Medico) REFERENCES Medico(CRM_Medico)
);

