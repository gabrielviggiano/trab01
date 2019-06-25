# TRABALHO 01:  E-Xames Online
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Integrantes do grupo<br>
Gabriel Viggiano Fonseca: gviggianofonseca@gmail.com<br>
Morgana Vettorazzi: morgana.vettorazzi@hotmail.com<br>
Renato Bellumat: renato.bellumat@hotmail.com<br>
Ícaro Gandine: icarog28@gmail.com<br>

### 2.INTRODUÇÃO E MOTIVAÇAO<br>
Este documento contém a especificação do projeto do banco de dados <b>E-xames Online</b> e motivação da escolha realizada. <br>

A empresa "E-Xames" visa minimizar o tempo gasto na hora de se consultar, fazer exames,receber e analisar um exame. Ficamos motivados com o desenvolvimento deste sistema não apenas pelos desafios mas também por que sabemos a importância que o tempo tem em nossas vidas e por isso escolhemos trabalhar sobre um projeto que trará um beneficio para a sociedade e não apenas para nós próprios.O Sistema "E-Xames" tem como objetivo gerenciar todas as informações geradas apartir de um exame médico. Para realizar suas operações adequadamente e empresa necessita que sistema que armazene informações relativas as Entidades Paciente, Médico e Laboratório, além de também armazenar dados sobre o histórico de consultas do paciente.
 

### 3.MINI-MUNDO Novo<br>

O sistema proposto para a "E-Xames" conterá as informacões aqui detalhadas. Dos Pacientes serão armazenados um codigo de identificação, nome, cpf(login), email, telefone, senha. Das unidades dos laboratórios serão armazenados o nome fantasia, endereço (desconstruído em: logradouro, bairro, complemento, cidade, cep e número), CNPJ e telefone. Dos Médicos serão armazenados nome, cpf, crm, especialidade e email. Após o paciente se consultar com o médico, e realizado o exame com o laboratório, o resultado ficará disponível tanto para o paciente, quanto para o médico. Feito isso, o médico analisará os exames sem a necessidade de uma consulta extra com o paciente. O veredito do médico ficará disponível no arquivo anexado ao aplicativo, informando se há necessidade de uma nova consulta ou se o tratamento foi finalizado, também se há ou não uma receita para algum tipo de medicamento, caso houver esta necessidade o médico prescreverá a receita deixando a mesma a cargo de algum funcionário do hospital ou do laboratório, logo o paciente apenas deverá comprovar o vínculo com este médico e poderá retirar a receita na hora que lhe agradar mais. O aplicativo fornecerá também o agendamento de novos exames sem medico vinculado. Ficará a disposição, informações como: endereços das unidades, controle de exames (histórico, exame a ser realizado, arquivos anexados e preescrição do médico). 

### 4.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>

Mockup realizado para o ambiente mobile do aplicativo E-Xames.<br>

[Arquivo PDF do Protótipo Balsamiq feito para E-Xames Online](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/Mobile_Exames.pdf?raw=true "E-Xames Online")

#### 4.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
    
> A Empresa E-Xames precisa inicialmente dos seguintes relatórios:
* Relatório para mostrar a quantidade e o preço total dos exames realizados.
* Relatório sobre as unidades com relação aos bairros e cidades situados.
* Relatório mostrar a quantidade de tipos de contato que foram usados.
* Relatório para mostrar a quantidade de exames realizados e exames não realizados. Além do preço dos exames que ja foram realizados.
* Relatório para mostrar a quantidade de exames por especialidade. Além de mostrar a quantidade de pedidos de exames por cada especialidade, mostrando também a quantidade desses exames.
* Relatório para mostrar a quantidade de médicos por especialidade.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    
* [Tabela de dados da empresa E-Xames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/tabela_de_dados.xlsx?raw=true "Tabela - Empresa E-Xames")

* [Tabela de dados normalizada da empresa E-Xames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/tabela_de_dados_normal.xlsx?raw=true	"Tabela - Empresa E-Xames")

    
>## Marco de Entrega 01 em:<br>

