<?php

include_once('./conexao.php');

// Recebe o ID do conselheiro através de um parâmetro POST
$id_conselheiro = $_POST['id_conselheiro'];

// Prepara a consulta ao banco de dados
$query = $pdo->prepare("SELECT nome, pontuacao_total FROM conselheiro WHERE ID = :id");

// Executa a consulta, passando o ID como parâmetro
$query->execute(array(':id' => $id_conselheiro));

// Recupera os resultados da consulta
$resultado = $query->fetch(PDO::FETCH_ASSOC);

// Cria um array com os dados do conselheiro
$conselheiro = array(
    'nome' => $resultado['nome'],
    'pontuacao_total' => $resultado['pontuacao_total']
);

// Converte o array em JSON e retorna como resposta
header('Content-Type: application/json');
echo json_encode($conselheiro);

?>
