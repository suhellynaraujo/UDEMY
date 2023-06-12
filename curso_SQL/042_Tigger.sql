
/* 
ESTRUTURA TRIGGER

BACKUPS


TRIGGER = GATILHO 

FICA OLHANDO PARA TABELA E SÓ DISPARA ANTES OU DEPOIS DA INSTRUÇÃO

SEMPRE LEMBRANDO DE MUDAR O DELIMITADOR ANTES E DEPOIS*/

CREATE TRIGGER NOME
BEFORE/AFTER INSERT/DELETE/UPDATE ON TABELA
FOR EACH ROW (PARA CADA LINHA)
BEGIN -> INICIO
        QUALQUER COMANDO SQL
END -> FIM

CREATE TABLE USUARIO(
    IDUSUARIO INT PRIMARY KEY AUTO_INCREMENT,
    NOME VARCHAR(30) NOT NULL,
    LOGIN VARCHAR(30) NOT NULL,
    SENHA VARCHAR(30)
);


CREATE TABLE BKP_USUARIO(
    IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
    IDUSUARIO INT NOT NULL,
    NOME VARCHAR(30) NOT NULL,
    LOGIN VARCHAR(30) NOT NULL
   
);

DELIMITER #

CREATE TRIGGER BKP_USER
BEFORE DELETE ON USUARIO
FOR EACH ROW 

BEGIN
    
    INSERT INTO BKP_USUARIO VALUES (NULL, OLD.IDUSUARIO, OLD.NOME, OLD.LOGIN);

END 
#

DELIMITER ;

INSERT INTO USUARIO VALUES(NULL, 'ANDRADE', 'ANDRADE2009', 'HEXACAMPEAO');

SELECT * FROM USUARIO;
+-----------+---------+-------------+-------------+
| IDUSUARIO | NOME    | LOGIN       | SENHA       |
+-----------+---------+-------------+-------------+
|         1 | ANDRADE | ANDRADE2009 | HEXACAMPEAO |
+-----------+---------+-------------+-------------+

DELETE FROM USUARIO WHERE IDUSUARIO = 1;

SELECT * FROM BKP_USUARIO;
+----------+-----------+---------+-------------+
| IDBACKUP | IDUSUARIO | NOME    | LOGIN       |
+----------+-----------+---------+-------------+
|        1 |         1 | ANDRADE | ANDRADE2009 |
+----------+-----------+---------+-------------+


CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE PRODUTO(
		IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR(30),
		VAALOR FLOAT(10,2)
);

ALTER TABLE PRODUTO 
CHANGE VAALOR VALOR FLOAT(10,2);

STATUS

--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.7\bin\mysql.exe  Ver 14.14 Distrib 5.7.20, for Win32 (AMD64)

Connection id:          4
Current database:       loja
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        ;
Server version:         5.7.20-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 51 min 24 sec

Threads: 1  Questions: 39  Slow queries: 0  Opens: 111  Flush tables: 1  Open tables: 103  Queries per second avg: 0.012
--------------


CREATE DATABASE BACKUP;
USE BACKUP;

STATUS
--------------
C:\Program Files (x86)\MySQL\MySQL Server 5.7\bin\mysql.exe  Ver 14.14 Distrib 5.7.20, for Win32 (AMD64)

Connection id:          4
Current database:       backup
Current user:           root@localhost
SSL:                    Not in use
Using delimiter:        ;
Server version:         5.7.20-log MySQL Community Server (GPL)
Protocol version:       10
Connection:             localhost via TCP/IP
Server characterset:    latin1
Db     characterset:    latin1
Client characterset:    cp850
Conn.  characterset:    cp850
TCP port:               3306
Uptime:                 53 min 31 sec

Threads: 1  Questions: 48  Slow queries: 0  Opens: 111  Flush tables: 1  Open tables: 103  Queries per second avg: 0.014
--------------

CREATE TABLE BKP_PRODUTO(
		IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
		IDPRODUTO INT ,
		NOME VARCHAR(30),
		VALOR FLOAT(10,2)
);

USE LOJA;


INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, 1000, 'TESTE', 0.0);

SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+-------+-------+
| IDBACKUP | IDPRODUTO | NOME  | VALOR |
+----------+-----------+-------+-------+
|        1 |      1000 | TESTE |  0.00 |
+----------+-----------+-------+-------+


/* INSERT/DELETE/UPDATE NAS TABELAS AO MESMO TEMPO */


DELIMITER $

