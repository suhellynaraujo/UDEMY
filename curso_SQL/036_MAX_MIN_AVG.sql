/* PODENDO SER FEITO EM VÁRIAS FUNÇOES */

SELECT MAX(VALOR) AS MAIOR_VALOR,
	   MIN(VALOR) AS MENOR_VALOR,
	   AVG(VALOR) AS MEDIA_VALOR
FROM CURSOS;

+-------------+-------------+-------------+
| MAIOR_VALOR | MENOR_VALOR | MEDIA_VALOR |
+-------------+-------------+-------------+
|     6000.00 |      500.00 | 2820.000000 |
+-------------+-------------+-------------+