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
* Relatório que informe quais são os médicos já cadastrados no sistema, com as seguintes informações: Nome, número do CRM, especialidade, e-mail para contato.
* Relatório do laboratório, contendo: Nome fantasia, CNPJ, endereço (com todas informações) e telefone bem como quantidade de exames realizados.
* Relatório de exames realizados, contendo: tipo do exame, médico Vinculado, unidade, data que foi realizado, laboratório, preço.
* Relatório de exames pendentes, são exames que apenas o médico solicitou e que aguarda agendamento do paciente, para isso é necessário as seguintes informações: Tipo de exame, médico vinculado, data do exame.
* Relatório de validações de médicos: Anexos que foram gerados após os exames, contendo todas as informações dos mesmos, além de anotações dos médicos.
 
 
#### 4.2 TABELA DE DADOS DO SISTEMA:
    
* [Tabela de dados da empresa E-Xames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/tabela_de_dados.xlsx?raw=true "Tabela - Empresa E-Xames")

* [Tabela de dados normalizada da empresa E-Xames](https://github.com/gabrielviggiano/trab01-1/blob/master/arquivos/tabela_de_dados_normalizada.xlsx?raw=true	"Tabela - Empresa E-Xames")

    
>## Marco de Entrega 01 em:<br>

### 5.MODELO CONCEITUAL<br>
	NOTACAO ENTIDADE RELACIONAMENTO 
        
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/modelos/modelo_conceitual.png?raw=true "Modelo Conceitual")
    
    
#### 5.1 Validação do Modelo Conceitual
    [TrashMe]: [Brian Icaro Diaz Marques, Ramon Kazushi Cossual Sakurada, Pedro Cruz Nunes Silva, Marcelo Oliveira]
    [Lixeira Inteligente]: [Jackson William, Lavinia Corteletti, Thiago Moreira, Vinicius Freitas]

#### 5.2 DECISÕES DE PROJETO

<b>Realizado: </b> Optamos por incluir esse campo para transformar o que antes eram duas tabelas, em uma só, visto que o que diferenciavam-as era apenas se o exame era realizado ou pendente.<br>

<b>Id_Paciente: </b> Decidimos por incluir uma id para o paciente, visto que, apesar do cpf poder ser um identificador, seria complicado e grande para ser usado.<br>

<b>Preço: </b> Antes, esse campo ficava incluido nas tabelas de exames pendentes e concluídos, porem vimos que seria mais prático colocar ela nas identificações de exames. Fator esse que também foi decisivo para a junção das tabelas exames concluídos e exames pendentes<br>

>## Marco de Entrega 02 em: (30/04/2019)<br>

#### 5.3 DESCRIÇÃO DOS DADOS 

<b>TABELA PACIENTE:</b> Essa tabela contém as infomações relativas ao cadastro de pacientes.
- ID_PACIENTE: Campo identificador do usuário (usado como chave primária e login).
- CPF_PACIENTE: Campo que armazena o número de Cadastro de Pessoa Física de cada paciente.
- NM_PACIENTE:	Campo que armazena o nome do paciente.
- EMAIL_PACIENTE: Campo que armazena o endereço de email de cada paciente.
- TEL_PACIENTE: Campo que armazena o telefone de contato do paciente.
- SENHA_PACIENTE: Campo que armazena a senha de acesso ao aplicativo do paciente.

-----------------------------------------------------------------------------------------------------------

<b>TABELA MEDICO:</b> Essa tabela contém as informações de cadastro do médico.
- CRM_MEDICO: Campo que armazena o número da carteira profissional do médico.
- NM_MEDICO: Campo que armazena o nome do médico.
- EMAIL_MEDICO: Campo que armazena o endereço de email do médico.
- ESPECIALIDADE_MEDICO: Campo que armazena a especialidade do médico.

-----------------------------------------------------------------------------------------------------------

