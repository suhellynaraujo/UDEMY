
USE COMERCIO ;

SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
+--------------------+

DESC CLIENTE;
+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| IDCLIENTE | int(11)       | NO   | PRI | NULL    | auto_increment |
| NOME      | varchar(30)   | NO   |     | NULL    |                |
| SEXO      | enum('M','F') | NO   |     | NULL    |                |
| EMAIL     | varchar(50)   | YES  | UNI | NULL    |                |
| CFP       | varchar(15)   | YES  | UNI | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+
INSERT INTO CLIENTE VALUES (NULL, 'JOAO', 'M', 'JOAO@GMAIL.COM', '76576576576');
INSERT INTO CLIENTE VALUES (NULL, 'CARLOS', 'M','CARLOS@GMAIL.COM', '67495137854');
INSERT INTO CLIENTE VALUES (NULL, 'ANA', 'F', 'ANA@GMAIL.COM', '96458231749');
INSERT INTO CLIENTE VALUES (NULL, 'CLARA','F', NULL, '98546732164');
INSERT INTO CLIENTE VALUES (NULL, 'CELIA', 'F', 'CELIA@GMAIL.COM', '65478932146');
INSERT INTO CLIENTE VALUES (NULL, 'MARIA', 'F', 'MARIA@GMAIL.COM', '12345678979');


SELECT * FROM CLIENTE; 
+-----------+--------+------+------------------+-------------+
| IDCLIENTE | NOME   | SEXO | EMAIL            | CFP         |
+-----------+--------+------+------------------+-------------+
|         1 | JOAO   | M    | JOAO@GMAIL.COM   | 76576576576 |
|         2 | CARLOS | M    | CARLOS@GMAIL.COM | 67495137854 |
|         3 | ANA    | F    | ANA@GMAIL.COM    | 96458231749 |
|         4 | CLARA  | F    | NULL             | 98546732164 |
|         5 | CELIA  | F    | CELIA@GMAIL.COM  | 65478932146 |
|         6 | MARIA  | F    | MARIA@GMAIL.COM  | 12345678979 |
+-----------+--------+------+------------------+-------------+

DESC ENDERECO;
+------------+-------------+------+-----+---------+----------------+
| Field      | Type        | Null | Key | Default | Extra          |
+------------+-------------+------+-----+---------+----------------+
| IDENDERECO | int(11)     | NO   | PRI | NULL    | auto_increment |
| RUA        | varchar(30) | NO   |     | NULL    |                |
| BAIRRO     | varchar(30) | NO   |     | NULL    |                |
| CIDADE     | varchar(30) | NO   |     | NULL    |                |
| ESTADO     | char(2)     | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)     | YES  | UNI | NULL    |                |
+------------+-------------+------+-----+---------+----------------+
/*QUANDO SE TEM UM UNIQUE NA CHAVE ESTRANGUEIRA DE UMA TABELA COM CARDINALIDADE (1,1), SIGNIFICA QUE SERÁ INSERIDO UM UNICO DADO DE RELACIONAMENTO NA TABELA QUE REFERENCIA A CHAVE PRIMARIA */
INSERT INTO ENDERECO VALUES (NULL, 'RUA ANTONIO SA', 'CENTRO', 'B. HORIZONTE','MG', 4);
INSERT INTO ENDERECO VALUES (NULL, 'RUA CAPITAO HERMES', 'CENTRO', 'RIO DE JANEIRO', 'RJ', 1);
INSERT INTO ENDERECO VALUES (NULL, 'RUA PRES. VARGAS', 'JARDINS', 'SAO PAULO', 'SP', 3);
INSERT INTO ENDERECO VALUES (NULL, 'RUA ALFANDEGA', 'ESTACIO', 'RIO DE JANEIRO', 'RJ', 2);
INSERT INTO ENDERECO VALUES (NULL, 'RUA DO OUVIDOR', 'FLAMENGO', 'RIO DE JANEIRO', 'RJ', 6);
INSERT INTO ENDERECO VALUES (NULL, 'RUA URUGUAINA', 'CENTRO', 'VITORIA', 'ES', 5);

SELECT * FROM ENDERECO; 
+------------+--------------------+----------+----------------+--------+------------+
| IDENDERECO | RUA                | BAIRRO   | CIDADE         | ESTADO | ID_CLIENTE |
+------------+--------------------+----------+----------------+--------+------------+
|          1 | RUA ANTONIO SA     | CENTRO   | B. HORIZONTE   | MG     |          4 |
|          2 | RUA CAPITAO HERMES | CENTRO   | RIO DE JANEIRO | RJ     |          1 |
|          3 | RUA PRES. VARGAS   | JARDINS  | SAO PAULO      | SP     |          3 |
|          4 | RUA ALFANDEGA      | ESTACIO  | RIO DE JANEIRO | RJ     |          2 |
|          5 | RUA DO OUVIDOR     | FLAMENGO | RIO DE JANEIRO | RJ     |          6 |
|          6 | RUA URUGUAINA      | CENTRO   | VITORIA        | ES     |          5 |
+------------+--------------------+----------+----------------+--------+------------+

DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+
/*QUANDO NÃO SE TEM UM UNIQUE NA CHAVE ESTRANGUEIRA DE UMA TABELA COM CARDINALIDADE (1,N), SIGNIFICA QUE PODERÁ SER INSERIDO VÁRIOS DADOS DE RELACIONAMENTO NA TABELA QUE REFERENCIA A CHAVE PRIMARIA*/
INSERT INTO TELEFONE VALUES (NULL, 'CEL', '659847125', 5);
INSERT INTO TELEFONE VALUES (NULL, 'RES', '84776523', 5);
INSERT INTO TELEFONE VALUES (NULL, 'CEL', '554781238', 1);
INSERT INTO TELEFONE VALUES (NULL, 'COM', '95784623', 2);
INSERT INTO TELEFONE VALUES (NULL, 'RES', '33568897', 1);
INSERT INTO TELEFONE VALUES (NULL, 'CEL', '885746658', 3);
INSERT INTO TELEFONE VALUES (NULL, 'CEL', '558796643', 3);
INSERT INTO TELEFONE VALUES (NULL, 'COM', '86547451', 1);
INSERT INTO TELEFONE VALUES (NULL, 'RES', '78451236', 5);
INSERT INTO TELEFONE VALUES (NULL, 'CEL', '897456823', 2);

SELECT * FROM TELEFONE; 
+------------+------+-----------+------------+
| IDTELEFONE | TIPO | NUMERO    | ID_CLIENTE |
+------------+------+-----------+------------+
|          1 | CEL  | 659847125 |          5 |
|          2 | RES  | 84776523  |          5 |
|          3 | CEL  | 554781238 |          1 |
|          4 | COM  | 95784623  |          2 |
|          5 | RES  | 33568897  |          1 |
|          6 | CEL  | 885746658 |          3 |
|          7 | CEL  | 558796643 |          3 |
|          8 | COM  | 86547451  |          1 |
|          9 | RES  | 78451236  |          5 |
|         10 | CEL  | 897456823 |          2 |
+------------+------+-----------+------------+

SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
+--------------------+

/*PROJEÇÃO, SELEÇÃO, JUNÇÃO*/

-- PROJEÇÃO -> É TUDO QUE EU QUERO VER NA TELA = SELECT 
-- SELEÇÃO SUBCONJUNTO DE REGISTROS DE UMA TABELA = WHERE
-- JUNÇÃO JUNTA OS DADOS DAS TABELAS DE RELACIONAMENTO = JOIN

SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE;
/* PROJETE NOME, SEXO, BAIRRO, CIDADE
DA TABELA CLIENTE
ME JUNTE COM A TABELA ENDERECO
ONDE IDCLIENTE SEJA IGUAL ID_CLIENTE*/

+--------+------+----------+----------------+
| NOME   | SEXO | BAIRRO   | CIDADE         |
+--------+------+----------+----------------+
| JOAO   | M    | CENTRO   | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO  | RIO DE JANEIRO |
| ANA    | F    | JARDINS  | SAO PAULO      |
| CLARA  | F    | CENTRO   | B. HORIZONTE   |
| CELIA  | F    | CENTRO   | VITORIA        |
| MARIA  | F    | FLAMENGO | RIO DE JANEIRO |
+--------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE /*PROJEÇÃO*/
FROM CLIENTE /*ORIGEM*/
INNER JOIN ENDERECO /*JUNÇÃO*/
ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'F'; /*SELEÇÃO*/
+-------+------+----------+----------------+
| NOME  | SEXO | BAIRRO   | CIDADE         |
+-------+------+----------+----------------+
| ANA   | F    | JARDINS  | SAO PAULO      |
| CLARA | F    | CENTRO   | B. HORIZONTE   |
| CELIA | F    | CENTRO   | VITORIA        |
| MARIA | F    | FLAMENGO | RIO DE JANEIRO |
+-------+------+----------+----------------+

SELECT NOME, SEXO, BAIRRO, CIDADE 
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
WHERE SEXO = 'M';
+--------+------+---------+----------------+
| NOME   | SEXO | BAIRRO  | CIDADE         |
+--------+------+---------+----------------+
| JOAO   | M    | CENTRO  | RIO DE JANEIRO |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO |
+--------+------+---------+----------------+

SELECT NOME, SEXO, EMAIL, TIPO, NUMERO
FROM CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;
/* 
TABELA CLIENTE COM TABELA TELEFONE = (1,N) UM CLIENTE PODE TER VÁRIOS TELEFONES
ISSO MOSTRA A REPETIÇÃO DOS DADOS DO MESMO USUARIO
*/
+--------+------+------------------+------+-----------+
| NOME   | SEXO | EMAIL            | TIPO | NUMERO    |
+--------+------+------------------+------+-----------+
| JOAO   | M    | JOAO@GMAIL.COM   | CEL  | 554781238 |
| JOAO   | M    | JOAO@GMAIL.COM   | RES  | 33568897  |
| JOAO   | M    | JOAO@GMAIL.COM   | COM  | 86547451  |
| CARLOS | M    | CARLOS@GMAIL.COM | COM  | 95784623  |
| CARLOS | M    | CARLOS@GMAIL.COM | CEL  | 897456823 |
| ANA    | F    | ANA@GMAIL.COM    | CEL  | 885746658 |
| ANA    | F    | ANA@GMAIL.COM    | CEL  | 558796643 |
| CELIA  | F    | CELIA@GMAIL.COM  | CEL  | 659847125 |
| CELIA  | F    | CELIA@GMAIL.COM  | RES  | 84776523  |
| CELIA  | F    | CELIA@GMAIL.COM  | RES  | 78451236  |
+--------+------+------------------+------+-----------+

