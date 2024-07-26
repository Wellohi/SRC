<?php
include_once('./conexao.php');
// Verificar se o ID do card foi enviado na solicitação POST
if (isset($_POST['id_evento'])) {
    $id_evento = $_POST['id_evento'];

    // Preparar e executar a consulta para excluir o card
    $stmt = $pdo->prepare("DELETE FROM evento WHERE id_evento = ?");
    $stmt->execute([$id_evento]);
}
?>