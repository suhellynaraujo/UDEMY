

/* AUTORELACIONAMENTO */

CREATE DATABASE CURSOS;

USE CURSOS;

CREATE TABLE CURSO(
		IDCURSO INT PRIMARY KEY AUTO_INCREMENT,
		NOME VARCHAR(30),
		HORAS INT,
		VALOR FLOAT(10, 2),
		ID_PREREQUISITO INT
);

ALTER TABLE CURSO 
ADD CONSTRAINT FK_PREREQUISITO
FOREIGN KEY (ID_PREREQUISITO) REFERENCES  CURSO (IDCURSO);

 DESC CURSO;
+-----------------+-------------+------+-----+---------+----------------+
| Field           | Type        | Null | Key | Default | Extra          |
+-----------------+-------------+------+-----+---------+----------------+
| IDCURSO         | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME            | varchar(30) | YES  |     | NULL    |                |
| HORAS           | int(11)     | YES  |     | NULL    |                |
| VALOR           | float(10,2) | YES  |     | NULL    |                |
| ID_PREREQUISITO | int(11)     | YES  | MUL | NULL    |                |
+-----------------+-------------+------+-----+---------+----------------+

INSERT INTO CURSO VALUES (NULL, 'BD RELACIONAL', 20, 400.00, NULL);
INSERT INTO CURSO VALUES (NULL, 'Business INTELIGENCE', 40, 800.00, NULL);
INSERT INTO CURSO VALUES (NULL, 'RELATÓRIOS', 30, 250.00, 1);
INSERT INTO CURSO VALUES (NULL, 'LÓGICA DE PROGRAMAÇÃO', 20, 400.00, NULL);
INSERT INTO CURSO VALUES (NULL, 'JAVA', 20, 400.00, 4);

 SELECT * FROM CURSO;
+---------+-----------------------+-------+--------+-----------------+
| IDCURSO | NOME                  | HORAS | VALOR  | ID_PREREQUISITO |
+---------+-----------------------+-------+--------+-----------------+
|       1 | BD RELACIONAL         |    20 | 400.00 |            NULL |
|       2 | Business INTELIGENCE  |    40 | 800.00 |            NULL |
|       3 | RELATÓRIOS            |    30 | 250.00 |               1 |
|       4 | LÓGICA DE PROGRAMAÇÃO |    20 | 400.00 |            NULL |
|       5 | JAVA                  |    20 | 400.00 |               4 |
+---------+-----------------------+-------+--------+-----------------+