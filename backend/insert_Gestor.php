<?php
// incluindo o arquivo de conexão com o banco de dados
require_once('./conexao.php');

// verificando se o formulário foi submetido
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // recuperando os valores do formulário
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $senha = $_POST['senha'];

    // inserindo os valores no banco de dados
    $sql = "INSERT INTO gestor (nome, email, senha) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$nome, $email, $senha]);

    // verificando se a operação foi bem-sucedida
    if ($stmt->rowCount() > 0) {
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    } else {
        // Se o campo "adicionarConselheiro" não estiver preenchido, exibe uma mensagem de erro e redireciona o usuário de volta para a página anterior
        echo 'Erro ao inserir no banco';
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    }
}
