<div?php
require_once('./backend/conexao.php');
?>

<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SRC-Eventos</title>

    <link rel="icon" href="./assets/favicon.ico">
    <!-- CSS LINK -->
    <link rel="stylesheet" href="./css/home.css">    
    <link rel="stylesheet" href="./css/normalize.css">
    <link rel="stylesheet" href="./css/principal.css">

    <!-- Font Awesome CDN Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
        integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="apple-touch-icon" sizes="180x180" href="./assets/apple-touch-icon.png">
    <link rel="icon" type="image/png" sizes="32x32" href="./assets/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="16x16" href="./assets/favicon-16x16.png">
    <link rel="manifest" href="./site.webmanifest">
</head>

<body>
    <header class="header">
        <nav class="navbar">
        <div class="cabecalho">
            <img class="logocfc" src="./assets/logo-cfc.svg" alt="">
        </div>
        </nav>
    </header>

    <main class="main">
        <form method="POST" action="./backend/login.php" class="form">
            <fieldset id="fieldset-index">
                <div class="input-group">
                    <label class="upperLabel" for="">Usuário </label>
                    <input type="text" id="inputemail" name="nome" required>
                </div>
                <div class="input-group">
                    <label class="upperLabel" for="">Senha </label>
                    <input type="password" name="senha" id="inputsenha" autocomplete="off" required>
                </div>
                <div class="btn">
                    <button type="submit">Acessar</button>
                </div>
                <div style="padding-left: 10px; color: #cccccc; font-size: 13px;" >Sistema de Ranqueamento de Conselheiros</div>
                <div class="versao">v 1.0</div>
            </fieldset>
        </form>
    </main>
    <!-- <footer class="footer">
        <span>Sistema de pontuação para conselheiro do CFC - 2024</span>
    </footer> -->

    <script src="./js/script.js"></script>
</body>

</html>