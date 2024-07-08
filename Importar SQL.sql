-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/07/2024 às 19:52
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `banco_spc`
--
CREATE DATABASE IF NOT EXISTS `banco_spc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `banco_spc`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `condicionantes`
--

CREATE TABLE `condicionantes` (
  `id` int(11) NOT NULL,
  `nomeCondicionante` varchar(255) NOT NULL,
  `pontuacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `condicionantes`
--

INSERT INTO `condicionantes` (`id`, `nomeCondicionante`, `pontuacao`) VALUES
(2, 'CONDIÇÔES CONDICIONANTES', 20);

-- --------------------------------------------------------

--
-- Estrutura para tabela `conselheiro`
--

CREATE TABLE `conselheiro` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Pontuacao_Total` int(11) DEFAULT 0,
  `excluido` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `conselheiro`
--

INSERT INTO `conselheiro` (`ID`, `Nome`, `Pontuacao_Total`, `excluido`) VALUES
(17, 'Carlos Henrique do Nascimento', 0, 1),
(18, 'Andrezza Carolina Brito Farias', 0, 1),
(19, 'Wellington do Carmo Cruz', 0, 0),
(20, 'Luana Aguiar Pinheiro Soares', 0, 0),
(21, 'Haroldo Santos Filho', 0, 0),
(22, 'Rangel Francisco Pinto', 0, 0),
(23, 'Heraldo de Jesus Campelo', 0, 0),
(24, 'Gercimira Ramos Moreira Rezende', 0, 0),
(25, 'Brunno Sitônio Fialho de Oliveira', 999999, 0),
(26, 'Joaquim de Alencar Bezerra Filho', 0, 0),
(27, 'Aguinaldo Mocelin', 101010, 0),
(28, 'Maria do Rosario de Oliveira', 0, 0),
(29, 'José Domingos Filho', 0, 0),
(30, 'Ana Tércia Lopes Rodrigues', 0, 0),
(31, 'Sergio Faraco', 0, 0),
(32, 'Aécio Prado Dantas Júnior', 123123, 0),
(33, 'José Donizete Valentina', 0, 0),
(34, 'Sebastião Célio Costa Castro', 0, 0),
(35, 'Mateus Nascimento Calegari', 0, 0),
(36, 'Manoel Carlos de Oliveira Júnior', 0, 0),
(38, 'Sandra Maria de Carvalho Campos', 0, 0),
(39, 'Carlos Rubens de Oliveira', 0, 0),
(40, 'Ticiane Lima dos Santos', 0, 0),
(41, 'José Gonçalves Campos Filho', 0, 0),
(42, 'Vitória Maria da Silva', 0, 0),
(43, 'Palmira Leão de Souza', 0, 0),
(44, 'José Alberto Viana Gaia', 0, 0),
(45, 'Fabiano Ribeiro Pimentel', 0, 0),
(46, 'Sônia Maria da Silva Gomes', 0, 0),
(47, 'Liliana Farias Lacerda', 0, 0),
(48, 'Roberto Schulze', 0, 0),
(49, 'Weberth Fernandes', 0, 0),
(50, 'Nilton Luiz Lima Praseres', 0, 0),
(51, 'Aloísio Rodrigues da Silva', 3, 0),
(52, 'Glaydson Trajano Farias', 0, 0),
(53, 'Elias Dib Caddah Neto', 0, 0),
(54, 'Maurício Gilberto Cândido', 0, 0),
(55, 'Erivan Ferreira Borges', 0, 0),
(56, 'Edneu da Silva Calderari', 0, 0),
(57, 'Mônica Foerster', 0, 0),
(58, 'Marlise Alves Silva Teixeira', 0, 0),
(59, 'Angela Andrade Dantas Mendonça', 0, 0),
(60, 'Valmir Leôncio da Silva', 0, 0),
(61, 'Norton Thomazi', 0, 0),
(62, 'Cil Farney Assis Rodrigues', 0, 0),
(63, 'Lucilene Florêncio Viana', 0, 0),
(64, 'Leonardo Silveira do Nascimento', 0, 0),
(65, 'Antônio de Pádua Soares Pelicarpo', 0, 0),
(66, 'Arleon Carlos Stelini', 0, 0),
(67, 'Antonio Carlos Sales Ferreira Junior', 0, 0),
(68, 'Geraldo de Paula Batista Filho', 0, 0),
(69, 'Ana Luiza Pereira Lima', 0, 0),
(70, 'Francisco Fernandes de Oliveira', 0, 0),
(80, 'NOCO VONLHESEIRO', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `evento`
--

CREATE TABLE `evento` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Condicionante` varchar(255) NOT NULL,
  `Data_Evento` date NOT NULL,
  `Pontuacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `evento`
--

INSERT INTO `evento` (`ID`, `Nome`, `Tipo`, `Condicionante`, `Data_Evento`, `Pontuacao`) VALUES
(3, 'teste', 'Reunião do Conselho Diretor do CFC', 'CONDITC', '2024-05-28', 0),
(24, 'qwe', 'Reunião Plenária', 'CONDIÇÔES CONDICIONANTES', '0111-11-11', 0),
(25, 'TESTETESTETESTE', 'Reunião Plenária - CRC', 'CONDIÇÔES CONDICIONANTES', '2121-12-12', 0),
(27, '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!', 'Reunião de Comissão ou Grupo de Trabalho ou Reunião de natureza técnica e/ou institucional, representando o CFC', 'CONDIÇÔES CONDICIONANTES', '0000-00-00', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `gestor`
--

CREATE TABLE `gestor` (
  `id` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `participacao`
--

CREATE TABLE `participacao` (
  `ID_Conselheiro` int(11) NOT NULL,
  `ID_Evento` int(11) NOT NULL,
  `Pontuacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `plenario`
