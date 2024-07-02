<?php

// Importando o arquivo de conexão com o banco de dados
require_once('./conexao.php');

// Verificando se as variáveis POST "nome" e "senha" existem e se o objeto PDO também existe
if (isset($_POST["nome"]) && isset($_POST["senha"]) && $pdo != null) {

    // Preparando uma consulta preparada para buscar um registro na tabela "usuarios" com o nome e a senha fornecidos
    $query = $pdo->prepare("SELECT * FROM usuarios WHERE nome = ? AND senha = ?");
    $query->execute(array($_POST["nome"], $_POST["senha"]));

    //TO DO: implementar integração com sistema SSO
    //TO DO: Salvar usuário na sessão
    
    // Verificando se a consulta retornou algum resultado
    if ($query->rowCount()) {

        // Armazenando as informações do usuário encontrado em uma variável
        $user = $query->fetchAll(PDO::FETCH_ASSOC)[0];
        // print_r($user);
        
        // Iniciando uma sessão e armazenando o nome do usuário e se ele é um administrador em um array na variável $_SESSION
        session_start();
        $_SESSION["users"] = array($user["nome"], $user["adm"]);

        // Redirecionando o usuário para a página home.php
        echo "<script>window.location = '../pages/home.php'</script>";

    } else {
        // Se o usuário não for encontrado na tabela, redireciona o usuário de volta para a página de login
        echo "<script>window.location = '../index.php'</script>";
    }

} else {
    // Se as variáveis POST "nome" e "senha" não existirem ou se o objeto PDO não existir, redireciona o usuário de volta para a página de login
    echo "<script>window.location = '../index.php'</script>";
}
