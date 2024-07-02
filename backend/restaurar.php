<?php
// Incluir o arquivo de conexão com o banco de dados
include './conexao.php';

// Verifica se o ID do conselheiro foi enviado via POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $idConselheiro = $_POST['id-ativar'];
    $stmt = $pdo->prepare("UPDATE conselheiro SET excluido = 0 WHERE id = ?");
    if ($stmt->execute([$idConselheiro])) {
        // conselheiro ativado com sucesso
        header("Location: " . $_SERVER["HTTP_REFERER"]);
    } else {
        echo 'Erro ao ativar conselheiro!';
        exit();
    }
}
