
/*SUBQUERY*/

/* INNER QUERY, PRIMEIRO SE RESOLVE A SUBQUERY */
SELECT HORAS, VALOR
FROM CURSOS
WHERE VALOR = (SELECT MIN(VALOR) FROM CURSOS );
	 
+-------+--------+
| HORAS | VALOR  |
+-------+--------+
|    40 | 500.00 |
+-------+--------+

SELECT HORAS, VALOR
FROM CURSOS
WHERE VALOR = (SELECT MAX(VALOR) FROM CURSOS );

+-------+---------+
| HORAS | VALOR   |
+-------+---------+
|    80 | 6000.00 |
+-------+---------+

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

DESC CURSOS;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDCURSO | int(11)     | NO   | PRI | NULL    | auto_increment |
| MOME    | varchar(30) | NO   |     | NULL    |                |
| HORAS   | int(3)      | NO   |     | NULL    |                |
| VALOR   | float(10,2) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

ALTER TABLE CURSOS
CHANGE MOME NOME VARCHAR(30) NOT NULL;

SELECT * FROM CURSOS;
+---------+-------------------------------+-------+---------+
| IDCURSO | NOME                          | HORAS | VALOR   |
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

DESC CURSOS;
+---------+-------------+------+-----+---------+----------------+
| Field   | Type        | Null | Key | Default | Extra          |
+---------+-------------+------+-----+---------+----------------+
| IDCURSO | int(11)     | NO   | PRI | NULL    | auto_increment |
| NOME    | varchar(30) | NO   |     | NULL    |                |
| HORAS   | int(3)      | NO   |     | NULL    |                |
| VALOR   | float(10,2) | NO   |     | NULL    |                |
+---------+-------------+------+-----+---------+----------------+

/*TRAZER VALOR MÍNIMO*/
SELECT NOME, HORAS, VALOR
FROM CURSOS
WHERE VALOR = (SELECT MIN(VALOR) FROM CURSOS );
+------+-------+--------+
| NOME | HORAS | VALOR  |
+------+-------+--------+
| JAVA |    40 | 500.00 |
+------+-------+--------+

/*TRAZER VALOR MÁXIMO*/
SELECT NOME, HORAS, VALOR
FROM CURSOS
WHERE VALOR = (SELECT MAX(VALOR) FROM CURSOS );

+-----------------------+-------+---------+
| NOME                  | HORAS | VALOR   |
+-----------------------+-------+---------+
| HTML, CSS, JAVASCRIPT |    80 | 6000.00 |
+-----------------------+-------+---------+

/* VALORES MAIORES QUE A MÉDIA */
SELECT NOME, HORAS, VALOR
FROM CURSOS
WHERE VALOR > (SELECT AVG(VALOR) FROM CURSOS );
+-----------------------+-------+---------+
| NOME                  | HORAS | VALOR   |
+-----------------------+-------+---------+
| SQL SERVER            |    35 | 3000.00 |
| PYTHON                |    50 | 3500.00 |
| HTML, CSS, JAVASCRIPT |    80 | 6000.00 |
| DEVOPS                |    60 | 4000.00 |
| REACT                 |    35 | 3000.00 |
| ANGULAR               |    40 | 4500.00 |
+-----------------------+-------+---------+

/* VALORES MENORES QUE A MÉDIA */
SELECT NOME, HORAS, VALOR
FROM CURSOS
WHERE VALOR < (SELECT AVG(VALOR) FROM CURSOS );

+-------------------------------+-------+---------+
| NOME                          | HORAS | VALOR   |
+-------------------------------+-------+---------+
| FUNDAMENTOS DE BANCO DE DADOS |    50 |  700.00 |
| JAVA                          |    40 |  500.00 |
| ORACLE                        |    40 | 2000.00 |
| JAVA POO                      |    30 | 1000.00 |
+-------------------------------+-------+---------+