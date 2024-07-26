<link rel="stylesheet" href="../css/eventos.css">      

        <!-- Atualizado <input type="text" id="campoDeBusca" onkeyup="buscar()" placeholder="Digite o Nome Do evento..."> -->
        <!-- <div class="divisao">
            <input type="text" id="campoDeBusca" onkeyup="buscarNoCampoPlenario()" placeholder="Digite o Nome Do evento...">
        </div> -->

        <div class="btnadd">
            <button id="openModal7" style="position: relative;
    margin: 0px 0px 0px 87%; max-width: 14em !important;" class="btn success">Adicionar evento</button>
        </div>

        <div class="container-table">
            <div style="width: 100%; " class="tableOverflow">
                <table id="eventosTable" style="width: 100%;">
                    <thead>
                        <tr class="tableEvento">
                            <th class="hideColumn">ID</th>
                            <th>Nome Do Evento</th>
                            <th>Tipo Do Evento</th>
                            <th>Condicionante</th>
                            <th>Data do Evento</th>
                            <th>Pontuação</th>
                            <th style="width: 5%;">Acessar</th>
                            <th style="width: 5%;">Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        $stmt = $pdo->prepare("SELECT * FROM evento ORDER BY Nome");
                        $stmt->execute();
                        $resultados = $stmt->fetchAll();

                        if (count($resultados) > 0) {
                            foreach ($resultados as $row) {
                                echo '<tr>';
                                echo '<td class="hideColumn">' . $row['id_evento'] . '</td>';
                                echo '<td>' . $row['nm_evento'] . '</td>';
                                echo '<td>' . $row['tp_evento'] . '</td>';
                                echo '<td>' . $row['tx_condicionante'] . '</td>';
                                echo '<td>' . $row['dt_evento'] . '</td>';
                                echo '<td style="width: 30px">' . $row['vl_pontuacao_conselheiro'] . '</td>';
                                echo '<td style=" width: 100px;">';
                                echo '<button class="btn info" style="min-width: 90px; max-width:91px; margin: 0 10%; margin-bottom: 2px" onclick="openModalEvento('
                                    . $row['id_evento'] . ', \''
                                    . $row['nm_evento'] . '\', \''
                                    . $row['tp_evento'] . '\', \''
                                    . $row['tx_condicionante'] . '\', \''
                                    . $row['dt_evento'] . '\', '
                                    . $row['vl_pontuacao_conselheiro'] . ')">Acessar</button>';
                                echo '</td>';
                                echo '<td style=" width: 100px;">';
                                echo '<button class="btn danger" style="min-width: 90px; max-width:91px; margin: 0 10%;" onclick="excluirCard(' . $row['ID'] . ')">Excluir</button>';
                                echo '</td>';
                                echo '</tr>';
                            }
                        } else {
                            echo '<tr><td colspan="7">Não há eventos cadastrados</td></tr>';
                        }
                        ?>
                    </tbody>
                </table>

                <!-- Modais -->

                <dialog id="modal7" class="modal">
                    <div class="modal-content">
                        <!-- <h2>Deseja Adicionar um Evento ?</h2> -->
                        <form id="formularioAdicionarEvento" method="post" action="../backend/cardEvento.php">
                            <div class="row">
                                <span>Nome do Evento:</span>
                                <br>
                                <input id="inputNomeDoEvento" class="inputEvento" value="" name="inputNomeDoEvento" type="text" placeholder="Nome do Evento">
                            </div>
                            <div class="row">
                                <span>Data do Evento:</span>
                                <br>
                                <input id="inputDataDoEvento" class="inputEvento" value="" name="inputDataDoEvento" type="date">
                            </div>
                            <div class="row">
                                <?php
                                // Preparando a consulta
                                $stmt = $pdo->prepare("SELECT * FROM tipoEvento");

                                // Executando a consulta
                                $stmt->execute();

                                // Obtendo os resultados
                                $resultados = $stmt->fetchAll();
                                ?>
                                <span>Tipo Do Evento:</span>
                                <br>
                                <select name="Tipo" id="Tipo" style="width: 100%;" class="inputEvento">
                                    <option value="" data-default disabled selected>Selecione</option>
                                    <?php foreach ($resultados as $resultado) { ?>
                                        <option value="<?php echo $resultado['nm_tipo_evento']; ?>"><?php echo $resultado['nm_tipo_evento']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="row">
                                <?php

                                // Preparando a consulta
                                $stmt = $pdo->prepare("SELECT * FROM condicionante");

                                // Executando a consulta
                                $stmt->execute();

                                // Obtendo os resultados
                                $resultadoConsultaCondicionantes = $stmt->fetchAll();; ?>
                                <span>Condicionante:</span>
                                <br>
                                <select name="Condicionante" id="Condicionante" class="inputEvento">
                                    <option value="" data-default disabled selected>Selecione</option>
                                    <?php foreach ($resultadoConsultaCondicionantes as $resultadoConsultaCondicionante) { ?>
                                        <option value="<?php echo $resultadoConsultaCondicionante['nm_condicionante']; ?>"><?php echo $resultadoConsultaCondicionante['nm_condicionante']; ?></option>
                                    <?php } ?>
                                </select>
                            </div>
                            <div class="modal-buttons">
                                <button type="submit" id="adicionarCard" class="btn success btn-primary">Adicionar</button>
                                <button type="reset" id="closeModal7" class="btn danger btn-secondary">Fechar</button>
                            </div>
                        </form>
                    </div>
                </dialog>

            </div>
        </div>
    </div>
</div>

<dialog id="modal-acessarEvento" class="modal">
    <div class="modal-content" style="width: 620px">

        <table id="eventosTable">
            <h2>TABELA DE TESTE</h2>
            <tr>
                <!-- <th class="hideColumn">ID</th> -->
                <th>Conselheiros</th>
                <th>Ações</th>
                <!-- <th>Condicionante</th>
                <th>Data do Evento</th>
                <th>Pontuação</th> -->
            </tr>
            <!-- <tr>
                <td id="eventoId" class="hideColumn"></td>
                <td id="eventoNome"></td>
                <td id="eventoTipo"></td>
                <td id="eventoCondicionante"></td>
                <td id="eventoData"></td>
                <td id="eventoPontuacao"></td> 
            </tr> -->
            <?php
                // Preparando a consulta
                $stmt = $pdo->prepare("SELECT id_conselheiro, nm_conselheiro FROM conselheiro WHERE excluido = 1 ORDER BY nm_conselheiro");

                // Executando a consulta
                $stmt->execute();

                // Obtendo os resultados
                $resultados = $stmt->fetchAll();

                // Iterando sobre os resultados para exibir na tabela
                foreach ($resultados as $resultado) {
                    echo "<tr>";
                    echo "<td>" . $resultado['nm_conselheiro'] . "</td>";
                    echo "<td class='conselheirosAdicionados'>";
                    echo "<button id='openModal10' class='btn btn-primary btnadd btn-ativar' style='align-items: center; min-width: 90px; margin: 0px 0px 0px 16% !important;' 
                    data-id='" . $resultado['id_conselheiro'] . "'
                    data-nome='" . $resultado['nm_conselheiro'] . "' 
                    class='removerBtn'>Remover</button>";
                    echo "</td>";
                    echo "</tr>";
                }

                ?>
        </table>
        <div class="tabelaDeAdicaoERemocao">
            <?php

            // Preparando a consulta
            $stmt = $pdo->prepare("SELECT * FROM tabela_conselheiro");

            // Executando a consulta
            $stmt->execute();

            // Obtendo os resultados
            $resultadoTabelaConselheiros = $stmt->fetchAll();

                //id, pontuacao, conselheiro, data, evento 
            ; ?>
            <?php foreach ($resultadoTabelaConselheiros as $resultadoTabelaConselheiro) { ?>
                <table>
                    <tr>
                        <th>Participantes</th>
                        <th>Remover Participantes</th>
                    </tr>
                    <tr>
                        <td><?= $resultadoTabelaConselheiro['nm_conselheiro'] ?></td>
                        <td><button class="btn danger">Remover</button></td>
                    </tr>
                <?php } ?>
                </table>
                <div class="button-groups-cardEventos" style="display: flex; justify-content: center; align-items: center; gap: 0.5rem;">
                    <button class="btn success" style="min-width: 15em !important;">Adicionar Participantes</button>
                    <button class="btn danger" style="min-width: 15em !important;">Remover Todos</button>
                    <button type="button" class="btn danger" style="min-width: 10em !important;" onclick="closeModalEvento()">Sair</button>

                </div>
</dialog>



<?php include("./funcionalidadesEventos.php"); ?>