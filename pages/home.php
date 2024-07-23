<?php

require_once('../backend/conexao.php');
include_once('../backend/consultas.php');
// include_once('../backend/insert.php');
// require_once('../backend/dados.php');

session_start();

if (isset($_SESSION["users"]) && is_array($_SESSION["users"])) {
  $adm = $_SESSION["users"][1];
  $email = $_SESSION["users"][0];
} else {
  echo "<script>window.location = '../index.php'</script>";
}

?>


<!DOCTYPE html>
<html lang="pt-BR">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SRC-Eventos</title>
  <link rel="stylesheet" href="../css/home.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<!-- cabecalho / logo -->

<body>



  <div class="cabecalho">
    <img class="logocfc" src="../assets/logo-cfc.svg" alt="">
    <div class="degrad"></div>

    <!-- Tipo de perfil -->
    <div class="tipoperfil">
      <?php if ($adm) : ?>
        <h1> Perfil de Administrador </h1>
        <?php else: ?>
          <h1> Perfil Gestor </h1>

      <?php endif; ?>

    </div>

    <!-- logout -->
    <div class="logout">
      <a id="linksair" href="../backend/logout.php">sair <i class="fa-sharp fa-solid fa-right-from-bracket"></i> </a>
    </div>

  </div>

  <!-- Tab links -->
  <div class="menuLateral">
    <?php include_once('./tablinks.php'); ?>
  </div>

  <!-- Tab content -->

  <!-- <div id="London" class="tabcontent">  </div> -->


  <!-- Page Principal -->



  <div class="focusContent">
    <div class="lineContent">

      <div id="home" class="tabcontent">
        <div class="container-page-principal">
          <img class="bghome" src="../assets/bghome.png" alt="">
        </div>
        <div class="bemvindo">
          <h1>SRC</h1>
          <br>
          <h1>Bem-Vindo</h1>
        </div>
      </div>


      <!-- Page de Cadastro  -->
      <div id="conselheiro" class="tabcontent">
        <?php include_once('./conselheiro.php'); ?>
      </div>

      <!-- Page de opções -->
      <?php if ($adm) : ?>
        <div id="opcoes" class="tabcontent">
          <?php include_once('./opcoes.php'); ?>
        </div>
      <?php endif; ?>

      <!-- Página de informacoes -->
      <div id="plenario" class="tabcontent">
        <?php include_once('./plenario.php'); ?>
      </div>

      <div id="Ranking" class="tabcontent">
        <?php include_once('./ranking.php'); ?>
      </div>

      <!-- Page de Pontuação Acumulada -->
      <div id="eventos" class="tabcontent">
        <?php include_once('./eventos.php'); ?>
      </div>

      <script src="../js/home.js"></script>
      <script src="../js/opcoes.js"></script>

    </div>
  </div>

</body>

</html>