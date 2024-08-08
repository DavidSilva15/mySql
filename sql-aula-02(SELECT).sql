CREATE DATABASE clientes;

SHOW DATABASES;

CREATE TABLE cadastros.clientes(
	id INT AUTO_INCREMENT PRIMARY KEY.
	nome VARCHAR(100),
	email VARCHAR(100),
	idade INT(2)
);

DESCRIBE cadastros.clientes;

INSERT INTO cadastros.clientes(nome, email, idade);

VALUES('David Silva', 'davidx8686@gmail.com', 27);

#Ordena alfabeticamente em ordem ascendente a tabela com base na coluna nome
SELECT nome, email FROM clientes ORDER BY nome ASC;

#Ordena alfabeticamente em ordem decrescente a tabela com base na coluna nome
SELECT nome, email FROM clientes ORDER BY nome DESC;