class Modal {

    // Construtor da classe Modal, recebe o ID do modal, o ID do botão que abre e o ID do botão que fecha o modal
  constructor(id, openBtnId, closeBtnId) {
    
        // Atribuição dos elementos HTML às propriedades do objeto
    this.modal = document.getElementById(id);
    this.openBtn = document.getElementById(openBtnId);
    this.closeBtn = document.getElementById(closeBtnId);
    
    // Bind dos métodos openModal e closeModal à instância da classe Modal
    if (this.openBtn && this.closeBtn && this.modal) {
      this.openModal = this.openModal.bind(this);
      this.closeModal = this.closeModal.bind(this);

      // Event listener para abrir o modal quando o botão é clicado
      this.openBtn.addEventListener("click", this.openModal);   
      
       // Event listener para fechar o modal quando o botão é clicado
      this.closeBtn.addEventListener("click", this.closeModal);
    } else {
      console.error(`Elementos com ids ${id}, ${openBtnId}, ${closeBtnId} não encontrados.`);
    }
  }
  // Método para abrir o modal
  openModal() {
    this.modal.showModal();
  }
  // Método para fechar o modal
  closeModal() {
    this.modal.close();
  }
}

// Criação de instâncias da classe Modal para cada modal na página
const modals = [
  // Modal para adicionar conselheiros (conselheiro.php)
  new Modal("modal1", "openModal1", "closeModal1"),

  // Adicionar Condicionante (opcoes.php)
  new Modal("modal3", "openModal3", "closeModal3"),

  // Desativar Conselheiro (conselheiro.php)
  new Modal("modal4", "openModal4", "closeModal4"),

  // Modal para exibir a lista de conselheiros desativados (conselheiro.php)
  new Modal("modal5", "openModal5", "closeModal5"),

  //Modal Adicionar Eventos
  new Modal("modal7", "openModal7", "closeModal7"),

  //Modal Para restaurar Conselheiros (conselheiro.php)
  new Modal("modal10", "openModal10", "closeModal10"),

  // Modal +Informações do Card Eventos
  // new Modal("modal8", "openModal8", "closeModal8"),

  // Modal para adicionar tipo evento (opcoes.php)
  new Modal("modal9", "openModal9", "closeModal9"),

  // Modal Cadastar Evento (Plenário)
  new Modal("modal11", "openModal11", "closeModal11"),

  // Modal Remover Gestor (opcoes.php)
  new Modal("modal12", "openModal12", "closeModal12"),

  // Modal Adicionar Gestor (opcoes.php)
  new Modal("modal13", "openModal13", "closeModal13"),

   // Modal Fechar Ranking (ranking.php)
   new Modal("modal14", null , "closeModal14"),
  
];

