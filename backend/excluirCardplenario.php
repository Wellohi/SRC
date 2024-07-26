<?php
include_once('./conexao.php');
// Verificar se o ID do card foi enviado na solicitação POST
if (isset($_POST['id_plenario'])) {
    $id_plenario = $_POST['id_plenario'];

    // Preparar e executar a consulta para excluir o card
    $stmt = $pdo->prepare("DELETE FROM plenario WHERE id_plenario = ?");
    $stmt->execute([$id_plenario]);
}
?>