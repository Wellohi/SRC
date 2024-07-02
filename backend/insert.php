<?php

// Importando o arquivo de conexão com o banco de dados
require_once('../backend/conexao.php');

// Verificando se a requisição é do tipo POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Verificando se o campo "adicionarConselheiro" está preenchido
    if (!empty($_POST['adicionarConselheiro'])) {

        // Armazenando o nome do conselheiro em uma variável
        $nome = $_POST['adicionarConselheiro'];

        // Consulta preparada para inserir um novo registro na tabela "conselheiro" com o nome fornecido
        $sql_insert_conselheiro = 'INSERT INTO conselheiro (nome) VALUES (:n)';

        // Preparando a consulta com o objeto PDO e armazenando em uma variável
        $stmt_insert_conselheiro = $pdo->prepare($sql_insert_conselheiro);

        // Executando a consulta preparada com o nome fornecido
        $stmt_insert_conselheiro->execute([$nome]);

        // Redirecionando o usuário de volta para a página anterior após a conclusão da operação
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    } else {
        // Se o campo "adicionarConselheiro" não estiver preenchido, exibe uma mensagem de erro e redireciona o usuário de volta para a página anterior
        echo 'Erro ao inserir no banco';
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    }
}
