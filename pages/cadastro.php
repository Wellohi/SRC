<div class="caixaconteudo">
</div>
<!-- Precisa pegar o Ano atual-->
<!-- <h2 style="text-align: center;">Relatório de Participação de Conselheiros referente ao mês: <input readonly id="date" type="date" name="dataDoRelatorio" value="" min="2023-01-01" max="2025-01-01"> </h2> -->
<div class="info-data">
    <!-- <h2>Para eventos com mais de um dia de duração, inserir apenas a data de início.</h2> -->
</div>
<div class="container">
    <fieldset id="fieldset-relatorio">
        <legend>Adicionar</legend>
        <div id="container-form">
            <form id="form-cadastro" action="../backend/dados.php" method="post">


                <label for="">Nome do Evento</label>
                <input type="text" name="nomeDaReuniaoEventoTrabalho" id="nomedareuniao" placeholder="Nome do Evento">

                <label for="">Tipo do Evento </label>
                <!-- <input type="text" name="tipoDeReuniao" placeholder="Tipo de Reunião"> -->

                <select name="tipoDeReuniao" id="tipodereuniao">
                    <option value="" data-default disabled selected>Tipo do Evento</option>
                    <option value="Reunião Plénaria">Reunião Plénaria</option>

                    <option value="Reunião Plénaria - CRC">Reunião Plénaria - CRC</option>

                    <option value="Reunião do Tribunal Superior de Ética e Disciplina">Reunião do Tribunal Superior de Ética e Disciplina</option>

                    <option value="Reunião Do Conselho Diretor Do CFC">Reunião Do Conselho Diretor Do CFC</option>

                    <option value="Reunião Da Câmara Do CFC, exceto Da Câmara de Fiscalização, Ética e Disciplina">Reunião Da Câmara Do CFC, exceto Da Câmara de Fiscalização, Ética e Disciplina
                    </option>

                    <option value="Reunião De Câmara De Fiscalização, Ética e Disciplina">Reunião De Câmara De Fiscalização, Ética e Disciplina</option>

                    <option value="Reunião De Comissão ou Grupo De Trabalho ou Reunião de Natureza Técnica e/ou
                        institucional, representando o CFC">Reunião De Comissão ou Grupo De Trabalho ou Reunião de Natureza Técnica e/ou
                        institucional, representando o CFC</option>

                    <option value="Trabalho Técnico Apresentado Em Evento Do Calendário Oficial">Trabalho Técnico Apresentado Em Evento Do Calendário Oficial</option>

                    <option value="Artigo Publicado Na RBC Ou Em Revista Técnica De Contabilidade">Artigo Publicado Na RBC Ou Em Revista Técnica De Contabilidade</option>

                    <option value="Palestrante/Painelista Em Evento Do Calendário Oficial e/ou Evento De Interesse Da
                        Classe Contábil">Palestrante/Painelista Em Evento Do Calendário Oficial e/ou Evento De Interesse Da
                        Classe Contábil</option>

                    <option value="Moderador/Debatedor Em Evento Do Calendário Oficial e/ou Evento De Interesse Da
                        Classe Contábil">Moderador/Debatedor Em Evento Do Calendário Oficial e/ou Evento De Interesse Da
                        Classe Contábil</option>

                    <option value="Treinamento No CFC ou nos CRCs, Com o Instrutor">Treinamento No CFC ou nos CRCs, Com o Instrutor</option>

                    <option value="Participação Aprovada Em Evento Nacional">Participação Aprovada Em Evento Nacional</option>

                    <option value="Participação Aprovada Em Evento Internacional">Participação Aprovada Em Evento Internacional</option>

                    <option value="Representação Da Presidência Em Evento">Representação Da Presidência Em Evento</option>
                </select>


                <label for="">Condicionante</label>
                <select id="condicionates" name="condicionates">
                    <option value="" data-default disabled selected id=></option>
                    <?php foreach ($registros_evento as $registro_evento) { ?>
                        <option value="<?= $registro_evento['condicionante'] ?>"><?= $registro_evento['condicionante'] ?>
                        </option>
                    <?php } ?>
                </select>

                <label for="">Data</label>
                <input type="date" name="dataDaReuniao" id="data">

                <label for="">Pontos</label>
                <input type="number" name="pontos" placeholder="2pts" id="pontos">

                <div class="btn-group">
                    <button type="submit" id="btn-cadastrar" class="buton">Cadastrar</button>
                    <button type="reset" class="buton">Limpar</button>
                </div>
            </form>
        </div>
    </fieldset>
    <div class="container-table">
        <table id="tabela-cadastro">
            <thead>
                <tr>
                    <td>Nome do Conselheiro</td>
                    <td>Nome do Evento</td>
                    <td>Tipo</td>
                    <td>Condicionante</td>
                    <td>Data</td>
                    <td>Pontuação</td>
                </tr>
            </thead>
            <tbody>
            </tbody>
        </table>
    </div>
</div>

