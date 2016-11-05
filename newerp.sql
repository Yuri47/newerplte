-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 05/11/2016 às 13:56
-- Versão do servidor: 5.7.16-0ubuntu0.16.04.1
-- Versão do PHP: 7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `newerp`
--
CREATE DATABASE IF NOT EXISTS `newerp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `newerp`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cartridges`
--

DROP TABLE IF EXISTS `cartridges`;
CREATE TABLE `cartridges` (
  `id` int(10) UNSIGNED NOT NULL,
  `osCartridge_id` int(11) NOT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `serialNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `cartridges`
--

INSERT INTO `cartridges` (`id`, `osCartridge_id`, `mark`, `number`, `serialNumber`, `price`, `state`, `created_at`, `updated_at`) VALUES
(1, 1, 'hp', '662', '226525', '10.00', 'Bom', '2016-10-18 12:59:54', '2016-10-19 16:26:39'),
(2, 1, 'hp', '662', '5698985', '15.00', 'Bom', '2016-10-18 12:59:54', '2016-10-19 16:28:28'),
(3, 2, 'hp', '662', '226525', '0.00', 'Entupido', '2016-10-18 13:15:43', '2016-10-19 20:13:39'),
(4, 2, 'hp', '662', '5698985', '0.00', 'Entupido', '2016-10-18 13:15:43', '2016-10-19 20:13:41'),
(5, 3, 'hp', '56', '55115522', '20.00', 'Bom', '2016-10-18 14:00:44', '2016-10-19 19:34:17'),
(6, 4, 'hp', '56', '55115522', '20.00', '', '2016-10-18 14:01:36', '2016-10-18 14:01:36'),
(7, 5, 'hp', '21', '212356', '10.00', 'Bom', '2016-10-18 14:13:35', '2016-10-19 16:21:52'),
(8, 5, 'hp', '22', '326598', '15.00', 'Bom', '2016-10-18 14:13:35', '2016-10-19 16:21:54'),
(9, 6, 'hp', '60', '6255854', '0.00', 'Entupido', '2016-10-18 18:21:00', '2016-10-19 16:12:33'),
(10, 6, 'hp', '60b', '226658', '10.00', 'Bom', '2016-10-18 18:21:00', '2016-10-19 16:12:34'),
(11, 6, 'hp', '122', '124512', '0.00', 'Cheio', '2016-10-18 18:21:00', '2016-10-19 16:12:35'),
(12, 6, 'hp', '122', '555542', '0.00', 'Cheio', '2016-10-18 18:21:00', '2016-10-19 16:12:37'),
(13, 6, 'hp', '22', '556584', '15.00', 'Bom', '2016-10-18 18:21:00', '2016-10-19 16:12:39'),
(14, 7, 'hp', '21', '454545', '10.00', 'Bom', '2016-10-18 22:02:07', '2016-10-19 16:00:45'),
(15, 7, 'hp', '21', '14545', '10.00', 'Cheio', '2016-10-18 22:02:07', '2016-10-19 16:11:17'),
(16, 7, 'hp', '22', '156416', '15.00', 'Entupido', '2016-10-18 22:02:07', '2016-10-19 16:11:19'),
(17, 8, 'hp', '122', '545345345', '10.00', 'Bom', '2016-10-19 16:31:00', '2016-10-19 16:31:08'),
(18, 8, 'hp', '122', '45457878', '0.00', 'Cheio', '2016-10-19 16:31:00', '2016-10-19 17:32:40'),
(19, 8, 'hp', '122', '5487544', '0.00', 'Entupido', '2016-10-19 16:31:00', '2016-10-19 17:32:42'),
(20, 9, 'hp', '662', '124556', '10.00', 'Bom', '2016-10-19 17:38:29', '2016-10-19 17:38:50'),
(21, 9, 'hp', '662', '124587', '15.00', 'Bom', '2016-10-19 17:38:29', '2016-10-19 17:38:36'),
(22, 10, 'hp', '622', '235644', '10.00', 'Bom', '2016-10-19 17:43:05', '2016-10-19 17:43:26'),
(23, 10, 'hp', '662', '121544', '0.00', 'Cheio', '2016-10-19 17:43:05', '2016-10-19 17:43:44'),
(24, 10, 'hp', '662', '232656', '0.00', 'Entupido', '2016-10-19 17:43:05', '2016-10-19 17:43:52'),
(25, 10, 'hp', '662', '326547', '0.00', 'Entupido', '2016-10-19 17:43:05', '2016-10-19 17:43:55'),
(26, 11, 'Hp', '122', '7643456', '15.00', 'Bom', '2016-10-19 22:15:42', '2016-10-19 22:16:30'),
(27, 11, 'Hp', '122', '6788996', '0.00', 'Cheio', '2016-10-19 22:15:42', '2016-10-19 22:16:36'),
(28, 12, 'hp ', '662', '225652', '0.00', 'Entupido', '2016-10-20 16:59:57', '2016-10-20 17:00:10'),
(29, 12, 'hp', '662', '569985', '15.00', 'Bom', '2016-10-20 16:59:57', '2016-10-20 17:07:43'),
(30, 13, 'hp', '60', '225522', '0.00', 'Entupido', '2016-10-25 18:37:31', '2016-10-25 18:37:40'),
(31, 14, 'HP', 'FDSF', 'FDSF', '0.00', 'Entupido', '2016-10-25 18:44:41', '2016-10-25 18:44:47'),
(32, 15, 'hp', '3213', '3213', '0.00', 'Entupido', '2016-10-25 18:46:13', '2016-10-25 18:46:17'),
(33, 16, 'hp', '43', '4234324', '0.00', 'Entupido', '2016-10-25 18:50:09', '2016-10-25 18:50:15'),
(34, 17, 'hp', '662', '125547', '10.00', 'Bom', '2016-10-25 18:56:45', '2016-10-25 18:56:51'),
(35, 17, 'hp', '662', '125536', '15.00', 'Bom', '2016-10-25 18:56:46', '2016-10-25 18:56:52'),
(36, 18, 'hp', '662', '221541', '10.00', 'Bom', '2016-10-25 19:04:13', '2016-10-25 19:04:19'),
(37, 19, 'hp', '662', '123325', '15.00', 'Bom', '2016-10-25 19:06:34', '2016-10-25 19:06:40'),
(38, 20, 'hp', '60', '336265', '10.00', '', '2016-10-25 19:38:44', '2016-10-25 19:38:44'),
(39, 20, 'hp', '60', '225475', '15.00', '', '2016-10-25 19:38:44', '2016-10-25 19:38:44'),
(40, 21, 'hp', '12', '62654', '10.00', '', '2016-10-25 19:39:28', '2016-10-25 19:39:28'),
(41, 21, 'hp', '23', '6586885', '15.00', '', '2016-10-25 19:39:28', '2016-10-25 19:39:28'),
(42, 22, 'Samsung', '285A', '221354', '45.00', '', '2016-10-25 19:48:45', '2016-10-25 19:48:45'),
(43, 23, 'hp', '321', '323665', '55.00', '', '2016-10-25 19:52:10', '2016-10-25 19:52:10'),
(44, 24, 'hp', '321', '323665', '55.00', 'Bom', '2016-10-25 19:52:54', '2016-11-03 15:35:29'),
(45, 25, 'hp', '321', '323665', '0.00', 'Entupido', '2016-10-25 19:53:02', '2016-10-25 20:27:38'),
(46, 26, 'hp', '321', '323665', '55.00', 'Bom', '2016-10-25 19:53:19', '2016-10-25 20:22:07'),
(47, 27, 'hp', '60', '225658', '10.00', 'Bom', '2016-10-25 20:01:37', '2016-10-25 20:01:54'),
(48, 27, 'hp', '60', '2365214', '16.00', 'Bom', '2016-10-25 20:01:37', '2016-10-25 20:01:55'),
(49, 28, 'hp', '662', '254652', '10.00', 'Bom', '2016-10-25 20:02:44', '2016-10-25 20:02:55'),
(50, 28, 'hp', '662', '234458', '17.00', 'Bom', '2016-10-25 20:02:44', '2016-10-25 20:02:57'),
(51, 29, 'hp', '62', '125548', '65.00', 'Bom', '2016-10-25 20:22:44', '2016-10-25 20:22:49'),
(52, 30, 'hp', '662', '626262', '35.00', 'Bom', '2016-10-25 20:35:30', '2016-10-26 15:25:43'),
(53, 31, 'hp', '662', '226525', '0.00', 'Cheio', '2016-10-25 20:40:57', '2016-10-25 21:04:24'),
(54, 32, 'hp', '665', 'tgrt', '15.00', 'Bom', '2016-10-25 21:23:00', '2016-10-26 15:25:30'),
(55, 33, 'hp', '662', '626262', '0.00', 'Cheio', '2016-10-26 14:36:29', '2016-10-26 15:06:41'),
(56, 33, 'hp', '662', '232323', '16.00', 'Bom', '2016-10-26 14:36:29', '2016-10-26 15:13:24'),
(57, 33, 'hp', '662', '262625', '20.00', 'Bom', '2016-10-26 14:36:29', '2016-10-26 15:13:25'),
(58, 34, 'hp', '662', '265458', '10.00', 'Bom', '2016-10-26 18:20:44', '2016-10-26 18:21:01'),
(59, 34, 'hp', '662', '236658', '15.00', 'Bom', '2016-10-26 18:20:44', '2016-10-26 18:21:02'),
(60, 34, 'hp', '662', '225648', '0.00', 'Entupido', '2016-10-26 18:20:44', '2016-10-26 18:21:05'),
(61, 35, 'hp', '22', '235541', '15.00', 'Bom', '2016-11-03 15:36:08', '2016-11-03 15:36:12'),
(62, 36, 'hp', '662', '785578', '10.00', 'Bom', '2016-11-03 15:42:59', '2016-11-03 15:43:05'),
(63, 36, 'hp', '662', '958471', '15.00', 'Bom', '2016-11-03 15:43:00', '2016-11-03 15:43:07'),
(64, 36, 'hp', '285A', '2215421335', '65.00', 'Bom', '2016-11-03 15:43:00', '2016-11-03 15:43:10'),
(65, 36, 'hp', '662', '221252', '0.00', 'Entupido', '2016-11-03 15:43:00', '2016-11-03 15:43:12'),
(66, 37, 'hp', '662', '2366225', '15.00', 'Bom', '2016-11-03 15:46:19', '2016-11-03 15:46:24'),
(67, 37, 'hp', '662', '124578', '10.00', 'Bom', '2016-11-03 15:46:19', '2016-11-03 15:46:26'),
(68, 37, 'hp', '662', '123362', '15.00', 'Bom', '2016-11-03 15:46:19', '2016-11-03 15:46:27'),
(69, 37, 'hp', '662', '236958', '0.00', 'Cheio', '2016-11-03 15:46:19', '2016-11-03 15:46:28'),
(70, 38, 'hp', '662', '251151', '10.00', 'Bom', '2016-11-03 15:47:48', '2016-11-03 15:47:57'),
(71, 38, 'hp', '662', '263352', '15.00', 'Bom', '2016-11-03 15:47:48', '2016-11-03 15:47:56'),
(72, 38, 'hp', '662', '169585', '0.00', 'Cheio', '2016-11-03 15:47:49', '2016-11-03 15:47:59'),
(73, 39, 'hp', '662', '152265', '10.00', 'Bom', '2016-11-03 16:00:28', '2016-11-03 16:00:35'),
(74, 40, 'hp', '662', '236698', '15.00', '', '2016-11-03 16:03:48', '2016-11-03 16:03:48'),
(75, 40, 'hp', '662', '336963', '10.00', '', '2016-11-03 16:03:48', '2016-11-03 16:03:48'),
(76, 41, 'hp', '662', '265948', '0.00', 'Entupido', '2016-11-03 16:07:43', '2016-11-03 16:08:00'),
(77, 42, 'hp', '662', '323265', '15.00', 'Bom', '2016-11-03 20:23:32', '2016-11-03 20:23:36'),
(78, 43, 'hp', '662', '13548984', '0.00', 'Cheio', '2016-11-03 20:24:07', '2016-11-03 20:24:30'),
(79, 44, 'hp', '285a', '55889966', '55.00', 'Bom', '2016-11-04 16:26:33', '2016-11-04 16:26:39'),
(80, 44, 'samsung', '17', '32132569', '80.00', 'Bom', '2016-11-04 16:26:33', '2016-11-04 16:26:41'),
(81, 44, 'hp', '662', '235532', '0.00', 'Entupido', '2016-11-04 16:26:33', '2016-11-04 16:26:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `cashes`
--

DROP TABLE IF EXISTS `cashes`;
CREATE TABLE `cashes` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `cashes`
--

INSERT INTO `cashes` (`id`, `price`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, '0.00', 'Instalação com BKP', 'money', '2016-10-25 18:12:40', '2016-10-25 18:12:40'),
(2, '280.00', 'Instalação + bkp + memoria 8gb', 'money', '2016-10-25 18:18:38', '2016-10-25 18:18:38'),
(3, '3221.00', 'Instalação', 'money', '2016-10-25 18:19:50', '2016-10-25 18:19:50'),
(17, '25.00', 'Recarga', 'money', '2016-10-25 18:56:58', '2016-10-25 18:56:58'),
(18, '10.00', 'Recarga', 'money', '2016-10-25 19:04:23', '2016-10-25 19:04:23'),
(19, '50.00', 'Placa mãe com defeito', 'money', '2016-10-25 19:06:09', '2016-10-25 19:06:09'),
(20, '15.00', 'Recarga', 'money', '2016-10-25 19:06:43', '2016-10-25 19:06:43'),
(21, '55.00', 'Recarga', 'money', '2016-10-25 19:53:02', '2016-10-25 19:53:02'),
(22, '55.00', 'Recarga', 'money', '2016-10-25 19:53:19', '2016-10-25 19:53:19'),
(23, '26.00', 'Recarga', 'money', '2016-10-25 20:01:37', '2016-10-25 20:01:37'),
(24, '27.00', 'Recarga', 'money', '2016-10-25 20:03:02', '2016-10-25 20:03:02'),
(25, '65.00', 'Recarga', 'money', '2016-10-25 20:22:53', '2016-10-25 20:22:53'),
(26, '35.00', 'Recarga', 'money', '2016-10-25 20:35:30', '2016-10-25 20:35:30'),
(27, '39.00', 'Recarga', 'money', '2016-10-25 20:40:57', '2016-10-25 20:40:57'),
(28, '51.00', 'Recarga', 'money', '2016-10-26 14:36:29', '2016-10-26 14:36:29'),
(29, '40.00', 'Recarga', 'money', '2016-10-26 18:20:44', '2016-10-26 18:20:44'),
(30, '320.00', 'Instalação + bkp + memoria 8gb', 'money', '2016-11-03 15:30:55', '2016-11-03 15:30:55'),
(31, '15.00', 'Recarga', 'money', '2016-11-03 15:36:16', '2016-11-03 15:36:16'),
(32, '100.00', 'Recarga', 'money', '2016-11-03 15:43:00', '2016-11-03 15:43:00'),
(33, '55.00', 'Recarga', 'money', '2016-11-03 15:46:19', '2016-11-03 15:46:19'),
(34, '35.00', 'Recarga', 'money', '2016-11-03 15:47:49', '2016-11-03 15:47:49'),
(35, '10.00', 'Recarga. OS: 39', 'money', '2016-11-03 16:00:38', '2016-11-03 16:00:38'),
(36, '25.00', 'Recarga', 'money', '2016-11-03 16:03:48', '2016-11-03 16:03:48'),
(37, '35.00', 'Recarga. OS: 41', 'money', '2016-11-03 16:07:43', '2016-11-03 16:07:43'),
(38, '60.00', 'Instalação. OS: 107', 'money', '2016-11-03 16:22:13', '2016-11-03 16:22:13'),
(39, '15.00', 'Recarga. OS: 42', 'money', '2016-11-03 20:23:39', '2016-11-03 20:23:39'),
(40, '16.00', 'Recarga. OS: 43', 'money', '2016-11-03 20:24:07', '2016-11-03 20:24:07'),
(41, '62.00', '62626. OS: 108', 'money', '2016-11-03 20:27:04', '2016-11-03 20:27:04'),
(42, '160.00', 'Install + BKP (760 GB). OS: 109', 'money', '2016-11-04 12:49:53', '2016-11-04 12:49:53'),
(43, '145.00', 'Recarga. OS: 44', 'money', '2016-11-04 16:26:33', '2016-11-04 16:26:33'),
(44, '60.00', 'Instalação. OS: 110', 'money', '2016-11-04 18:36:41', '2016-11-04 18:36:41'),
(45, '70.00', 'Instalação. OS: 111', 'debit', '2016-11-04 18:52:15', '2016-11-04 18:52:15'),
(46, '290.00', 'Instalação + bkp + memoria 8gb. OS: 112', 'credit', '2016-11-04 20:07:33', '2016-11-04 20:07:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `clients`
--

DROP TABLE IF EXISTS `clients`;
CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `clients`
--

INSERT INTO `clients` (`id`, `name`, `address`, `fone`, `created_at`, `updated_at`) VALUES
(1, 'Deangelo O\'Connell II', 'Port Halie', '593.338.8008 x9699', NULL, NULL),
(2, 'Reyna Labadie Sr.', 'New Victoria', '(521) 519-7521 x964', NULL, NULL),
(3, 'Ms. Clotilde Prosacco', 'Lysanneburgh', '1-442-748-1950', NULL, NULL),
(4, 'Zoey Heidenreich', 'New Juwan', '+14314413405', NULL, NULL),
(5, 'Dr. Micaela Wehner', 'South Nathentown', '+1.932.393.9829', NULL, NULL),
(6, 'Murray Gutmann', 'North Hardyville', '736.751.6602 x367', NULL, NULL),
(7, 'Mrs. Maurine Maggio DDS', 'Karliemouth', '(789) 497-2358 x1620', NULL, NULL),
(8, 'May Schmitt', 'North Herminioborough', '(452) 780-7246', NULL, NULL),
(9, 'Mr. Linwood Prohaska', 'Port Forrestfort', '801-554-8432', NULL, NULL),
(10, 'Mrs. Madeline Green IV', 'Moorebury', '364-471-3725', NULL, NULL),
(11, 'Ms. Kiarra Waters', 'Port Malika', '656-252-3922', NULL, NULL),
(12, 'Buford Swift', 'North Aliabury', '1-365-960-2328 x8807', NULL, NULL),
(13, 'Carlo Lemke', 'Celestinetown', '+14803592400', NULL, NULL),
(14, 'Alessandro L', 'rrre', '3334', NULL, '2016-09-14 21:50:45'),
(15, 'Thelma Stoltenberg DVM', 'West Tess', '6188458897', NULL, '2016-10-14 20:47:38'),
(16, 'Mittie Spencer', 'Kendrickton', '338-260-3681', NULL, NULL),
(17, 'Brenda Balistreri', 'North Adrianna', '+1 (848) 271-9279', NULL, NULL),
(18, 'Mrs. Ashly Howe', 'Emieside', '649.207.0402', NULL, NULL),
(19, 'Waino Wiza', 'Kayshire', '+1 (264) 772-7005', NULL, NULL),
(20, 'Ervin Heaney', 'West Amiefort', '261-321-2103', NULL, NULL),
(21, 'Mose Torp', 'New Tatyanachester', '587.790.5568', NULL, NULL),
(22, 'Ms. Mabel Ferry', 'East August', '1-470-324-8766 x03145', NULL, NULL),
(23, 'Mrs. Kristy Franecki III', 'New Leonardburgh', '1-745-464-0913', NULL, NULL),
(24, 'Laverne Shields MD', 'Lornaport', '1-374-387-1790 x7919', NULL, NULL),
(25, 'Magali Wunsch', 'Mantehaven', '(404) 591-5278', NULL, NULL),
(26, 'Mr. Norval Friesen', 'Port Fletcherbury', '(537) 971-4006 x053', NULL, NULL),
(27, 'Leon Kuvalis I', 'Josephberg', '+1-952-904-7644', NULL, NULL),
(28, 'Abby Jacobs Bitch', 'Rio de Fevereiro', '99559988', NULL, '2016-09-14 21:33:59'),
(29, 'Bridget Ortiz', 'Lake Anita', '1-365-459-0685 x1723', NULL, NULL),
(30, 'Bethel Marks', 'Lake Brionnastad', '586.527.0200', NULL, NULL),
(31, 'Jayne Muller', 'Diannabury', '(337) 801-8940 x07475', NULL, NULL),
(32, 'Breanne Heaney', 'South Justynberg', '+1 (637) 861-9302', NULL, NULL),
(33, 'Bettie Haag2', 'West Destineemouth', '(61) 99182-9742', NULL, '2016-10-21 18:09:14'),
(34, 'Bernita Haley DVM', 'Reichelstad', '531-535-3648 x387', NULL, NULL),
(35, 'Leonard Bayer', 'Layneville', '(315) 669-9985 x695', NULL, NULL),
(36, 'Anabelle Miller I', 'East Josiahport', '1-920-735-1478 x5242', NULL, NULL),
(37, 'Dr. Kristoffer Kessler V', 'Melodyview', '207-871-8267 x388', NULL, NULL),
(38, 'Prof. Fleta Larson', 'East Jordonfort', '231.852.3639 x5585', NULL, NULL),
(39, 'Enid Romaguera MD', 'New Lennyborough', '896-334-9304 x2101', NULL, NULL),
(40, 'Sandra Donnelly', 'South Marciaport', '394.339.9151', NULL, NULL),
(41, 'Jermaine Doyle', 'East Natasha', '919-689-6177', NULL, NULL),
(42, 'Fannie Hills', 'Gialand', '1-349-432-3530', NULL, NULL),
(43, 'Prof. Noel Luettgen', 'Martinabury', '335-483-0705 x77559', NULL, NULL),
(44, 'Mossie Collins', 'Nolanview', '1-404-704-9992 x905', NULL, NULL),
(45, 'Karolann Satterfield', 'Schmittmouth', '(213) 626-0635', NULL, NULL),
(46, 'Zachery Sauer', 'Corwintown', '359.909.6045 x34181', NULL, NULL),
(47, 'Mr. Jess Collins III', 'West Kristofferchester', '1-620-380-2634 x8916', NULL, NULL),
(48, 'Mrs. Zena Daugherty Jr.', 'Wintheisershire', '1-554-380-3170 x571', NULL, NULL),
(49, 'Mr. Madisen Lesch', 'Daphneeside', '(582) 673-3883 x19807', NULL, NULL),
(50, 'Prof. Malachi Hyatt', 'Corwinfurt', '262-232-1675 x6930', NULL, NULL),
(51, 'Yuri Caetano', 'QC 01 Conj D', '61991829742', NULL, '2016-09-14 17:43:24'),
(52, 'Yuri Alexsander', 'QC 01 Conj D', '61991829742', NULL, NULL),
(53, 'test novo modo de save', 'Teste model save', 'teste', '2016-09-14 18:40:25', '2016-09-14 18:40:25'),
(54, 'Alessandro Sants', 'Rio de Fevereiro', '554477441', '2016-09-14 18:59:07', '2016-10-05 20:37:23'),
(55, 'Alessandro Others', 'adsasdsfasdf7', '98987676f', '2016-09-14 19:10:31', '2016-09-15 19:11:50'),
(56, 'Michel Burnings', 'Missouri', '77756334343', '2016-09-14 23:13:19', '2016-09-14 23:13:19'),
(57, 'Michel Burnings', 'Missouri', '22', '2016-09-15 18:07:03', '2016-09-15 18:07:23'),
(58, 'Lars', 'Metallica', '4666665', '2016-09-15 23:47:26', '2016-09-15 23:47:26'),
(59, 'Lars', 'Metallica', '4666665', '2016-09-15 23:48:03', '2016-09-15 23:48:03'),
(60, 'Robert', 'Bass', '445788', '2016-09-15 23:48:31', '2016-09-15 23:48:31'),
(61, 'Kirk ', 'One', '11566', '2016-09-15 23:51:53', '2016-09-15 23:51:53'),
(62, 'Uol', '223', '223', '2016-09-15 23:58:47', '2016-09-15 23:58:47'),
(63, 'Winner', '1231', 'Metal', '2016-09-16 00:07:18', '2016-09-16 00:07:18'),
(64, 'Gente', '44444', '44444', '2016-09-16 00:12:19', '2016-09-16 00:12:19'),
(65, 'Spartacus', 'Roma', '666626', '2016-09-16 13:03:38', '2016-09-16 13:03:38'),
(66, 'Spartacus', 'Roma', '666626', '2016-09-16 13:04:54', '2016-09-16 13:04:54'),
(67, 'Spartacus', 'Roma', '666626', '2016-09-16 14:28:08', '2016-09-16 14:28:08'),
(68, 'Spartacus', 'Roma', '666626', '2016-09-16 14:30:37', '2016-09-16 14:30:37'),
(69, 'Spartacus', 'Roma', '666626', '2016-09-16 14:34:14', '2016-09-16 14:34:14'),
(70, 'Spartacus', 'Roma', '666626', '2016-09-16 14:34:28', '2016-09-16 14:34:28'),
(71, 'Spartacus', 'Roma', '666626', '2016-09-16 14:35:03', '2016-09-16 14:35:03'),
(72, 'Spartacus', 'Roma', '666626', '2016-09-16 14:46:19', '2016-09-16 14:46:19'),
(73, 'Spartacus', 'Roma', '666626', '2016-09-16 14:51:40', '2016-09-16 14:51:40'),
(74, 'Spartacus', 'Roma', '666626', '2016-09-16 14:52:20', '2016-09-16 14:52:20'),
(75, 'Spartacus', 'Roma', '666626', '2016-09-16 14:53:14', '2016-09-16 14:53:14'),
(76, 'Spartacus', 'Roma', '666626', '2016-09-16 14:57:05', '2016-09-16 14:57:05'),
(77, 'Spartacus', 'Roma', '666626', '2016-09-16 14:57:16', '2016-09-16 14:57:16'),
(78, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829746', '2016-09-16 16:31:20', '2016-10-18 22:00:33'),
(79, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 16:33:14', '2016-09-16 16:33:14'),
(80, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 16:42:21', '2016-09-16 16:42:21'),
(81, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 16:53:55', '2016-09-16 16:53:55'),
(82, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 17:00:13', '2016-09-16 17:00:13'),
(83, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 17:02:05', '2016-09-16 17:02:05'),
(84, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 17:12:00', '2016-09-16 17:12:00'),
(85, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 17:12:41', '2016-09-16 17:12:41'),
(86, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 17:13:18', '2016-09-16 17:13:18'),
(87, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 18:27:20', '2016-09-16 18:27:20'),
(88, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 18:27:34', '2016-09-16 18:27:34'),
(89, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 18:33:36', '2016-09-16 18:33:36'),
(90, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 18:34:10', '2016-09-16 18:34:10'),
(91, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 18:35:22', '2016-09-16 18:35:22'),
(92, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 18:35:47', '2016-09-16 18:35:47'),
(93, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:19:09', '2016-09-16 19:19:09'),
(94, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:20:27', '2016-09-16 19:20:27'),
(95, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:23:04', '2016-09-16 19:23:04'),
(96, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:25:42', '2016-09-16 19:25:42'),
(97, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:32:27', '2016-09-16 19:32:27'),
(98, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:36:16', '2016-09-16 19:36:16'),
(99, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:38:02', '2016-09-16 19:38:02'),
(100, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:44:52', '2016-09-16 19:44:52'),
(101, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:51:37', '2016-09-16 19:51:37'),
(102, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 19:59:46', '2016-09-16 19:59:46'),
(103, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:00:30', '2016-09-16 20:00:30'),
(104, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:01:11', '2016-09-16 20:01:11'),
(105, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:02:09', '2016-09-16 20:02:09'),
(106, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:08:06', '2016-09-16 20:08:06'),
(107, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:08:53', '2016-09-16 20:08:53'),
(108, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:09:07', '2016-09-16 20:09:07'),
(109, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:12:57', '2016-09-16 20:12:57'),
(110, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:14:20', '2016-09-16 20:14:20'),
(111, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:15:08', '2016-09-16 20:15:08'),
(112, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:18:47', '2016-09-16 20:18:47'),
(113, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:20:30', '2016-09-16 20:20:30'),
(114, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:21:31', '2016-09-16 20:21:31'),
(115, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:21:52', '2016-09-16 20:21:52'),
(116, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:22:15', '2016-09-16 20:22:15'),
(117, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:23:01', '2016-09-16 20:23:01'),
(118, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:23:16', '2016-09-16 20:23:16'),
(119, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:23:51', '2016-09-16 20:23:51'),
(120, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:23:58', '2016-09-16 20:23:58'),
(121, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:24:40', '2016-09-16 20:24:40'),
(122, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:35:33', '2016-09-16 20:35:33'),
(123, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:35:52', '2016-09-16 20:35:52'),
(124, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:38:31', '2016-09-16 20:38:31'),
(125, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 20:38:53', '2016-09-16 20:38:53'),
(126, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 21:06:57', '2016-09-16 21:06:57'),
(127, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 21:07:50', '2016-09-16 21:07:50'),
(128, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 21:08:13', '2016-09-16 21:08:13'),
(129, 'Yuri Alexsander Barbosa Caetano', 'QC 01 Conj D Numero 04 Loja 03', '(61) 9-91829742', '2016-09-16 21:18:46', '2016-09-16 21:18:46'),
(130, 'Santa Maria', 'Santa Maria', '98959694', '2016-09-19 20:10:08', '2016-09-19 20:10:08'),
(131, 'gfdg', 'gfdg', 'gfdg', '2016-09-23 15:38:11', '2016-09-23 15:38:11'),
(132, 'Eminem', 'New York', '5558454548', '2016-10-05 19:09:20', '2016-10-05 19:09:20'),
(133, 'ClienteCartucho', 'Santa Maria', '6191817161', '2016-10-17 20:48:37', '2016-10-17 20:48:37'),
(134, 'ClienteCartucho', 'Santa Maria', '6191817161', '2016-10-17 20:48:56', '2016-10-17 20:48:56'),
(135, 'ClienteCartucho', 'Santa Maria', '6191817161', '2016-10-17 20:49:11', '2016-10-17 20:49:11'),
(136, 'Cliente Cartucho Editado', 'Santa Maria', '6191817161', '2016-10-17 20:50:40', '2016-10-17 20:50:40'),
(137, 'Cliente Cartucho Editado 2', 'Santa Maria', '6191817161', '2016-10-17 20:51:29', '2016-10-17 20:51:29'),
(138, 'Cliente Cartucho Editado 23', 'Santa Maria', '6191817161', '2016-10-17 20:53:34', '2016-10-17 20:53:34'),
(139, 'Cliente Cartucho Editado 11', 'Santa Maria', '6191817161', '2016-10-17 20:57:18', '2016-10-17 20:57:18'),
(140, 'Cliente Cartucho Editado ed', 'Santa Maria', '6191817161', '2016-10-17 20:59:03', '2016-10-17 20:59:03'),
(141, 'Novo t', 'Novo t', 'Novo t', '2016-10-17 20:59:49', '2016-10-17 20:59:49'),
(142, 'Novo t3', 'Novo t', 'Novo t', '2016-10-17 21:02:24', '2016-10-17 21:02:24'),
(143, 'new name cartridge', 'new name cartridge', 'new name cartridge', '2016-10-17 21:03:29', '2016-10-17 21:03:29'),
(144, 'sem t33336', 'Novo t', 'Novo t', '2016-10-17 21:03:58', '2016-10-17 21:05:29'),
(145, 'Novo t5', 'Novo t', 'Novo t', '2016-10-17 21:08:19', '2016-10-17 21:08:19'),
(146, '3232', '3232', '(32) 3234-2', '2016-10-17 21:08:57', '2016-10-21 18:10:34'),
(147, '3333', '33333', '33333', '2016-10-17 21:10:12', '2016-10-17 21:10:12'),
(148, '333336', '33333', '33333', '2016-10-17 21:11:29', '2016-10-18 19:25:01'),
(149, '4444', '33333', '33333', '2016-10-17 21:12:07', '2016-10-17 21:15:34'),
(150, 'Highway', 'Desert', '6655489944', '2016-10-18 12:59:54', '2016-10-18 12:59:54'),
(151, 'Highway', 'Desert', '6655489944', '2016-10-18 13:15:43', '2016-10-18 13:15:43'),
(152, 'Teste celular', 'Santa Maria', '996764467', '2016-10-19 22:15:42', '2016-10-19 22:15:42'),
(153, 'Yuri Alexsander', 'QC C 08', '(61) 99182-9742', '2016-10-21 18:35:25', '2016-10-21 18:35:25');

-- --------------------------------------------------------

--
-- Estrutura para tabela `collect_equips`
--

DROP TABLE IF EXISTS `collect_equips`;
CREATE TABLE `collect_equips` (
  `id` int(10) UNSIGNED NOT NULL,
  `os_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `doc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `collect_equips`
--

INSERT INTO `collect_equips` (`id`, `os_id`, `name`, `doc`, `created_at`, `updated_at`) VALUES
(3, 100, 'Yuri', '2632574', '2016-10-13 20:33:09', '2016-10-13 20:33:09'),
(4, 99, 'Buford Swift', '66956695', '2016-10-13 21:21:34', '2016-10-13 21:21:34'),
(5, 89, 'Anabelle', '55897968541', '2016-10-13 21:49:40', '2016-10-13 21:49:40'),
(6, 103, 'Yuri', '2632574', '2016-10-18 21:59:44', '2016-10-18 21:59:44'),
(7, 98, 'Eminem', '33659958', '2016-10-25 18:08:26', '2016-10-25 18:08:26'),
(8, 97, 'Yuri', '2632574', '2016-10-25 18:12:40', '2016-10-25 18:12:40'),
(9, 105, 'Yuri Alexsander Barbosa Caetano', '2632574', '2016-10-25 18:18:38', '2016-10-25 18:18:38'),
(10, 104, '3333', '2632574', '2016-10-25 18:19:50', '2016-10-25 18:19:50'),
(11, 106, 'Alessandro', '2255449', '2016-10-25 19:06:09', '2016-10-25 19:06:09'),
(12, 102, 'Carlo Lemke', '66956695', '2016-11-03 15:30:55', '2016-11-03 15:30:55'),
(13, 107, 'Bernita', '2632574', '2016-11-03 16:22:13', '2016-11-03 16:22:13'),
(14, 108, 'Carlo Lemke', '6262626', '2016-11-03 20:27:03', '2016-11-03 20:27:03'),
(15, 109, 'Yuri', '2632574', '2016-11-04 12:49:52', '2016-11-04 12:49:52'),
(16, 110, 'Yuri Alexsander Barbosa Caetano', '2632574', '2016-11-04 18:36:41', '2016-11-04 18:36:41'),
(17, 111, 'Yuri', '2632574', '2016-11-04 18:52:15', '2016-11-04 18:52:15'),
(18, 112, 'Yuri Alexsander Barbosa Caetano', '6262626', '2016-11-04 20:07:33', '2016-11-04 20:07:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `os_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `comments`
--

INSERT INTO `comments` (`id`, `os_id`, `name`, `comment`, `created_at`, `updated_at`) VALUES
(1, 98, 'Yuri Alexs', 'Apresentou 08 badblocks', '2016-10-05 20:31:24', '2016-10-05 20:31:24'),
(2, 98, 'Yuri Alexs', 'Esse é um outro comentario para testes', '2016-10-05 22:07:36', '2016-10-05 22:07:36'),
(3, 98, 'Yuri Alexs', 'meu Deus, outro comentario!', '2016-10-05 22:16:56', '2016-10-05 22:16:56'),
(4, 98, 'Yuri Alexs', 'Só mais um', '2016-10-05 22:17:43', '2016-10-05 22:17:43'),
(5, 98, 'Yuri Alexs', 'Só mais um', '2016-10-05 22:17:57', '2016-10-05 22:17:57'),
(6, 99, 'Yuri Alexs', 'Primeiro comentario', '2016-10-05 22:18:56', '2016-10-05 22:18:56'),
(7, 99, 'Yuri Alexs', 'Segundo comentario', '2016-10-05 22:19:24', '2016-10-05 22:19:24'),
(8, 99, 'Yuri Alexs', 'terceiro comentario', '2016-10-13 13:16:15', '2016-10-13 13:16:15'),
(9, 100, 'Yuri Alexs', 'coment', '2016-10-13 14:18:33', '2016-10-13 14:18:33'),
(10, 100, 'Yuri Alexs', 'um coment', '2016-10-13 14:40:14', '2016-10-13 14:40:14'),
(11, 89, 'Yuri Alexs', 'Apresentou 08 badblocks', '2016-10-13 21:49:10', '2016-10-13 21:49:10'),
(12, 103, 'Yuri Alexs', 'Apresentou 08 badblocks', '2016-10-18 21:58:44', '2016-10-18 21:58:44'),
(13, 105, 'Yuri Alexs', 'Aumentou a memória + 8gb', '2016-10-25 18:18:00', '2016-10-25 18:18:00'),
(14, 102, 'Yuri Alexs', '123', '2016-11-01 20:26:10', '2016-11-01 20:26:10'),
(15, 108, 'Yuri Alexs', '62626', '2016-11-03 20:26:49', '2016-11-03 20:26:49'),
(16, 109, 'Yuri Alexs', 'Mais de 750 GB de Arquivos, cobrar a mais.', '2016-11-04 11:59:34', '2016-11-04 11:59:34');

-- --------------------------------------------------------

--
-- Estrutura para tabela `equipaments`
--

DROP TABLE IF EXISTS `equipaments`;
CREATE TABLE `equipaments` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `serialNumber` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `design` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observations` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `problem` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `equipaments`
--

INSERT INTO `equipaments` (`id`, `client_id`, `type`, `serialNumber`, `mark`, `design`, `observations`, `problem`, `created_at`, `updated_at`) VALUES
(1, 64, '', '1A22545444', 'Positivo', '', 'Caiu', 'Não Liga', '2016-09-16 00:12:19', '2016-09-16 00:12:19'),
(2, 64, '', '2A65889554', 'Samsung', '', 'Caiu', 'Trocar tela', '2016-09-16 00:15:42', '2016-09-16 00:15:42'),
(3, 52, '', 'L11254666', 'Lenovo', '', '', 'Instalação sem bkp', '2016-09-16 00:16:32', '2016-09-16 00:16:32'),
(4, 66, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 13:04:54', '2016-09-16 13:04:54'),
(5, 67, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:28:08', '2016-09-16 14:28:08'),
(6, 68, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:30:37', '2016-09-16 14:30:37'),
(7, 69, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:34:14', '2016-09-16 14:34:14'),
(8, 70, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:34:28', '2016-09-16 14:34:28'),
(9, 71, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:35:03', '2016-09-16 14:35:03'),
(10, 72, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:46:19', '2016-09-16 14:46:19'),
(11, 73, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:51:40', '2016-09-16 14:51:40'),
(12, 74, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:52:20', '2016-09-16 14:52:20'),
(13, 75, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:53:14', '2016-09-16 14:53:14'),
(14, 76, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:57:05', '2016-09-16 14:57:05'),
(15, 77, '', '22114558', 'Samsung', 'E460', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:57:16', '2016-09-16 14:57:16'),
(16, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:58:13', '2016-09-16 14:58:13'),
(17, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:58:17', '2016-09-16 14:58:17'),
(18, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:58:37', '2016-09-16 14:58:37'),
(19, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:59:53', '2016-09-16 14:59:53'),
(20, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 14:59:59', '2016-09-16 14:59:59'),
(21, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:01:30', '2016-09-16 15:01:30'),
(22, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:31:53', '2016-09-16 15:31:53'),
(23, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:47:49', '2016-09-16 15:47:49'),
(24, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:48:12', '2016-09-16 15:48:12'),
(25, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:51:23', '2016-09-16 15:51:23'),
(26, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:52:03', '2016-09-16 15:52:03'),
(27, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:54:17', '2016-09-16 15:54:17'),
(28, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:56:26', '2016-09-16 15:56:26'),
(29, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:58:49', '2016-09-16 15:58:49'),
(30, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 15:59:49', '2016-09-16 15:59:49'),
(31, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:01:21', '2016-09-16 16:01:21'),
(32, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:16:46', '2016-09-16 16:16:46'),
(33, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:19:20', '2016-09-16 16:19:20'),
(34, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:25:41', '2016-09-16 16:25:41'),
(35, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:25:58', '2016-09-16 16:25:58'),
(36, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:27:00', '2016-09-16 16:27:00'),
(37, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:27:23', '2016-09-16 16:27:23'),
(38, 59, '', '1A22545444', 'Lenovo', 'G40', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:27:34', '2016-09-16 16:27:34'),
(39, 78, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:31:20', '2016-09-16 16:31:20'),
(40, 79, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:33:14', '2016-09-16 16:33:14'),
(41, 80, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:42:21', '2016-09-16 16:42:21'),
(42, 81, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 16:53:55', '2016-09-16 16:53:55'),
(43, 82, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 17:00:13', '2016-09-16 17:00:13'),
(44, 83, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 17:02:05', '2016-09-16 17:02:05'),
(45, 84, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 17:12:00', '2016-09-16 17:12:00'),
(46, 85, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 17:12:41', '2016-09-16 17:12:41'),
(47, 86, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 17:13:18', '2016-09-16 17:13:18'),
(48, 87, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 18:27:20', '2016-09-16 18:27:20'),
(49, 88, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 18:27:34', '2016-09-16 18:27:34'),
(50, 89, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 18:33:36', '2016-09-16 18:33:36'),
(51, 90, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 18:34:10', '2016-09-16 18:34:10'),
(52, 91, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 18:35:22', '2016-09-16 18:35:22'),
(53, 92, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 18:35:47', '2016-09-16 18:35:47'),
(54, 93, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:19:09', '2016-09-16 19:19:09'),
(55, 94, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:20:27', '2016-09-16 19:20:27'),
(56, 95, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:23:05', '2016-09-16 19:23:05'),
(57, 96, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:25:43', '2016-09-16 19:25:43'),
(58, 97, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:32:27', '2016-09-16 19:32:27'),
(59, 98, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:36:16', '2016-09-16 19:36:16'),
(60, 99, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:38:02', '2016-09-16 19:38:02'),
(61, 100, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:44:52', '2016-09-16 19:44:52'),
(62, 101, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:51:37', '2016-09-16 19:51:37'),
(63, 102, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 19:59:46', '2016-09-16 19:59:46'),
(64, 103, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:00:31', '2016-09-16 20:00:31'),
(65, 104, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:01:11', '2016-09-16 20:01:11'),
(66, 105, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:02:09', '2016-09-16 20:02:09'),
(67, 106, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:08:06', '2016-09-16 20:08:06'),
(68, 107, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:08:53', '2016-09-16 20:08:53'),
(69, 108, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:09:07', '2016-09-16 20:09:07'),
(70, 109, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:12:57', '2016-09-16 20:12:57'),
(71, 110, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:14:20', '2016-09-16 20:14:20'),
(72, 111, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:15:08', '2016-09-16 20:15:08'),
(73, 112, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:18:47', '2016-09-16 20:18:47'),
(74, 113, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:20:30', '2016-09-16 20:20:30'),
(75, 114, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:21:31', '2016-09-16 20:21:31'),
(76, 115, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:21:52', '2016-09-16 20:21:52'),
(77, 116, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:22:15', '2016-09-16 20:22:15'),
(78, 117, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:23:01', '2016-09-16 20:23:01'),
(79, 118, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:23:16', '2016-09-16 20:23:16'),
(80, 119, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:23:51', '2016-09-16 20:23:51'),
(81, 120, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:23:58', '2016-09-16 20:23:58'),
(82, 121, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:24:40', '2016-09-16 20:24:40'),
(83, 122, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:35:33', '2016-09-16 20:35:33'),
(84, 123, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:35:52', '2016-09-16 20:35:52'),
(85, 124, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:38:31', '2016-09-16 20:38:31'),
(86, 125, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 20:38:53', '2016-09-16 20:38:53'),
(87, 126, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 21:06:58', '2016-09-16 21:06:58'),
(88, 127, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 21:07:50', '2016-09-16 21:07:50'),
(89, 128, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 21:08:13', '2016-09-16 21:08:13'),
(90, 129, '', '1A22545444', 'Lenovo', 'G420', 'não deixou fonte', 'Instalação sem bkp', '2016-09-16 21:18:46', '2016-09-16 21:18:46'),
(91, 130, '', 'ewqeffdsf', 'Lenovo', 'Premium', 'não deixou fonte', 'Instalação sem bkp', '2016-09-19 20:10:08', '2016-09-19 20:10:08'),
(92, 36, '', 'fdsf', 'Positivo', 'Premium', 'não deixou fonte', 'Instalação sem bkp', '2016-09-19 20:14:07', '2016-09-19 20:14:07'),
(93, 131, '', 'gf', '', '', '', '', '2016-09-23 15:38:11', '2016-09-23 15:38:11'),
(94, 52, 'COMPUTADOR', '222545478', 'Lenovo', 'E460', 'Chegou em 115v', 'Instalação com BKP', '2016-09-23 15:42:37', '2016-09-23 15:42:37'),
(95, 52, 'COMPUTADOR', '222545478', 'Lenovo', 'E460', 'Chegou em 115v', 'Instalação com BKP', '2016-09-23 15:43:16', '2016-09-23 15:43:16'),
(96, 52, 'COMPUTADOR', '222545478', 'Lenovo', 'E460', 'Chegou em 115v', 'Instalação com BKP', '2016-09-23 15:52:48', '2016-09-23 15:52:48'),
(97, 33, 'IMPRESSORA', 'fdsf', 'Lenovo', 'Premium', 'não deixou fonte', 'Não liga', '2016-09-23 16:34:27', '2016-09-23 16:34:27'),
(98, 12, 'COMPUTADOR', '336633666', 'Samsung', 'Premium', 'não deixou fonte', 'Instalação sem bkp', '2016-09-23 20:11:59', '2016-09-23 20:11:59'),
(99, 1, 'NOTEBOOK', 'ewqe', 'Positivo', 'fdsf', 'não deixou fonte', 'Instalação sem bkp', '2016-09-23 20:31:04', '2016-09-23 20:31:04'),
(100, 33, 'NOTEBOOK', 'ewqeffdsf', 'Positivo', 'Premium', 'Caiu', 'Não liga', '2016-09-28 15:27:06', '2016-09-28 15:27:06'),
(101, 132, 'NOTEBOOK', '1A22545444', 'Positivo', 'Premium', 'não deixou fonte', 'Instalação sem bkp', '2016-10-05 19:09:21', '2016-10-05 19:09:21'),
(102, 54, 'NOTEBOOK', '1A22545444', 'Lenovo', 'Premium', 'não deixou fonte', 'Instalação sem bkp', '2016-10-05 20:38:39', '2016-10-05 20:38:39'),
(103, 12, 'NOTEBOOK', '66696969', 'Dell', 'Inspiron', 'não deixou fonte', 'Instalação', '2016-10-13 13:39:36', '2016-10-13 13:39:36'),
(104, 13, 'NOTEBOOK', '66696969', 'Dell', 'Inspiron', 'não deixou fonte', 'Instalação', '2016-10-14 19:53:13', '2016-10-14 19:53:13'),
(105, 15, 'COMPUTADOR', '66696969', 'Dell', 'Inspiron', 'não deixou fonte', 'Instalação', '2016-10-14 20:47:51', '2016-10-14 20:47:51'),
(106, 55, 'NOTEBOOK', '66696969', 'Dell', 'Inspiron', 'não deixou fonte', 'Instalação', '2016-10-17 15:45:02', '2016-10-17 15:45:02'),
(107, 78, 'NOTEBOOK', '66696969', 'Dell', 'Inspiron', 'não deixou fonte', 'Instalação', '2016-10-18 22:00:45', '2016-10-18 22:00:45'),
(108, 153, 'NOTEBOOK', '66225598458', 'Lenovo', 'e430', 'Deixou fonte NS: 5544854522255', 'Instalação com BKP', '2016-10-21 18:35:25', '2016-10-21 18:35:25'),
(109, 54, 'NOTEBOOK', '66265556', 'hp', 'C62', '', 'Nao liga', '2016-10-25 19:05:27', '2016-10-25 19:05:27'),
(110, 34, 'NOTEBOOK', '236565656', 'hp', 'hhj121', 'nao deixou fonte', 'Instalação', '2016-11-03 16:21:57', '2016-11-03 16:21:57'),
(111, 36, 'NOTEBOOK', '62626', '2626', '26262', '62', '62', '2016-11-03 20:26:44', '2016-11-03 20:26:44'),
(112, 52, 'NOTEBOOK', '9958995', 'Lenovo', 'E430', 'Deixou Fonte: 65464584', 'Instalação Com BKP', '2016-11-04 11:58:05', '2016-11-04 11:58:05'),
(113, 52, 'NOTEBOOK', '266565', 'Lenovo', '325', 'sem bkp', 'Instalação', '2016-11-04 18:36:24', '2016-11-04 18:36:24'),
(114, 133, 'COMPUTADOR', '215', '1515', '15', '15', '15', '2016-11-04 18:37:44', '2016-11-04 18:37:44'),
(115, 79, 'NOTEBOOK', '6545', '4546', '54654', '54', '6546', '2016-11-04 20:07:12', '2016-11-04 20:07:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_12_152924_create_clients_table', 1),
('2016_09_14_235542_create_equipaments_table', 2),
('2016_09_15_222237_create_service_orders_table', 3),
('2016_10_05_164515_create_comments_table', 4),
('2016_10_05_170405_comet', 5),
('2016_10_13_160932_create_collect_equips_table', 6),
('2016_10_17_173624_create_os_cartridges_table', 7),
('2016_10_17_173637_create_cartridges_table', 7),
('2016_10_25_140614_create_cashes_table', 8),
('2016_10_25_140626_create_retire_cashes_table', 8);

-- --------------------------------------------------------

--
-- Estrutura para tabela `os_cartridges`
--

DROP TABLE IF EXISTS `os_cartridges`;
CREATE TABLE `os_cartridges` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pay` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `cash_id` int(9) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `os_cartridges`
--

INSERT INTO `os_cartridges` (`id`, `client_id`, `state`, `pay`, `price`, `name`, `cash_id`, `created_at`, `updated_at`) VALUES
(1, 150, 'ENTREGUE', 'no', '0', '', 0, '2016-10-18 12:59:54', '2016-10-19 20:13:24'),
(2, 151, 'ENTREGUE', 'no', '0', '', 0, '2016-10-18 13:15:43', '2016-10-19 20:13:45'),
(3, 149, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-18 14:00:44', '2016-10-19 19:58:15'),
(4, 149, 'RECEBIDO', 'yes', '0', '', 0, '2016-10-18 14:01:36', '2016-10-18 14:01:36'),
(5, 45, 'RECEBIDO', 'no', '0', '', 0, '2016-10-18 14:13:35', '2016-10-18 14:13:35'),
(6, 78, 'PRONTO', 'no', '0', '', 0, '2016-10-18 18:21:00', '2016-10-19 19:29:49'),
(7, 78, 'RECEBIDO', 'no', '0', '', 0, '2016-10-18 22:02:07', '2016-10-18 22:02:07'),
(8, 28, 'ENTREGUE', 'no', '0', '', 0, '2016-10-19 16:31:00', '2016-10-19 22:13:19'),
(9, 23, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-19 17:38:29', '2016-10-19 20:11:35'),
(10, 6, 'PRONTO', 'no', '0', '', 0, '2016-10-19 17:43:05', '2016-10-19 19:13:22'),
(11, 152, 'RECEBIDO', 'no', '0', '', 0, '2016-10-19 22:15:42', '2016-10-19 22:15:42'),
(12, 32, 'ENTREGUE', 'no', '0', '', 0, '2016-10-20 16:59:57', '2016-10-25 18:29:11'),
(13, 29, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 18:37:31', '2016-10-25 18:40:23'),
(14, 146, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 18:44:41', '2016-10-25 18:44:51'),
(15, 32, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 18:46:13', '2016-10-25 18:46:20'),
(16, 54, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 18:50:08', '2016-10-25 18:56:11'),
(17, 20, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 18:56:45', '2016-10-25 18:56:58'),
(18, 55, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 19:04:13', '2016-10-25 19:04:24'),
(19, 13, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 19:06:34', '2016-10-25 19:06:43'),
(20, 14, 'RECEBIDO', 'yes', '0', '', 0, '2016-10-25 19:38:44', '2016-10-25 19:38:44'),
(21, 55, 'RECEBIDO', 'yes', '0', '', 0, '2016-10-25 19:39:28', '2016-10-25 19:39:28'),
(22, 33, 'RECEBIDO', 'yes', '0', '', 0, '2016-10-25 19:48:45', '2016-10-25 19:48:45'),
(23, 42, 'RECEBIDO', 'yes', '0', '', 0, '2016-10-25 19:52:10', '2016-10-25 19:52:10'),
(24, 42, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-25 19:52:54', '2016-11-03 15:35:33'),
(25, 42, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-25 19:53:02', '2016-10-25 20:27:45'),
(26, 42, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-25 19:53:19', '2016-10-25 20:22:14'),
(27, 78, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-25 20:01:37', '2016-10-25 20:02:03'),
(28, 42, 'ENTREGUE', 'no', '0', '', 0, '2016-10-25 20:02:44', '2016-10-25 20:03:02'),
(29, 12, 'ENTREGUE', 'yes', '0', '', 0, '2016-10-25 20:22:44', '2016-10-25 20:22:53'),
(30, 13, 'PRONTO', 'yes', '0', '', 0, '2016-10-25 20:35:30', '2016-10-26 15:25:44'),
(31, 29, 'ENTREGUE', 'yes', '0', '', 27, '2016-10-25 20:40:57', '2016-10-26 18:17:22'),
(32, 32, 'PRONTO', 'no', '0', '', 0, '0000-00-00 00:00:00', '2016-10-26 15:25:32'),
(33, 55, 'ENTREGUE', 'yes', '0', '', 28, '2016-10-26 14:36:28', '2016-10-26 18:08:02'),
(34, 21, 'ENTREGUE', 'yes', '0', '', 29, '2016-10-26 18:20:44', '2016-10-26 18:21:20'),
(35, 133, 'ENTREGUE', 'yes', '0', '', 0, '2016-11-03 15:36:08', '2016-11-03 15:36:16'),
(36, 39, 'ENTREGUE', 'yes', '0', '', 32, '2016-11-03 15:42:59', '2016-11-03 15:43:23'),
(37, 17, 'ENTREGUE', 'yes', '0', '', 33, '2016-11-03 15:46:19', '2016-11-03 15:46:36'),
(38, 29, 'ENTREGUE', 'yes', '0', '', 34, '2016-11-03 15:47:48', '2016-11-03 15:49:03'),
(39, 36, 'ENTREGUE', 'yes', '0', '', 0, '2016-11-03 16:00:28', '2016-11-03 16:00:38'),
(40, 12, 'RECEBIDO', 'yes', '0', '', 36, '2016-11-03 16:03:47', '2016-11-03 16:03:48'),
(41, 36, 'ENTREGUE', 'yes', '0', '', 37, '2016-11-03 16:07:43', '2016-11-03 16:08:05'),
(42, 34, 'ENTREGUE', 'yes', '0', '', 0, '2016-11-03 20:23:32', '2016-11-03 20:23:39'),
(43, 34, 'ENTREGUE', 'yes', '0', '', 40, '2016-11-03 20:24:07', '2016-11-03 20:24:34'),
(44, 32, 'ENTREGUE', 'yes', '0', '', 43, '2016-11-04 16:26:32', '2016-11-04 16:26:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `retire_cashes`
--

DROP TABLE IF EXISTS `retire_cashes`;
CREATE TABLE `retire_cashes` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `retire_cashes`
--

INSERT INTO `retire_cashes` (`id`, `price`, `description`, `type`, `created_at`, `updated_at`) VALUES
(3, '15.00', 'Devoluçao de Recarga', 'retire', '2016-10-26 18:21:20', '2016-10-26 18:21:20'),
(4, '10.00', 'Devoluçao de Recarga', 'retire', '2016-11-03 15:43:23', '2016-11-03 15:43:23'),
(5, '15.00', 'Devoluçao de Recarga. OS: {"id":37,"client_id":17,"state":"PRONTO","pay":"yes","price":"0","name":"","cash_id":33,"created_at":"2016-11-03 13:46:19","updated_at":"2016-11-03 13:46:32"}', 'retire', '2016-11-03 15:46:36', '2016-11-03 15:46:36'),
(6, '10.00', 'Devoluçao de Recarga. OS: 38', 'retire', '2016-11-03 15:49:03', '2016-11-03 15:49:03'),
(7, '35.00', 'Devoluçao de Recarga. OS: 41', 'retire', '2016-11-03 16:08:05', '2016-11-03 16:08:05'),
(8, '16.00', 'Devoluçao de Recarga. OS: 43', 'retire', '2016-11-03 20:24:33', '2016-11-03 20:24:33'),
(9, '20.00', 'Vale Yuri', 'sake', '2016-11-04 16:13:17', '2016-11-04 16:13:17'),
(10, '10.00', 'Devoluçao de Recarga. OS: 44', 'retire', '2016-11-04 16:26:50', '2016-11-04 16:26:50');

-- --------------------------------------------------------

--
-- Estrutura para tabela `service_orders`
--

DROP TABLE IF EXISTS `service_orders`;
CREATE TABLE `service_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `equipament_id` int(11) NOT NULL,
  `state` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `technical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `observations` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `finalReport` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` decimal(8,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `service_orders`
--

INSERT INTO `service_orders` (`id`, `client_id`, `equipament_id`, `state`, `technical`, `observations`, `finalReport`, `price`, `created_at`, `updated_at`) VALUES
(89, 36, 92, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação', '80', '2016-09-19 20:14:07', '2016-10-13 21:49:41'),
(91, 52, 94, 'PRONTO', 'Bob Marley', '', 'Instalação com BKP', '0', '2016-09-23 15:42:37', '2016-10-05 20:48:15'),
(92, 52, 95, 'PRONTO', 'Yuri Alexsander', '', 'Instalação com BKP', '0', '2016-09-23 15:43:16', '2016-09-27 20:21:40'),
(93, 52, 96, 'PRONTO', 'Bob Marley', '', 'Instalação com BKP', '0', '2016-09-23 15:52:48', '2016-09-27 16:36:05'),
(94, 33, 97, 'PRONTO', 'Yuri Alexsander', '', 'Instal', '0', '2016-09-23 16:34:27', '2016-09-27 20:19:29'),
(40, 82, 43, 'ANALISE', '', '', '', '0', '2016-09-16 17:00:13', '2016-09-16 17:00:13'),
(87, 129, 90, 'PRONTO', 'Yuri Alexsander', '', 'Instalação + Upgrade', '250', '2016-09-16 21:18:46', '2016-10-14 21:02:55'),
(88, 130, 91, 'PRONTO', 'Yuri Alexsander', '', 'Instalação', '70', '2016-09-19 20:10:08', '2016-10-14 20:25:08'),
(95, 12, 98, 'PRONTO', 'Yuri Alexsander', '', 'Instal', '0', '2016-09-23 20:11:59', '2016-09-27 16:34:06'),
(96, 1, 99, 'PRONTO', 'Bob Marley', '', 'Instalação com BKP', '0', '2016-09-23 20:31:04', '2016-09-27 20:18:44'),
(97, 33, 100, 'ENTREGUE', 'Bob Marley', '', 'Instalação com BKP', '0', '2016-09-28 15:27:06', '2016-10-25 18:12:40'),
(98, 132, 101, 'ENTREGUE', 'Yuri Alexsander', '', 'Install', '60', '2016-10-05 19:09:21', '2016-10-25 18:08:26'),
(99, 54, 102, 'ENTREGUE', 'Yuri Alexsander', '', 'Install', '70', '2016-10-05 20:38:39', '2016-10-13 21:21:35'),
(100, 12, 103, 'ENTREGUE', 'Yuri Alexsander', '', 'Instal', '0', '2016-10-13 13:39:36', '2016-10-13 20:33:09'),
(101, 13, 104, 'RECEBIDO', '', '', '', '0', '2016-10-14 19:53:13', '2016-10-14 19:53:13'),
(102, 15, 105, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação + bkp + memoria 8gb', '320', '2016-10-14 20:47:51', '2016-11-03 15:30:55'),
(103, 55, 106, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação', '80', '2016-10-17 15:45:02', '2016-10-18 21:59:44'),
(104, 78, 107, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação', '3221', '2016-10-18 22:00:45', '2016-10-25 18:19:50'),
(105, 153, 108, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação + bkp + memoria 8gb', '280', '2016-10-21 18:35:25', '2016-10-25 18:18:38'),
(106, 54, 109, 'ENTREGUE', 'Bob Marley', '', 'Placa mãe com defeito', '50', '2016-10-25 19:05:27', '2016-10-25 19:06:09'),
(107, 34, 110, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação', '60', '2016-11-03 16:21:57', '2016-11-03 16:22:13'),
(108, 36, 111, 'ENTREGUE', 'Yuri Alexsander', '', '62626', '62', '2016-11-03 20:26:44', '2016-11-03 20:27:04'),
(109, 52, 112, 'ENTREGUE', 'Yuri Alexsander', '', 'Install + BKP (760 GB)', '160', '2016-11-04 11:58:05', '2016-11-04 12:49:53'),
(110, 52, 113, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação', '60', '2016-11-04 18:36:24', '2016-11-04 18:36:41'),
(111, 133, 114, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação', '70', '2016-11-04 18:37:44', '2016-11-04 18:52:16'),
(112, 79, 115, 'ENTREGUE', 'Yuri Alexsander', '', 'Instalação + bkp + memoria 8gb', '290', '2016-11-04 20:07:12', '2016-11-04 20:07:33');

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tomasa Fadel V', 'elena47@hotmail.com', '$2y$10$dOklb9G4H.ABOlIajU/tVuQcnpoUs5729eYES/UjrBclmHWGlk2be', 'l874NMxQ2c', NULL, NULL),
(2, 'Khalid Kshlerin', 'davin25@pfannerstill.com', '$2y$10$o8nNkIpmQ7Z7lTcMBpK5M.QZSEao3xaodd5hFX0IRzQ0sXpYZpyW2', 'rhu0GMc52o', NULL, NULL),
(3, 'Augusta Paucek MD', 'jfritsch@hotmail.com', '$2y$10$pl4uoeC/9ABrLwrWRHYeg.apeOc.eGhExznWwOlJg64151I14z.3a', 'NHtr0KYrGB', NULL, NULL),
(4, 'Ruth Goyette Jr.', 'ithompson@treutel.net', '$2y$10$QMMHvcB48Ozl9Md5TS8aVuvPFaNV97tGQ9ZiuFPVusy5Ivx9YW.b6', 'ZnjOAgdjEd', NULL, NULL),
(5, 'Giovani Leuschke DVM', 'feeney.isai@zboncak.com', '$2y$10$qN8fPzIsIUUphmsKy1ZP6ev7.J4zsGimZL3rnvv3drz35VOW2oZGO', 'gJ7to8gSnA', NULL, NULL),
(6, 'Taya Upton', 'nmonahan@ernser.net', '$2y$10$S44d2Q/3uvL93/q6zVwupOUH5BRih/O9vt5K0Boo6kEKvpVFuApQq', '7lLyQBHVJn', NULL, NULL),
(7, 'Mr. Augustus Roberts', 'kweber@gmail.com', '$2y$10$S5hs8MqYjXA7xX07n1dxvu7RQneY/qiH1YAqG9wnarkarb.nqAPo.', 'GgAvdPkhQ4', NULL, NULL),
(8, 'Janet Witting', 'jayne24@hotmail.com', '$2y$10$Wa6voxEREL.0q9riuHo.VeXJf6qhWOIbZKEJsQoJG2D5lG6pzNBeK', '3zmP2Glj88', NULL, NULL),
(9, 'Dario Walker', 'grimes.halle@hotmail.com', '$2y$10$BVMNQFIFNQlVAcFZOhLOUeLshuxHBDoN4uXXo1kcxRCUA8gsUNdpm', 'zAaPfXQwNS', NULL, NULL),
(10, 'Marianne Ebert', 'alessia28@zemlak.net', '$2y$10$r1AxwRAOiHuUZKYBeGhsC.KEX6c85BaLn.sFRZbAtx7ugmBvJk69S', 'vMDZDkMg4I', NULL, NULL),
(11, 'Ms. Raina Treutel MD', 'pwalter@rippin.org', '$2y$10$Y4JzT4DYrIGGHCTIsnabfuJFgut3JmOuhj7a24p44uhbTN3YPhTLS', 'McxxweWEtF', NULL, NULL),
(12, 'Amanda Okuneva', 'jameson.kiehn@emmerich.com', '$2y$10$9nN5bulkqllpB5F8nB3qqeyP8d9edpNT6jsIFsGEk1BG0FSfnDlzG', 'WPxZoYC5FO', NULL, NULL),
(13, 'Presley Mayer', 'jaquelin86@gmail.com', '$2y$10$xehjy5RnOu6aXoy5Dzq65Ov03h9mH9Hyr32qLPT7qnsM4dpd1RHTG', 'gxgp6NZoqN', NULL, NULL),
(14, 'Madison Zboncak', 'travon.kshlerin@lebsack.info', '$2y$10$WG3xUEQR4RbFlNded7Ew.OjQePaZO5zabEe.9dzUC/ytQPYb0p.Xe', 'KikzXY2sAF', NULL, NULL),
(15, 'Julianne Davis', 'gilbert.boyle@yahoo.com', '$2y$10$sxGdK.NRDZhaV8nIhbRRFeqOjAboLtINcY5YZP/YsRB8hN1GeiRZq', 'A5VdwdhGfk', NULL, NULL),
(16, 'Maymie Bosco', 'uorn@ankunding.net', '$2y$10$GkTwcjwY3VCP13OKaSueROTzGgOhQXKotyrTdjg3lXQ8KSepODdwi', 'I4IFNWfPib', NULL, NULL),
(17, 'Dr. Albin Wunsch', 'ojohnston@yahoo.com', '$2y$10$vgaOKhftjKZ3/RSzZZAo7epQTA/STy5aNgfkAjy3IT55SQEALx3qa', 'RUHgKY8sMd', NULL, NULL),
(18, 'Aida Wunsch Jr.', 'oschuster@hotmail.com', '$2y$10$FzrFCUYad/IalEfAL8DQLem1IsPgXGuybT.V2WVdUbdP8HNY.0HwS', 'ktzTQbjHBd', NULL, NULL),
(19, 'Martina Kilback', 'russell.romaguera@jerde.com', '$2y$10$msGhH7glubDmh8dKxANyquZ0Pn5xyATyTiE8LDO3Vd8tq.UG8g3Qy', '0rWS9gnKrW', NULL, NULL),
(20, 'Mr. Jakob Sawayn', 'knikolaus@gmail.com', '$2y$10$qCbavO4Jr63eDB2VHhog3ul7lTzXUzD61mEMnNCHkoKDAPQ02E6La', 'pIpCS7IclY', NULL, NULL),
(21, 'Dr. Delaney O\'Reilly Jr.', 'orin91@gmail.com', '$2y$10$2a4dMePVZUkZh9XsoXhAQuo7M.0BJId3D5.LR/t4IOEYgNwqPI.Uq', '5gNLdh3QAi', NULL, NULL),
(22, 'Mrs. Jazmin Conroy Jr.', 'nickolas42@oconner.net', '$2y$10$BxkhyMJDKQiY96WpXiWxB.CFn55Zf3GPsXYXypJJbO/Gw1DtdVnLy', 'fNXNvf3Fsu', NULL, NULL),
(23, 'Maia Fritsch', 'bode.christina@lesch.com', '$2y$10$cASqX7YGVERpZrQ9uUxKIeiSSkCwdaNU0NXgK7V/EXe.9X2xtVZNe', 'h5vxPtZcMO', NULL, NULL),
(24, 'Marion Murray', 'lprosacco@turner.info', '$2y$10$h.VaG48ccuLjdYxTMO9DxuB8eqRNlAODlPajSA/Pp7JONgOXnpcyi', 'znaRB46aEE', NULL, NULL),
(25, 'Randi Marvin', 'jimmy76@gmail.com', '$2y$10$94zvoMEznhK2Ew6au67EgeN.RiKpkPSvSE6BXl7P7E5.YAzytVbr2', 'JrGowStacA', NULL, NULL),
(26, 'Cassandra Romaguera', 'gretchen04@yahoo.com', '$2y$10$.EkcIhjf5nvHGNeEt8aU5.YVnbQCpcMAsIeQQYnyMugwFroZypNCi', 'ZIIgUAgqPA', NULL, NULL),
(27, 'Flavio Predovic', 'bonnie.tromp@mccullough.com', '$2y$10$f4dD4t2a8Sq2nfYoOWmMY.ZwNR8pA2jC0LzgWnZ5aF7Jg677fCHZi', '2BlHVG44QL', NULL, NULL),
(28, 'Florian Klocko II', 'gennaro.king@gmail.com', '$2y$10$Ox0k0pc1S8hHotu5wfrkYe4OY7U3GMBKm7ZMzy/ddmMehIKDyiCOi', '4GrYB80JU5', NULL, NULL),
(29, 'Jaida Fritsch', 'iboyer@ziemann.com', '$2y$10$lKNsdFH/yuATAY3ck9A33.xEtoJIIc85Q0yr8Pukc0Dl0TJzHMrxa', '1Ik9w2tcIw', NULL, NULL),
(30, 'Darrin Gerhold', 'stella13@kovacek.com', '$2y$10$oRWRi8UYWzGg5brNG7JoL.9kd4FDoyLnkUJvKWJbk1oXvNGK364gS', 'mniydVesSL', NULL, NULL),
(31, 'Mohammad Cruickshank', 'hilll.everette@ortiz.info', '$2y$10$FicrDXaXCJd9GuY./txBN.IqODiXqz5GvSmZOl7gTZDaRq8X.1lGW', 'Bi09UZp74H', NULL, NULL),
(32, 'Alvera Baumbach', 'hgottlieb@gmail.com', '$2y$10$DXMiJA54cojzjbv1/aiBlu7pTAwfCgDvdU66LlqmuYpOldrHGi0Pi', 'ER00x96miW', NULL, NULL),
(33, 'Armand Lakin', 'nledner@hotmail.com', '$2y$10$W7XOsgZAg5Z4dTPuMZt/s.GADoUS24wSmZDd/qPnybVbzudhsPVuS', 'uQpF4nWQP9', NULL, NULL),
(34, 'Maximo Ernser MD', 'satterfield.jonas@yahoo.com', '$2y$10$sN5oG19dFjC.brEo2UEFhul.YkiVeg0ipf6CNSlIyg64tDyPXa4Cu', 'nUefNZRbmW', NULL, NULL),
(35, 'Ceasar Swift', 'shania.kemmer@leuschke.com', '$2y$10$OHxUC/yqXh9H8Z204P2jOuNQj/CJGCRAr6lReg9GEBDJyad6863Xm', '7i5xJCAAvL', NULL, NULL),
(36, 'Milo Metz', 'wanda51@yahoo.com', '$2y$10$DcQFSxcer.hb81WoIpujh.KHV/aiFh8zaoTIokUJwiWrU7i/5ZRqy', 'bNxwjxaCcS', NULL, NULL),
(37, 'Mr. Dillan Funk', 'sauer.krystal@yahoo.com', '$2y$10$kudXpA0ntwDkN0w.Sg7BYOIm6jUN6SxSnH5B/CK7zbE/xMVdu9EhW', 'opex6GDNTC', NULL, NULL),
(38, 'Mrs. Taya Kerluke III', 'mschmidt@nienow.com', '$2y$10$DlGs/NJ3xnwyix2jRbvz4uAHSaN2w9C4OuJ3L9atDvUsdg36iB3eW', 'SAkEt3Sr2X', NULL, NULL),
(39, 'Jany Dare', 'stiedemann.bradley@douglas.com', '$2y$10$8ZCErp9o8SdByrQHc9ojM.dzp1S54ryK5KpRKFW2IvFjoJajyZnUy', 'Uy7gBkfZvZ', NULL, NULL),
(40, 'Nakia Kerluke', 'karine92@yahoo.com', '$2y$10$1gqEl4/r8DOx/49kwheHBue74vxYK6MiTIA0ObQxQRhZregaamLPC', 'ucy2FS1NGv', NULL, NULL),
(41, 'Mateo Monahan', 'veronica49@greenholt.com', '$2y$10$vASWMrvEhT0POu/4qylkUukuegMqM4N1ndfKSFn1pX.2xSZDtJGu2', 'tFDZvkqOaC', NULL, NULL),
(42, 'Zola Ritchie', 'bkris@gmail.com', '$2y$10$/cFqaqnmf8SgSRTjetlsk.YxMMOi3/p.wbar/WthUUa7Q91jZneZq', 'akW08uJosb', NULL, NULL),
(43, 'Reed O\'Keefe', 'kelly31@carter.com', '$2y$10$ULTbQoPzo/qCDFSr307d.ufqfpucrSmF7TusWpbV7HVLedJpz/onC', 'lAJtgL4AeY', NULL, NULL),
(44, 'Gerald Conroy', 'dawson90@gmail.com', '$2y$10$wi4Yrc0DPz3CeIuyIFh2Nuhx1htW8l7IrObiJtHVdgPeuiUkj5OUK', 'R5ab3kDi6d', NULL, NULL),
(45, 'Idell Hettinger', 'dhowell@becker.com', '$2y$10$Cq5Oli3PUqfQlc1PbGMOfO67KHczUzhdpCxXLHNmL0rH7kxwbbZkW', 'lBJmzYAzlT', NULL, NULL),
(46, 'Jocelyn Stroman', 'nitzsche.katrine@cartwright.net', '$2y$10$JppJqNhiY5eNrqUuCTAqtuImVgLmdgSyp914tGguWjUFxb5RuwiOK', 'pHWQh5t0qc', NULL, NULL),
(47, 'Mrs. Lonie Feeney Sr.', 'tgerlach@gleason.com', '$2y$10$0IC9KfhcofWf0HbENUUVlO/dZF4eYmfn3L8J6ePV9FIFzw./xs9Yi', 'FKjbUWVYOU', NULL, NULL),
(48, 'Aaron Mueller', 'hipolito.ankunding@becker.biz', '$2y$10$mtjrfwNpZky6nsxIKZzNVu9W5ebMdj55FqJIqdMEuZL.7O2vsQVWO', 'Zw8yt3jqKR', NULL, NULL),
(49, 'Noble Schuppe Jr.', 'magdalen02@yahoo.com', '$2y$10$lAw90u0jLM7vZPbQwhm3MujZaPkwWtn4r7w8ylhtAGO8vWGb.9Y9e', 'T66CNfZKqN', NULL, NULL),
(50, 'Mr. Darius Pacocha Jr.', 'arnold87@halvorson.net', '$2y$10$485JU6K.69BDIHwkArQqG.PcZiBXSobOrEkKCQoHeUVUtN7h0SuD.', 'cEAh0PqtiJ', NULL, NULL),
(51, 'Miss Gabrielle Goyette V', 'nelda16@doyle.info', '$2y$10$kODIeyJPcw/SNOqGxT5LvO9jNIkjtcKz9EyqOSKkUeXFCsy3S.KsW', '4aW5u0lLU4', NULL, NULL),
(52, 'Anita Gutkowski', 'adam41@weimann.com', '$2y$10$sSiIADlqCEz9h91k8eh1Pe.enEPTB/8klBkF4ef0YE/qvwg.RqFaK', 'DpCERte8Bc', NULL, NULL),
(53, 'Camylle Tillman', 'kharber@yahoo.com', '$2y$10$9T/qdDvXOy3UgA.eLoyB7ud4SHP2eVGZlCaj5jNGuGn2VBAU9nH..', 'A2JrJIffLM', NULL, NULL),
(54, 'Dr. Abagail Cronin DDS', 'rhomenick@hotmail.com', '$2y$10$CRM.bUMaU5Tvf4cBf7RlSuf.hemdfi4Eq.yPV0YqtmxACmnQAKKey', 'CwTSEHHHfv', NULL, NULL),
(55, 'Axel Wisoky', 'dessie61@gmail.com', '$2y$10$D53SH/pYeC/Sv43tTpNf/eGQOivXJ3.ZO3yE5gqgwNvyLDdmUjuwG', 'cVXRt14zVV', NULL, NULL),
(56, 'Prof. Randy Aufderhar', 'jada52@hotmail.com', '$2y$10$/DQc943u8.A5S95AFGxwL.VUYJoQAwooBJB0QAoJQo62CrzQdnoE6', '37HCraIpnl', NULL, NULL),
(57, 'Zachery Weber', 'keyshawn.hauck@doyle.com', '$2y$10$xXjRNKVxNILQAj39BGxGp.qcCKTCBTrckL/h0EzDafm2f0ctLvKgy', 'InrloZrtlQ', NULL, NULL),
(58, 'Tessie Boyle', 'yondricka@hansen.biz', '$2y$10$lp3iZlPElFcEQ/9UNvo5nOtujEn6ekWshGimf8zOxxHJNfyPiWkO.', 'FopiLcWxag', NULL, NULL),
(59, 'Dr. Ruthe Casper', 'hassie82@will.info', '$2y$10$YrnAhZJjMhf4jUzl3LkQguS9O6yR38MqiUYQVmQXmbuQz5xJsDdhO', 'ZOV194CWsk', NULL, NULL),
(60, 'Holden Wintheiser', 'zwisozk@hotmail.com', '$2y$10$SiGIydNbpXtsWHO2k0ZuVuEhsMPEeRjfNTu30Rs1vM8CMND5hKW.6', 'olX8J9hSVw', NULL, NULL),
(61, 'Alia Borer', 'uprosacco@yahoo.com', '$2y$10$QnALomTML/clSuVQa9FgN.aXwaYziFCNebS1JjcGOIC49jaBlcLu2', 'jNg84VOvkJ', NULL, NULL),
(62, 'Prof. Curtis Vandervort PhD', 'roderick41@senger.com', '$2y$10$PzfMuxOtmAgWJD.f8oxTFexxnOBh2cG8QZUVt27.C4ItGf.S6rtI6', 'CwFuXBiE3b', NULL, NULL),
(63, 'Miss Vernie Mohr', 'grimes.jailyn@tromp.com', '$2y$10$lP3wSoIMCNFArfG.WIqnJeZKPXQVVVWb..hilZ0UR961FMtxblCHO', 'LiPxdwhCba', NULL, NULL),
(64, 'Tad Fay', 'mccullough.coralie@hotmail.com', '$2y$10$VKBBFwGqsUce44B2gJSTUOMBoQr8IPDT7DLLfd4g9.Z0B5gnFYpIS', 'NXIDev759a', NULL, NULL),
(65, 'Pamela Heathcote', 'kmarvin@zulauf.com', '$2y$10$nMPO5dH6YG6Jy3QoFCJBROwGhDcvTZVXKD6ZX.9eZ4A8/XmW/igem', 'M4C2t9D3gc', NULL, NULL),
(66, 'Sven Fadel I', 'viva.wunsch@mcclure.com', '$2y$10$M6WzXJMwrnIscwsGT5kmi.d/F6bOkXyY.Omwb7Sh0GSMyLNBGFV..', '64AYb2LpQ2', NULL, NULL),
(67, 'Marilie Wisozk', 'hassie95@harvey.com', '$2y$10$lLELdnszxC1znM4826C7UOTJUQvHi04fv2F1zuobZgNhS9P0sYAW6', 'DDOiMaC5Vg', NULL, NULL),
(68, 'Dr. Rhea Homenick Sr.', 'hilma.legros@hotmail.com', '$2y$10$hQegUo0s.y3MtjYGJVoxx.1Qf9pN94UHbzcLh3Te3cJ25S8YswCBm', 'bxlyl8tGlZ', NULL, NULL),
(69, 'Maximo Howell', 'alda.reilly@yahoo.com', '$2y$10$Y/frXniatlyj5TQaWB8Qx.deQY2/cNNYF.ZZF8JrVQWWVAEYkM63m', 'NxdONNljr7', NULL, NULL),
(70, 'Russel Lehner', 'braulio.rempel@hotmail.com', '$2y$10$5BQGkIIA9Bv76D.qC5mgGuQWMfWpDEZN/oYk336l6Jt.2Ruaq7DWC', 'A3Ltr9FsNR', NULL, NULL),
(71, 'Emanuel Kiehn I', 'francesca.huel@hotmail.com', '$2y$10$3d5wSeBOB5D.ePrUj87K/Ow2jXTy8nuudicRGKXe/QfVIFH2zy6XC', 'RDBlycXrlX', NULL, NULL),
(72, 'Melyna Bernier', 'maggio.cooper@hauck.com', '$2y$10$Z2DEPOivJhLk9PlHyxsgV.CE8EW6zkCUEUayeXw1FNSFe83EkHDAy', 'GCR75QwzrW', NULL, NULL),
(73, 'Dr. Broderick Huel I', 'florian98@hotmail.com', '$2y$10$SX7D9OVI96mbJDtpv7zdgu5YUOrANITHu5TBipK0wnjMOxwdGDnCa', '6pivcGx94x', NULL, NULL),
(74, 'Dr. Ernestine Steuber', 'myrtie89@schmidt.net', '$2y$10$DHxB7LPYnoRVTaEdCgl7JOMwR0TjAm/s/Y45v8NISexkjcA9QNX2O', 'Y0t2zm3Hm7', NULL, NULL),
(75, 'Mr. Angus Kozey', 'fbergnaum@satterfield.com', '$2y$10$0a08qeNWDF4QXbMNkzhLEuzujg8nE7OtHHbATToT4GIQWDWLaSb.O', 'ZVIYMGyPfj', NULL, NULL),
(76, 'Stella Larson', 'simeon78@graham.com', '$2y$10$vT16S2jZD.iW/V0PUdEJ9e2S6K1.4OLv.80XbzYfCiTcat6cncN/q', 'UTpwmPdz1t', NULL, NULL),
(77, 'Mr. Julius Heidenreich Sr.', 'graham.aaliyah@yahoo.com', '$2y$10$57P8VG3PZOVhUT2vBCy2FufCvVoE2oz3gVhamy5wXU0hnXubj8VvC', 'IGAUpQM5Cl', NULL, NULL),
(78, 'Toby Konopelski', 'grady.serenity@hotmail.com', '$2y$10$6p4z9PhXaUAiLRGDBnrf8ugusNN65U./fKcNb3XwxrDko/T5QioA2', 'sGFPjePHDz', NULL, NULL),
(79, 'Cathy Kilback', 'kenyon10@yahoo.com', '$2y$10$ApTh5VZbO.jbJr3arPdF9.NRmsl.w.zbvwGwtvJ0m4/DpkW7I23fW', 'bEjquvvDKF', NULL, NULL),
(80, 'Antwan Satterfield', 'durgan.edyth@yahoo.com', '$2y$10$5gzrxt64Vy51jvklun.B6eVVlsl4CH/05olvy2jcOB1mLNs1gk5cG', '3WOi1QxVHY', NULL, NULL),
(81, 'Katrina Kling', 'rcasper@yahoo.com', '$2y$10$U.nyUuohJUGRBAkO0QE5kOORj6TvL3IrHz5iRPOVmbh9hH/wJPBgy', 'HNVOdE4lLX', NULL, NULL),
(82, 'Mike Jaskolski', 'abbey.wilkinson@weissnat.com', '$2y$10$6MXe4jjFWFv7xB/gBQ4jHu8L8s3GFjfpIgux9onkxUx.79q9QKKr6', 'ka3VfeaYUR', NULL, NULL),
(83, 'Joesph Dicki', 'tlesch@weimann.com', '$2y$10$xDmAl9SpBTgPrerEhHpl6O5bVURHom1Z/N7aus2uy8QOsPBY5UlYW', 'WWiVBphOsB', NULL, NULL),
(84, 'Jeff Koss', 'favian66@heaney.com', '$2y$10$nIjQQ7qThNDTwp6iPIha5udz/Yr1fFTLvAkKNA2hA9Zac68fL6/v.', '7djagN5oRm', NULL, NULL),
(85, 'Kirstin Berge', 'lesch.asa@spencer.net', '$2y$10$2yqbCJCKFEC.CZ1LV45qS.obmHltE.OXnrs2gkqvZp489TRm4xjJa', 'F9Ofnuc53X', NULL, NULL),
(86, 'Dwight Towne', 'bechtelar.emilio@gmail.com', '$2y$10$YB8gx2StUqdmTYwxBQ/Tt.59RRgU6ESNMMMTEDt.vQ2dVMr5Gdtd2', 'GBEF9VjdNu', NULL, NULL),
(87, 'Mr. Terrill McCullough', 'skyla59@wolff.com', '$2y$10$jmuHVcXoF04c1CSj0GRa/.sIAShW2mjHXsHH1TPcz3bmfVmcVugUC', 'cZWVFUJrms', NULL, NULL),
(88, 'Ms. Zoey Dietrich II', 'dwilliamson@yahoo.com', '$2y$10$I3UVBG.VkrpcJIwNE9sZp.wAklpGktsLRaputLeBxwDSxkR4kxrS6', 'tAolwoBERp', NULL, NULL),
(89, 'Carrie Lang', 'bridie.kuvalis@mitchell.biz', '$2y$10$9Q3mqJaUeyhMzDFlVAJcHe.9qXnrGOz/56oOb7bUnkIqff8k2p0Bi', 'Z3IqheikQs', NULL, NULL),
(90, 'Myrtice Kohler', 'xpurdy@casper.com', '$2y$10$zdgNuKU6iOF0BbvUEhhV/ewKiETlOrC9PlHc5VFqlaRBWjzGfCBq.', 'uUlrxiaJrd', NULL, NULL),
(91, 'Damaris Schiller', 'iondricka@gmail.com', '$2y$10$aa6EEiQqpgzhUNnxWNY/WO0TPUwwdhsWGV7EFX6ccJFhjvDVrJVvK', 'NOpHjLsZ8h', NULL, NULL),
(92, 'Miss Karina Emmerich IV', 'lindgren.gene@gmail.com', '$2y$10$kYyHQDjXTmeUhTdTfNoiPOXwHz670bnRHz83r4Ovo/3821dVNgNa.', 'VBk3GEao17', NULL, NULL),
(93, 'Dr. Brenna Stehr', 'jaycee53@welch.net', '$2y$10$3B.xO.zIDz6TrsKQ/JAbEOOMR/YtrM3lRfMcD4glV/8ZRlJtvi6vy', 'P6l7wfV7sX', NULL, NULL),
(94, 'Leda Dach Jr.', 'ardella78@yahoo.com', '$2y$10$lIXHGHpG9peKacOdspMTmeqpn7DMKKpsjPKnN5Ad5OSdvrboxjgEC', 'uAkxiEPbh4', NULL, NULL),
(95, 'Isom Smith V', 'name41@yahoo.com', '$2y$10$i3Lexfs8fijn8dfCzDAu2udHxKYhXXcl9VX9kz3jJf7cHislP6s36', 'PWhFOpCpje', NULL, NULL),
(96, 'Cecile Kshlerin', 'beer.gerardo@kuphal.com', '$2y$10$dsihc/XG8VvTAlTosBNe3eoFGT1vaXJnYvYHHYo4XUtbUSla.i3TS', 'nsyy1NuodJ', NULL, NULL),
(97, 'Gerda McGlynn', 'scot.cummings@hotmail.com', '$2y$10$KWAhCgTesmgDRwfnGqUrJuqbD.K3IBS0W8wXdcMJiwdudIUVPkIuK', 'fbKMJeK118', NULL, NULL),
(98, 'Alf Lehner', 'pernser@hotmail.com', '$2y$10$VnENTCK9mcarKpTUnHetqOgFLc/yQTDNH8IsznND1zivp8lVM3eTm', 'LvsWgW11XQ', NULL, NULL),
(99, 'Mrs. Lulu Bode III', 'gleichner.matilda@jacobs.com', '$2y$10$mmbk0fSqnyJPPMBj7vzITebvu4ZUd.nmY/JRVFJg.xhSanBdQSMnC', 'sdfsB1tbHJ', NULL, NULL),
(100, 'Dr. Princess Quigley Jr.', 'nlang@gmail.com', '$2y$10$BuUU9ymd5K7owuHFfCe8quNYv0EHRlxelRG10D4wLkzUd8wARz6jO', 'prQHQJZpqz', NULL, NULL),
(101, 'Yuri Alexs', 'yuri.alexs@gmail.com', '$2y$10$c.9w2qjR2nAmMknfaTfdHO6i7UbS/SOnvunaQzT7uXwK98eCrs7qG', 'M1OtngK09NCySo9LTQiLPghJjXYvDZHP16X4UAZkvZqQKVCgByDlDXAW0KzN', '2016-09-14 16:23:18', '2016-10-22 12:35:30');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `cartridges`
--
ALTER TABLE `cartridges`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cashes`
--
ALTER TABLE `cashes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `collect_equips`
--
ALTER TABLE `collect_equips`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `equipaments`
--
ALTER TABLE `equipaments`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `os_cartridges`
--
ALTER TABLE `os_cartridges`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Índices de tabela `retire_cashes`
--
ALTER TABLE `retire_cashes`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `service_orders`
--
ALTER TABLE `service_orders`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `cartridges`
--
ALTER TABLE `cartridges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT de tabela `cashes`
--
ALTER TABLE `cashes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT de tabela `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT de tabela `collect_equips`
--
ALTER TABLE `collect_equips`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de tabela `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de tabela `equipaments`
--
ALTER TABLE `equipaments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;
--
-- AUTO_INCREMENT de tabela `os_cartridges`
--
ALTER TABLE `os_cartridges`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de tabela `retire_cashes`
--
ALTER TABLE `retire_cashes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `service_orders`
--
ALTER TABLE `service_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