### 5.MODELO CONCEITUAL<br>
 
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/modelos/modelo_conceitual_Novo.png?raw=true "Modelo Conceitual")
    
    
#### 5.1 Validação do Modelo Conceitual
    [TrashMe]: [Brian Icaro Diaz Marques, Ramon Kazushi Cossual Sakurada, Pedro Cruz Nunes Silva, Marcelo Oliveira]
    [Lixeira Inteligente]: [Jackson William, Lavinia Corteletti, Thiago Moreira, Vinicius Freitas]

#### 5.2 DECISÕES DE PROJETO

<b>Realizado: </b> Optamos por incluir esse campo para transformar o que antes eram duas tabelas, em uma só, visto que o que diferenciavam-as era apenas se o exame era realizado ou pendente.<br>

<b>Tabela Pessoa: </b> Decidimos por transformar Unidade, Paciente e Médico, em heranças da tabela Pessoa, visto que o diferencial deles é apenas o tipo. <br>

<b>Preço: </b> Antes, esse campo ficava incluido nas tabelas de exames pendentes e concluídos, porem vimos que seria mais prático colocar ela nas identificações de exames. Fator esse que também foi decisivo para a junção das tabelas exames concluídos e exames pendentes<br>

>## Marco de Entrega 02 em: (30/04/2019)<br>

#### 5.3 DESCRIÇÃO DOS DADOS 

<b>TABELA BAIRRO:</b> Essa tabela guarda o nome e código de cada bairro, para evitar repetições no banco na tabela UNIDADE nós usamos o código do bairro. 

- CD_Bairro: Campo que armazena o código do bairro.
- NM_Bairro: Campo que armazena o nome do bairro. 

-----------------------------------------------------------------------------------------------------------

<b>TABELA CIDADE:</b> Essa tabela guarda o nome e código de cada cidade, assim como a tabela BAIRRO serve para evitar repetições.
- CD_Cidade: Campo que armazena o código da cidade.
- NM_Cidade: Campo que armazena o nome da cidade.

-----------------------------------------------------------------------------------------------------------

<b>TABELA ESPECIALIDADE:</b> Essa tabela contém as possíveis especialidades, também codificadas para evitar repetições. 
- CD_Especialidade: Campo que armazena o código da especialidade.
- NM_Especialidade: Campo que armazena o nome da especialidade.

-----------------------------------------------------------------------------------------------------------

<b>TABELA PESSOA:</b> Essa tabela guarda as informações cadastrais de um usuário, sendo este um paciente, um médico ou uma unidade. 
- ID_Pessoa: Campo que guarda o código do paciente, médico ou unidade.
- NM_Pessoa: Campo que armazena o nome do paciente, médico ou unidade.

-----------------------------------------------------------------------------------------------------------

<b>TABELA PACIENTE:</b> Essa tabela guarda as informações de um paciente, usando o código da tabela PESSOA para registrar o nome. (Recebe ID_Pessoa e NM_Pessoa)
- ID_Pessoa: Campo que armazena o ID da Pessoa, vinda da tabela Pessoa.
- CPF_Paciente: Campo que armazena o CPF do paciente.
- Senha: Campo que armazena a senha do paciente para acessar o aplicativo.

-----------------------------------------------------------------------------------------------------------

<b>TABELA MEDICO:</b> Essa tabela guarda as informações de um médico, usando o código da tabela PESSOA para registrar o nome, e o código da tabela ESPECIALIDADE para registrar sua especialidade. (Recebe ID_Pessoa, NM_Pessoa e CD_Especialidade)

- ID_Pessoa: Campo que armazena o ID da Pessoa, vinda da tabela Pessoa.
- CD_Especialidade: Campo que armazena o código da especialidade do médico.
- CRM_Medico: Campo que armazena o CRM do médico. 
- Senha: Campo que armazena a senha do paciente para acessar o aplicativo.

