<link rel="stylesheet" href="../css/conselheiros.css">
<link rel="stylesheet" href="../css/opcoes.css">
<link rel="stylesheet" href="../css/principal.css">
<link rel="stylesheet" href="../css/reset.css">

<!-- <div class="divisao">
    <input type="text" id="campoDeBuscaPlenario" onkeyup="buscarNoCampoPlenario()" placeholder="Digite o Nome Do Conselheiro...">
</div> -->

<div class="group-buttons">
  <button class="btn btn-ranking" onclick="generateReport()">Gerar Relatório</button>
</div>

<br>

<div class="container-table">
    <div style="width: 100%;" class="tableOverflow">
        <table id="conselheirosTable" style="width: 100%;">
          <tr class="head-tab">
            <th onclick="sortTableByName()" class="classificando"> Nome do Conselheiro <i class="fa-solid fa-arrow-up-z-a"></i> </th>
            <th onclick="sortTableByScore()" class="classificando"> Pontuação <i class="fa-solid fa-arrow-up-wide-short"></i> </th> 
          </tr>
          <?php
          // Preparando a consulta
          $stmt = $pdo->prepare("SELECT * FROM conselheiro");

          // Executando a consulta
          $stmt->execute();

          // Obtendo os resultados
          $resultados = $stmt->fetchAll();

          foreach ($resultados as $conselheiro) {
            echo "<tr>";
            echo "<td><a href=\"#\" onclick=\"openModal('" . $conselheiro['Nome'] . "', " . $conselheiro['Pontuacao_Total'] . ")\">" . $conselheiro['Nome'] . "</a></td>";
            echo "<td>" . $conselheiro['Pontuacao_Total'] . "</td>";
            echo "</tr>";
          } ?>
        </table>
    </div>
</div>
<br>''

<dialog id="modal-acessarRankingConselheiro" class="modal">
  <div class="modal-content">
    <h1 id="conselheiroNome"></h1>
    <p><strong>Pontuação:</strong> <span id="conselheiroPontuacao"></span></p>
    <button type='button' onclick="closeModal()" class='btn btn-secondary float-right'>Fechar</button>
  </div>
</dialog>

<script>
  const conselheiroLinks = document.querySelectorAll('.conselheiro-link');
  const modalAcessarRankingConselheiro = document.querySelector('#modal-acessarRankingConselheiro');
  const conselheiroNome = document.querySelector('#conselheiroNome');
  const conselheiroPontuacao = document.querySelector('#conselheiroPontuacao');

  // Function to show the modal (for demonstration purposes)
  function showModal() {
    document.getElementById('modal-acessarRankingConselheiro').style.display = 'block';
  }

  // Function to close the modal
  function closeModal() {
  const modal = document.getElementById('modal-acessarRankingConselheiro').close();
   // Use the modal.close() method to truly close the modal
  }

  // Event listener for the close button
  document.getElementById('closeModal').addEventListener('click', closeModal);

  // Show the modal when the page loads (for demonstration purposes)
  window.onload = showModal;

  conselheiroLinks.forEach(link => {
    link.addEventListener('click', (event) => {
      event.preventDefault();
      const conselheiroId = event.target.dataset.id;
      // Fazer uma requisição AJAX para obter os dados do conselheiro com o ID correspondente
      // e preencher as informações do modal com os dados obtidos
      // ...
      conselheiroNome.innerText = nomeDoConselheiro; // Substitua "nomeDoConselheiro" pelo nome obtido na requisição AJAX
      conselheiroPontuacao.innerText = pontuacaoDoConselheiro; // Substitua "pontuacaoDoConselheiro" pela pontuação obtida na requisição AJAX
      modalAcessarRankingConselheiro.showModal();
    });
  });

  function openModal(nome, pontuacao) {
  const modal = document.getElementById('modal-acessarRankingConselheiro');
  const nomeElement = modal.querySelector('#conselheiroNome');
  const pontuacaoElement = modal.querySelector('#conselheiroPontuacao');

  nomeElement.textContent = nome;
  pontuacaoElement.textContent = pontuacao;

  modal.showModal();
}

  function sortTableByName() {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById("conselheirosTable");
    switching = true;
    while (switching) {
      switching = false;
      rows = table.rows;
      for (i = 1; i < (rows.length - 1); i++) {
        shouldSwitch = false;
        x = rows[i].getElementsByTagName("TD")[0];
        y = rows[i + 1].getElementsByTagName("TD")[0];
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          shouldSwitch = true;
          break;
        }
      }
      if (shouldSwitch) {
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
      }
    }
  }

  function sortTableByScore() {
    var table, rows, switching, i, x, y, shouldSwitch;
    table = document.getElementById("conselheirosTable");
    switching = true;
    while (switching) {
      switching = false;
      rows = table.rows;
      for (i = 1; i < (rows.length - 1); i++) {
        shouldSwitch = false;
        x = rows[i].getElementsByTagName("TD")[1];
        y = rows[i + 1].getElementsByTagName("TD")[1];
        if (parseInt(x.innerHTML) < parseInt(y.innerHTML)) {
          shouldSwitch = true;
          break;
        }
      }
      if (shouldSwitch) {
        rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
        switching = true;
      }
    }
  }

  function generateReport() {
    // Cria uma nova janela
    const novaJanela = window.open("", "janela_exemplo", "width=500,height=400,center=yes");

    // Insere o HTML da tabela de conselheiros na nova janela
    const tabelaDeConselheiros = document.querySelector("#conselheirosTable").outerHTML;
    novaJanela.document.write(tabelaDeConselheiros);

    // Copia o CSS para a nova janela
    const linksCSS = document.querySelectorAll('link[rel="stylesheet"]');
    linksCSS.forEach(function(link) {
      const novoLink = novaJanela.document.createElement("link");
      novoLink.setAttribute("rel", "stylesheet");
      novoLink.setAttribute("href", link.getAttribute("href"));
      novaJanela.document.head.appendChild(novoLink);
    });

    // Oculta os elementos dentro da nova janela
    novaJanela.addEventListener("load", function() {
      const tab = novaJanela.document.querySelector(".tab");
      const cabecalho = novaJanela.document.querySelector(".cabecalho");
      const botoes = novaJanela.document.querySelector(".group-buttons");
      tab.style.display = "none";
      cabecalho.style.display = "none";
      botoes.style.display = "none";
    });

    // Atrasa a impressão para garantir que o CSS seja carregado
    setTimeout(function() {
      novaJanela.print();
    }, 2000);
  }
</script>