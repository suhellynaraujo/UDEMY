CREATE DATABASE COMERCIO;

USE COMERCIO;

SHOW DATABASES;

CREATE TABLE CLIENTE(
	IDCLIENTE INT PRIMARY KEY AUTO_INCREMENT,
	NOME VARCHAR (30) NOT NULL,
	SEXO ENUM ('M', 'F') NOT NULL,
	EMAIL VARCHAR (50) UNIQUE,
	CFP VARCHAR (15) UNIQUE


)