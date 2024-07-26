<?php 

// Consulta para recuperar registros da tabela "conselheiro"
$sql_conselheiro = 'SELECT id_conselheiro, nm_conselheiro FROM conselheiro';

// Executando a consulta com o objeto PDO e armazenando o resultado em um objeto PDOStatement
$stmt_conselheiro = $pdo->query($sql_conselheiro);

// Recuperando todos os resultados da consulta como um array associativo e armazenando em uma variável
$registros_conselheiro = $stmt_conselheiro->fetchAll();

// Consulta para recuperar registros da tabela "evento"
$sql_evento = 'SELECT id_evento, tx_condicionante, tp_reuniao, vl_pontuacao_conselheiro, qtdlimite FROM evento';    

// Inicializando uma variável para armazenar o resultado final
$valor = '';

// Looping através do array de registros de conselheiro e construindo uma string com o ID e nome de cada um
foreach ($registros_conselheiro as $registro) {
    $valor .= $registro['id_conselheiro'] . ' - ' . $registro['nm_conselheiro'] . "\n";
};
