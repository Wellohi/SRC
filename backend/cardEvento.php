<?php
include_once('./conexao.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nome = $_POST['inputNomeDoEvento'];
    $tipo = $_POST['Tipo'];
    $nomeCondicionante = $_POST['Condicionante'];
    $data_evento = $_POST['inputDataDoEvento'];

    $insercao = "INSERT INTO evento (Nome, Tipo, Condicionante, Data_Evento) VALUES (?, ?, ?, ?)";
    $insercao = $pdo->prepare($insercao);
    try {
        $insercao->execute([$nome, $tipo, $nomeCondicionante, $data_evento]);
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