/* CRIE O GATILHO BACKUP_PRODUT */
CREATE TRIGGER BACKUP_PRODUT  
/* ANTES DE INSERIR NA TABELA PRODUTO */
BEFORE INSERT ON PRODUTO
/* PARA CADA LINHA */
FOR EACH ROW 
/*COMECE*/
BEGIN 

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, NEW.IDPRODUTO, NEW.NOME, NEW.VALOR);

/*TERMINE*/
END
$

DELIMITER ;


INSERT INTO PRODUTO VALUES(NULL, 'LIVRO SQL SERVER', 50.00);
INSERT INTO PRODUTO VALUES(NULL, 'LIVRO P.BI', 100.00);
INSERT INTO PRODUTO VALUES(NULL, 'LIVRO JAVA', 250.00);
INSERT INTO PRODUTO VALUES(NULL, 'LIVRO ORACLE', 100.00);

SELECT * FROM PRODUTO;

+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO SQL SERVER |  50.00 |
|         2 | LIVRO P.BI       | 100.00 |
|         3 | LIVRO JAVA       | 250.00 |
|         4 | LIVRO ORACLE     | 100.00 |
+-----------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;

+----------+-----------+------------------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR  |
+----------+-----------+------------------+--------+
|        1 |      1000 | TESTE            |   0.00 |
|        2 |         0 | LIVRO SQL SERVER |  50.00 |
|        3 |         0 | LIVRO P.BI       | 100.00 |
|        4 |         0 | LIVRO JAVA       | 250.00 |
|        5 |         0 | LIVRO ORACLE     | 100.00 |
+----------+-----------+------------------+--------+


DELIMITER $

/* CRIE O GATILHO BACKUP_PRODUTO_DEL */
CREATE TRIGGER BACKUP_PRODUTO_DEL  
/* ANTES DE DELETAR NA TABELA PRODUTO */
BEFORE DELETE ON PRODUTO
/* PARA CADA LINHA */
FOR EACH ROW 
/*COMECE*/
BEGIN 

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR);

/*TERMINE*/
END
$

DELIMITER ;

DELETE FROM PRODUTO WHERE IDPRODUTO = 2;

SELECT * FROM PRODUTO;

+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO SQL SERVER |  50.00 |
|         3 | LIVRO JAVA       | 250.00 |
|         4 | LIVRO ORACLE     | 100.00 |
+-----------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+------------------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR  |
+----------+-----------+------------------+--------+
|        1 |      1000 | TESTE            |   0.00 |
|        2 |         0 | LIVRO SQL SERVER |  50.00 |
|        3 |         0 | LIVRO P.BI       | 100.00 |
|        4 |         0 | LIVRO JAVA       | 250.00 |
|        5 |         0 | LIVRO ORACLE     | 100.00 |
|        6 |         2 | LIVRO P.BI       | 100.00 |
+----------+-----------+------------------+--------+


DROP TRIGGER BACKUP_PRODUT;

 DELIMITER $

/* CRIE O GATILHO BACKUP_PRODUT */
CREATE TRIGGER BACKUP_PRODUTO 
/* DEPPOIS DE INSERIR NA TABELA PRODUTO */
AFTER INSERT ON PRODUTO
/* PARA CADA LINHA */
FOR EACH ROW 
/*COMECE*/
BEGIN 

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, NEW.IDPRODUTO, NEW.NOME, NEW.VALOR);

/*TERMINE*/
END
$

 DELIMITER ;

 INSERT INTO PRODUTO VALUES(NULL, 'LIVRO C#', 100.00);

 SELECT * FROM PRODUTO;
 +-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO SQL SERVER |  50.00 |
|         3 | LIVRO JAVA       | 250.00 |
|         4 | LIVRO ORACLE     | 100.00 |
|         5 | LIVRO C#         | 100.00 |
+-----------+------------------+--------+

 SELECT * FROM BACKUP.BKP_PRODUTO;

 +----------+-----------+------------------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR  |
+----------+-----------+------------------+--------+
|        1 |      1000 | TESTE            |   0.00 |
|        2 |         0 | LIVRO SQL SERVER |  50.00 |
|        3 |         0 | LIVRO P.BI       | 100.00 |
|        4 |         0 | LIVRO JAVA       | 250.00 |
|        5 |         0 | LIVRO ORACLE     | 100.00 |
|        6 |         2 | LIVRO P.BI       | 100.00 |
|        7 |         5 | LIVRO C#         | 100.00 |
+----------+-----------+------------------+--------+

ALTER TABLE BACKUP.BKP_PRODUTO
ADD EVENTO CHAR(1);

 SELECT * FROM BACKUP.BKP_PRODUTO;

 DROP TRIGGER BACKUP_PRODUTO_DEL ;

DELIMITER $

