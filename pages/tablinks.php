<div class="tab">

    <button class="tablinks" onclick="openTab(event, 'home')"  id="defaultOpen"> <i class="fa-sharp fa-solid fa-house"></i> Bem-Vindo</button>
    <!--
        <button class="tablinks" onclick="openTab(event, 'London')"><i class="fa-sharp fa-solid fa-user-plus" style="color: #ffffff;"></i> Cadastro</button> -->

    <button class="tablinks" onclick="openTab(event, 'conselheiro')"><i class="fa-solid fa-user-group"></i> Conselheiros</button>

    <?php if ($adm) : ?>
        <button class="tablinks" onclick="openTab(event, 'eventos')"><i class="fa-solid fa-calendar-days"></i>
            Eventos</button>
    <?php endif; ?>

    <?php if ($adm) : ?>
        <button class="tablinks" onclick="openTab(event, 'plenario')">
            <i class="fa-solid fa-earth-americas"></i>
            Plenário</button>
    <?php endif; ?>

    <button class="tablinks" onclick="openTab(event, 'Ranking')">
        <i class="fa-solid fa-arrow-trend-up"></i>
        Ranking</button>

    <?php if ($adm) : ?>
        <button class="tablinks" onclick="openTab(event, 'opcoes')"><i class="fa fa-cogs" aria-hidden="true"></i>
            opções</button>
    <?php endif; ?>

</div>