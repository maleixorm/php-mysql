<?php
$dsn = 'mysql:host=localhost;dbname=php_com_pdo';
$user = 'php';
$pass = 123456;

try {
    $conexao = new PDO($dsn, $user, $pass);
    
    $query = "CREATE TABLE IF NOT EXISTS tb_usuarios(
        id int not null primary key auto_increment,
        nome varchar(50) not null,
        email varchar(100) not null,
        senha varchar(32) not null
    );";

    $query2 = "INSERT INTO tb_usuarios(nome, email, senha)
        values ('John Connor', 'john@skynet.com', '123456');
    ";

    $conexao->exec($query2);
} catch (PDOException $e) {
    echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
}

