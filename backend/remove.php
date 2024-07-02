<?php

// Importando o arquivo de conexão com o banco de dados
require_once('./conexao.php');

// Verifica se o método de requisição é o POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Obtém o ID do conselheiro a ser removido a partir do formulário
    $id = $_POST['id'];

    // Prepara a consulta para desativar o conselheiro do banco de dados
    $stmt = $pdo->prepare("UPDATE conselheiro SET excluido = 1 WHERE id = ?");
    $stmt->execute([$id]);

    // Verifica se a consulta foi executada com sucesso
    if ($stmt->rowCount() > 0) {
        // Se a consulta for executada com sucesso, redireciona para a página inicial
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    } else {
        // Se a consulta não for executada com sucesso, exibe uma mensagem de erro
        echo "Erro ao desativar conselheiro";
    }
} else {
    // Se o método de requisição não for o POST, redireciona para a página inicial
    header("Location: " . $_SERVER["HTTP_REFERER"]);
    exit();
}
