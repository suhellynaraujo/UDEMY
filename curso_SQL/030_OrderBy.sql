
/* ORDER BY */

CREATE DATABASE ESCOLA;
USE ESCOLA;

CREATE TABLE ALUNOS(
	NUMERO INT,
	NOME VARCHAR(30)
);

INSERT INTO ALUNOS VALUES(1,'JOAO');
INSERT INTO ALUNOS VALUES(1,'MARIA');
INSERT INTO ALUNOS VALUES(2,'ZOE');
INSERT INTO ALUNOS VALUES(2,'ANDRE');
INSERT INTO ALUNOS VALUES(3,'CLARA');
INSERT INTO ALUNOS VALUES(1,'CLARA');
INSERT INTO ALUNOS VALUES(4,'MAFRA');
INSERT INTO ALUNOS VALUES(5,'JANAINA');
INSERT INTO ALUNOS VALUES(1,'JANAINA');
INSERT INTO ALUNOS VALUES(3,'MARCELO');
INSERT INTO ALUNOS VALUES(4,'GIOVANI');
INSERT INTO ALUNOS VALUES(5,'ANTONIO');
INSERT INTO ALUNOS VALUES(6,'ANA');
INSERT INTO ALUNOS VALUES(6,'VIVIANE');

SELECT * FROM ALUNOS;

+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      1 | CLARA   |
|      4 | MAFRA   |
|      5 | JANAINA |
|      1 | JANAINA |
|      3 | MARCELO |
|      4 | GIOVANI |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

/* PODE SER ORDENADO PELO NOME DA COLUNA OU O INDICE DA COLUNA */
SELECT * FROM ALUNOS
ORDER BY NUMERO;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

/* PODE SER ORDENADO POR MAIS DE UMA COLUNA*/

SELECT * FROM ALUNOS
ORDER BY NUMERO, NOME;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1, 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+


/* MESCLANDO ORDER BY COM PROJECAO */

SELECT NOME FROM ALUNOS
ORDER BY 1, 2;
/*ERROR 1054 (42S22): Unknown column '2' in 'order clause'*/

SELECT NOME FROM ALUNOS
ORDER BY NUMERO, NOME;
+---------+
| NOME    |
+---------+
| CLARA   |
| JANAINA |
| JOAO    |
| MARIA   |
| ANDRE   |
| ZOE     |
| CLARA   |
| MARCELO |
| GIOVANI |
| MAFRA   |
| ANTONIO |
| JANAINA |
| ANA     |
| VIVIANE |
+---------+


/* ORDER BY DESC / ASC */

SELECT * FROM ALUNOS
ORDER BY 1, 2;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | CLARA   |
|      1 | JANAINA |
|      1 | JOAO    |
|      1 | MARIA   |
|      2 | ANDRE   |
|      2 | ZOE     |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | GIOVANI |
|      4 | MAFRA   |
|      5 | ANTONIO |
|      5 | JANAINA |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1 ASC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | CLARA   |
|      3 | MARCELO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | ANA     |
|      6 | VIVIANE |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | ANA     |
|      6 | VIVIANE |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | CLARA   |
|      3 | MARCELO |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | JOAO    |
|      1 | MARIA   |
|      1 | CLARA   |
|      1 | JANAINA |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1, 2 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      3 | MARCELO |
|      3 | CLARA   |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      5 | JANAINA |
|      5 | ANTONIO |
|      6 | VIVIANE |
|      6 | ANA     |
+--------+---------+

SELECT * FROM ALUNOS
ORDER BY 1 DESC, 2 DESC;
+--------+---------+
| NUMERO | NOME    |
+--------+---------+
|      6 | VIVIANE |
|      6 | ANA     |
|      5 | JANAINA |
|      5 | ANTONIO |
|      4 | MAFRA   |
|      4 | GIOVANI |
|      3 | MARCELO |
|      3 | CLARA   |
|      2 | ZOE     |
|      2 | ANDRE   |
|      1 | MARIA   |
|      1 | JOAO    |
|      1 | JANAINA |
|      1 | CLARA   |
+--------+---------+

/* ORDENANDO COM JOINS */

SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| comercio           |
| escola             |
| exercicio          |
| livraria           |
| mysql              |
| performance_schema |
| projeto            |
| sakila             |
| sys                |
| world              |
+--------------------+

USE COMERCIO;
SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
| v_relatorio        |
+--------------------+

SELECT  C.NOME, 
		C.SEXO, 
		IFNULL(C.EMAIL,'CLIENTE SEM EMAIL') AS "E-MAIL", 
		T.TIPO, 
		T.NUMERO, 
		E.BAIRRO, 
		E.CIDADE, 
		E.ESTADO
FROM CLIENTE C 
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE 
INNER JOIN ENDERECO E 
ON C.IDCLIENTE = E.ID_CLIENTE
ORDER BY 1;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | E-MAIL            | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 558796643 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 885746658 | JARDINS    | SAO PAULO      | SP     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | CEL  | 897456823 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | COM  | 95784623  | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 84776523  | CENTRO     | VITORIA        | ES     |
| CELIA   | F    | CELIA@GMAIL.COM   | CEL  | 659847125 | CENTRO     | VITORIA        | ES     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 78451236  | CENTRO     | VITORIA        | ES     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| EDUARDO | M    | CLIENTE SEM EMAIL | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| GIOVANA | F    | CLIENTE SEM EMAIL | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | CLIENTE SEM EMAIL | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| JOAO    | M    | JOAO@GMAIL.COM    | RES  | 33568897  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@GMAIL.COM    | CEL  | 554781238 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@GMAIL.COM    | COM  | 86547451  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| LORENA  | F    | CLIENTE SEM EMAIL | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
| v_relatorio        |
+--------------------+

SELECT * FROM V_RELATORIO
ORDER BY 1;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 558796643 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 885746658 | JARDINS    | SAO PAULO      | SP     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | CEL  | 897456823 | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | COM  | 95784623  | ESTACIO    | RIO DE JANEIRO | RJ     |
| CARMEM  | F    | CARMEM@IG.COM     | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 84776523  | CENTRO     | VITORIA        | ES     |
| CELIA   | F    | CELIA@GMAIL.COM   | CEL  | 659847125 | CENTRO     | VITORIA        | ES     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 78451236  | CENTRO     | VITORIA        | ES     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| EDUARDO | M    | Não tem email     | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| GIOVANA | F    | Não tem email     | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | Não tem email     | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| JOAO    | M    | JOAO@GMAIL.COM    | RES  | 33568897  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@GMAIL.COM    | CEL  | 554781238 | CENTRO     | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@GMAIL.COM    | COM  | 86547451  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| LORENA  | F    | Não tem email     | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