--

CREATE TABLE `plenario` (
  `Nome` varchar(255) NOT NULL,
  `Data` date NOT NULL,
  `Vagas` int(11) NOT NULL,
  `Tipo` varchar(255) NOT NULL,
  `Condicionante` varchar(255) NOT NULL,
  `Local` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plenario`
--

INSERT INTO `plenario` (`Nome`, `Data`, `Vagas`, `Tipo`, `Condicionante`, `Local`) VALUES
('123132321', '0021-12-31', 321, 'Reunião Plenária - CRC', 'CONDIÇÔES CONDICIONANTES', '132'),
('such a lovely', '0000-00-00', 3, 'Reunião Plenária', 'CONDIÇÔES CONDICIONANTES', 'CABANA');

-- --------------------------------------------------------

--
-- Estrutura para tabela `ranking`
--

CREATE TABLE `ranking` (
  `id` int(11) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `conselheiro` varchar(40) NOT NULL,
  `data` varchar(30) NOT NULL,
  `evento` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `rankingeventos`
--

CREATE TABLE `rankingeventos` (
  `id` int(11) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `evento` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabelaconselheiros`
--

CREATE TABLE `tabelaconselheiros` (
  `id` int(11) NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `conselheiro` varchar(40) NOT NULL,
  `data` varchar(20) NOT NULL,
  `evento` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tabela_pontuacao_total`
--

CREATE TABLE `tabela_pontuacao_total` (
  `id` int(11) NOT NULL,
  `nome_do_conselheiro` varchar(255) NOT NULL,
  `pontuacao_do_conselheiro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tabela_pontuacao_total`
--

INSERT INTO `tabela_pontuacao_total` (`id`, `nome_do_conselheiro`, `pontuacao_do_conselheiro`) VALUES
(1, 'Carlos Henrique do Nascimento', 1),
(2, 'Andrezza Carolina Brito Farias', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tipoevento`
--

CREATE TABLE `tipoevento` (
  `id` int(11) NOT NULL,
  `nomeTipoEvento` varchar(255) NOT NULL,
  `pontuacao` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tipoevento`
--

INSERT INTO `tipoevento` (`id`, `nomeTipoEvento`, `pontuacao`) VALUES
(1, 'Reunião Plenária', 1),
(2, 'Reunião Plenária - CRC', 1),
(3, 'Reunião do Tribunal Superior de Ética e Disciplina', 1),
(4, 'Reunião do Conselho Diretor do CFC', 1),
(5, 'Reunião de Câmara do CFC, exceto da Câmara de Fiscalização, Ética e Disciplina', 1),
(6, 'Reunião da Câmara de Fiscalização, Ética e Disciplina', 2),
(7, 'Reunião de Comissão ou Grupo de Trabalho ou Reunião de natureza técnica e/ou institucional, representando o CFC', 1),
(8, 'Trabalho Técnico apresentado em evento do Calendário Oficial', 5),
(9, 'Artigo publicado na RBC ou em revista técnica de Contabilidade', 5),
(10, 'Palestrante/painelista em evento do Calendário Oficial e/ou evento de interesse da Classe Contábil', 5),
(11, 'Moderador/debatedor em evento do Calendário Oficial e/ou evento de interesse da Classe Contábil', 2),
(12, 'Treinamento no CFC ou nos CRCs, como instrutor', 5),
(13, 'Participação aprovada em evento nacional', -10),
(14, 'Participação aprovada em evento internacional', -20),
(15, 'Representação da Presidência em evento', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `adm` int(1) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `usuarios`
--

INSERT INTO `usuarios` (`email`, `senha`, `nome`, `adm`, `id`) VALUES
('teste@teste.com', 'teste', 'teste', 0, 2),
('admin@admin.com', 'admin', 'admin', 1, 3),
('denise.silva@cfc.org.br', 'admin', 'denise.silva', 1, 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `condicionantes`
--
ALTER TABLE `condicionantes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `conselheiro`
--
ALTER TABLE `conselheiro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `evento`
--
ALTER TABLE `evento`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `gestor`
--
ALTER TABLE `gestor`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `participacao`
--
ALTER TABLE `participacao`
  ADD PRIMARY KEY (`ID_Conselheiro`,`ID_Evento`),
  ADD KEY `ID_Evento` (`ID_Evento`);

--
-- Índices de tabela `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `rankingeventos`
--
ALTER TABLE `rankingeventos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tabelaconselheiros`
--
ALTER TABLE `tabelaconselheiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tabela_pontuacao_total`
--
ALTER TABLE `tabela_pontuacao_total`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tipoevento`
--
ALTER TABLE `tipoevento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `condicionantes`
--
ALTER TABLE `condicionantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `conselheiro`
--
ALTER TABLE `conselheiro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `evento`
--
ALTER TABLE `evento`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `gestor`
--
ALTER TABLE `gestor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `ranking`
--
ALTER TABLE `ranking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `rankingeventos`
--
ALTER TABLE `rankingeventos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tabelaconselheiros`
--
ALTER TABLE `tabelaconselheiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tabela_pontuacao_total`
--
ALTER TABLE `tabela_pontuacao_total`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipoevento`
--
ALTER TABLE `tipoevento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `participacao`
--
ALTER TABLE `participacao`
  ADD CONSTRAINT `participacao_ibfk_1` FOREIGN KEY (`ID_Conselheiro`) REFERENCES `conselheiro` (`ID`),
  ADD CONSTRAINT `participacao_ibfk_2` FOREIGN KEY (`ID_Evento`) REFERENCES `evento` (`ID`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Despejando dados para a tabela `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'database', 'banco_scp', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"condicionantes\",\"conselheiro\",\"evento\",\"gestor\",\"participacao\",\"plenario\",\"ranking\",\"rankingeventos\",\"tabelaconselheiros\",\"tabela_pontuacao_total\",\"tipoevento\",\"usuarios\"],\"table_structure[]\":[\"condicionantes\",\"conselheiro\",\"evento\",\"gestor\",\"participacao\",\"plenario\",\"ranking\",\"rankingeventos\",\"tabelaconselheiros\",\"tabela_pontuacao_total\",\"tipoevento\",\"usuarios\"],\"table_data[]\":[\"condicionantes\",\"conselheiro\",\"evento\",\"gestor\",\"participacao\",\"plenario\",\"ranking\",\"rankingeventos\",\"tabelaconselheiros\",\"tabela_pontuacao_total\",\"tipoevento\",\"usuarios\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_columns\":\"something\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Estrutura da tabela @TABLE@\",\"latex_structure_continued_caption\":\"Estrutura da tabela @TABLE@ (continuação)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Conteúdo da tabela @TABLE@\",\"latex_data_continued_caption\":\"Conteúdo da tabela @TABLE@ (continuação)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Despejando dados para a tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"banco_spc\",\"table\":\"usuarios\"},{\"db\":\"banco_spc\",\"table\":\"condicionantes\"},{\"db\":\"banco_spc\",\"table\":\"conselheiro\"},{\"db\":\"banco_spc\",\"table\":\"evento\"},{\"db\":\"banco_spc\",\"table\":\"tipoevento\"},{\"db\":\"banco_spc\",\"table\":\"tabela_pontuacao_total\"},{\"db\":\"banco_spc\",\"table\":\"tabelaconselheiros\"},{\"db\":\"banco_spc\",\"table\":\"rankingeventos\"},{\"db\":\"banco_spc\",\"table\":\"ranking\"},{\"db\":\"banco_spc\",\"table\":\"plenario\"}]');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Despejando dados para a tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'banco_spc', 'usuarios', '{\"CREATE_TIME\":\"2024-06-14 12:18:37\",\"col_order\":[0,1,2,3,4],\"col_visib\":[1,1,1,1,1]}', '2024-06-18 17:01:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Despejando dados para a tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-06-19 14:52:27', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt_BR\"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura para tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices de tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices de tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices de tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices de tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices de tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices de tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices de tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices de tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices de tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices de tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices de tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
