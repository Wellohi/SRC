<script>
    const formularioAdicionarEvento = document.getElementById(
        "formularioAdicionarEvento"
    );

    formularioAdicionarEvento.addEventListener("submit", function(event) {
        // event.preventDefault();

        const nomeDoEvento = document.getElementById("inputNomeDoEvento").value;
        const dataDoEvento = document.getElementById("inputDataDoEvento").value;
        const tipoDoEvento = document.getElementById("tipoEvento").value;
        const condicionante =document.getElementById("eventoCondicionante").value;
        const pontuacaoDoEvento = document.getElementById("pontuacao").value;
        const tipoEventoSpan = document.createElement("span");
        tipoEventoSpan.textContent = "Tipo de Evento:";

        function validarCampo(campo, mensagem) {
            if (campo.trim() === "") {
                alert(mensagem);
                return false;
            }
            return true;
        }

        if (!validarCampo(nomeDoEvento, "Por favor, preencha o nome do evento.")) {
            return;
        }

        if (!validarCampo(dataDoEvento, "Por favor, preencha a data do evento.")) {
            return;
        }

        if (!validarCampo(tipoDoEvento, "Por favor, preencha o tipo do evento.")) {
            return;
        }

        const tipoEventoInput = document.createElement("input");
        tipoEventoInput.type = "text";
        tipoEventoInput.value = tipoDoEvento; 
        tipoEventoInput.disabled = true;
        tipoEventoInput.classList.add("info-eventos");

        const containerCardsEventos = document.getElementById(
            "container-cards-eventos"
        );

        const cardEvento = document.createElement("div");
        cardEvento.classList.add("card-evento");

        const nomeDoEventoSpan = document.createElement("span");
        nomeDoEventoSpan.textContent = "Nome do Evento:";

        const nomeDoEventoInput = document.createElement("input");
        nomeDoEventoInput.type = "text";
        nomeDoEventoInput.value = nomeDoEvento;
        nomeDoEventoInput.disabled = true;
        nomeDoEventoInput.classList.add("info-eventos");

        const condicionanteSpan = document.createElement("span");
        condicionanteSpan.textContent = "Condicionante:";

        const condicionanteInput = document.createElement("input");
        condicionanteInput.type = "text";
        condicionanteInput.value = eventoCondicionante;
        condicionanteInput.disabled = true;
        condicionanteInput.classList.add("info-eventos");

        const dataSpan = document.createElement("span");
        dataSpan.textContent = "Data:";

        const dataInput = document.createElement("input");
        dataInput.type = "date";
        dataInput.value = dataDoEvento;
        dataInput.disabled = true;
        dataInput.classList.add("info-eventos");
        
        const pontuacaoSpan = document.createElement("span");
        pontuacaoSpan.textContent = "Pontuação:";

        const pontuacaoInput = document.createElement("input");
        pontuacaoInput.type = "number";
        pontuacaoInput.value = pontuacaoDoEvento;
        pontuacaoInput.disabled = true;
        pontuacaoInput.classList.add("info-eventos");

        const footerCardEvento = document.createElement("div");
        footerCardEvento.classList.add("footer-card-evento");

        const acessarButton = document.createElement("button");
        acessarButton.classList.add("btn", "info");
        acessarButton.textContent = "Acessar";

        const modalAcessar = document.getElementById("modal8");
        acessarButton.addEventListener("click", function() {
            modalAcessar.showModal();
        });

        footerCardEvento.appendChild(acessarButton);

        cardEvento.appendChild(nomeDoEventoSpan);
        cardEvento.appendChild(nomeDoEventoInput);
        cardEvento.appendChild(dataSpan);
        cardEvento.appendChild(dataInput);
        cardEvento.appendChild(pontuacaoSpan);
        cardEvento.appendChild(pontuacaoInput);
        cardEvento.appendChild(condicionanteSpan);
        cardEvento.appendChild(condicionanteInput);
        cardEvento.appendChild(nomeDoEventoSpan);
        cardEvento.appendChild(nomeDoEventoInput);
        cardEvento.appendChild(tipoEventoSpan);
        cardEvento.appendChild(tipoEventoInput);
        cardEvento.appendChild(dataSpan);
        cardEvento.appendChild(dataInput);
        cardEvento.appendChild(pontuacaoSpan);
        cardEvento.appendChild(pontuacaoInput);
        cardEvento.appendChild(condicionanteSpan);
        cardEvento.appendChild(condicionanteInput);
        cardEvento.appendChild(footerCardEvento);
        cardEvento.appendChild(footerCardEvento);

        containerCardsEventos.appendChild(cardEvento);
        formularioAdicionarEvento.reset();
        // event.submit(this.formularioAdicionarEvento);
    });

    function openModalEvento(id, nome, tipo, condicionante, data, pontuacao) {
    // Definir os valores no modal
    // document.querySelector('#eventosTable #eventoId').textContent = id;
    // document.querySelector('#eventosTable #eventoNome').textContent = nome;
    // document.querySelector('#eventosTable #eventoTipo').textContent = tipo;
    // document.querySelector('#eventosTable #eventoCondicionante').textContent = condicionante;
    // document.querySelector('#eventosTable #eventoData').textContent = data;
    // document.querySelector('#eventosTable #eventoPontuacao').textContent = pontuacao;

        // Abrir o modal
        document.querySelector('#modal-acessarEvento').showModal();
    }

    function closeModalEvento() {
        document.querySelector('#modal-acessarEvento').close();
    }

    function excluirCard(id) {
        if (confirm("O evento será excluido PERMANENTEMENTE, você deseja excluir?")) {
            // Enviar solicitação de exclusão para arquivo PHP
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    // Atualizar a lista de cards após a ex+usão
                    location.reload();
                }
            };
            xhttp.open("POST", "../backend/excluirCard.php", true);
            xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("id=" + id);
        }
    }

    
    function excluirCardPlenario(id) {
    if (confirm("O plenario será excluido PERMANENTEMENTE, você deseja excluir?")) {
        // Enviar solicitação de exclusão para arquivo PHP
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {
                // Atualizar a lista de cards após a ex+usão
                location.reload();
            }
        };
        xhttp.open("POST", "../backend/excluirCardplenario.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("id=" + id);
    }
}


    function buscar() {
        //Pegar o input de busca
        const campoDeBusca = document.getElementById('campoDeBusca');
        const valorBusca = campoDeBusca.value.toLowerCase();

        //Pegar todos os cards da classe (.card-evento)
        const cardsEvento = document.querySelectorAll('.card-evento');
        for (let i = 0; i < cardsEvento.length; i++) {
            const card = cardsEvento[i];
            const nomeEvento = card.querySelector('input[type="text"]').value.toLowerCase();
            if (nomeEvento.includes(valorBusca)) {
                card.style.display = '';
            } else {
                card.style.display = 'none';
            }
        }
    }
</script>