#Comando para criar um banco de dados
CREATE DATABASE clientes;

#Lista todos os bancos de dados disponíveis no servidor MySql
SHOW DATABASES;

#Cria uma tabela inserindo os campos indicados pelo usuário
CREATE TABLE cadastros.clientes (
	
	#Campo id do tipo inteiro (INT) e o AUTO_INCREMENT representa que a cada novo cadastro, será adicionado o id anterior +1
	id INT AUTO_INCREMENT PRIMARY KEY, #O PRIMARY KEY determina que cada cadastro será único na tabela
	
	#VARCHAR representa que, apesar do número de carac. ser 100, o campo só vai ocupar a quantidade de acordo com o seu tamanho
	#OBS: O CHAR() significa que o campo sempre será ocupado pelo tamanho definido
	nome VARCHAR(100),
	email VARCHAR(100),
	
	#O INT representa que o campo vai receber números do tipo INTEIRO
	idade INT(2)
);

#Exibe a tabela clientes dentro do banco de dados cadastros
DESCRIBE cadastros.clientes;

#O comando INSERT INTO realiza o cadastro de informações nos respectivos campos indicados dentro do parêntese(que correspondem aos campos da tabela em questão)
#OBS: Comando VALUES citado abaixo deve estar na mesma linha do comando INSERT INTO
INSERT INTO cadastros.clientes(nome, email, idade)

#O comando VALUES define quais valores serão enviados para a tabela
VALUES('David', 'davidsilva@gmail.com', 26);

#OBS: Mudar para ASPAS simples caso necessário

#SELECT seleciona, (*)indica todos os dados (colunas e linhas), FROM indica da onde
#Ou seja, o comando abaixo indica a seleção de todas as informações da tabela 'cadastros' no banco de dados 'clientes'
SELECT * FROM cadastros.clientes;

#O comando abaixo informa a seleção da coluna nome e email da tabela 'clientes'
SELECT nome, email FROM cadastros.clientes;

#Indica que será feita uma atualização na tabela clientes
UPDATE cadastros.clientes;

#Especifica qual coluna será atualizada e o novo valor
SET email = 'novoemail@gmail.com';

#O comando WHERE indica a linha onde o email deve ser atualizado, no caso, a linha onde a coluna nome é igual a 'David Silva'
WHERE nome = 'David Silva';