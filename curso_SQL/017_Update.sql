
/* Usando update para atualizar os dados em uma tabela*/

/* usar sempre o SELECT antes de UPDATE, para ter certeza do dado que será atualizado*/

SELECT NOME, CPF
FROM CLIENTE;

UPDATE CLIENTE
SET NOME = 'MARIA'
WHERE CPF = 111111111

SELECT NOME, EMAIL
FROM CLIENTE;

UPDATE CLIENTE
SET EMAIL = 'MARIA@GMAIL.COM'
WHERE NOME = MARIA;