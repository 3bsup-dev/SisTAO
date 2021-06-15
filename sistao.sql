-- phpMyAdmin SQL Dump
-- version 4.9.7deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 15-Jun-2021 às 16:09
-- Versão do servidor: 8.0.25-0ubuntu0.21.04.1
-- versão do PHP: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL,
  `permissions_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `applications`
--

INSERT INTO `applications` (`id`, `name`, `permissions_id`) VALUES
(1, 'sped', 1),
(2, 'SISBOL', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cities`
--

CREATE TABLE `cities` (
  `id` int NOT NULL,
  `name` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `cities`
--

INSERT INTO `cities` (`id`, `name`, `state`, `updated_at`, `created_at`) VALUES
(1, 'Canoas', 'RS', NULL, NULL),
(2, 'Montenegro', 'RS', NULL, NULL),
(4, 'Aceguá', 'RS', '2021-05-25 01:45:39', NULL),
(5, 'Água Santa', 'RS', '2021-05-25 01:45:39', NULL),
(6, 'Agudo', 'RS', '2021-05-25 01:45:39', NULL),
(7, 'Ajuricaba', 'RS', '2021-05-25 01:45:39', NULL),
(8, 'Alecrim', 'RS', '2021-05-25 01:45:39', NULL),
(9, 'Alegrete', 'RS', '2021-05-25 01:45:39', NULL),
(10, 'Alegria', 'RS', '2021-05-25 01:45:39', NULL),
(11, 'Almirante Tamandaré do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(12, 'Alpestre', 'RS', '2021-05-25 01:45:39', NULL),
(13, 'Alto Alegre', 'RS', '2021-05-25 01:45:39', NULL),
(14, 'Alto Feliz', 'RS', '2021-05-25 01:45:39', NULL),
(15, 'Alvorada', 'RS', '2021-05-25 01:45:39', NULL),
(16, 'Amaral Ferrador', 'RS', '2021-05-25 01:45:39', NULL),
(17, 'Ametista do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(18, 'André da Rocha', 'RS', '2021-05-25 01:45:39', NULL),
(19, 'Anta Gorda', 'RS', '2021-05-25 01:45:39', NULL),
(20, 'Antônio Prado', 'RS', '2021-05-25 01:45:39', NULL),
(21, 'Arambaré', 'RS', '2021-05-25 01:45:39', NULL),
(22, 'Araricá', 'RS', '2021-05-25 01:45:39', NULL),
(23, 'Aratiba', 'RS', '2021-05-25 01:45:39', NULL),
(24, 'Arroio do Meio', 'RS', '2021-05-25 01:45:39', NULL),
(25, 'Arroio do Padre', 'RS', '2021-05-25 01:45:39', NULL),
(26, 'Arroio do Sal', 'RS', '2021-05-25 01:45:39', NULL),
(27, 'Arroio do Tigre', 'RS', '2021-05-25 01:45:39', NULL),
(28, 'Arroio dos Ratos', 'RS', '2021-05-25 01:45:39', NULL),
(29, 'Arroio Grande', 'RS', '2021-05-25 01:45:39', NULL),
(30, 'Arvorezinha', 'RS', '2021-05-25 01:45:39', NULL),
(31, 'Augusto Pestana', 'RS', '2021-05-25 01:45:39', NULL),
(32, 'Áurea', 'RS', '2021-05-25 01:45:39', NULL),
(33, 'Bagé', 'RS', '2021-05-25 01:45:39', NULL),
(34, 'Balneário Pinhal', 'RS', '2021-05-25 01:45:39', NULL),
(35, 'Barão', 'RS', '2021-05-25 01:45:39', NULL),
(36, 'Barão de Cotegipe', 'RS', '2021-05-25 01:45:39', NULL),
(37, 'Barão do Triunfo', 'RS', '2021-05-25 01:45:39', NULL),
(38, 'Barra do Guarita', 'RS', '2021-05-25 01:45:39', NULL),
(39, 'Barra do Quaraí', 'RS', '2021-05-25 01:45:39', NULL),
(40, 'Barra do Ribeiro', 'RS', '2021-05-25 01:45:39', NULL),
(41, 'Barra do Rio Azul', 'RS', '2021-05-25 01:45:39', NULL),
(42, 'Barra Funda', 'RS', '2021-05-25 01:45:39', NULL),
(43, 'Barracão Barros Cassal', 'RS', '2021-05-25 01:45:39', NULL),
(44, 'Benjamin Constant do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(45, 'Bento Gonçalves', 'RS', '2021-05-25 01:45:39', NULL),
(46, 'Boa Vista das Missões', 'RS', '2021-05-25 01:45:39', NULL),
(47, 'Boa Vista do Buricá', 'RS', '2021-05-25 01:45:39', NULL),
(48, 'Boa Vista do Cadeado', 'RS', '2021-05-25 01:45:39', NULL),
(49, 'Boa Vista do Incra', 'RS', '2021-05-25 01:45:39', NULL),
(50, 'Boa Vista do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(51, 'Bom Jesus', 'RS', '2021-05-25 01:45:39', NULL),
(52, 'Bom Princípio', 'RS', '2021-05-25 01:45:39', NULL),
(53, 'Bom Progresso', 'RS', '2021-05-25 01:45:39', NULL),
(54, 'Bom Retiro do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(55, 'Boqueirão do Leão', 'RS', '2021-05-25 01:45:39', NULL),
(56, 'Bossoroca', 'RS', '2021-05-25 01:45:39', NULL),
(57, 'Bozano', 'RS', '2021-05-25 01:45:39', NULL),
(58, 'Braga', 'RS', '2021-05-25 01:45:39', NULL),
(59, 'Brochier', 'RS', '2021-05-25 01:45:39', NULL),
(60, 'Butiá\r\n', 'RS', '2021-05-25 01:45:39', NULL),
(61, 'Caçapava do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(62, 'Cacequi', 'RS', '2021-05-25 01:45:39', NULL),
(63, 'Cachoeira do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(64, 'Cachoeirinha', 'RS', '2021-05-25 01:45:39', NULL),
(65, 'Cacique Doble', 'RS', '2021-05-25 01:45:39', NULL),
(66, 'Caibaté', 'RS', '2021-05-25 01:45:39', NULL),
(67, 'Caiçara', 'RS', '2021-05-25 01:45:39', NULL),
(68, 'Camaquã', 'RS', '2021-05-25 01:45:39', NULL),
(69, 'Camargo', 'RS', '2021-05-25 01:45:39', NULL),
(70, 'Cambará do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(71, 'Campestre da Serra', 'RS', '2021-05-25 01:45:39', NULL),
(72, 'Campina das Missões', 'RS', '2021-05-25 01:45:39', NULL),
(73, 'Campinas do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(74, 'Campo Bom', 'RS', '2021-05-25 01:45:39', NULL),
(75, 'Campo Novo', 'RS', '2021-05-25 01:45:39', NULL),
(76, 'Campos Borges', 'RS', '2021-05-25 01:45:39', NULL),
(77, 'Candelária', 'RS', '2021-05-25 01:45:39', NULL),
(78, 'Cândido Godói', 'RS', '2021-05-25 01:45:39', NULL),
(79, 'Candiota', 'RS', '2021-05-25 01:45:39', NULL),
(80, 'Canela', 'RS', '2021-05-25 01:45:39', NULL),
(81, 'Canguçu', 'RS', '2021-05-25 01:45:39', NULL),
(82, 'Canoas', 'RS', '2021-05-25 01:45:39', NULL),
(83, 'Canudos do Vale', 'RS', '2021-05-25 01:45:39', NULL),
(84, 'Capão Bonito do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(85, 'Capão da Canoa', 'RS', '2021-05-25 01:45:39', NULL),
(86, 'Capão do Cipó', 'RS', '2021-05-25 01:45:39', NULL),
(87, 'Capão do Leão', 'RS', '2021-05-25 01:45:39', NULL),
(88, 'Capela de Santana', 'RS', '2021-05-25 01:45:39', NULL),
(89, 'Capitão', 'RS', '2021-05-25 01:45:39', NULL),
(90, 'Capivari do Sul', 'RS', '2021-05-25 01:45:39', NULL),
(91, 'Caraá', 'RS', '2021-05-25 01:45:39', NULL),
(92, 'Carazinho', 'RS', '2021-05-25 01:45:40', NULL),
(93, 'Carlos Barbosa', 'RS', '2021-05-25 01:45:40', NULL),
(94, 'Carlos Gomes', 'RS', '2021-05-25 01:45:40', NULL),
(95, 'Casca', 'RS', '2021-05-25 01:45:40', NULL),
(96, 'Caseiros', 'RS', '2021-05-25 01:45:40', NULL),
(97, 'Catuípe', 'RS', '2021-05-25 01:45:40', NULL),
(98, 'Caxias do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(99, 'Centenário', 'RS', '2021-05-25 01:45:40', NULL),
(100, 'Cerrito', 'RS', '2021-05-25 01:45:40', NULL),
(101, 'Cerro Branco', 'RS', '2021-05-25 01:45:40', NULL),
(102, 'Cerro Grande', 'RS', '2021-05-25 01:45:40', NULL),
(103, 'Cerro Grande do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(104, 'Cerro Largo', 'RS', '2021-05-25 01:45:40', NULL),
(105, 'Chapada', 'RS', '2021-05-25 01:45:40', NULL),
(106, 'Charqueadas', 'RS', '2021-05-25 01:45:40', NULL),
(107, 'Charrua', 'RS', '2021-05-25 01:45:40', NULL),
(108, 'Chiapetta', 'RS', '2021-05-25 01:45:40', NULL),
(109, 'Chuí', 'RS', '2021-05-25 01:45:40', NULL),
(110, 'Chuvisca', 'RS', '2021-05-25 01:45:40', NULL),
(111, 'Cidreira', 'RS', '2021-05-25 01:45:40', NULL),
(112, 'Ciríaco', 'RS', '2021-05-25 01:45:40', NULL),
(113, 'Colinas', 'RS', '2021-05-25 01:45:40', NULL),
(114, 'Colorado', 'RS', '2021-05-25 01:45:40', NULL),
(115, 'Condor', 'RS', '2021-05-25 01:45:40', NULL),
(116, 'Constantina', 'RS', '2021-05-25 01:45:40', NULL),
(117, 'Coqueiro Baixo', 'RS', '2021-05-25 01:45:40', NULL),
(118, 'Coqueiros do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(119, 'Coronel Barros', 'RS', '2021-05-25 01:45:40', NULL),
(120, 'Coronel Bicaco', 'RS', '2021-05-25 01:45:40', NULL),
(121, 'Coronel Pilar', 'RS', '2021-05-25 01:45:40', NULL),
(122, 'Cotiporã', 'RS', '2021-05-25 01:45:40', NULL),
(123, 'Coxilha', 'RS', '2021-05-25 01:45:40', NULL),
(124, 'Crissiumal', 'RS', '2021-05-25 01:45:40', NULL),
(125, 'Cristal', 'RS', '2021-05-25 01:45:40', NULL),
(126, 'Cristal do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(127, 'Cruz Alta', 'RS', '2021-05-25 01:45:40', NULL),
(128, 'Cruzaltense', 'RS', '2021-05-25 01:45:40', NULL),
(129, 'Cruzeiro do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(130, 'David Canabarro', 'RS', '2021-05-25 01:45:40', NULL),
(131, 'Derrubadas', 'RS', '2021-05-25 01:45:40', NULL),
(132, 'Dezesseis de Novembro', 'RS', '2021-05-25 01:45:40', NULL),
(133, 'Dilermando de Aguiar', 'RS', '2021-05-25 01:45:40', NULL),
(134, 'Dois Irmãos', 'RS', '2021-05-25 01:45:40', NULL),
(135, 'Dois Irmãos das Missões', 'RS', '2021-05-25 01:45:40', NULL),
(136, 'Dois Lajeados', 'RS', '2021-05-25 01:45:40', NULL),
(137, 'Dom Feliciano', 'RS', '2021-05-25 01:45:40', NULL),
(138, 'Dom Pedrito', 'RS', '2021-05-25 01:45:40', NULL),
(139, 'Dom Pedro de Alcântara', 'RS', '2021-05-25 01:45:40', NULL),
(140, 'Dona Francisca', 'RS', '2021-05-25 01:45:40', NULL),
(141, 'Doutor Maurício Cardoso', 'RS', '2021-05-25 01:45:40', NULL),
(142, 'Doutor Ricardo', 'RS', '2021-05-25 01:45:40', NULL),
(143, ' Eldorado do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(144, 'Encantado', 'RS', '2021-05-25 01:45:40', NULL),
(145, 'Encruzilhada do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(146, 'Engenho Velho', 'RS', '2021-05-25 01:45:40', NULL),
(147, 'Entre-Ijuís', 'RS', '2021-05-25 01:45:40', NULL),
(148, 'Entre Rios do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(149, 'Erebango', 'RS', '2021-05-25 01:45:40', NULL),
(150, 'Erechim', 'RS', '2021-05-25 01:45:40', NULL),
(151, 'Ernestina', 'RS', '2021-05-25 01:45:40', NULL),
(152, 'Erval Grande', 'RS', '2021-05-25 01:45:40', NULL),
(153, 'Erval Seco', 'RS', '2021-05-25 01:45:40', NULL),
(154, 'Esmeralda', 'RS', '2021-05-25 01:45:40', NULL),
(155, 'Esperança do Sul', 'RS', '2021-05-25 01:45:40', NULL),
(156, 'Espumoso', 'RS', '2021-05-25 01:45:40', NULL),
(157, 'Estação', 'RS', '2021-05-25 01:45:40', NULL),
(158, 'Estância Velha', 'RS', '2021-05-25 01:45:40', NULL),
(159, 'Esteio', 'RS', '2021-05-25 01:45:40', NULL),
(160, 'Estrela', 'RS', '2021-05-25 01:45:40', NULL),
(161, 'Estrela Velha', 'RS', '2021-05-25 01:45:40', NULL),
(162, 'Eugênio de Castro', 'RS', '2021-05-25 01:45:40', NULL),
(163, 'Fagundes Varela', 'RS', '2021-05-25 01:45:40', NULL),
(164, 'Farroupilha', 'RS', '2021-05-25 01:45:40', NULL),
(165, 'Faxinal do Soturno', 'RS', '2021-05-25 01:45:40', NULL),
(166, 'Faxinalzinho', 'RS', '2021-05-25 01:45:40', NULL),
(167, 'Fazenda Vilanova', 'RS', '2021-05-25 01:45:40', NULL),
(168, 'Feliz', 'RS', '2021-05-25 01:45:40', NULL),
(169, 'Flores da Cunha', 'RS', '2021-05-25 01:45:40', NULL),
(170, 'Floriano Peixoto', 'RS', '2021-05-25 01:45:40', NULL),
(171, 'Fontoura Xavier', 'RS', '2021-05-25 01:45:40', NULL),
(172, 'Formigueiro', 'RS', '2021-05-25 01:45:40', NULL),
(173, 'Forquetinha', 'RS', '2021-05-25 01:45:40', NULL),
(174, 'Fortaleza dos Valos', 'RS', '2021-05-25 01:45:40', NULL),
(175, 'Frederico Westphalen', 'RS', '2021-05-25 01:45:40', NULL),
(176, 'Garibaldi', 'RS', '2021-05-25 01:45:40', NULL),
(177, 'Garruchos', 'RS', '2021-05-25 01:45:40', NULL),
(178, 'Gaurama', 'RS', '2021-05-25 01:45:40', NULL),
(179, 'General Câmara', 'RS', '2021-05-25 01:45:40', NULL),
(180, 'Gentil', 'RS', '2021-05-25 01:45:40', NULL),
(181, 'Getúlio Vargas', 'RS', '2021-05-25 01:45:40', NULL),
(182, 'Giruá', 'RS', '2021-05-25 01:45:40', NULL),
(183, 'Glorinha', 'RS', '2021-05-25 01:45:40', NULL),
(184, 'Gramado', 'RS', '2021-05-25 01:45:40', NULL),
(185, 'Gramado dos Loureiros', 'RS', '2021-05-25 01:45:40', NULL),
(186, 'Gramado Xavier', 'RS', '2021-05-25 01:45:40', NULL),
(187, 'Gravataí', 'RS', '2021-05-25 01:45:40', NULL),
(188, 'Guabiju', 'RS', '2021-05-25 01:45:40', NULL),
(189, 'Guaíba', 'RS', '2021-05-25 01:45:40', NULL),
(190, 'Guaporé', 'RS', '2021-05-25 01:45:40', NULL),
(191, 'Guarani das Missões', 'RS', '2021-05-25 01:45:40', NULL),
(192, 'Harmonia', 'RS', '2021-05-25 01:45:40', NULL),
(193, 'Herveiras', 'RS', '2021-05-25 01:45:40', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `company`
--

CREATE TABLE `company` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `company`
--

INSERT INTO `company` (`id`, `name`) VALUES
(1, '3º Cia'),
(2, 'CCSv');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departament`
--

CREATE TABLE `departament` (
  `id` int NOT NULL,
  `name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `departament`
--

INSERT INTO `departament` (`id`, `name`) VALUES
(1, 'Pel Com'),
(2, 'Com Soc');

-- --------------------------------------------------------

--
-- Estrutura da tabela `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `login` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `status` tinyint NOT NULL,
  `users_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `login`
--

INSERT INTO `login` (`id`, `login`, `password`, `updated_at`, `deleted_at`, `status`, `users_id`) VALUES
(1, 'eduardo', '$2y$10$wu9m5kW/CJd.WBCk1uKARe9W0zYSFTTIHyopj05XilBafLKOv9uHG', '2021-06-10 15:58:35', NULL, 1, 1),
(2, 'lulu_luardo', 'lulu', '2021-04-08 18:34:20', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `login_application`
--

CREATE TABLE `login_application` (
  `applications_id` int NOT NULL,
  `login_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `login_application`
--

INSERT INTO `login_application` (`applications_id`, `login_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2021_05_01_185548_create_sessions_table', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `permissions`
--

CREATE TABLE `permissions` (
  `id` int NOT NULL,
  `read` tinyint DEFAULT NULL,
  `write` tinyint DEFAULT NULL,
  `edit` tinyint DEFAULT NULL,
  `update` tinyint DEFAULT NULL,
  `login_id` int NOT NULL,
  `login_users_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `permissions`
--

INSERT INTO `permissions` (`id`, `read`, `write`, `edit`, `update`, `login_id`, `login_users_id`) VALUES
(1, 1, 1, 1, 1, 1, 1),
(2, 0, 1, 1, 0, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `ranks`
--

CREATE TABLE `ranks` (
  `id` int NOT NULL,
  `rank` varchar(45) NOT NULL DEFAULT 'POSTO OU GRADUAÇÃO POR EXTENSO',
  `rankAbbreviation` varchar(45) NOT NULL DEFAULT 'ABREVIAÇÃO DO POSTO OU GRADUAÇÃO',
  `rank_groups_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `ranks`
--

INSERT INTO `ranks` (`id`, `rank`, `rankAbbreviation`, `rank_groups_id`) VALUES
(1, 'General', 'Gen', 1),
(2, 'Coronel', 'Cel', 1),
(3, 'Tenente Coronel', 'TC', 1),
(4, 'Major', 'Maj', 1),
(5, 'Capitão', 'Cap', 1),
(6, '1°  Tenente', '1° Ten', 1),
(7, '2°  Tenente', '2° Ten', 1),
(8, 'Sub Tenente', 'ST', 2),
(9, '1° Sargento', '1° Sgt', 2),
(10, '2° Sargento', '2° Sgt', 2),
(11, '3° Sargento', '3° Sgt', 2),
(12, 'Cabo', 'Cb', 2),
(13, 'Soldado', 'Sd', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `rank_groups`
--

CREATE TABLE `rank_groups` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `rank_groups`
--

INSERT INTO `rank_groups` (`id`, `name`) VALUES
(1, 'Oficial'),
(2, 'Praça');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lNXIOGE02NEOBXBfPoQf1LbefVkVEaAABT7hiUyE', NULL, '127.0.0.1', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.93 Safari/537.36', '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OjA6e31zOjEyOiIAKgB3aXRoQ291bnQiO2E6MDp7fXM6MTA6IgAqAHBlclBhZ2UiO2k6MTU7czo2OiJleGlzdHMiO2I6MTtzOjE4OiJ3YXNSZWNlbnRseUNyZWF0ZWQiO2I6MDtzOjEzOiIAKgBhdHRyaWJ1dGVzIjthOjIzOntzOjI6ImlkIjtpOjE7czo0OiJuYW1lIjtzOjE1OiJFZHVhcmRvIE1hcnRpbnMiO3M6MTY6InByb2Zlc3Npb25hbE5hbWUiO3M6NzoiRWR1YXJkbyI7czo1OiJlbWFpbCI7czo5OiJlZHVAZ21haWwiO3M6NjoicGhvbmUxIjtpOjUxOTgwMjA0NTk1O3M6NjoicGhvbmUyIjtpOjUxOTgwNDIzMzY1O3M6NzoiYm9ybl9hdCI7czoxMDoiMjAyMS0wNS0xOSI7czoxMDoibW90aGVyTmFtZSI7czo2OiJSYXF1ZWwiO3M6MTA6ImZhdGhlck5hbWUiO3M6NzoiUmljYXJkbyI7czoxMDoibWlsaXRhcnlJZCI7czozOiIxMzAiO3M6MzoiY3BmIjtzOjExOiI4Nzc5Mjg3NzU1NSI7czo4OiJwaG90b1VybCI7czo1MDoiL3N0b3JhZ2UvaW1nX3Byb2ZpbGVzL2ltZ19wcm9maWxlX3VzZXJfZWR1YXJkby5qcGciO3M6Njoic3RyZWV0IjtzOjc6ImF2IGNhanUiO3M6MTI6ImhvdXNlX251bWJlciI7aTo1MjtzOjg6ImRpc3RyaWN0IjtzOjQ6ImNhanUiO3M6NzoiY2l0eV9pZCI7aToyO3M6MzoiY2VwIjtpOjkyNDgwMDAwO3M6MTA6ImNyZWF0ZWRfYXQiO3M6MTk6IjIwMjEtMDYtMTEgMDk6MTA6NTgiO3M6MTA6InVwZGF0ZWRfYXQiO3M6MTk6IjIwMjEtMDYtMTEgMTI6MTA6NTgiO3M6MTQ6ImRlcGFydGFtZW50X2lkIjtpOjE7czo3OiJyYW5rX2lkIjtpOjI7czoxMzoicmFua19ncm91cF9pZCI7aToxO3M6MTA6ImNvbXBhbnlfaWQiO2k6Mjt9czoxMToiACoAb3JpZ2luYWwiO2E6MjM6e3M6MjoiaWQiO2k6MTtzOjQ6Im5hbWUiO3M6MTU6IkVkdWFyZG8gTWFydGlucyI7czoxNjoicHJv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', 1623784142);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT 'NOME COMPLETO',
  `professionalName` varchar(45) NOT NULL DEFAULT 'NOME DE GUERRA',
  `email` varchar(200) DEFAULT NULL,
  `phone1` bigint DEFAULT NULL,
  `phone2` bigint DEFAULT NULL,
  `born_at` date DEFAULT NULL,
  `motherName` varchar(255) NOT NULL,
  `fatherName` varchar(255) DEFAULT NULL,
  `militaryId` varchar(12) NOT NULL,
  `cpf` varchar(12) NOT NULL,
  `photoUrl` varchar(255) DEFAULT 'LINK PARA STORAGE',
  `street` varchar(255) NOT NULL,
  `house_number` bigint DEFAULT NULL,
  `district` varchar(100) NOT NULL DEFAULT 'BAIRRO',
  `city_id` int DEFAULT NULL,
  `cep` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `departament_id` int NOT NULL,
  `rank_group_id` int DEFAULT NULL,
  `rank_id` int DEFAULT NULL,
  `company_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `professionalName`, `email`, `phone1`, `phone2`, `born_at`, `motherName`, `fatherName`, `militaryId`, `cpf`, `photoUrl`, `street`, `house_number`, `district`, `city_id`, `cep`, `updated_at`, `departament_id`, `rank_group_id`, `rank_id`, `company_id`) VALUES
(1, 'Eduardo Martins', 'Eduardo', 'edu@gmail', 51980204595, 51980423365, '2021-05-19', 'Raquel', 'Ricardo', '130', '87792877555', 'img/img_profiles/eduardo/img_profile_user_eduardo-15-06-2021-12-06-07.png', 'av caju', 52, 'caju', 2, 92480000, '2021-06-15 22:09:01', 1, NULL, 12, 2),
(2, 'LULU', 'LULU', NULL, NULL, NULL, NULL, 'LULA', 'LULE', 'LULU', 'LULU', 'LINK PARA STORAGE', 'LULU', 85, 'BAIRRO', 1, NULL, '2021-04-08 18:27:29', 2, NULL, 2, 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_applications_permissions1_idx` (`permissions_id`);

--
-- Índices para tabela `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `departament`
--
ALTER TABLE `departament`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_login_users1_idx` (`users_id`);

--
-- Índices para tabela `login_application`
--
ALTER TABLE `login_application`
  ADD PRIMARY KEY (`applications_id`,`login_id`),
  ADD KEY `fk_login_application_login1_idx` (`login_id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_permissions_login1_idx` (`login_id`,`login_users_id`);

--
-- Índices para tabela `ranks`
--
ALTER TABLE `ranks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_ranks_rank_groups1_idx` (`rank_groups_id`);

--
-- Índices para tabela `rank_groups`
--
ALTER TABLE `rank_groups`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_users_city_idx` (`city_id`),
  ADD KEY `fk_users_departament1_idx` (`departament_id`),
  ADD KEY `fk_users_company1_idx` (`company_id`),
  ADD KEY `fk_users_rank_groups1_idx` (`rank_group_id`) USING BTREE;

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT de tabela `company`
--
ALTER TABLE `company`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `departament`
--
ALTER TABLE `departament`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `ranks`
--
ALTER TABLE `ranks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `rank_groups`
--
ALTER TABLE `rank_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `fk_applications_permissions1` FOREIGN KEY (`permissions_id`) REFERENCES `permissions` (`id`);

--
-- Limitadores para a tabela `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `fk_login_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);

--
-- Limitadores para a tabela `login_application`
--
ALTER TABLE `login_application`
  ADD CONSTRAINT `fk_login_application_applications1` FOREIGN KEY (`applications_id`) REFERENCES `applications` (`id`),
  ADD CONSTRAINT `fk_login_application_login1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`);

--
-- Limitadores para a tabela `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_permissions_login1` FOREIGN KEY (`login_id`) REFERENCES `login` (`id`);

--
-- Limitadores para a tabela `ranks`
--
ALTER TABLE `ranks`
  ADD CONSTRAINT `fk_ranks_rank_groups1` FOREIGN KEY (`rank_groups_id`) REFERENCES `rank_groups` (`id`);

--
-- Limitadores para a tabela `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_users_city` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`),
  ADD CONSTRAINT `fk_users_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`),
  ADD CONSTRAINT `fk_users_departament1` FOREIGN KEY (`departament_id`) REFERENCES `departament` (`id`),
  ADD CONSTRAINT `fk_users_rank_groups1` FOREIGN KEY (`rank_group_id`) REFERENCES `rank_groups` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