<b>TABELA UNIDADE:</b> Essa tabela contém as informações descritivas das unidades do laboratório
- CD_UNIDADE: Campo que armazena o código da unidade em questão.
- LOGRADOURO: Campo que armazena o nome da rua em que a unidade se localiza.
- BAIRRO: Campo que armazena o nome do bairro em que a unidade se localiza.
- COMPLEMENTO: Campo que armazena o complemento de endereço em que a unidade se localiza.
- CIDADE: Campo que armazena o nome da cidade em que a unidade se localiza.
- CEP: Campo que armazena o código de endereçamento postal da unidade.
- NUMERO: Campo que armazena o número de endereço da unidade em questão.
- TEL: Campo que armazena o número de telefone da unidade.

-----------------------------------------------------------------------------------------------------------

<b>TABELA EXAME:</b> Essa tabela guarda as informações cadastrais dos exames disponíveis no laboratório.
- CD_EXAME: Campo identificador do exame (usado como chave primária)
- TIPO_EXAME: Campo que armazena o tipo do exame.
- PRECO: Campo que armazena o valor do exame.

-----------------------------------------------------------------------------------------------------------

<b>TABELA EXAME_PACIENTE:</b> Essa tabela guarda as informações referentes a realização de um exame pelo paciente.
- CD_EXAME_PACIENTE: Campo que armazena o código identificador do exame realizado.
- CPF_PACIENTE: Campo que armazena o número de Cadastro de Pessoa Física do paciente examinado.
- CD_EXAME: Campo identificador do exame feito.
- CRM_MEDICO: Campo que contém o número da carteira profissional do médico examinador.
- DT_EXAME: Campo que armazena a data de quando foi(será) o exame.
- REALIZADO: Campo booleano que armazena a verificação se o exame foi realizado ou não.

### 6	MODELO LÓGICO<br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/modelos/Lógico_3.png?raw=true "Modelo Lógico")

### 7	MODELO FÍSICO<br>
* [Modelo Físico](https://github.com/gabrielviggiano/trab01-1/blob/master/modelos/modelo_fisico.sql?raw=true	"Modelo Físico")
 
        
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
        a) Quais os principais fluxos de dados de informação no sistema em densenvolvimento (mínimo 3)
        b) Quais as tabelas que conterão mais dados no sistema em densenvolvimento (mínimo 3)
        c) informe quais as 5 principais tabelas do sistema em densenvolvimento.
>## Marco de Entrega 03 em: (13/05/19) <br>

### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
    OBS: Incluir para cada tópico as instruções SQL + imagens (print da tela) mostrando os resultados.<br>
    
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
SELECT * FROM Paciente: <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select%20paciente.jpg?raw=true "SELECT * FROM Paciente") <br>
SELECT * FROM Medico: <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select%20medico.jpg?raw=true "SELECT * FROM Medico") <br>
SELECT * FROM Exame: <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select%20exame.jpg?raw=true "SELECT * FROM Exame") <br>
SELECT * FROM Unidade: <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select%20unidade.jpg?raw=true "SELECT * FROM Unidade") <br>
SELECT * FROM Exame_Paciente: <br>
![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select%20examepaciente.jpg?raw=true "SELECT * FROM Exame_Paciente") <br>
	

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
select * from medico where especialidade_medico='Cardiologista' <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where%20cardiologista.jpg?raw=true "where cardiologista") <br>

select * from unidade where cidade='VITORIA' <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where%20vitoria.jpg?raw=true "where vitoria") <br>

select * from exame where preco>200 <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where%20preco.jpg?raw=true "where preco") <br>

select * from unidade where bairro='JARDIM CAMBURI' <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where%20bairro.jpg?raw=true "where bairro") <br>

#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
<b> Consultas com operadores lógicos: </b> <br>
* 1° Consulta:
>SELECT * FROM Exame_Paciente   <br>
WHERE cd_exame = 3 <b>AND</b> realizado = 'S'; <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where_logico1.png?raw=true "where_logico1") <br>

* 2° Consulta:
>SELECT * FROM unidade <br>
WHERE  bairro = 'JARDIM CAMBURI' <b>AND</b> cidade = 'VITORIA' <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where_logico2.png?raw=true "where_logico2") <br>

* 3° Consulta:
>SELECT * FROM Medico <br>
WHERE especialidade_medico = 'Geral' <b>OR</b> especialidade_medico = 'Cardiologista'; <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where_logico3.png?raw=true "where_logico3") <br>