-----------------------------------------------------------------------------------------------------------

<b>TABELA TIPO_CONTATO:</b> Essa tabela guarda as informações para um tipo de contato, criando um código para este tipo. 
- CD_Tipo: Campo que armazena o código para um tipo de contato 
- NM_Tipo: Campo que armazena o tipo de contato em si (e-mail, telefone fixo, celular, etc)

-----------------------------------------------------------------------------------------------------------

<b>TABELA CONTATO:</b> Essa tabela guarda um contato de um paciente, médico ou unidade no aplicativo. Recebe o código da pessoa da tabela PESSOA e o tipo de contato da  tabela TIPO_CONTATO. (Recebe ID_Pessoa e CD_Tipo)

- ID_Contato: Campo que armazena o código do contato.
- ID_Pessoa: Campo que guarda o ID da Pessoa (originada na tabela Pessoa).
- ID_Tipo: Campo que armazena o código do tipo de contato, originada da tabela Tipo_Contato.
- NM_Contato: Campo que armazena o próprio contato, exemplos: "92142-2461" , "joseferreira@hotmail.com", "3321-2417" . 

-----------------------------------------------------------------------------------------------------------

<b>TABELA EXAME_PACIENTE:</b> Essa tabela guarda as informações referentes a realização de um exame pelo paciente. Recebe ID_Pessoa para ter o nome do paciente, CD_Exame para ter o tipo e preço do exame e o CRM_Medico para mostrar o CRM do médico. (Recebe ID_Pessoa, CD_Exame e CRM_Medico)

- CD_Exame_Paciente: Campo que armazena o código identificador do exame realizado.
- ID_Pessoa: Campo que guarda o ID da Pessoa (originada na tabela Pessoa).
- CD_Exame: Campo que armazena o código do tipo do exame, originado da tabela Exame.
- CRM_Medico: Campo que armazena o CRM do médico.
- DT_Exame: Campo que armazena a data em que o exame foi realizado.
- Realizado: Campo que armazena se o exame já foi realizado ou não, 'S' para realizado e 'N' para não realizado.

-----------------------------------------------------------------------------------------------------------

<b>TABELA UNIDADE:</b> Essa tabela guarda as informações referentes a uma unidade. 
- ID_Pessoa: Campo que guarda o ID da Pessoa (originada na tabela Pessoa).
- CNPJ: Campo que armazena o CNPJ da unidade
- NM_Rua: Campo que armazena o nome da rua em que a unidade se localiza.
- CD_Bairro: Campo que armazena o código do bairro, referente ao codigo na tabela Bairro.
- Complemento: Campo que armazena o complemento do endereço da unidade.
- CEP: Campo que armazena o CEP da unidade.
- Numero: Campo que armazena o numero de endereço da unidade.
- CD_Cidade: Campo que armazena o código da cidade em que a unidade se localiza, originado da tabela Cidade.

### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/modelos/modelo_logico_Novo.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
* [Modelo Físico](https://github.com/gabrielviggiano/trab01-1/blob/master/modelos/modelo_fisico_novo.sql?raw=true	"Modelo Físico")
 
        
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
#### 8.1 DETALHAMENTO DAS INFORMAÇÕES

* [Insert aplicado na base de dados](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/insert_aplicado.sql?raw=true	"Insert")
* [Backup do Banco de dados Exames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/backup_exames?raw=true	"Backup1 - Inclusão")


#### 8.2 INCLUSÃO DO SCRIPT PARA CRIAÇÃO DE TABELAS E INSERÇÃO DOS DADOS

* [Criação de tabelas e inserção de dados](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/create_insert.sql?raw=true	"Insert e Create")
* [Backup do Banco de dados Exames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/backupa_exames2?raw=true	"Backup2 - Inclusão e Criação")


#### 8.3 INCLUSÃO DO SCRIPT PARA EXCLUSÃO DE TABELAS EXISTENTES, CRIAÇÃO DE TABELA NOVAS E INSERÇÃO DOS DADOS

* [Exclusão, criação e inclusão de dados das tabelas](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/drop_create_insert.sql?raw=true	"Drop, Insert e Create")
* [Backup do Banco de dados Exames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/backup_exames3?raw=true	"Backup3 - Exclusão")


#### 8.4 Principais fluxos de informação e principais tabelas do sistema

<b> Principais fluxos de dados em desenvolvimento: </b>
* fluxo 1
* fluxo 2
* fluxo 3

<b> Tabelas que mais conterão dados no sistema: </b>
* Pessoa
* Unidade
* Exame_Paciente
* Contato

<b> Principais tabelas em desenvolvimento: </b>
* Exame_Paciente
* Unidade
* Medico
* Paciente
* Pessoa

>## Marco de Entrega 03 em: (13/05/19) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
* 1° Consulta <br>
`SELECT * FROM PACIENTE` <br> 
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_paciene.png?raw=true "tabela_paciente") <br>

* 2° Consulta <br>
`SELECT * FROM MEDICO` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_medico.png?raw=true "tabela_medico") <br>
	
* 3° Consulta <br>
`SELECT * FROM EXAME` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_exame.png?raw=true "tabela_exame") <br>
	
* 4° Consulta <br>
`SELECT * FROM UNIDADE` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_unidade.png?raw=true "tabela_unidade") <br>
	
* 5° Consulta <br>
`SELECT * FROM EXAME_PACIENTE` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_exame_paciente.png?raw=true "tabela_exame_paciente") <br>
	
* 6° Consulta <br>
`SELECT * FROM PESSOA` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_pessoa1.png?raw=true "tabela_pessoa1") <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_pessoa2.png?raw=true "tabela_pessoa2") <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_pessoa3.png?raw=true "tabela_pessoa3") <br>
	
* 7° Consulta <br>
`SELECT * FROM CIDADE` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_cidade.png?raw=true "tabela_cidade") <br>
	
* 8° Consulta <br>
`SELECT * FROM BAIRRO` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_bairro.png?raw=true "tabela_bairro") <br>
	
* 9° Consulta <br>
`SELECT * FROM ESPECIALIDADE` <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/tabela_especialidade.png?raw=true "tabela_especialidade") <br>
	

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
* 1° Consulta <br>
`SELECT * FROM MEDICO WHERE CD_ESPECIALIDADE = 36` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20cd%20especialidade.png "select especialidade") <br>

* 2° Consulta <br>
`SELECT * FROM UNIDADE WHERE CD_CIDADE` = 60 <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20unidade%20cdcidade.png "select cidade")<br>

* 3° Consulta <br>
`SELECT * FROM EXAME WHERE PRECO > 200.00` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20exame%20preco%20200.png "select preco")<br>

* 4° Consulta <br>
`SELECT * FROM CONTATO WHERE CD_TIPO = 103` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20contato%20cdtipo.png "select tipo")<br>

* 5° Consulta <br>
`SELECT * FROM EXAME_PACIENTE WHERE CD_EXAME = 1` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20examepaciente%20cdexame.png "select cdexame")<br>


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
<b> Consultas com operadores lógicos: </b> <br>
* 1° Consulta: <br>
`SELECT * FROM EXAME_PACIENTE`   <br>
`WHERE CD_EXAME_PACIENTE = 6 <b>AND</b> REALIZADO = 'S'` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20cdexamepaciente%20and%20realizado.png "select realizado") <br>

* 2° Consulta: <br>
`SELECT * FROM UNIDADE` <br>
`WHERE  CD_BAIRRO = 10 <b>AND</b> NUMERO = 123` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20cdbairro%20and%20numero.png "select bairro")<br>

* 3° Consulta: <br>
`SELECT * FROM CONTATO` <br>
`WHERE CD_TIPO = 103 OR CD_TIPO = 102` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20cdtipo%20or%20cdtipo.png "select cdtipo")<br>

