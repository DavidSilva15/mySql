<?php
    
    #Esse arquivo de configuração de conexão com o banco de dados deve ser incluso dentro do arquivo que vai fazer as consultas no banco de dados

    #Local onde está o banco de dados
    $dbHost = 'Localhost';
    
    #Nome de usuário do banco de dados
    $dbUsername = 'root';
    
    #Senha do banco de dados
    $dbPassword = '';
    
    #Nome do banco de dados
    $dbName = 'formulario';

    #Variável de conexão que recebe como parâmetros todas as variáveis acima
    $conexao = new mysqli($dbHost, $dbUsername, $dbPassword, $dbName)

    #Checa se há conexão, se sim, informa sucesso, se não, informa erro
    if($conexao->connect_errno){
            echo "Erro";
        }else{
            echo "Conexão efetuada com sucesso";
    }

?>