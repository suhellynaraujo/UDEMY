
SELECT NOME, SEXO, BAIRRO, CIDADE, TIPO, NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON IDCLIENTE = ID_CLIENTE
INNER JOIN TELEFONE
ON IDCLIENTE = ID_CLIENTE;

/*
ERROR 1052 (23000): Column 'ID_CLIENTE' in on clause is ambiguous

Para resolver esse erro, tem que referenciar as tabelas.campos */

SELECT CLIENTE.NOME, CLIENTE.SEXO, ENDERECO.BAIRRO, ENDERECO.CIDADE, TELEFONE.TIPO, TELEFONE.NUMERO
FROM CLIENTE
INNER JOIN ENDERECO
ON CLIENTE.IDCLIENTE = ENDERECO.ID_CLIENTE
INNER JOIN TELEFONE
ON CLIENTE.IDCLIENTE = TELEFONE.ID_CLIENTE;

+--------+------+---------+----------------+------+-----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO    |
+--------+------+---------+----------------+------+-----------+
| CELIA  | F    | CENTRO  | VITORIA        | CEL  | 659847125 |
| CELIA  | F    | CENTRO  | VITORIA        | RES  | 84776523  |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 554781238 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 95784623  |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 33568897  |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 885746658 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 558796643 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 86547451  |
| CELIA  | F    | CENTRO  | VITORIA        | RES  | 78451236  |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 897456823 |
+--------+------+---------+----------------+------+-----------+

/*PONTERAMENTO*/

SELECT C.NOME, C.SEXO, E.BAIRRO, E.CIDADE, T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;

+--------+------+---------+----------------+------+-----------+
| NOME   | SEXO | BAIRRO  | CIDADE         | TIPO | NUMERO    |
+--------+------+---------+----------------+------+-----------+
| CELIA  | F    | CENTRO  | VITORIA        | CEL  | 659847125 |
| CELIA  | F    | CENTRO  | VITORIA        | RES  | 84776523  |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | CEL  | 554781238 |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | COM  | 95784623  |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | RES  | 33568897  |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 885746658 |
| ANA    | F    | JARDINS | SAO PAULO      | CEL  | 558796643 |
| JOAO   | M    | CENTRO  | RIO DE JANEIRO | COM  | 86547451  |
| CELIA  | F    | CENTRO  | VITORIA        | RES  | 78451236  |
| CARLOS | M    | ESTACIO | RIO DE JANEIRO | CEL  | 897456823 |
+--------+------+---------+----------------+------+-----------+