* 4° Consulta: <br>
`SELECT * FROM MEDICO` <br>
`WHERE <b>NOT</b> CD_ESPECIALIDADE = 30` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20medico%20not%20especialidade.png "select medico")<br>

* 5° Consulta: <br>
`SELECT * FROM PESSOA` <br>
`WHERE <b>NOT</b> ID_PESSOA > 20 <b> AND NOT </b> ID_PESSOA < 1`<br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20not%20pessoa.png "select pessoa")<br>

<b> Consultas com operadores aritméticos: </b> <br>

* 1° Consulta: <br>
`SELECT PRECO, (PRECO <B>-</B> (PRECO <B>*</B> 0.15)) AS PRECO_DESCONTO FROM EXAME` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20preco%20desconto.png "select desconto") <br>


* 2° Consulta: <br>
`SELECT PRECO, (PRECO <B>+</B> (PRECO <B>*</B> 0.15)) AS PRECO_TAXAEXTRA FROM EXAME` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20preco%20taxa.png "select taxa") <br> 


* 3° Consulta: <br>
`SELECT PRECO, (PRECO * 30) AS PRECO_30EXAMES FROM EXAME` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/preco%2030%20exames.png "select 30exames")<br>


<b> Consultas de renomear tabelas ou campos </b>

* 1° Consulta <br>
`SELECT NM_CONTATO AS CELULAR FROM CONTATO WHERE CD_TIPO = 103` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select_celular.png "select celular")<br>

* 2° Consulta <br>
`SELECT DT_EXAME AS DATA FROM EXAME_PACIENTE` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20dt%20exame%20as%20data.png "select data")<br>


* 3° Consulta <br>
`SELECT ID_PESSOA AS CODIGO, NM_PESSOA AS NOME FROM PESSOA` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/select%20id%20pessoa%20as%20codigo.png "select nome")<br>

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

<b> Consultas com operador LIKE </b>

* 1° Consulta <br>
`SELECT * FROM PESSOA`
`WHERE NM_PESSOA LIKE 'P%'` <br> 
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/nome%20like%20p.png "select like nomep")<br>


* 2° Consulta <br>
`SELECT * FROM PESSOA` 
`where NM_PESSOA LIKE 'L%'` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/nome%20like%20l.png "select like nomel")<br>


* 3° Consulta <br>
`SELECT * FROM EXAME`
`WHERE TIPO_EXAME LIKE '%Completo'` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/like%20completo.png "select like completo")<br>

* 4° Consulta <br>
`SELECT * FROM BAIRRO`
`WHERE NM_BAIRRO LIKE 'JARDIM%'` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/like%20jardim.png "select like jardim")<br>

* 5° Consulta <br>
`SELECT * FROM CIDADE`
`WHERE NM_CIDADE LIKE 'VILA%'` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/like%20vila.png "select like vila")<br>

<b> Função para cada tipo DATA </b>

* 1° Consulta <br>
`SELECT CD_EXAME, ID_PESSOA, (AGE(CURRENT_DATE,DT_EXAME)) AS TEMPO FROM EXAME_PACIENTE` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/data1.png "data1")<br>

* 2° Consulta <br>
`SELECT CD_EXAME_PACIENTE, ID_PESSOA, EXTRACT(DAY FROM DT_EXAME) AS "'DIA DA CONSULTA'" FROM EXAME_PACIENTE` <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/data2.png "data2")<br>


#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

<b> Atualização de dados </b>
* 1° Update <br>
`UPDATE EXAME SET PRECO = 250 WHERE CD_EXAME = 4` <br>

<i> Antes </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update1-1.png "update_1_antes")<br>


<i> Depois </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update1-2.png "update_1_depois")<br>

* 2° Update <br>
`UPDATE PESSOA SET NM_PESSOA = 'MELISSA BERNARDES' WHERE ID_PESSOA = 10`<br>

