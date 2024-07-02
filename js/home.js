// Seleciona elementos HTML do DOM
const formCadastro = document.getElementById("form-cadastro"); // seleciona o formulário de cadastro
const tabelaCadastro = document.querySelector("#tabela-cadastro tbody"); // seleciona o corpo da tabela de cadastro
const btncadastrar = document.getElementById("btn-cadastrar"); // seleciona o botão de cadastro
//Inicia clicando no botão defaultopen
document.getElementById("defaultOpen").click(); // clica no botão com id "defaultOpen" quando a página é carregada

// btncadastrar.removeAttribute('disabled');

// Função para alternar entre abas
function openTab(evt, tabName) {
  // Esconde todos os elementos com a classe "tabcontent"
  const tabcontents = document.querySelectorAll('.tabcontent');
  tabcontents.forEach(tabcontent => {
    tabcontent.style.display = 'none';
  });

  // Remove a classe "active" de todos os botões com a classe "tablinks"
  const tablinks = document.querySelectorAll('.tablinks');
  tablinks.forEach(tablink => {
    tablink.classList.remove('active');
  });

  // Exibe a aba atual e adiciona a classe "active" ao botão que abriu a aba
  const currentTab = document.getElementById(tabName);
  currentTab.style.display = 'block';
  evt.currentTarget.classList.add('active');
}