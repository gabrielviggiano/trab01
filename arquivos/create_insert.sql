-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Paciente */ -----------------------
-------------------------------------------------------------------------------------------------
CREATE TABLE Paciente (
ID_Paciente INT NOT NULL,
CPF_Paciente INT NOT NULL,
NM_Paciente VARCHAR(100),
Email_Paciente VARCHAR(50),
Tel_Paciente INT NOT NULL,
Senha_Paciente VARCHAR(25),
PRIMARY KEY(ID_Paciente)
);

INSERT INTO Paciente (ID_Paciente, CPF_Paciente, NM_Paciente, Email_Paciente, Tel_Paciente, Senha_Paciente)
VALUES  (1,  12345678961,   'Leonardo Ramos',	 'leo@outlook.com',	        99698284,	'senha123'),
        (2,	 15325835675,	'Jaqueline Scopetti', 'jaqueline@hotmail.com',	99698745,	'jaque123'),
        (3,	 15325835672,	'Guilherme Fonseca', 'gui.nic@hotmail.com',	    99698746,	'lala123'),
        (4,	 15325835673,	'Megan Roxane',	 'megan@hotmail.com',	    99698749,	'megan2233'),
        (5,	 15325835658,	'Pedro Malta',	 'pedro@hotmail.com',       96987598,	'kaka1232'),
        (6,	 15325835698,	'Amanda Vilas',	 'Amanda@hotmail.com',	    99698721,	'h1234212'),
        (7,	 15325835696,	'Vitor Ruiz',	 'vitor@hotmail.com',	    99698735,	'gj2342'),
        (8,	 15325835684,	'Luiz Henrique Cabral',	     'Luiz@hotmail.com',	    99698756,	'lick1245'),
        (9,	 15325835682,	'Henrique Teixeira',	 'Rique@hotmail.com',	    99698758,	'henq2345'),
        (10, 15325835689,	'Melissa Rodrigues',	 'melss@hotmail.com',	    99698744,	'mo23234');

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
VALUES ('11467 ES',	'Fernando Castro',	'fernandocastro@gmail.com'	'Geral'),
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
(2,	 'Urina',	200,00),
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
CEP INT NOT NULL,
Numero INT NOT NULL,
Tel INT NOT NULL,
PRIMARY KEY (CD_Unidade)
);

INSERT INTO Unidade (CD_Unidade, Logradouro, Bairro, Complemento, Cidade, CEP, Numero, Tel)
VALUES (1,	'Rua José Pedro',	'JARDIM CAMBURI',	'apt 404',	'VITORIA'	    29090319,	123,	3315-2323,	'52.866.580/0001-06'),
(2,	 'Rua Joao Louci',	    'PRAIA DO CANTO',	'apt 320',	    'VITORIA'	    29090239,	133,	3313-9823,	'24.898.454/0001-90'),
(3,	 'Rua Jose Celso',	    'ITAPARICA',	    'apt 401',	    'VILA VELHA'	29010232,	169,    3342-0232,	'24.572.721/0001-34'),
(4,	 'Rua Mariane',	        'JARDIM CAMBURI',	'apt 102',	    'VITORIA'	    29012982,	190,    3313-3233,	'93.809.037/0001-46'),
(5,	 'Rua Rio Branco',	    'JACARAÍPE',	    'apt 301',	    'SERRA'	        29090410,	200,    3387-3233,	'52.471.976/0001-46'),
(6,	 'Rua Zima de Souza',	'JARDIM LIMOEIRO',	'apt 1400', 	'SERRA'	        29090123,	210,    3312-0987,	'89.764.520/0001-84'),
(7,	 'Rua Chapot',	        'JARDIM CAMBURI',	'apt 302',      'VITORIA'	    27323123,	330,    3312-8237,	'42.088.634/0001-98'),
(8,	 'Rua Santana',	        'JARDIM DA PENHA',	'apt 1001',	    'VITORIA'	    20323111,	442,    3332-1233,	'88.695.484/0001-81'),
(9,	 'Rua Dom Juan',	    'GOIABEIRAS',	    'apt 704',	    'VITORIA'	    10293233,	113,    3782-4444,  '35.315.333/0001-94'),
(10, 'Rua Marieta',	        'JARDIM CAMBURI',	'apt 801',	    'VITORIA'	    27323221,	116,    3029-9872,	'72.834.710/0001-28');

-------------------------------------------------------------------------------------------------
----------------------- /* Create + Insert referente a tabela Exame_Paciente */ -----------------------
-------------------------------------------------------------------------------------------------

CREATE TABLE Exame_Paciente (
CD_Exame_Paciente INT NOT NULL,
CPF_Paciente INT NOT NULL,
CD_Exame INT NOT NULL,
CRM_Medico VARCHAR(15),
DT_Exame DATE,
Realizado BOOLEAN,
PRIMARY KEY (CD_Exame_Paciente)
);

INSERT INTO Exame_Paciente (CD_Exame_Paciente, CPF_Paciente, CD_Exame, CRM_Medico, DT_Exame, Realizado)
VALUES  (1,	15325835673,	8,	'17231 ES',	'2019/03/22',	'S'),
(2,	 15325835675,	7,	'11467 ES',	'2019/03/22',	'S'),
(3,	 15325835689,	3,	'12341 ES',	'2019/03/22',	'S'),
(4,	 15325835682,	4,	'11234 ES',	'2019/03/22',	'S'),
(5,	 15325835698,	2,	'11532 ES',	'2019/03/23',	'S'),
(6,	 15325835698,	1,	'17231 ES',	'2019/03/23',	'S'),
(7,	 15325835673,	6,	'19203 ES',	'2019/03/23',	'N'),
(8,	 15325835658,	7,	'12341 ES',	'2019/03/23',	'N'),
(9,	 15325835698,	7,	'19062 ES',	'2019/03/23',	'N'),
(10, 15325835675,	5,	'15612 ES',	'2019/03/24',	'N');