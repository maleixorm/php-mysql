<?php
require_once "conexao.php";

try {
    $conexao = new PDO($dsn, $user, $pass);
    $query = "SELECT * FROM tb_usuarios;";
    foreach ($conexao->query($query) as $key => $value) {
        print_r($value['nome']);
        echo '<hr>';
    }
} catch (PDOException $e) {
    echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
}