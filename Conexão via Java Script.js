//Requisitos: NODE JS instalado

//PASSO 1: Criar um projeto NODE
/*
  mkdir meu-projeto //Cria um diretório chamado meu-projeto
  cd meu-projeto //Entra no diretório
  npm init -y //Inicializa um novo projeto NODE com as configs padrão
*/

//PASSO 2: Instalar a biblioteca MySQL
//npm install mysql

/*-----------------------------------------------------------------------------------------------------------------*/

//Importa o módulo MySQL
const mysql = require('mysql');

//Cria a conexão com o banco de dados
const connection = mysql.createConnection({
  host: 'localhost',  // Ou IP do servidor se for remoto
  user: 'root', // Seu usuário do banco de dados
  password: '', // Sua senha do banco de dados
  database: 'formulario' // Nome do banco de dados
});

//Conecta ao banco de dados
connection.connect((err) => {
  if (err) {
    console.error('Erro ao conectar ao banco de dados:', err.stack);
    return;
  }
  console.log('Conectado ao banco de dados como id ' + connection.threadId);
});

//Realiza a consulta retornndo todos os dados cadastrados na tabela clientes
connection.query('SELECT * FROM clientes', (error, results, fields) => {
  if (error) throw error;
  console.log('Resultados da consulta:', results);
});

//Fecha a conexão
connection.end();