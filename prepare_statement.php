<?php

if (!empty($_POST['user']) && !empty($_POST['pass'])) {
    require_once "conexao.php";

    try {
        $conexao = new PDO($dsn, $user, $pass);

        $query = "SELECT * FROM tb_usuarios WHERE email = :user AND senha = :pass";

        $stmt = $conexao->prepare($query);
        
        $stmt->bindValue(':user', $_POST['user']);
        $stmt->bindValue(':pass', $_POST['pass']);
        
        $stmt->execute();
        
        $user = $stmt->fetch();

        echo '<pre>';
            print_r($user);
        echo '</pre>';
    } catch (PDOException $e) {
        echo 'Erro: ' . $e->getCode() . ' - Mensagem: ' . $e->getMessage(); 
    }
}


?>


<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
</head>
<body>
    <form action="sqlinjection.php" method="post">
        <label for="user">Usuário: </label>
        <input type="text" name="user" id="user" placeholder="Usuário">
        <br><br>    
        <label for="pass">Senha: </label>
        <input type="password" name="pass" id="pass" placeholder="Senha">
        <br><br>
        <button type="submit">Entrar</button>
    </form>
</body>
</html>