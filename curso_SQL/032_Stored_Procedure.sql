/* STORED PROCEDURES BLOCO NOMEADO, SEMPARAMETROS */

DELIMITER $

STATUS

CREATE PROCEDURE NOME()
BEGIN

/* PODE SER QUALQUER QUERY DE ACORDO COM O DELIMITADOR($, ;...) : INSERT, UPDATE, DELETE... */



END 
$

DELIMITER $

STATUS

CREATE DATABASE EMPRESA$

USE EMPRESA$

CREATE PROCEDURE NOME_EMPRESA()
BEGIN

SELECT 'UNIVERSIDADE DOS DADOS' AS EMPRESA;

END 
$

/* CHAMANDO UMA PROCEDURE */

CALL NOME_EMPRESA$

+------------------------+
| EMPRESA                |
+------------------------+
| UNIVERSIDADE DOS DADOS |
+------------------------+

DELIMITER ;

STATUS

CALL NOME_EMPRESA;

/* PROCEDURE COM PARAMETROS */

DELIMITER $

STATUS

CREATE PROCEDURE CONTA()
BEGIN

SELECT 10 + 10 AS CONTA;

END 
$

CALL CONTA()$
+-------+
| CONTA |
+-------+
|    20 |
+-------+

DROP PROCEDURE CONTA$

DELIMITER ;

STATUS

DELIMITER $

CREATE PROCEDURE CONTA(NUMERO1 INT, NUMERO2 INT )
BEGIN

SELECT NUMERO1 + NUMERO2 AS CONTA;

END 
$


CALL CONTA(100, 50)$

+-------+
| CONTA |
+-------+
|   150 |
+-------+

DELIMITER ;

STATUS



SHOW DATABASES;


USE ESCOLA;

SHOW TABLES;

CREATE TABLE CURSOS(
	IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
	MOME VARCHAR(30) NOT NULL,
	HORAS INT(3) NOT NULL,
	VALOR FLOAT(10,2) NOT NULL
);


SHOW TABLES;
+------------------+
| Tables_in_escola |
+------------------+
| alunos           |
| cursos           |
+------------------+

DESC CURSOS;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDCURSO | int(11)     | NO   | PRI | NULL    | auto_increment |
| MOME    | varchar(30) | NO   |     | NULL    |                |
| HORAS   | int(3)      | NO   |     | NULL    |                |
| VALOR   | float(10,2) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

INSERT INTO CURSOS VALUES(NULL, 'FUNDAMENTOS DE BANCO DE DADOS', 50, 700.00);
INSERT INTO CURSOS VALUES(NULL, 'JAVA', 40, 500.00);

SELECT * FROM CURSOS;

+---------+-------------------------------+-------+--------+
| IDCURSO | MOME                          | HORAS | VALOR  |
+---------+-------------------------------+-------+--------+
|       1 | FUNDAMENTOS DE BANCO DE DADOS |    50 | 700.00 |
|       2 | JAVA                          |    40 | 500.00 |
+---------+-------------------------------+-------+--------+

DELIMITER #

STATUS

--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.7\bin\mysql.exe  Ver 14.14 Distrib 5.7.20, for Win32 (AMD64)

Connection id:          4
Current database:       escola
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        #
Server version:         5.7.20-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Insert id:              2
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 2 days 39 min 47 sec

Threads: 1  Questions: 206  Slow queries: 0  Opens: 121  Flush tables: 1  Open tables: 113  Queries per second avg: 0.001
--------------

/* CRIANDO PROCEDORE PARA INSERIR DADOS */

CREATE PROCEDURE CAD_CURSO(P_NOME VARCHAR(30),
						   P_HORAS INT(3),
						   P_PRECO FLOAT(10,2))
BEGIN

	INSERT INTO CURSOS VALUES(NULL, P_NOME, P_HORAS, P_PRECO);

END 
#

DELIMITER ;

CALL CAD_CURSO('SQL SERVER', 35, 3000.00);
CALL CAD_CURSO('ORACLE', 40, 2000.00);
CALL CAD_CURSO('JAVA POO', 30, 1000.00);
CALL CAD_CURSO('PYTHON', 50, 3500.00);
CALL CAD_CURSO('HTML, CSS, JAVASCRIPT', 80, 6000.00);
CALL CAD_CURSO('DEVOPS', 60, 4000.00);
CALL CAD_CURSO('REACT', 35, 3000.00);
CALL CAD_CURSO('ANGULAR', 40, 4500.00);

SELECT * FROM CURSOS;

+---------+-------------------------------+-------+---------+
| IDCURSO | MOME                          | HORAS | VALOR   |
+---------+-------------------------------+-------+---------+
|       1 | FUNDAMENTOS DE BANCO DE DADOS |    50 |  700.00 |
|       2 | JAVA                          |    40 |  500.00 |
|       3 | SQL SERVER                    |    35 | 3000.00 |
|       4 | ORACLE                        |    40 | 2000.00 |
|       5 | JAVA POO                      |    30 | 1000.00 |
|       6 | PYTHON                        |    50 | 3500.00 |
|       7 | HTML, CSS, JAVASCRIPT         |    80 | 6000.00 |
|       8 | DEVOPS                        |    60 | 4000.00 |
|       9 | REACT                         |    35 | 3000.00 |
|      10 | ANGULAR                       |    40 | 4500.00 |
+---------+-------------------------------+-------+---------+
