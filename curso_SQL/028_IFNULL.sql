
/* FUNÇÃO COM PARAMETROS E SEM PARAMETROS

IFNULL() = SEMPRE PASSE UM PARAMETRO, UMA COLUNA COM OU SEM COMENTÁRIO*/

SELECT C.NOME,
	   IFNULL(C.EMAIL, "Não tem email"), 
	   E.ESTADO, 
	   T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE;

+---------+----------------------------------+--------+-----------+
| NOME    | IFNULL(C.EMAIL, "Não tem email") | ESTADO | NUMERO    |
+---------+----------------------------------+--------+-----------+
| CELIA   | CELIA@GMAIL.COM                  | ES     | 659847125 |
| CELIA   | CELIA@GMAIL.COM                  | ES     | 84776523  |
| JOAO    | JOAO@GMAIL.COM                   | RJ     | 554781238 |
| CARLOS  | CARLOS@GMAIL.COM                 | RJ     | 95784623  |
| JOAO    | JOAO@GMAIL.COM                   | RJ     | 33568897  |
| ANA     | ANA@GMAIL.COM                    | SP     | 885746658 |
| ANA     | ANA@GMAIL.COM                    | SP     | 558796643 |
| JOAO    | JOAO@GMAIL.COM                   | RJ     | 86547451  |
| CELIA   | CELIA@GMAIL.COM                  | ES     | 78451236  |
| CARLOS  | CARLOS@GMAIL.COM                 | RJ     | 897456823 |
| GIOVANA | Não tem email                    | MG     | 68976565  |
| GIOVANA | Não tem email                    | MG     | 99656675  |
| DANIELE | DANIELE@GMAIL.COM                | RJ     | 33567765  |
| DANIELE | DANIELE@GMAIL.COM                | RJ     | 88668786  |
| DANIELE | DANIELE@GMAIL.COM                | RJ     | 55689654  |
| LORENA  | Não tem email                    | RJ     | 88687979  |
| EDUARDO | Não tem email                    | ES     | 88965676  |
| ANTONIO | ANTONIO@UOL.COM                  | PR     | 89966809  |
| ELAINE  | ELAINE@GLOBO.COM                 | SP     | 88679978  |
| CARMEM  | CARMEM@IG.COM                    | PR     | 99655768  |
| ADRIANA | ADRIANA@GMAIL.COM                | SP     | 89955665  |
| JOICE   | JOICE@GMAIL.COM                  | RJ     | 77455786  |
| JOICE   | JOICE@GMAIL.COM                  | RJ     | 89766554  |
| ANDRE   | ANDRE@GLOBO.COM                  | RJ     | 77755785  |
| ANDRE   | ANDRE@GLOBO.COM                  | RJ     | 44522578  |
+---------+----------------------------------+--------+-----------+

/* PARA QUE O NEME DA COLUNA NÃO REPITA O COMENTÁRIO, USAR O AS (AS SIGINIFICA APELIDO)*/
+---------+----------------------------------+--------+-----------+
| NOME    | IFNULL(C.EMAIL, "Não tem email") | ESTADO | NUMERO    |
+---------+----------------------------------+--------+-----------+

SELECT C.NOME,
	   IFNULL(C.EMAIL, "Não tem email") AS "EMAIL", 
	   E.ESTADO, 
	   T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T 
ON C.IDCLIENTE = T.ID_CLIENTE;
+---------+-------------------+--------+-----------+
| NOME    | EMAIL             | ESTADO | NUMERO    |
+---------+-------------------+--------+-----------+
| CELIA   | CELIA@GMAIL.COM   | ES     | 659847125 |
| CELIA   | CELIA@GMAIL.COM   | ES     | 84776523  |
| JOAO    | JOAO@GMAIL.COM    | RJ     | 554781238 |
| CARLOS  | CARLOS@GMAIL.COM  | RJ     | 95784623  |
| JOAO    | JOAO@GMAIL.COM    | RJ     | 33568897  |
| ANA     | ANA@GMAIL.COM     | SP     | 885746658 |
| ANA     | ANA@GMAIL.COM     | SP     | 558796643 |
| JOAO    | JOAO@GMAIL.COM    | RJ     | 86547451  |
| CELIA   | CELIA@GMAIL.COM   | ES     | 78451236  |
| CARLOS  | CARLOS@GMAIL.COM  | RJ     | 897456823 |
| GIOVANA | Não tem email     | MG     | 68976565  |
| GIOVANA | Não tem email     | MG     | 99656675  |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 33567765  |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 88668786  |
| DANIELE | DANIELE@GMAIL.COM | RJ     | 55689654  |
| LORENA  | Não tem email     | RJ     | 88687979  |
| EDUARDO | Não tem email     | ES     | 88965676  |
| ANTONIO | ANTONIO@UOL.COM   | PR     | 89966809  |
| ELAINE  | ELAINE@GLOBO.COM  | SP     | 88679978  |
| CARMEM  | CARMEM@IG.COM     | PR     | 99655768  |
| ADRIANA | ADRIANA@GMAIL.COM | SP     | 89955665  |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 77455786  |
| JOICE   | JOICE@GMAIL.COM   | RJ     | 89766554  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 77755785  |
| ANDRE   | ANDRE@GLOBO.COM   | RJ     | 44522578  |
+---------+-------------------+--------+-----------+