/* CRIE O GATILHO BACKUP_PRODUTO_DEL */
CREATE TRIGGER BACKUP_PRODUTO_DEL  
/* ANTES DE DELETAR NA TABELA PRODUTO */
BEFORE DELETE ON PRODUTO
/* PARA CADA LINHA */
FOR EACH ROW 
/*COMECE*/
BEGIN 

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR, 'D');

/*TERMINE*/
END
$


DELIMITER ;


DELETE FROM PRODUTO WHERE IDPRODUTO = 4;

 SELECT * FROM BACKUP.BKP_PRODUTO;

 +----------+-----------+------------------+--------+--------+
| IDBACKUP | IDPRODUTO | NOME             | VALOR  | EVENTO |
+----------+-----------+------------------+--------+--------+
|        1 |      1000 | TESTE            |   0.00 | NULL   |
|        2 |         0 | LIVRO SQL SERVER |  50.00 | NULL   |
|        3 |         0 | LIVRO P.BI       | 100.00 | NULL   |
|        4 |         0 | LIVRO JAVA       | 250.00 | NULL   |
|        5 |         0 | LIVRO ORACLE     | 100.00 | NULL   |
|        6 |         2 | LIVRO P.BI       | 100.00 | NULL   |
|        7 |         5 | LIVRO C#         | 100.00 | NULL   |
|        8 |         4 | LIVRO ORACLE     | 100.00 | D      |
+----------+-----------+------------------+--------+--------+


DROP DATABASE LOJA;
DROP DATABASE BACKUP;


CREATE DATABASE LOJA;
USE LOJA;

CREATE TABLE PRODUTO(
		IDPRODUTO INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR(30),
		VALOR FLOAT(10,2)
);

INSERT INTO PRODUTO VALUES(NULL, 'LIVRO SQL SERVER', 50.00);
INSERT INTO PRODUTO VALUES(NULL, 'LIVRO P.BI', 100.00);
INSERT INTO PRODUTO VALUES(NULL, 'LIVRO JAVA', 250.00);
INSERT INTO PRODUTO VALUES(NULL, 'LIVRO ORACLE', 100.00);

CREATE DATABASE BACKUP;
USE BACKUP;

/*QUANDO*/
SELECT NOW();
/*QUEM FEZ*/
SELECT CURRENT_USER();


CREATE TABLE BKP_PRODUTO(
		IDBACKUP INT PRIMARY KEY AUTO_INCREMENT,
		IDPRODUTO INT,
		NOME VARCHAR(30),
		VALOR_ORIGINAL FLOAT(10,2),
		VALOR_ALTERADO FLOAT(10,2),
		DATA DATETIME,
		USUARIO VARCHAR(30),
		EVENTO CHAR(1)
);


USE LOJA;

SELECT * FROM PRODUTO;

DELIMITER $

CREATE TRIGGER AUDIT_PRODUT
AFTER UPDATE ON PRODUTO
FOR EACH ROW 
BEGIN 

	INSERT INTO BACKUP.BKP_PRODUTO VALUES(NULL, OLD.IDPRODUTO, OLD.NOME, OLD.VALOR, NEW.VALOR, NOW(), CURRENT_USER(), 'U');
END
$

DELIMITER ;

SELECT * FROM PRODUTO; 

+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO SQL SERVER |  50.00 |
|         2 | LIVRO P.BI       | 100.00 |
|         3 | LIVRO JAVA       | 250.00 |
|         4 | LIVRO ORACLE     | 100.00 |
+-----------+------------------+--------+


UPDATE PRODUTO 
SET VALOR = 110.00
WHERE IDPRODUTO = 4;

SELECT * FROM PRODUTO; 

+-----------+------------------+--------+
| IDPRODUTO | NOME             | VALOR  |
+-----------+------------------+--------+
|         1 | LIVRO SQL SERVER |  50.00 |
|         2 | LIVRO P.BI       | 100.00 |
|         3 | LIVRO JAVA       | 250.00 |
|         4 | LIVRO ORACLE     | 110.00 |
+-----------+------------------+--------+

SELECT * FROM BACKUP.BKP_PRODUTO;
+----------+-----------+--------------+----------------+----------------+---------------------+----------------+--------+
| IDBACKUP | IDPRODUTO | NOME         | VALOR_ORIGINAL | VALOR_ALTERADO | DATA                | USUARIO        | EVENTO |
+----------+-----------+--------------+----------------+----------------+---------------------+----------------+--------+
|        1 |         4 | LIVRO ORACLE |         100.00 |         110.00 | 2023-03-28 21:43:09 | root@localhost | U      |
+----------+-----------+--------------+----------------+----------------+---------------------+----------------+--------+