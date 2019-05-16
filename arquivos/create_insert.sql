-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Paciente */ -----------------------
-------------------------------------------------------------------------------------------------
CREATE TABLE Paciente (
ID_Paciente INT NOT NULL,
CPF_Paciente BIGINT,
NM_Paciente VARCHAR(100),
Email_Paciente VARCHAR(50),
Tel_Paciente BIGINT,
Senha_Paciente VARCHAR(25),
PRIMARY KEY(ID_Paciente)

);

INSERT INTO Paciente (ID_Paciente, CPF_Paciente, NM_Paciente, Email_Paciente, Tel_Paciente, Senha_Paciente)
VALUES  (1,  12345678961,   'Leonardo',	 'leo@outlook.com',	        99698284,	'senha123'),
        (2,	 15325835675,	'Jaqueline', 'jaqueline@hotmail.com',	99698745,	'jaque123'),
        (3,	 15325835672,	'Guilherme', 'gui.nic@hotmail.com',	    99698746,	'lala123'),
        (4,	 15325835673,	'Megan',	 'megan@hotmail.com',	    99698749,	'megan2233'),
        (5,	 15325835658,	'Pedro',	 'pedro@hotmail.com',       96987598,	'kaka1232'),
        (6,	 15325835698,	'Amanda',	 'Amanda@hotmail.com',	    99698721,	'h1234212'),
        (7,	 15325835696,	'Vitor',	 'vitor@hotmail.com',	    99698735,	'gj2342'),
        (8,	 15325835684,	'Luiz',	     'Luiz@hotmail.com',	    99698756,	'lick1245'),
        (9,	 15325835682,	'Henrique',	 'Rique@hotmail.com',	    99698758,	'henq2345'),
        (10, 15325835689,	'Melissa',	 'melss@hotmail.com',	    99698744,	'mo23234');

-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Medico */ -----------------------
-------------------------------------------------------------------------------------------------

CREATE TABLE Medico (
CRM_Medico VARCHAR(15),
NM_Medico VARCHAR(100),
Email_Medico VARCHAR(50),
Especialidade_Medico VARCHAR(30),
PRIMARY KEY (CRM_Medico)
);


INSERT INTO Medico (CRM_Medico, NM_Medico, Email_Medico, Especialidade_Medico)
VALUES ('11467 ES',	'Fernando Castro',	'fernandocastro@gmail.com',	'Geral'),
('19203 ES',	'Daiane Lima',	    'daianelima@gmail.com',	    'Cardiologista'),
('19062 ES',	'Pedro Gusmão',	    'pedrogus@gmail.com',	    'Ortopedista'),
('17231 ES',	'Ricardo Rocha',	'ricardorocha@gmail.com',	'Dentista'),
('12341 ES',	'Pedro Kawak',	    'pedrokawak@gmail.com',	    'Cardiologista'),
('15612 ES',	'Lucia Freuli',	    'luciafreuli@gmail.com',	'Geral'),
('16232 ES',	'Klaus Hardor',	    'klaushardor@gmail.com',	'Obstetra'),
('16789 ES',	'Jessica Costa',	'jessicacosta@gmail.com',	'Geral'),
('11532 ES',	'Tereza Santos',	'terezasantos@gmail.com',	'Cardiologista'),
('11234 ES',	'Poliane Heber',	'polianeheber@gmail.com',	'Dentista');

-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Exame */ -----------------------
-------------------------------------------------------------------------------------------------

CREATE TABLE Exame (
CD_Exame INT NOT NULL,
Tipo_Exame VARCHAR(30),
Preco FLOAT,
PRIMARY KEY (CD_Exame)
);

INSERT INTO Exame (CD_Exame, Tipo_Exame, Preco)
VALUES (1,	'R.M',	300.00),
(2,	 'Urina',	200.00),
(3,	 'Gravidez',	100.00),
(4,	 'Raio-X',	210.00),
(5,	 'HIV',	90.00),
(6,	 'Glicose',	700.00),
(7,	 'DNA',	130.00),
(8,	 'Sanguíneo Completo',	200.00),
(9,	 'Meningite',	200.00),
(10, 'Sífilis',	300.00);