* 4° Consulta:
>SELECT * FROM Medico <br>
WHERE <b>NOT</b> especialidade_medico = 'Geral'; <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where_logico4.png?raw=true "where_logico4") <br>

* 5° Consulta:
>SELECT * FROM Unidade <br>
WHERE <b>NOT</b> cidade = 'VITORIA' <b> AND NOT </b> cidade = 'CARIACICA'; <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/where_logico5.png?raw=true "where_logico5") <br>


<b> Consultas com operadores aritméticos: </b> <br>

* 1° Consulta:
> SELECT preco, (preco <b>-</b> (preco <b>*</b> 0.15)) AS preco_desconto FROM exame

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_aritmetico.png?raw=true "select_aritmetico") <br>

* 2° Consulta:
> SELECT preco, (preco <b>+</b> (preco <b>*</b> 0.15)) AS preco_taxaextra FROM exame

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_aritmetico2.png?raw=true "select_aritmetico2") <br>

* 3° Consulta:
> SELECT preco, (preco * 30) AS preco_30exames FROM exame

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_aritmetico3.png?raw=true "select_aritmetico3") <br>

<b> Consultas de renomear tabelas ou campos </b>

* 1° Consulta
> SELECT cd_unidade, cidade, cep, tel AS Telefone FROM unidade

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_mudarNome1.png?raw=true "select_mudarNome1") <br>

* 2° Consulta
> SELECT cpf_paciente AS cpf, nm_paciente AS nome, tel_paciente AS telefone FROM paciente

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_mudarNome2.png?raw=true "select_mudarNome2") <br>

* 3° Consulta
> SELECT crm_medico AS CRM, nm_medico AS nome, especialidade_medico AS especialidade FROM medico

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_mudarNome3.png?raw=true "select_mudarNome3") <br>
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>

<b> Consultas com operador LIKE </b>

* 1° Consulta
> SELECT * FROM medico where nm_medico like 'P%' <br> 

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_like1.png?raw=true "select_like1") <br>

* 2° Consulta
> SELECT * FROM paciente where email_paciente like '%@hotmail%' <br>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_like2.png?raw=true "select_like2") <br>

* 3° Consulta
> SELECT * FROM exame where tipo_exame like '%Completo'

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_like3.png?raw=true "select_like3") <br>

* 4° Consulta
> SELECT * FROM unidade where bairro like 'JARDIM%'

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_like4.png?raw=true "select_like4") <br>

* 5° Consulta
> SELECT * FROM unidade where cidade like 'VILA%'

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_like5.png?raw=true "select_like5") <br>

<b> Função para cada tipo DATA </b>

* 1° Consulta
> SELECT cd_exame, id_paciente, (age(current_date,dt_exame)) AS tempo FROM exame_paciente

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_data1.png?raw=true "select_data1") <br>

* 2° Consulta
> SELECT cd_exame_paciente, id_paciente, extract(day from dt_exame) AS "'Dia da Consulta'" FROM exame_paciente

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/select_data2.png?raw=true "select_data2") <br>


#### 9.5	ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>

<b> Atualização de dados </b>
* 1° Consulta
> UPDATE exame SET preco = 250 WHERE cd_exame = 4

<i> Antes </i>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/update_antes1.png?raw=true "update_antes1") <br>

<i> Depois </i>

![Alt text](https://github.com/gabrielviggiano/trab01-1/blob/master/images/update_depois1.png?raw=true "update_depois1") <br>




#### 9.6	CONSULTAS COM JUNÇÃO E ORDENAÇÃO (Mínimo 6)<br>
        a) Uma junção que envolva todas as tabelas possuindo no mínimo 3 registros no resultado
        b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
#### 9.8	CONSULTAS COM LEFT E RIGHT JOIN (Mínimo 4)<br>
#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
#### 9.10	SUBCONSULTAS (Mínimo 3)<br>

>## Marco de Entrega 03 em: (27/05/2019)<br>

#### 9.11 Relatórios e Gráficos 
    a)análises e resultados provenientes do banco de dados


### 10	ATUALIZAÇÃO DA DOCUMENTAÇÃO DOS SLIDES PARA APRESENTAÇAO FINAL (Mínimo 6 e Máximo 10)<br>

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


