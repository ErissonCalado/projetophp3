-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Fev-2021 às 02:24
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `delivery`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `preço` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `pedidos`
--

INSERT INTO `pedidos` (`id_pedido`, `id_produto`, `quantidade`, `preço`, `total`) VALUES
(1, 12, 1, 3.99, 3.99),
(2, 8, 1, 1.5, 1.5),
(3, 12, 1, 3.99, 3.99),
(4, 8, 2, 1.5, 3),
(5, 5, 3, 2.89, 8.67);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `quantidade` varchar(10) NOT NULL,
  `preço` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `quantidade`, `preço`) VALUES
(1, 'Cajú', '150', '4.99'),
(2, 'Acerola', '120', '9.99'),
(3, 'Abacaxi', '80', '5.49'),
(4, 'Goiaba', '68', '5.49'),
(5, 'Kiwi', '230', '2.89'),
(6, 'Beterraba', '85', '2.75'),
(7, 'Tomate', '280', '5.49'),
(8, 'Quiabo', '200', '1.50'),
(9, 'Chuchu ', '100', '1.69'),
(10, 'Cenoura', '80', '4.49'),
(11, 'Acelga', '105', '8.99'),
(12, 'Salsa', '120', '3.99'),
(13, 'Espinafre', '20', '3.99'),
(14, 'Coentro', '136', '2.99'),
(15, 'Manjericão', '121', '3.99'),
(16, 'Cará', '82', '4.89'),
(17, 'Batata doce', '130', '3.99'),
(18, 'Batata yacon', '129', '6.95'),
(19, 'Macaxeira', '69', '3.29'),
(20, 'Nabo', '155', '6.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuários`
--

CREATE TABLE `usuários` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `senha` varchar(220) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuários`
--

INSERT INTO `usuários` (`id`, `nome`, `email`, `senha`, `created`, `modified`) VALUES
(9, 'Erisson', 'erisson2@gmail.com', '123456', '2021-01-28 19:32:47', NULL),
(10, 'Erisson1', 'erisson3@gmail.com', '98238232', '2021-01-28 19:44:10', NULL),
(11, 'erisson11', 'erisson11@gmail.com', '1234569', '2021-01-28 19:48:54', NULL),
(12, 'Erisson22', 'erisson22@gmail.com', '123456', '2021-01-28 19:56:22', NULL),
(13, 'Erisson36', 'erisson35@gmail.com', '123456', '2021-01-28 19:59:57', NULL),
(14, 'dedessa', 'andressalinda@hotmail.com', '123456', '2021-01-28 20:03:51', NULL),
(15, 'Erisson', 'erisson1996@hotmail.com', '121212', '2021-02-04 19:54:57', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedido`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuários`
--
ALTER TABLE `usuários`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `usuários`
--
ALTER TABLE `usuários`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