<i> Antes </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update2-1.png "update_2_antes")<br>


<i> Depois </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update2-2.png "update_2_depois")<br>

* 3° Update <br>
`UPDATE PESSOA SET NM_PESSOA = 'HENRIQUE CASTRO' WHERE ID_PESSOA = 9` <br>

<i> Antes </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update3-1.png "update_3_antes")<br>


<i> Depois </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update3-2.png "update_3_depois")<br>

* 4° Update <br>
`UPDATE PACIENTE SET SENHA = 'uajsw123' WHERE FK_PESSOA_ID_PESSOA = 1` <br>

<i> Antes </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update4-1.png "update_4_antes")<br>

<i> Depois </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update4-2.png "update_4_depois")<br>

* 5° Update <br>
`UPDATE PACIENTE SET SENHA = 'senha098' WHERE FK_PESSOA_ID_PESSOA = 3` <br>

<i> Antes </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update5-1.png "update_5_antes")<br>

<i> Depois </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update5-2.png "update_5_depois")<br>

* 6° Update <br>
`UPDATE MEDICO SET CRM_MEDICO = '18931 ES' WHERE FK_PESSOA_ID_PESSOA = 11` <br>

<i> Antes </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update6-1.png "update_6_antes")<br>

<i> Depois </i> <br>
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/update6-2.png "update_6_depois")<br>



#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
* 1° Consulta: <br>
```
SELECT EXAME_PACIENTE.CD_EXAME_PACIENTE, PESSOA.NM_PESSOA AS NOME, EXAME.TIPO_EXAME, EXAME_PACIENTE.CRM_MEDICO, EXAME_PACIENTE.DT_EXAME
FROM EXAME_PACIENTE
INNER JOIN PESSOA
ON(EXAME_PACIENTE.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
INNER JOIN EXAME
ON (EXAME_PACIENTE.CD_EXAME = EXAME.CD_EXAME)
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/join1.png "join1")<br>

* 2° Consulta <br>
```
SELECT PESSOA.NM_PESSOA, PACIENTE.CPF_PACIENTE, PACIENTE.SENHA FROM PACIENTE
INNER JOIN PESSOA
ON (PACIENTE.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
WHERE ID_PESSOA > 5
```

![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/join2.png "join2")<br>

* 3° Consulta <br>
```
SELECT PESSOA.NM_PESSOA, MEDICO.CD_ESPECIALIDADE, MEDICO.CRM_MEDICO, MEDICO.SENHA FROM MEDICO
INNER JOIN PESSOA
ON (MEDICO.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
```

![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/join3.png "join2")<br>

* 4° Consulta <br>
```
SELECT PESSOA.NM_PESSOA, UNIDADE.CNPJ, UNIDADE.CEP FROM UNIDADE
INNER JOIN PESSOA
ON (UNIDADE.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
```

![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/join4.png "join2")<br>

* 5° Consulta <br>
```
SELECT * FROM EXAME
ORDER BY PRECO
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/order1.png "order1")<br>


#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
* 1° Consulta <br>
```
SELECT PESSOA.NM_PESSOA, PACIENTE.CPF_PACIENTE, PACIENTE.SENHA FROM PACIENTE
INNER JOIN PESSOA
ON (PACIENTE.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
WHERE FK_PESSOA_ID_PESSOA > 5
GROUP BY PESSOA.NM_PESSOA, PACIENTE.CPF_PACIENTE, PACIENTE.SENHA
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/group1.png "group1")<br>
* 2° Consulta <br>
```
SELECT PESSOA.NM_PESSOA, MEDICO.CD_ESPECIALIDADE, MEDICO.CRM_MEDICO, MEDICO.SENHA FROM MEDICO
INNER JOIN PESSOA
ON (MEDICO.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
GROUP BY PESSOA.NM_PESSOA, MEDICO.CD_ESPECIALIDADE, MEDICO.CRM_MEDICO, MEDICO.SENHA
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/group2.png "group2")<br>

* 3° Consulta <br>
```
SELECT PESSOA.NM_PESSOA, UNIDADE.CNPJ, UNIDADE.CEP FROM UNIDADE
INNER JOIN PESSOA
ON (UNIDADE.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
GROUP BY PESSOA.NM_PESSOA, UNIDADE.CNPJ, UNIDADE.CEP
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/group3.png "group3")<br>

* 4° Consulta <br>
```
SELECT FK_PESSOA_ID_PESSOA, CD_ESPECIALIDADE, CRM_MEDICO FROM MEDICO
WHERE FK_PESSOA_ID_PESSOA > 15
GROUP BY FK_PESSOA_ID_PESSOA, CD_ESPECIALIDADE, CRM_MEDICO
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/group4.png "group4")<br>

* 5° Consulta <br>
```
SELECT NM_RUA, COMPLEMENTO, CEP, NUMERO FROM UNIDADE
WHERE CD_BAIRRO = 10
GROUP BY NM_RUA, COMPLEMENTO, CEP, NUMERO
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/group5.png "group5")<br>

* 6° Consulta <br>
```
SELECT ID_PESSOA, CD_TIPO, NM_CONTATO FROM CONTATO
WHERE CD_TIPO = 103
GROUP BY ID_PESSOA, CD_TIPO, NM_CONTATO
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/group6.png "group6")<br>

