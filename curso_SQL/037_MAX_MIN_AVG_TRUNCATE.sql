/*TRUNCATE, SERVE PARA QUEBRAR AS CASAS DECIMAIS*/

SELECT MAX(VALOR) AS MAIOR_VALOR,
	   MIN(VALOR) AS MENOR_VALOR,
	   TRUNCATE (AVG(VALOR), 2) AS MEDIA_VALOR
FROM CURSOS;

+-------------+-------------+-------------+
| MAIOR_VALOR | MENOR_VALOR | MEDIA_VALOR |
+-------------+-------------+-------------+
|     6000.00 |      500.00 |     2820.00 |
+-------------+-------------+-------------+