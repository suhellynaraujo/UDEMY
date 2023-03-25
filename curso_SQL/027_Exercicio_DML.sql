/* EXERCICIOS DML */

INSERT INTO CLIENTE VALUES(NULL,'FLAVIO','M','FLAVIO@IG.COM','4657765');
INSERT INTO CLIENTE VALUES(NULL,'ANDRE','M','ANDRE@GLOBO.COM','7687567');
INSERT INTO CLIENTE VALUES(NULL,'GIOVANA','F',NULL,'0876655');
INSERT INTO CLIENTE VALUES(NULL,'KARLA','M','KARLA@GMAIL.COM','545676778');
INSERT INTO CLIENTE VALUES(NULL,'DANIELE','M','DANIELE@GMAIL.COM','43536789');
INSERT INTO CLIENTE VALUES(NULL,'LORENA','M',NULL,'774557887');
INSERT INTO CLIENTE VALUES(NULL,'EDUARDO','M',NULL,'54376457');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','F','ANTONIO@IG.COM','12436767');
INSERT INTO CLIENTE VALUES(NULL,'ANTONIO','M','ANTONIO@UOL.COM','3423565');
INSERT INTO CLIENTE VALUES(NULL,'ELAINE','M','ELAINE@GLOBO.COM','32567763');
INSERT INTO CLIENTE VALUES(NULL,'CARMEM','M','CARMEM@IG.COM','787832213');
INSERT INTO CLIENTE VALUES(NULL,'ADRIANA','F','ADRIANA@GMAIL.COM','88556942');
INSERT INTO CLIENTE VALUES(NULL,'JOICE','F','JOICE@GMAIL.COM','55412256');

/* CADASTRE UM ENDERECO PARA CADA CLIENTE */

INSERT INTO ENDERECO VALUES(NULL,'RUA GUEDES','CASCADURA','B. HORIZONTE','MG',9);
INSERT INTO ENDERECO VALUES(NULL,'RUA MAIA LACERDA','ESTACIO','RIO DE JANEIRO','RJ',10);
INSERT INTO ENDERECO VALUES(NULL,'RUA VISCONDESSA','CENTRO','RIO DE JANEIRO','RJ',11);
INSERT INTO ENDERECO VALUES(NULL,'RUA NELSON MANDELA','COPACABANA','RIO DE JANEIRO','RJ',12);
INSERT INTO ENDERECO VALUES(NULL,'RUA ARAUJO LIMA','CENTRO','VITORIA','ES',13);
INSERT INTO ENDERECO VALUES(NULL,'RUA CASTRO ALVES','LEBLON','RIO DE JANEIRO','RJ',14);
INSERT INTO ENDERECO VALUES(NULL,'AV CAPITAO ANTUNES','CENTRO','CURITIBA','PR',15);
INSERT INTO ENDERECO VALUES(NULL,'AV CARLOS BARROSO','JARDINS','SAO PAULO','SP',16);
INSERT INTO ENDERECO VALUES(NULL,'ALAMEDA SAMPAIO','BOM RETIRO','CURITIBA','PR',17);
INSERT INTO ENDERECO VALUES(NULL,'RUA DA LAPA','LAPA','SAO PAULO','SP',18);
INSERT INTO ENDERECO VALUES(NULL,'RUA GERONIMO','CENTRO','RIO DE JANEIRO','RJ',19);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES PEREIRA','CENTRO','RIO DE JANEIRO','RJ',20);
INSERT INTO ENDERECO VALUES(NULL,'RUA GOMES FREIRE','CENTRO','RIO DE JANEIRO','RJ',8);

/* CADASTRE TELEFONES PARA OS CLIENTES */


