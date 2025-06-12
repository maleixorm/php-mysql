<?php
$dsn = 'mysql:host=localhost;dbname=php_com_pdo';
$user = 'php';
$pass = 123456;

try {
    $conexao = new PDO($dsn, $user, $pass);
} catch (PDOException $e) {
    echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
}