-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Unidades */ -----------------------
-------------------------------------------------------------------------------------------------

CREATE TABLE Unidade (
CD_Unidade INT NOT NULL,
Logradouro VARCHAR(100),
Bairro VARCHAR(50),
Complemento VARCHAR(100),
Cidade VARCHAR(50),
CEP BIGINT,
Numero INT NOT NULL,
Tel BIGINT,
CNPJ VARCHAR(100),
PRIMARY KEY (CD_Unidade)

);
INSERT INTO Unidade (CD_Unidade, Logradouro, Bairro, Complemento, Cidade, CEP, Numero, Tel, CNPJ)
VALUES (1,	'Rua José Pedro',	'JARDIM CAMBURI',	'apt 404',	'VITORIA',	    29090319,	123,	33152323,	'52.866.580/0001-06'),
(2,	 'Rua Joao Louci',	    'PRAIA DO CANTO',	'apt 320',	    'VITORIA',	    29090239,	133,	33139823,	'24.898.454/0001-90'),
(3,	 'Rua Jose Celso',	    'ITAPARICA',	    'apt 401',	    'VILA VELHA',	29010232,	169,    33420232,	'24.572.721/0001-34'),
(4,	 'Rua Mariane',	        'JARDIM CAMBURI',	'apt 102',	    'VITORIA',	    29012982,	190,    33133233,	'93.809.037/0001-46'),
(5,	 'Rua Rio Branco',	    'JACARAÍPE',	    'apt 301',	    'SERRA',	        29090410,	200,    33873233,	'52.471.976/0001-46'),
(6,	 'Rua Zima de Souza',	'JARDIM LIMOEIRO',	'apt 1400', 	'SERRA',	        29090123,	210,    33120987,	'89.764.520/0001-84'),
(7,	 'Rua Chapot',	        'JARDIM CAMBURI',	'apt 302',      'VITORIA',	    27323123,	330,    33128237,	'42.088.634/0001-98'),
(8,	 'Rua Santana',	        'JARDIM DA PENHA',	'apt 1001',	    'VITORIA',	    20323111,	442,    33321233,	'88.695.484/0001-81'),
(9,	 'Rua Dom Juan',	    'GOIABEIRAS',	    'apt 704',	    'VITORIA',	    10293233,	113,    37824444,  '35.315.333/0001-94'),
(10, 'Rua Marieta',	        'JARDIM CAMBURI',	'apt 801',	    'VITORIA',	    27323221,	116,    30299872,	'72.834.710/0001-28');


-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Exame_Paciente */ -----------------------
-------------------------------------------------------------------------------------------------

CREATE TABLE Exame_Paciente (
CD_Exame_Paciente INT NOT NULL,
ID_Paciente INT NOT NULL,
CD_Exame INT NOT NULL,
CRM_Medico VARCHAR(15),
DT_Exame DATE,
Realizado CHAR(1),
PRIMARY KEY (CD_Exame_Paciente),
FOREIGN KEY (CD_Exame) REFERENCES Exame (CD_Exame),
FOREIGN KEY (CRM_Medico) REFERENCES Medico (CRM_Medico),
FOREIGN KEY (ID_Paciente) REFERENCES Paciente (ID_Paciente)
);

INSERT INTO Exame_Paciente (CD_Exame_Paciente, ID_Paciente, CD_Exame, CRM_Medico, DT_Exame, Realizado)
VALUES  (1,	3,	8,	'17231 ES',	'2019/03/22',	'S'),
(2,	 4,	7,	'11467 ES',	'2019/03/22',	'S'),
(3,	 7,	3,	'12341 ES',	'2019/03/22',	'S'),
(4,	 8,	4,	'11234 ES',	'2019/03/22',	'S'),
(5,	 5,	2,	'11532 ES',	'2019/03/23',	'S'),
(6,	 1,	1,	'17231 ES',	'2019/03/23',	'S'),
(7,	 9,	6,	'19203 ES',	'2019/03/23',	'N'),
(8,	 2,	7,	'12341 ES',	'2019/03/23',	'N'),
(9,	 3,	7,	'19062 ES',	'2019/03/23',	'N'),
(10, 6,	5,	'15612 ES',	'2019/03/24',	'N');
