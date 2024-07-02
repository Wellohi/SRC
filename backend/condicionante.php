<?php
include_once('./conexao.php');

// Verificando se a requisição é do tipo POST
if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    // Armazenando o nome da condicionante em uma variável
    $nomeCondicionante = $_POST['adicionarCondicionante'];

    // Armazenando pontuação em uma variável
    $pontuacao = $_POST['pontuacao'];

    // Consulta preparada para inserir um novo registro na tabela "conselheiro" com o nome fornecido
    $sql_insert_condicionante = 'INSERT INTO condicionantes (nomeCondicionante, pontuacao) VALUES (?, ?)';

    // Preparando a consulta com o objeto PDO e armazenando em uma variável
    $stmt_insert_condicionante = $pdo->prepare($sql_insert_condicionante);

    // Executando a consulta preparada com o nome fornecido
    $stmt_insert_condicionante->execute([$nomeCondicionante, $pontuacao]);

    // Redirecionando o usuário de volta para a página anterior após a conclusão da operação
    header("Location: " . $_SERVER["HTTP_REFERER"]);
    exit();


    // Verificando se o campo "adicionarCondicionante" está preenchido
    if (!empty($_POST['adicionarCondicionante'])) {
        // Se os campos "nomeCondicionante e pontuacao" estiverem preenchidos, faça o que precisa ser feito aqui
        // ...

    } else {
        // Se o campo "adicionarCondicionante" não estiver preenchido, exibe uma mensagem de erro e redireciona o usuário de volta para a página anterior
        echo 'Erro ao inserir no banco';
        header("Location: " . $_SERVER["HTTP_REFERER"]);
        exit();
    }
}
