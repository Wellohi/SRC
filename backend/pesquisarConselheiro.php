<?php

include_once('./conexao.php');

// obter o nome pesquisado do corpo da solicitação POST
$nomePesquisado = $_POST['nome'];

// preparar a consulta SQL para obter os conselheiros correspondentes
$stmt = $pdo->prepare("SELECT id, nome FROM conselheiro WHERE excluido = 0 AND nome LIKE :nome ORDER BY nome");

// vincular o valor do nome pesquisado ao parâmetro de consulta
$stmt->bindValue(':nome', '%' . $nomePesquisado . '%');

// executar a consulta
$stmt->execute();

// iterar sobre os resultados e gerar a tabela HTML correspondente
foreach ($stmt as $resultado) {
    echo "<tr>";
    echo "<td>" . $resultado['nome'] . "</td>";
    echo "<td><button class='btn-acessar' data-id='" . $resultado['id'] . "'>Acessar</button></td>";
    echo "<td class='campodesativar'>
        <button id='openModal4' class='btn danger btnremove' 
                data-id='" . $resultado['id'] . "'
                data-nome='" . $resultado['nome'] . "'>Desativar</button>
        <input type='hidden' class='id-conselheiro' value='" . $resultado['id'] . "'>
        </td>";
    echo "</tr>";
}
?>

<?php
// Iterando novamente para criar os modais correspondentes a cada conselheiro
foreach ($stmt as $resultado) {
    echo "<dialog id='modal-acessar-" . $resultado['id'] . "' class='modal'>";
    echo "<div class='modal-content'>";
    echo "<h1>" . $resultado['nome'] . "</h1>";
    echo "<h2>" . $resultado['id'] . "</h2>";
    echo "<p>Pontuação total: " . $resultado['Pontuacao_Total'] . "</p>";
    // Adicione aqui as informações que deseja exibir no modal
    echo "</div>";
    echo "</dialog>";
}
?>

<script>
    var btnRemove = document.getElementsByClassName('btnremove');
    for (var i = 0; i < btnRemove.length; i++) {
        btnRemove[i].addEventListener('click', function() {
            var idConselheiro = this.dataset.id;
            var nomeConselheiro = this.dataset.nome;
            document.getElementById('nome-conselheiro').textContent = nomeConselheiro;
            document.getElementById('conselheiro-desativar').value = nomeConselheiro;
            document.getElementById('id-conselheiro-desativar').value = idConselheiro; // novo
            document.getElementById('modal-desativar').showModal();
        });
    }

    var btnsAcessar = document.querySelectorAll('.btn-acessar');
    for (var i = 0; i < btnsAcessar.length; i++) {
        btnsAcessar[i].addEventListener('click', function() {
            var id = this.getAttribute('data-id'); // obtém o ID do resultado correspondente
            var modal = document.querySelector('#modal-acessar-' + id); // encontra o modal correspondente com base no ID
            modal.showModal(); // abre o modal
        });
    }
</script>