#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>

* 1° Consulta
```
SELECT PESSOA.NM_PESSOA, UNIDADE.CNPJ, UNIDADE.CEP FROM UNIDADE
LEFT JOIN PESSOA
ON (UNIDADE.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/leftjoin1.png "left1")<br>

* 2° Consulta
```
SELECT PESSOA.NM_PESSOA, MEDICO.CD_ESPECIALIDADE, MEDICO.CRM_MEDICO, MEDICO.SENHA FROM MEDICO
LEFT JOIN PESSOA
ON (MEDICO.FK_PESSOA_ID_PESSOA = PESSOA.ID_PESSOA)
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/leftjoin2.png "left2")<br>

* 3° Consulta
```
SELECT EXAME_PACIENTE.CD_EXAME_PACIENTE, PESSOA.NM_PESSOA AS NOME, EXAME.TIPO_EXAME, EXAME_PACIENTE.CRM_MEDICO, EXAME_PACIENTE.DT_EXAME
FROM EXAME_PACIENTE
RIGHT JOIN PESSOA
ON(EXAME_PACIENTE.ID_PESSOA = PESSOA.ID_PESSOA)
INNER JOIN EXAME
ON (EXAME_PACIENTE.CD_EXAME = EXAME.CD_EXAME)
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/rightjoin1.png "right1")<br>

* 4° Consulta
```
SELECT PESSOA.NM_PESSOA, ESPECIALIDADE.NM_ESPECIALIDADE, MEDICO.CRM_MEDICO, MEDICO.SENHA FROM MEDICO
LEFT JOIN ESPECIALIDADE
ON (ESPECIALIDADE.CD_ESPECIALIDADE = MEDICO.CD_ESPECIALIDADE)
LEFT JOIN PESSOA
ON (PESSOA.ID_PESSOA = MEDICO.FK_PESSOA_ID_PESSOA)
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/leftjoin3.png "left3")<br>

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
	
* Devido ao nosso banco de dados estar normalizado, não é possivel criar uma self join.

* 1° View: Mostrar o codigo dos pacientes que fizeram/irão fazer exame de glicose <br>
```
CREATE VIEW ExameGlicose AS SELECT ID_PESSOA FROM EXAME_PACIENTE WHERE CD_EXAME = 8
```
* 2° View: Mostrar os medicos que são cardiologistas
```
CREATE VIEW Cardiologistas AS SELECT PESSOA.NM_PESSOA, MEDICO.CD_ESPECIALIDADE FROM MEDICO
INNER JOIN PESSOA
ON (MEDICO.ID_PESSOA = PESSOA.ID_PESSOA)
WHERE CD_ESPECIALIDADE = 31
```

