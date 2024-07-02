<?php
    session_start();
    session_destroy();
    // Destroi a sessão e redireciona para o index
    echo "<script>window.location = '../index.php'</script>";
