<?php
$dsn = 'mysql:host=localhost;dbname=php_com_pdo';
$user = 'php';
$pass = 123456;

try {
    $conexao = new PDO($dsn, $user, $pass);
    $query = "SELECT * FROM tb_usuarios ORDER BY nome DESC LIMIT 1;";
    $stmt = $conexao->query($query);
    $listagem = $stmt->fetch(PDO::FETCH_OBJ);
    echo '<pre>';
    print_r($listagem);
    echo '</pre>';
    echo $listagem->nome;
} catch (PDOException $e) {
    echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
}