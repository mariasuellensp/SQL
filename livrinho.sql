-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 03-Maio-2021 às 16:37
-- Versão do servidor: 5.7.31
-- versão do PHP: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `livros`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autor`
--

DROP TABLE IF EXISTS `autor`;
CREATE TABLE IF NOT EXISTS `autor` (
  `autor` varchar(50) NOT NULL,
  `endereco_do_autor` varchar(50) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `pais_de_origem` varchar(50) NOT NULL,
  PRIMARY KEY (`autor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autor`
--

INSERT INTO `autor` (`autor`, `endereco_do_autor`, `data_de_nascimento`, `pais_de_origem`) VALUES
('J. K. Rowling', '3227 Fairmont Avenue', '1971-08-14', 'Inglattera'),
('Gillian Flynn', '2103 Randall Drive', '2000-07-17', 'Estados Unidos'),
('Verissimo', '27801 Rocky Mount', '2016-03-01', 'Brasil'),
('Neil Gaiman', '77301 Cut and Shoot', '2010-09-23', 'Inglattera'),
('Clive Baker', '2496 Rose Avenid', '2006-06-28', 'Estados Unidos'),
('Rodrigo Polesso', '3788 Wetzel Lane', '2001-02-17', 'Brasil'),
('Ruy Ohtake', '2710 Bobcat Drive', '2016-01-03', 'Brasil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
CREATE TABLE IF NOT EXISTS `avaliacao` (
  `livrosID` int(11) NOT NULL,
  `ratingID` int(11) NOT NULL AUTO_INCREMENT,
  `rating` varchar(50) NOT NULL,
  PRIMARY KEY (`ratingID`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `avaliacao`
--

INSERT INTO `avaliacao` (`livrosID`, `ratingID`, `rating`) VALUES
(1, 1, 'Muito bom'),
(2, 2, 'Gostei'),
(3, 3, 'Maravilhoso'),
(4, 4, 'Fraco'),
(5, 5, 'Não Gostei');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

DROP TABLE IF EXISTS `compra`;
CREATE TABLE IF NOT EXISTS `compra` (
  `livrosID` int(11) NOT NULL,
  `comprasID` int(11) NOT NULL AUTO_INCREMENT,
  `data` date NOT NULL,
  `valor` double NOT NULL,
  `comprei` bit(1) NOT NULL,
  PRIMARY KEY (`comprasID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `compra`
--

INSERT INTO `compra` (`livrosID`, `comprasID`, `data`, `valor`, `comprei`) VALUES
(1, 1, '2005-03-02', 20.09, b'1'),
(2, 2, '2005-02-04', 18.79, b'1'),
(3, 3, '2022-01-04', 50.36, b'0'),
(4, 4, '2005-02-06', 15.21, b'0'),
(5, 5, '2005-02-07', 60.23, b'0'),
(6, 6, '2003-02-08', 10, b'0'),
(7, 7, '2005-02-10', 20.9, b'1'),
(8, 8, '2004-02-03', 17.16, b'1'),
(9, 9, '2019-01-25', 9.81, b'1'),
(10, 10, '2022-12-04', 20.55, b'0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

DROP TABLE IF EXISTS `editora`;
CREATE TABLE IF NOT EXISTS `editora` (
  `editora` varchar(50) NOT NULL,
  `telefone_da_editora` varchar(50) NOT NULL,
  `livrosID` int(11) NOT NULL,
  PRIMARY KEY (`editora`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`editora`, `telefone_da_editora`, `livrosID`) VALUES
('Rocco', '202-555-0171', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros1`
--

DROP TABLE IF EXISTS `livros1`;
CREATE TABLE IF NOT EXISTS `livros1` (
  `livrosID` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `numero_pagina` float NOT NULL,
  `autor` varchar(20) NOT NULL,
  `editora` varchar(50) NOT NULL,
  `data_publicacao` date NOT NULL,
  PRIMARY KEY (`livrosID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros1`
--

INSERT INTO `livros1` (`livrosID`, `nome`, `genero`, `numero_pagina`, `autor`, `editora`, `data_publicacao`) VALUES
(1, 'Harry Potter e a Ped', 'fantasia', 368, 'J. K. Rowling', 'Rocco', '2007-03-02'),
(2, 'Harry Potter e o Prisioneiro de Azkaban', 'fantasia', 598, 'J. K. Rowling', 'Rocco', '2012-04-02'),
(3, 'Harry Potter e a Ordem da Fenix', 'fantasia', 798, 'J. K. Rowling', 'Rocco', '2005-08-20'),
(4, 'Harry Potter e a Camara Secreta', 'fantasia', 328, 'J. K. Rowling', 'Rocco', '2019-01-25'),
(5, 'Garota Exemplar', 'suspense', 128, 'Gillian Flynn', 'Intriseca', '2009-12-10'),
(6, 'Dialogo Impossiveis', 'comedia', 208, 'Verissimo', 'Lero-Lero', '2005-11-10'),
(7, 'Harry Potter e o Priosioneiro de Azkaban', 'fantasia', 368, 'Nell Gaiman', 'Rocco', '2005-03-02'),
(8, 'Arafat', 'suspense', 158, 'Clive Baker', 'Editora Dark Sense', '2020-03-02'),
(9, 'Este não é mais um livro de dieta', 'auto-ajuda', 988, 'Rodrigo Polesso', 'Editora Gente', '2012-04-02'),
(10, 'Atenção Plena: Mindfulness', 'ficção-cientifica', 122, 'Ruy Ohtake', 'Instituto Tomie Ohtake', '2005-02-08');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
