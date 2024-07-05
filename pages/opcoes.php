<link rel="stylesheet" href="../css/opcoes.css">

<div class="container-opcoes">
    <div class="cards">
        <div class="card">
            <div class="card-title">
                <p>Adicionar Novo Gestor</p>
            </div>
            <div class="icone-card">
                <!-- <i class="fa-solid fa-building-user"></i> -->
                <i class="fa-solid fa-user-plus"></i>
            </div>
            <div class="cardfooter">
                <button id="openModal12" class="btn success">Editar</button>
            </div>
        </div>

        <div class="card">
            <div class="card-title">
                <p>Adicionar Tipo do Evento</p>
                <span>(pontuacao)</span>
            </div>

            <div class="icone-card">
                <!-- <i class="fa-solid fa-ambulance"></i> -->
                <i class="fa-solid fa-people-group"></i>
            </div>
            <div class="cardfooter">
                <button id="openModal9" class="btn success">Adicionar</button>
            </div>
        </div>

        <div class="card">
            <div class="card-title">
                <p>Adicionar Condicionante</p>
            </div>
            <div class="icone-card">
                <!-- <i class="fa-solid fa-calendar-days"></i> -->
                <i class="fa-solid fa-calendar-plus"></i>
            </div>
            <div class="cardfooter">
                <button id="openModal3" class="btn success">Adicionar</button>
            </div>
        </div>
    </div>
</div>


<dialog id="modal12" class="modal">
    <div class="modal-content">
    <button id="openModal13" style="align-items: center;" class="btn btn-primary modalbtn">Adicionar Gestor</button>
    <button id="openModal12" style="align-items: center;" class="btn btn-primary modalbtn">Remover Gestor</button>
    <button id="closeModal12" class="btn btn-secondary modalbtn">Fechar</button>
    </div>
</dialog>
<dialog id="modal13" class="modal">
    <div class="modal-content">
        <form method="post" action="../backend/insert_Gestor.php">
            <!-- <p>Deseja adicionar um novo Gestor?</p> -->
            <input type="text" name="nome" id="nome" autocomplete="off" style="width: 100% !important;" placeholder="NOME DO GESTOR" required>
            <br>
            <input type="email" name="email" id="email" style="width: 100% !important;" placeholder="INSIRA O E-MAIL DO GESTOR" required>
            <br>
            <input type="password" name="senha" id="senha" style="width: 100% !important;" placeholder="INSIRA UMA SENHA PARA O GESTOR" required>
            <br>
            <button type="submit" class="btn btn-primary float-left">Adicionar</button>
            <button type="reset" id="closeModal13" class="btn btn-secondary float-right">Fechar</button>
        </form>
    </div>
</dialog>


<dialog id="modal13" class="modal">
    <div class="modal-content">
        <h2>Remover Gestor</h2>
        <form>
            <input type="text">
            <button type="submit" class="modalbtn">Adicionar</button>
            <button type="reset" id="closeModal13" class="modalbtn">Fechar</button>
        </form>
    </div>
</dialog>
<dialog id="modal9" class="modal" style="min-height: 310px; !important">
    <div class="modal-content">
        <!-- <h2>Adicionar Tipo Evento</h2> -->
        <form>
            <input type="text" class="inputOpcoes" placeholder="ADICIONAR TIPO DO EVENTO">
            <button type="submit" class="btn btn-primary modalbtn">Adicionar</button>
            <button type="reset" id="closeModal9" class="btn btn-secondary modalbtn">Fechar</button>
        </form>
    </div>
</dialog>
<dialog id="modal3" class="modal">
    <div class="modal-content">
        <!-- <h2>Adicionar Condicionante</h2> -->
        <form method="post" action="../backend/condicionante.php">
            <h4>Nome da Condicionante</h4>
            <input placeholder="NOME" type="text" class="inputOpcoes" name="adicionarCondicionante" id="adicionarCondicionante">
            <h4>Pontuação da Condicionante</h4>
            <input placeholder="PONTUAÇÃO" type="number" class="inputOpcoes" name="pontuacao" id="pontuacao">
            <button type="submit" id="openModal3" class="btn btn-primary modalbtn">Adicionar</button>
            <button type="reset" id="closeModal3" class="btn btn-secondary modalbtn">Fechar</button>
        </form>
    </div>
</dialog>