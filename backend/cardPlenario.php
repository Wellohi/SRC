<?php
include_once('./conexao.php');


if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = $_POST['inputNomePlenario'];
    $data_plenario = $_POST['inputDataPlenario'];
    $vagas_plenario = $_POST['inputVagasPlenario'];
    $tipo = $_POST['tipoEventoPlenario'];
    $nomeCondicionante = $_POST['condicionanteDoEventoPlenario'];
    $local = $_POST['inputLocalPlenario'];

    $insercao = "INSERT INTO plenario (Nome, Data, Vagas, Tipo, Condicionante, Local) VALUES (?, ?, ?, ?, ?, ?)";
    $insercao = $pdo->prepare($insercao);
    try {
        $insercao->execute([$nome, $data_plenario, $vagas_plenario, $tipo, $nomeCondicionante, $local]);
        echo '<meta http-equiv="Refresh" content="0;' . $page . '">';
    } catch (PDOException $e) {
        echo 'Erro ao inserir no banco: ' . $e->getMessage();
        exit();
    }

    if (!empty($_POST['adicionarConselheiro'])) {
        // Se o campo "adicionarConselheiro" estiver preenchido, faça o que precisa ser feito aqui
        // ...
    } else {
        // Se o campo "adicionarConselheiro" não estiver preenchido, exibe uma mensagem de erro específica
        echo 'O campo "adicionarConselheiro" é obrigatório';
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    }
}
