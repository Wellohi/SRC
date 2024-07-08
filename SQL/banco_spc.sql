-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 08/07/2024 às 20:53
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
(25, 'TESTETESTETESTE', 'Reunião Plenária - CRC', 'CONDIÇÔES CONDICIONANTES', '2121-12-12', 0),
(28, 'Adicionando evento', 'Reunião Plenária - CRC', 'CONDIÇÔES CONDICIONANTES', '2024-07-08', 0),
(29, 'Adicionando Outro Evento', 'Reunião de Comissão ou Grupo de Trabalho ou Reunião de natureza técnica e/ou institucional, representando o CFC', 'CONDIÇÔES CONDICIONANTES', '2024-07-09', 0);

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
  `Local` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `plenario`
--

INSERT INTO `plenario` (`Nome`, `Data`, `Vagas`, `Tipo`, `Condicionante`, `Local`, `ID`) VALUES
('123132321', '0021-12-31', 321, 'Reunião Plenária - CRC', 'CONDIÇÔES CONDICIONANTES', '132', 1),
('such a lovely', '0000-00-00', 3, 'Reunião Plenária', 'CONDIÇÔES CONDICIONANTES', 'CABANA', 2);

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
-- Índices de tabela `plenario`
--
ALTER TABLE `plenario`
  ADD PRIMARY KEY (`ID`);

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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `gestor`
--
ALTER TABLE `gestor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `plenario`
--
ALTER TABLE `plenario`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