* 3° View: Mostrar as unidades que estão localizadas em Vitória
```
CREATE VIEW UnidadesVitoria AS SELECT PESSOA.NM_PESSOA, UNIDADE.CNPJ, UNIDADE.CEP FROM UNIDADE
INNER JOIN PESSOA
ON (UNIDADE.ID_PESSOA = PESSOA.ID_PESSOA)
WHERE CD_CIDADE = 60
```

* 4° View: Mostrar as unidades que estão localizadas no bairro de Jardim Camburi
```
CREATE VIEW UnidadesJC AS SELECT PESSOA.NM_PESSOA, UNIDADE.CNPJ, UNIDADE.CEP FROM UNIDADE
INNER JOIN PESSOA
ON (UNIDADE.ID_PESSOA = PESSOA.ID_PESSOA)
WHERE CD_BAIRRO = 10
```

* 5° View: Mostrar a quantidade de medicos que não são cardiologistas
```
CREATE VIEW Cardiologistas AS SELECT COUNT(PESSOA.NM_PESSOA) AS QTD FROM MEDICO
INNER JOIN PESSOA
ON (MEDICO.ID_PESSOA = PESSOA.ID_PESSOA)
WHERE CD_ESPECIALIDADE != 31
```
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

* 1° Subconsulta
```
SELECT NM_CONTATO FROM (SELECT * FROM CONTATO) AS CONTATO
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/subquery1.png "subquery1")<br>

* 2° Subconsulta
```
SELECT NM_PESSOA, CRM_MEDICO, SENHA
FROM (SELECT * FROM MEDICO 
	  INNER JOIN PESSOA
      ON(PESSOA.ID_PESSOA = MEDICO.FK_PESSOA_ID_PESSOA )) AS MEDICO
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/subquery2.png "subquery2")<br>

* 3° Subconsulta
```
SELECT NM_PESSOA, TIPO_EXAME, CRM_MEDICO
FROM (SELECT * FROM EXAME_PACIENTE
	 INNER JOIN PESSOA
	 ON (PESSOA.ID_PESSOA = EXAME_PACIENTE.ID_PESSOA)
	 INNER JOIN EXAME
	 ON (EXAME.CD_EXAME = EXAME_PACIENTE.CD_EXAME)) AS EXAME
```
![Alt text](https://raw.githubusercontent.com/gabrielviggiano/trab01-1/master/images/subquery3.png "subquery3")<br>



#### 9.11 Relatórios e Gráficos
* <b> Relatórios e Gráficos </b> <br>
https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/relatorios_finais.ipynb


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>
* [Slides para apresentação final](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/Slides%20BD1.pptx?raw=true "Slides")

### 11 Backup completo do banco de dados postgres 
    a) deve ser realizado no formato "backup" 
        (Em Dump Options #1 Habilitar opções Don't Save Owner e Privilege)
    b) antes de postar o arquivo no git o mesmo deve ser testado/restaurado por outro grupo de alunos/dupla
    c) informar aqui o grupo de alunos/dupla que realizou o teste.

### 12	TUTORIAL COMPLETO DE PASSOS PARA RESTAURACAO DO BANCO E EXECUCAO DE PROCEDIMENTOS ENVOLVIDOS NO TRABALHO PARA OBTENÇÃO DOS RESULTADOS<br>
        a) Outros grupos deverão ser capazes de restaurar o banco 
        b) executar todas as consultas presentes no trabalho
        c) executar códigos que tenham sido construídos para o trabalho 
        d) realizar qualquer procedimento executado pelo grupo que desenvolveu o trabalho
        
### 13   DIFICULDADES ENCONTRADAS PELO GRUPO<br>
>## Marco de Entrega Final em: (17/06/2019)<br>
        
### 14  FORMATACAO NO GIT: https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/



    

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


