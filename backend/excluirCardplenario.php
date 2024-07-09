<?php
include_once('./conexao.php');
// Verificar se o ID do card foi enviado na solicitação POST
if (isset($_POST['id'])) {
    $id = $_POST['id'];

    // Preparar e executar a consulta para excluir o card
    $stmt = $pdo->prepare("DELETE FROM plenario WHERE ID = ?");
    $stmt->execute([$id]);
}
?>