-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01-Dez-2016 às 20:27
-- Versão do servidor: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clinica`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `animal`
--

CREATE TABLE IF NOT EXISTS `animal` (
  `Nome` varchar(1500) NOT NULL,
  `Apelido` varchar(1000) NOT NULL,
  `Idade` varchar(20) NOT NULL,
  `DataNascimento` date NOT NULL,
  `Nome_Dono` varchar(1500) NOT NULL,
  `Porte` varchar(1000) NOT NULL,
  `Especie` varchar(1000) NOT NULL,
  `Raca` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `animal`
--

INSERT INTO `animal` (`Nome`, `Apelido`, `Idade`, `DataNascimento`, `Nome_Dono`, `Porte`, `Especie`, `Raca`) VALUES
(' Janice', 'Jane', '2', '2014-11-09', 'Crueza', '', '', ''),
(' Kaka', 'Ka', '2', '2014-11-10', 'Creuza', '', '', ''),
(' afsi', 'kk', '1', '2015-11-25', 'ajksfh', ' svkjd', ' sklajf', ' sdlgk');

-- --------------------------------------------------------

--
-- Estrutura da tabela `consulta`
--

CREATE TABLE IF NOT EXISTS `consulta` (
  `Nome_vet` varchar(1000) NOT NULL,
  `Nome_animal` varchar(1000) NOT NULL,
  `Nome_Dono` varchar(1000) NOT NULL,
  `Hora_Consulta` time NOT NULL,
  `Data_Consulta` datetime NOT NULL,
  `observacao` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `consulta`
--

INSERT INTO `consulta` (`Nome_vet`, `Nome_animal`, `Nome_Dono`, `Hora_Consulta`, `Data_Consulta`, `observacao`) VALUES
('  eref', ' Janice', ' Natalia', '14:40:00', '2016-11-02 00:00:00', 'Dor de cabeça'),
('  eref', ' Janice', ' Natalia', '14:40:00', '2016-11-02 00:00:00', 'Dor de cabeça'),
('  eref', ' Janice', ' Natalia', '14:30:30', '2016-02-11 00:00:00', 'Dor de cabeça');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dono`
--

CREATE TABLE IF NOT EXISTS `dono` (
  `Nome` varchar(1000) NOT NULL,
  `Endereco` varchar(1500) NOT NULL,
  `CPF` double NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `telefone` float NOT NULL,
  `Celular` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `dono`
--

INSERT INTO `dono` (`Nome`, `Endereco`, `CPF`, `Data_Nascimento`, `Email`, `telefone`, `Celular`) VALUES
(' Natalia', 'R Alvares Maciel', 2356294729, '1996-11-30', 'tell-40@hotmail.com', 1140290000, 992984000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `exame`
--

CREATE TABLE IF NOT EXISTS `exame` (
  `Nome_exame` varchar(1500) NOT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `exame`
--

INSERT INTO `exame` (`Nome_exame`, `preco`) VALUES
(' EcoCardiograma', 0),
(' ', 0),
(' EcoCardiograma', 0),
(' EcoCardigrama', 0),
(' Eco Cardiograma', 0),
(' Eletro Cardiograma', 100),
(' Ultrassom', 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medicamento`
--

CREATE TABLE IF NOT EXISTS `medicamento` (
  `Nome_Medicamento` varchar(1500) NOT NULL,
  `PrincipioAtivo` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medicamento`
--

INSERT INTO `medicamento` (`Nome_Medicamento`, `PrincipioAtivo`) VALUES
(' Amoxilina', ' chuchu'),
(' Aspirina', ' Acido Acetil Salicilico'),
(' Amoxilina', ' '),
(' Aspirina', ' Acido Acetil Salicilico'),
(' Buscopan', ' Dipirona');

-- --------------------------------------------------------

--
-- Estrutura da tabela `posconsulta`
--

CREATE TABLE IF NOT EXISTS `posconsulta` (
  `Nome_animal` varchar(1000) NOT NULL,
  `Diagnostico` text NOT NULL,
  `Medicamento` varchar(2000) NOT NULL,
  `Exame` varchar(5000) NOT NULL,
  `CPF` double NOT NULL,
  `Data_Retorno` datetime NOT NULL,
  `Nome_vet` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `preconsulta`
--

CREATE TABLE IF NOT EXISTS `preconsulta` (
  `Nome_animal` varchar(1000) NOT NULL,
  `Nome_Vet` varchar(1000) NOT NULL,
  `Nome_Dono` varchar(1000) NOT NULL,
  `Hora` time NOT NULL,
  `Data_Consulta` date NOT NULL,
  `Sintomas` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `veterinário`
--

CREATE TABLE IF NOT EXISTS `veterinário` (
  `Nome` varchar(1000) NOT NULL,
  `Endereco` varchar(1000) NOT NULL,
  `Telefone` double NOT NULL,
  `CPF` double NOT NULL,
  `Email` varchar(1000) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Celular` double NOT NULL,
  `CRMV` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veterinário`
--

INSERT INTO `veterinário` (`Nome`, `Endereco`, `Telefone`, `CPF`, `Email`, `Data_Nascimento`, `Celular`, `CRMV`) VALUES
(' eref', 'sdcdscsd', 1231, 1231, 'sdcws', '2016-12-08', 123213, 1231);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
