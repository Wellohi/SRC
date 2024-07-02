<?php

// Definindo as informações do banco de dado
$database_name = 'mysql:host=localhost;dbname=banco_spc;charset=utf8';
$username = 'admin';
$password = 'admin123';

// Definindo as opções de configuração para a conexão PDO
$options = [
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION, // Trata os erros como exceções
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC, // Retorna os resultados das consultas como arrays associativos
    PDO::ATTR_EMULATE_PREPARES => false, // Desativa a emulação de preparação de consultas preparadas
];

try {
    // Criando uma nova instância da classe PDO com as informações do banco de dados e opções de configuração
    $pdo = new PDO($database_name, $username, $password, $options);
} catch (PDOException $e) {
    // Em caso de erro, relança a exceção PDOException
    throw new PDOException($e->getMessage(), (int)$e->getCode());
    echo 'Erro ao conectar ao banco de dados: ' . $e->getMessage();
}
