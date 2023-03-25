
/* VIEW = PONTEIRO 

VIEW APONTA PARA QUERY
*/


SELECT C.NOME,
       C.SEXO,
       C.EMAIL,
       T.TIPO,
       T.NUMERO,
       E.BAIRRO,
       E.CIDADE,
       E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| CELIA   | F    | CELIA@GMAIL.COM   | CEL  | 659847125 | CENTRO     | VITORIA        | ES     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 84776523  | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@GMAIL.COM    | CEL  | 554781238 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | COM  | 95784623  | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@GMAIL.COM    | RES  | 33568897  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 885746658 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 558796643 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@GMAIL.COM    | COM  | 86547451  | CENTRO     | RIO DE JANEIRO | RJ     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 78451236  | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | CEL  | 897456823 | ESTACIO    | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | NULL              | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| EDUARDO | M    | NULL              | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

/* CRIANDO UMA VIEW

SERVE PARA NÃO PRECISAR FICAR REESCREVENDO QUERYS MUITO GRANDE POR EXEMPLO */

CREATE VIEW RELATORIO AS 
SELECT C.NOME,
       C.SEXO,
       C.EMAIL,
       T.TIPO,
       T.NUMERO,
       E.BAIRRO,
       E.CIDADE,
       E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;
/*Query OK, 0 rows affected (0.06 sec)*/

/* APONTANDO MINHA VIEW PARA MINHA QUERY */

SELECT * FROM RELATORIO;

+---------+------+-------------------+------+-----------+------------+----------------+--------+
| NOME    | SEXO | EMAIL             | TIPO | NUMERO    | BAIRRO     | CIDADE         | ESTADO |
+---------+------+-------------------+------+-----------+------------+----------------+--------+
| CELIA   | F    | CELIA@GMAIL.COM   | CEL  | 659847125 | CENTRO     | VITORIA        | ES     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 84776523  | CENTRO     | VITORIA        | ES     |
| JOAO    | M    | JOAO@GMAIL.COM    | CEL  | 554781238 | CENTRO     | RIO DE JANEIRO | RJ     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | COM  | 95784623  | ESTACIO    | RIO DE JANEIRO | RJ     |
| JOAO    | M    | JOAO@GMAIL.COM    | RES  | 33568897  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 885746658 | JARDINS    | SAO PAULO      | SP     |
| ANA     | F    | ANA@GMAIL.COM     | CEL  | 558796643 | JARDINS    | SAO PAULO      | SP     |
| JOAO    | M    | JOAO@GMAIL.COM    | COM  | 86547451  | CENTRO     | RIO DE JANEIRO | RJ     |
| CELIA   | F    | CELIA@GMAIL.COM   | RES  | 78451236  | CENTRO     | VITORIA        | ES     |
| CARLOS  | M    | CARLOS@GMAIL.COM  | CEL  | 897456823 | ESTACIO    | RIO DE JANEIRO | RJ     |
| GIOVANA | F    | NULL              | RES  | 68976565  | CASCADURA  | B. HORIZONTE   | MG     |
| GIOVANA | F    | NULL              | CEL  | 99656675  | CASCADURA  | B. HORIZONTE   | MG     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 33567765  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | CEL  | 88668786  | CENTRO     | RIO DE JANEIRO | RJ     |
| DANIELE | F    | DANIELE@GMAIL.COM | COM  | 55689654  | CENTRO     | RIO DE JANEIRO | RJ     |
| LORENA  | F    | NULL              | COM  | 88687979  | COPACABANA | RIO DE JANEIRO | RJ     |
| EDUARDO | M    | NULL              | COM  | 88965676  | CENTRO     | VITORIA        | ES     |
| ANTONIO | M    | ANTONIO@UOL.COM   | CEL  | 89966809  | CENTRO     | CURITIBA       | PR     |
| ELAINE  | F    | ELAINE@GLOBO.COM  | COM  | 88679978  | JARDINS    | SAO PAULO      | SP     |
| CARMEM  | F    | CARMEM@IG.COM     | CEL  | 99655768  | BOM RETIRO | CURITIBA       | PR     |
| ADRIANA | F    | ADRIANA@GMAIL.COM | RES  | 89955665  | LAPA       | SAO PAULO      | SP     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 77455786  | CENTRO     | RIO DE JANEIRO | RJ     |
| JOICE   | F    | JOICE@GMAIL.COM   | RES  | 89766554  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | RES  | 77755785  | CENTRO     | RIO DE JANEIRO | RJ     |
| ANDRE   | M    | ANDRE@GLOBO.COM   | COM  | 44522578  | CENTRO     | RIO DE JANEIRO | RJ     |
+---------+------+-------------------+------+-----------+------------+----------------+--------+

/* VIEW É UMA TABELA VIRTUAL */
SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| relatorio          |
| telefone           |
+--------------------+

/* APAGANDO UMA VIEW */

DROP VIEW RELATORIO;
/*Query OK, 0 rows affected (0.05 sec)*/

+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
+--------------------+

/* CRIANDO UMA VIEW COM PREFIXO PARA FÁCIL IDENFICAÇÃO ENTRE AS TABELAS, PODENDO TRATAR OS DADOS COMO NULL POR EXEMPLO */
CREATE VIEW V_RELATORIO AS 
SELECT C.NOME,
       C.SEXO,
       IFNULL(C.EMAIL, 'Não tem email') AS 'EMAIL',
       T.TIPO,
       T.NUMERO,
       E.BAIRRO,
       E.CIDADE,
       E.ESTADO
FROM CLIENTE C
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE;

SHOW TABLES;
+--------------------+
| Tables_in_comercio |
+--------------------+
| cliente            |
| endereco           |
| telefone           |
| v_relatorio        |
+--------------------+
/* PODEMOS TBM TRAZER OS DADOS DAS PROPRIAS VIEWS, SEM PRECISAR CONSULTAR NA TABELA */

SELECT NOME, NUMERO, ESTADO
FROM V_RELATORIO;

+---------+-----------+--------+
| NOME    | NUMERO    | ESTADO |
+---------+-----------+--------+
| CELIA   | 659847125 | ES     |
| CELIA   | 84776523  | ES     |
| JOAO    | 554781238 | RJ     |
| CARLOS  | 95784623  | RJ     |
| JOAO    | 33568897  | RJ     |
| ANA     | 885746658 | SP     |
| ANA     | 558796643 | SP     |
| JOAO    | 86547451  | RJ     |
| CELIA   | 78451236  | ES     |
| CARLOS  | 897456823 | RJ     |
| GIOVANA | 68976565  | MG     |
| GIOVANA | 99656675  | MG     |
| DANIELE | 33567765  | RJ     |
| DANIELE | 88668786  | RJ     |
| DANIELE | 55689654  | RJ     |
| LORENA  | 88687979  | RJ     |
| EDUARDO | 88965676  | ES     |
| ANTONIO | 89966809  | PR     |
| ELAINE  | 88679978  | SP     |
| CARMEM  | 99655768  | PR     |
| ADRIANA | 89955665  | SP     |
| JOICE   | 77455786  | RJ     |
| JOICE   | 89766554  | RJ     |
| ANDRE   | 77755785  | RJ     |
| ANDRE   | 44522578  | RJ     |
+---------+-----------+--------+
