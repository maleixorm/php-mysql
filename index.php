<?php
require_once "conexao.php";

try {
    $conexao = new PDO($dsn, $user, $pass);
    $query = "SELECT * FROM tb_usuarios;";
    $stmt = $conexao->query($query);
    $listagem = $stmt->fetchAll(PDO::FETCH_ASSOC);
    // echo '<pre>';
    // print_r($listagem);
    // echo '</pre>';
    foreach ($listagem as $key => $value) {
        print_r($value);
        echo '<hr>';
    }
} catch (PDOException $e) {
    echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
}