INSERT INTO TELEFONE VALUES(NULL,'RES','68976565',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99656675',9);
INSERT INTO TELEFONE VALUES(NULL,'CEL','33567765',11);
INSERT INTO TELEFONE VALUES(NULL,'CEL','88668786',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','55689654',11);
INSERT INTO TELEFONE VALUES(NULL,'COM','88687979',12);
INSERT INTO TELEFONE VALUES(NULL,'COM','88965676',13);
INSERT INTO TELEFONE VALUES(NULL,'CEL','89966809',15);
INSERT INTO TELEFONE VALUES(NULL,'COM','88679978',16);
INSERT INTO TELEFONE VALUES(NULL,'CEL','99655768',17);
INSERT INTO TELEFONE VALUES(NULL,'RES','89955665',18);
INSERT INTO TELEFONE VALUES(NULL,'RES','77455786',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','89766554',19);
INSERT INTO TELEFONE VALUES(NULL,'RES','77755785',8);
INSERT INTO TELEFONE VALUES(NULL,'COM','44522578',8);

/* RELATORIO GERAL DE TODOS OS CLIENTES */

/* RELATORIO GERAL DE TODOS OS CLIENTES (TELEFONE E ENDERECO) */

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
DESC TELEFONE;
+------------+-------------------------+------+-----+---------+----------------+
| Field      | Type                    | Null | Key | Default | Extra          |
+------------+-------------------------+------+-----+---------+----------------+
| IDTELEFONE | int(11)                 | NO   | PRI | NULL    | auto_increment |
| TIPO       | enum('RES','COM','CEL') | NO   |     | NULL    |                |
| NUMERO     | varchar(10)             | NO   |     | NULL    |                |
| ID_CLIENTE | int(11)                 | YES  | MUL | NULL    |                |
+------------+-------------------------+------+-----+---------+----------------+

DESC CLIENTE;

ALTER TABLE CLIENTE
CHANGE CFP CPF VARCHAR(15) UNIQUE;

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
       E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
       T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE;


+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 | RUA URUGUAINA      | CENTRO     | VITORIA        | ES     | CEL  | 659847125 |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 | RUA URUGUAINA      | CENTRO     | VITORIA        | ES     | RES  | 84776523  |
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 554781238 |
|         2 | CARLOS  | M    | CARLOS@GMAIL.COM  | 67495137854 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 95784623  |
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 33568897  |
|         3 | ANA     | F    | ANA@GMAIL.COM     | 96458231749 | RUA PRES. VARGAS   | JARDINS    | SAO PAULO      | SP     | CEL  | 885746658 |
|         3 | ANA     | F    | ANA@GMAIL.COM     | 96458231749 | RUA PRES. VARGAS   | JARDINS    | SAO PAULO      | SP     | CEL  | 558796643 |
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 86547451  |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 | RUA URUGUAINA      | CENTRO     | VITORIA        | ES     | RES  | 78451236  |
|         2 | CARLOS  | M    | CARLOS@GMAIL.COM  | 67495137854 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 897456823 |
|         9 | GIOVANA | F    | NULL              | 0876655     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565  |
|         9 | GIOVANA | F    | NULL              | 0876655     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675  |
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
|        12 | LORENA  | M    | NULL              | 774557887   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        13 | EDUARDO | M    | NULL              | 54376457    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
|        15 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
|        16 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
|        17 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
|        18 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
|        19 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
|        19 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
|         8 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|         8 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+

/* RELATORIO DE HOMENS */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
       E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
       T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'M';

+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 554781238 |
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 33568897  |
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 | RUA CAPITAO HERMES | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 86547451  |
|         2 | CARLOS  | M    | CARLOS@GMAIL.COM  | 67495137854 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | COM  | 95784623  |
|         2 | CARLOS  | M    | CARLOS@GMAIL.COM  | 67495137854 | RUA ALFANDEGA      | ESTACIO    | RIO DE JANEIRO | RJ     | CEL  | 897456823 |
|         8 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77755785  |
|         8 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     | RUA GOMES FREIRE   | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 44522578  |
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
|        12 | LORENA  | M    | NULL              | 774557887   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        13 | EDUARDO | M    | NULL              | 54376457    | RUA ARAUJO LIMA    | CENTRO     | VITORIA        | ES     | COM  | 88965676  |
|        15 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     | AV CAPITAO ANTUNES | CENTRO     | CURITIBA       | PR     | CEL  | 89966809  |
|        16 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
|        17 | CARMEM  | M    | CARMEM@IG.COM     | 787832213   | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+

SELECT * FROM CLIENTE
WHERE IDCLIENTE IN (11, 12,16, 17);

+-----------+---------+------+-------------------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF       |
+-----------+---------+------+-------------------+-----------+
|        11 | DANIELE | M    | DANIELE@GMAIL.COM | 43536789  |
|        12 | LORENA  | M    | NULL              | 774557887 |
|        16 | ELAINE  | M    | ELAINE@GLOBO.COM  | 32567763  |
|        17 | CARMEM  | M    | CARMEM@IG.COM     | 787832213 |
+-----------+---------+------+-------------------+-----------+

UPDATE CLIENTE 
SET SEXO = 'F'
WHERE IDCLIENTE IN (10,11, 12,16, 17);

SELECT * FROM CLIENTE;
+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 |
|         2 | CARLOS  | M    | CARLOS@GMAIL.COM  | 67495137854 |
|         3 | ANA     | F    | ANA@GMAIL.COM     | 96458231749 |
|         4 | CLARA   | F    | NULL              | 98546732164 |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 |
|         6 | MARIA   | F    | MARIA@GMAIL.COM   | 12345678979 |
|         7 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|         8 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|         9 | GIOVANA | F    | NULL              | 0876655     |
|        10 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |
|        11 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    |
|        12 | LORENA  | F    | NULL              | 774557887   |
|        13 | EDUARDO | M    | NULL              | 54376457    |
|        14 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        15 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        16 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |
|        17 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |
|        18 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        19 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+

/* RELATORIO DE MULHERES */

SELECT C.IDCLIENTE, C.NOME, C.SEXO, C.EMAIL, C.CPF,
       E.RUA, E.BAIRRO, E.CIDADE, E.ESTADO,
       T.TIPO, T.NUMERO
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';

+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         | RUA                | BAIRRO     | CIDADE         | ESTADO | TIPO | NUMERO    |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+
|         3 | ANA     | F    | ANA@GMAIL.COM     | 96458231749 | RUA PRES. VARGAS   | JARDINS    | SAO PAULO      | SP     | CEL  | 885746658 |
|         3 | ANA     | F    | ANA@GMAIL.COM     | 96458231749 | RUA PRES. VARGAS   | JARDINS    | SAO PAULO      | SP     | CEL  | 558796643 |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 | RUA URUGUAINA      | CENTRO     | VITORIA        | ES     | CEL  | 659847125 |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 | RUA URUGUAINA      | CENTRO     | VITORIA        | ES     | RES  | 84776523  |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 | RUA URUGUAINA      | CENTRO     | VITORIA        | ES     | RES  | 78451236  |
|         9 | GIOVANA | F    | NULL              | 0876655     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | RES  | 68976565  |
|         9 | GIOVANA | F    | NULL              | 0876655     | RUA GUEDES         | CASCADURA  | B. HORIZONTE   | MG     | CEL  | 99656675  |
|        11 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 33567765  |
|        11 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | CEL  | 88668786  |
|        11 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    | RUA VISCONDESSA    | CENTRO     | RIO DE JANEIRO | RJ     | COM  | 55689654  |
|        12 | LORENA  | F    | NULL              | 774557887   | RUA NELSON MANDELA | COPACABANA | RIO DE JANEIRO | RJ     | COM  | 88687979  |
|        16 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    | AV CARLOS BARROSO  | JARDINS    | SAO PAULO      | SP     | COM  | 88679978  |
|        17 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   | ALAMEDA SAMPAIO    | BOM RETIRO | CURITIBA       | PR     | CEL  | 99655768  |
|        18 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    | RUA DA LAPA        | LAPA       | SAO PAULO      | SP     | RES  | 89955665  |
|        19 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 77455786  |
|        19 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    | RUA GERONIMO       | CENTRO     | RIO DE JANEIRO | RJ     | RES  | 89766554  |
+-----------+---------+------+-------------------+-------------+--------------------+------------+----------------+--------+------+-----------+

UPDATE CLIENTE 
SET SEXO = 'M'
WHERE IDCLIENTE IN (15);

SELECT * FROM CLIENTE;
+-----------+---------+------+-------------------+-------------+
| IDCLIENTE | NOME    | SEXO | EMAIL             | CPF         |
+-----------+---------+------+-------------------+-------------+
|         1 | JOAO    | M    | JOAO@GMAIL.COM    | 76576576576 |
|         2 | CARLOS  | M    | CARLOS@GMAIL.COM  | 67495137854 |
|         3 | ANA     | F    | ANA@GMAIL.COM     | 96458231749 |
|         4 | CLARA   | F    | NULL              | 98546732164 |
|         5 | CELIA   | F    | CELIA@GMAIL.COM   | 65478932146 |
|         6 | MARIA   | F    | MARIA@GMAIL.COM   | 12345678979 |
|         7 | FLAVIO  | M    | FLAVIO@IG.COM     | 4657765     |
|         8 | ANDRE   | M    | ANDRE@GLOBO.COM   | 7687567     |
|         9 | GIOVANA | F    | NULL              | 0876655     |
|        10 | KARLA   | F    | KARLA@GMAIL.COM   | 545676778   |
|        11 | DANIELE | F    | DANIELE@GMAIL.COM | 43536789    |
|        12 | LORENA  | F    | NULL              | 774557887   |
|        13 | EDUARDO | M    | NULL              | 54376457    |
|        14 | ANTONIO | F    | ANTONIO@IG.COM    | 12436767    |
|        15 | ANTONIO | M    | ANTONIO@UOL.COM   | 3423565     |
|        16 | ELAINE  | F    | ELAINE@GLOBO.COM  | 32567763    |
|        17 | CARMEM  | F    | CARMEM@IG.COM     | 787832213   |
|        18 | ADRIANA | F    | ADRIANA@GMAIL.COM | 88556942    |
|        19 | JOICE   | F    | JOICE@GMAIL.COM   | 55412256    |
+-----------+---------+------+-------------------+-------------+

/*QUANTIDADE DE HOMENS E MULHERES*/

SELECT COUNT(*) AS QUANTIDADE , SEXO
FROM CLIENTE
GROUP BY SEXO;

+------------+------+
| QUANTIDADE | SEXO |
+------------+------+
|          6 | M    |
|         13 | F    |
+------------+------+

/* IDS E EMAIL DAS MULHERES QUE MOREM NO CENTRO DO RIO DE JANEIRO E 
NAO TENHAM CELULAR */

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO 
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|         1 | JOAO@GMAIL.COM    | JOAO    | M    |
|         1 | JOAO@GMAIL.COM    | JOAO    | M    |
|         1 | JOAO@GMAIL.COM    | JOAO    | M    |
|         2 | CARLOS@GMAIL.COM  | CARLOS  | M    |
|         2 | CARLOS@GMAIL.COM  | CARLOS  | M    |
|         3 | ANA@GMAIL.COM     | ANA     | F    |
|         3 | ANA@GMAIL.COM     | ANA     | F    |
|         5 | CELIA@GMAIL.COM   | CELIA   | F    |
|         5 | CELIA@GMAIL.COM   | CELIA   | F    |
|         5 | CELIA@GMAIL.COM   | CELIA   | F    |
|         8 | ANDRE@GLOBO.COM   | ANDRE   | M    |
|         8 | ANDRE@GLOBO.COM   | ANDRE   | M    |
|         9 | NULL              | GIOVANA | F    |
|         9 | NULL              | GIOVANA | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        12 | NULL              | LORENA  | F    |
|        13 | NULL              | EDUARDO | M    |
|        15 | ANTONIO@UOL.COM   | ANTONIO | M    |
|        16 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        17 | CARMEM@IG.COM     | CARMEM  | F    |
|        18 | ADRIANA@GMAIL.COM | ADRIANA | F    |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    |
+-----------+-------------------+---------+------+


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO 
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F';
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|         3 | ANA@GMAIL.COM     | ANA     | F    |
|         3 | ANA@GMAIL.COM     | ANA     | F    |
|         5 | CELIA@GMAIL.COM   | CELIA   | F    |
|         5 | CELIA@GMAIL.COM   | CELIA   | F    |
|         5 | CELIA@GMAIL.COM   | CELIA   | F    |
|         9 | NULL              | GIOVANA | F    |
|         9 | NULL              | GIOVANA | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        12 | NULL              | LORENA  | F    |
|        16 | ELAINE@GLOBO.COM  | ELAINE  | F    |
|        17 | CARMEM@IG.COM     | CARMEM  | F    |
|        18 | ADRIANA@GMAIL.COM | ADRIANA | F    |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    |
+-----------+-------------------+---------+------+

SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO 
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO';
+-----------+-------------------+---------+------+
| IDCLIENTE | EMAIL             | NOME    | SEXO |
+-----------+-------------------+---------+------+
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    |
+-----------+-------------------+---------+------+


SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND TIPO = 'RES' OR TIPO = 'COM';

+-----------+-------------------+---------+------+------+------------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO     | CIDADE         |
+-----------+-------------------+---------+------+------+------------+----------------+
|         2 | CARLOS@GMAIL.COM  | CARLOS  | M    | COM  | ESTACIO    | RIO DE JANEIRO |
|         1 | JOAO@GMAIL.COM    | JOAO    | M    | COM  | CENTRO     | RIO DE JANEIRO |
|        11 | DANIELE@GMAIL.COM | DANIELE | F    | COM  | CENTRO     | RIO DE JANEIRO |
|        12 | NULL              | LORENA  | F    | COM  | COPACABANA | RIO DE JANEIRO |
|        13 | NULL              | EDUARDO | M    | COM  | CENTRO     | VITORIA        |
|        16 | ELAINE@GLOBO.COM  | ELAINE  | F    | COM  | JARDINS    | SAO PAULO      |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    | RES  | CENTRO     | RIO DE JANEIRO |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    | RES  | CENTRO     | RIO DE JANEIRO |
|         8 | ANDRE@GLOBO.COM   | ANDRE   | M    | COM  | CENTRO     | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+------------+----------------+



SELECT C.IDCLIENTE, C.EMAIL, C.NOME, C.SEXO, T.TIPO, E.BAIRRO, E.CIDADE
FROM CLIENTE C
INNER JOIN ENDERECO E
ON C.IDCLIENTE = E.ID_CLIENTE
INNER JOIN TELEFONE T
ON C.IDCLIENTE = T.ID_CLIENTE
WHERE SEXO = 'F'
AND BAIRRO = 'CENTRO' AND CIDADE = 'RIO DE JANEIRO'
AND (TIPO = 'RES' OR TIPO = 'COM');
+-----------+-------------------+---------+------+------+--------+----------------+
| IDCLIENTE | EMAIL             | NOME    | SEXO | TIPO | BAIRRO | CIDADE         |
+-----------+-------------------+---------+------+------+--------+----------------+
|        11 | DANIELE@GMAIL.COM | DANIELE | F    | COM  | CENTRO | RIO DE JANEIRO |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    | RES  | CENTRO | RIO DE JANEIRO |
|        19 | JOICE@GMAIL.COM   | JOICE   | F    | RES  | CENTRO | RIO DE JANEIRO |
+-----------+-------------------+---------+------+------+--------+----------------+