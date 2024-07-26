<?php
// incluindo o arquivo de conexão com o banco de dados
require_once('./conexao.php');

// verificando se o formulário foi submetido
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // recuperando os valores do formulário
    $nome = $_POST['nm_gestor'];
    $email = $_POST['tx_email_gestor'];
    $senha = $_POST['bn_senha_gestor'];

    // inserindo os valores no banco de dados
    $sql = "INSERT INTO gestor (nm_gestor, tx_email_gestor, bn_senha_gestor) VALUES (?, ?, ?)";
    $stmt = $pdo->prepare($sql);
    $stmt->execute([$nm_gestor, $tx_email_gestor, $sbn_senha_gestorenha]);

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
