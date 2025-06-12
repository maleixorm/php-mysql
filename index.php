<?php
$dsn = 'mysql:host=localhost;dbname=php_com_pdo';
$user = 'php';
$pass = 123456;

try {
    $conexao = new PDO($dsn, $user, $pass);
    $query = 'Select * from tb_usuarios;';
    $stmt = $conexao->query($query);
    $listagem = $stmt->fetchAll(PDO::FETCH_OBJ);
    echo '<pre>';
    print_r($listagem);
    echo '</pre>';
} catch (PDOException $e) {
    echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
}