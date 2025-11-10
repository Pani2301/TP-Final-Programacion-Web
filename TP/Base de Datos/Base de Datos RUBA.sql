-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2025 a las 02:24:21
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `base de datos ruba`
--
CREATE DATABASE IF NOT EXISTS `base de datos ruba` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `base de datos ruba`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `butacas`
--

CREATE TABLE `butacas` (
  `id` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `codigo_butaca` varchar(10) NOT NULL,
  `estado` enum('Disponible','Ocupado','','') NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `butacas`
--

INSERT INTO `butacas` (`id`, `id_sala`, `codigo_butaca`, `estado`, `precio`) VALUES
(1, 1, 'A1', 'Disponible', 1500),
(2, 1, 'A2', 'Disponible', 1500),
(3, 1, 'A3', 'Disponible', 1500),
(4, 1, 'A4', 'Disponible', 1500),
(5, 1, 'A5', 'Disponible', 1500),
(6, 1, 'A6', 'Disponible', 1500),
(7, 1, 'A7', 'Disponible', 1500),
(8, 1, 'A8', 'Disponible', 1500),
(9, 1, 'B1', 'Disponible', 1500),
(10, 1, 'B2', 'Disponible', 1500),
(11, 1, 'B3', 'Disponible', 1500),
(12, 1, 'B4', 'Disponible', 1500),
(13, 1, 'B5', 'Disponible', 1500),
(14, 1, 'B6', 'Disponible', 1500),
(15, 1, 'B7', 'Disponible', 1500),
(16, 1, 'B8', 'Disponible', 1500),
(17, 1, 'B9', 'Disponible', 1500),
(18, 1, 'B10', 'Disponible', 1500),
(19, 1, 'C1', 'Disponible', 1500),
(20, 1, 'C2', 'Disponible', 1500),
(21, 1, 'C3', 'Disponible', 1500),
(22, 1, 'C4', 'Disponible', 1500),
(23, 1, 'C5', 'Disponible', 1500),
(24, 1, 'C6', 'Disponible', 1500),
(25, 1, 'C7', 'Disponible', 1500),
(26, 1, 'C8', 'Disponible', 1500),
(27, 1, 'C9', 'Disponible', 1500),
(28, 1, 'C10', 'Disponible', 1500),
(29, 1, 'C11', 'Disponible', 1500),
(30, 1, 'C12', 'Disponible', 1500),
(31, 1, 'D1', 'Disponible', 1500),
(32, 1, 'D2', 'Disponible', 1500),
(33, 1, 'D3', 'Disponible', 1500),
(34, 1, 'D4', 'Disponible', 1500),
(35, 1, 'D5', 'Disponible', 1500),
(36, 1, 'D6', 'Disponible', 1500),
(37, 1, 'D7', 'Disponible', 1500),
(38, 1, 'D8', 'Disponible', 1500),
(39, 1, 'D9', 'Disponible', 1500),
(40, 1, 'D10', 'Disponible', 1500),
(41, 1, 'D11', 'Disponible', 1500),
(42, 1, 'D12', 'Disponible', 1500),
(43, 1, 'E1', 'Disponible', 1500),
(44, 1, 'E2', 'Disponible', 1500),
(45, 1, 'E3', 'Disponible', 1500),
(46, 1, 'E4', 'Disponible', 1500),
(47, 1, 'E5', 'Disponible', 1500),
(48, 1, 'E6', 'Disponible', 1500),
(49, 1, 'E7', 'Disponible', 1500),
(50, 1, 'E8', 'Disponible', 1500),
(51, 1, 'E9', 'Disponible', 1500),
(52, 1, 'E10', 'Disponible', 1500),
(53, 1, 'E11', 'Disponible', 1500),
(54, 1, 'E12', 'Disponible', 1500),
(55, 1, 'F1', 'Disponible', 1500),
(56, 1, 'F2', 'Disponible', 1500),
(57, 1, 'F3', 'Disponible', 1500),
(58, 1, 'F4', 'Disponible', 1500),
(59, 1, 'F5', 'Disponible', 1500),
(60, 1, 'F6', 'Disponible', 1500),
(61, 1, 'F7', 'Disponible', 1500),
(62, 1, 'F8', 'Disponible', 1500),
(63, 1, 'F9', 'Disponible', 1500),
(64, 1, 'F10', 'Disponible', 1500),
(65, 1, 'F11', 'Disponible', 1500),
(66, 1, 'F12', 'Disponible', 1500),
(67, 2, 'A1', 'Disponible', 1500),
(68, 2, 'A2', 'Disponible', 1500),
(69, 2, 'A3', 'Disponible', 1500),
(70, 2, 'A4', 'Disponible', 1500),
(71, 2, 'A5', 'Disponible', 1500),
(72, 2, 'A6', 'Disponible', 1500),
(73, 2, 'A7', 'Disponible', 1500),
(74, 2, 'A8', 'Disponible', 1500),
(75, 2, 'B1', 'Disponible', 1500),
(76, 2, 'B2', 'Disponible', 1500),
(77, 2, 'B3', 'Disponible', 1500),
(78, 2, 'B4', 'Disponible', 1500),
(79, 2, 'B5', 'Disponible', 1500),
(80, 2, 'B6', 'Disponible', 1500),
(81, 2, 'B7', 'Disponible', 1500),
(82, 2, 'B8', 'Disponible', 1500),
(83, 2, 'B9', 'Disponible', 1500),
(84, 2, 'B10', 'Disponible', 1500),
(85, 2, 'C1', 'Disponible', 1500),
(86, 2, 'C2', 'Disponible', 1500),
(87, 2, 'C3', 'Disponible', 1500),
(88, 2, 'C4', 'Disponible', 1500),
(89, 2, 'C5', 'Disponible', 1500),
(90, 2, 'C6', 'Disponible', 1500),
(91, 2, 'C7', 'Disponible', 1500),
(92, 2, 'C8', 'Disponible', 1500),
(93, 2, 'C9', 'Disponible', 1500),
(94, 2, 'C10', 'Disponible', 1500),
(95, 2, 'C11', 'Disponible', 1500),
(96, 2, 'C12', 'Disponible', 1500),
(97, 2, 'D1', 'Disponible', 1500),
(98, 2, 'D2', 'Disponible', 1500),
(99, 2, 'D3', 'Disponible', 1500),
(100, 2, 'D4', 'Disponible', 1500),
(101, 2, 'D5', 'Disponible', 1500),
(102, 2, 'D6', 'Disponible', 1500),
(103, 2, 'D7', 'Disponible', 1500),
(104, 2, 'D8', 'Disponible', 1500),
(105, 2, 'D9', 'Disponible', 1500),
(106, 2, 'D10', 'Disponible', 1500),
(107, 2, 'D11', 'Disponible', 1500),
(108, 2, 'D12', 'Disponible', 1500),
(109, 2, 'E1', 'Disponible', 1500),
(110, 2, 'E2', 'Disponible', 1500),
(111, 2, 'E3', 'Disponible', 1500),
(112, 2, 'E4', 'Disponible', 1500),
(113, 2, 'E5', 'Disponible', 1500),
(114, 2, 'E6', 'Disponible', 1500),
(115, 2, 'E7', 'Disponible', 1500),
(116, 2, 'E8', 'Disponible', 1500),
(117, 2, 'E9', 'Disponible', 1500),
(118, 2, 'E10', 'Disponible', 1500),
(119, 2, 'E11', 'Disponible', 1500),
(120, 2, 'E12', 'Disponible', 1500),
(121, 2, 'F1', 'Disponible', 1500),
(122, 2, 'F2', 'Disponible', 1500),
(123, 2, 'F3', 'Disponible', 1500),
(124, 2, 'F4', 'Disponible', 1500),
(125, 2, 'F5', 'Disponible', 1500),
(126, 2, 'F6', 'Disponible', 1500),
(127, 2, 'F7', 'Disponible', 1500),
(128, 2, 'F8', 'Disponible', 1500),
(129, 2, 'F9', 'Disponible', 1500),
(130, 2, 'F10', 'Disponible', 1500),
(131, 2, 'F11', 'Disponible', 1500),
(132, 2, 'F12', 'Disponible', 1500),
(133, 3, 'A1', 'Disponible', 1500),
(134, 3, 'A2', 'Disponible', 1500),
(135, 3, 'A3', 'Disponible', 1500),
(136, 3, 'A4', 'Disponible', 1500),
(137, 3, 'A5', 'Disponible', 1500),
(138, 3, 'A6', 'Disponible', 1500),
(139, 3, 'A7', 'Disponible', 1500),
(140, 3, 'A8', 'Disponible', 1500),
(141, 3, 'B1', 'Disponible', 1500),
(142, 3, 'B2', 'Disponible', 1500),
(143, 3, 'B3', 'Disponible', 1500),
(144, 3, 'B4', 'Disponible', 1500),
(145, 3, 'B5', 'Disponible', 1500),
(146, 3, 'B6', 'Disponible', 1500),
(147, 3, 'B7', 'Disponible', 1500),
(148, 3, 'B8', 'Disponible', 1500),
(149, 3, 'B9', 'Disponible', 1500),
(150, 3, 'B10', 'Disponible', 1500),
(151, 3, 'C1', 'Disponible', 1500),
(152, 3, 'C2', 'Disponible', 1500),
(153, 3, 'C3', 'Disponible', 1500),
(154, 3, 'C4', 'Disponible', 1500),
(155, 3, 'C5', 'Disponible', 1500),
(156, 3, 'C6', 'Disponible', 1500),
(157, 3, 'C7', 'Disponible', 1500),
(158, 3, 'C8', 'Disponible', 1500),
(159, 3, 'C9', 'Disponible', 1500),
(160, 3, 'C10', 'Disponible', 1500),
(161, 3, 'C11', 'Disponible', 1500),
(162, 3, 'C12', 'Disponible', 1500),
(163, 3, 'D1', 'Disponible', 1500),
(164, 3, 'D2', 'Disponible', 1500),
(165, 3, 'D3', 'Disponible', 1500),
(166, 3, 'D4', 'Disponible', 1500),
(167, 3, 'D5', 'Disponible', 1500),
(168, 3, 'D6', 'Disponible', 1500),
(169, 3, 'D7', 'Disponible', 1500),
(170, 3, 'D8', 'Disponible', 1500),
(171, 3, 'D9', 'Disponible', 1500),
(172, 3, 'D10', 'Disponible', 1500),
(173, 3, 'D11', 'Disponible', 1500),
(174, 3, 'D12', 'Disponible', 1500),
(175, 3, 'E1', 'Disponible', 1500),
(176, 3, 'E2', 'Disponible', 1500),
(177, 3, 'E3', 'Disponible', 1500),
(178, 3, 'E4', 'Disponible', 1500),
(179, 3, 'E5', 'Disponible', 1500),
(180, 3, 'E6', 'Disponible', 1500),
(181, 3, 'E7', 'Disponible', 1500),
(182, 3, 'E8', 'Disponible', 1500),
(183, 3, 'E9', 'Disponible', 1500),
(184, 3, 'E10', 'Disponible', 1500),
(185, 3, 'E11', 'Disponible', 1500),
(186, 3, 'E12', 'Disponible', 1500),
(187, 3, 'F1', 'Disponible', 1500),
(188, 3, 'F2', 'Disponible', 1500),
(189, 3, 'F3', 'Disponible', 1500),
(190, 3, 'F4', 'Disponible', 1500),
(191, 3, 'F5', 'Disponible', 1500),
(192, 3, 'F6', 'Disponible', 1500),
(193, 3, 'F7', 'Disponible', 1500),
(194, 3, 'F8', 'Disponible', 1500),
(195, 3, 'F9', 'Disponible', 1500),
(196, 3, 'F10', 'Disponible', 1500),
(197, 3, 'F11', 'Disponible', 1500),
(198, 3, 'F12', 'Disponible', 1500),
(199, 4, 'A1', 'Disponible', 1500),
(200, 4, 'A2', 'Disponible', 1500),
(201, 4, 'A3', 'Disponible', 1500),
(202, 4, 'A4', 'Disponible', 1500),
(203, 4, 'A5', 'Disponible', 1500),
(204, 4, 'A6', 'Disponible', 1500),
(205, 4, 'A7', 'Disponible', 1500),
(206, 4, 'A8', 'Disponible', 1500),
(207, 4, 'B1', 'Disponible', 1500),
(208, 4, 'B2', 'Disponible', 1500),
(209, 4, 'B3', 'Disponible', 1500),
(210, 4, 'B4', 'Disponible', 1500),
(211, 4, 'B5', 'Disponible', 1500),
(212, 4, 'B6', 'Disponible', 1500),
(213, 4, 'B7', 'Disponible', 1500),
(214, 4, 'B8', 'Disponible', 1500),
(215, 4, 'B9', 'Disponible', 1500),
(216, 4, 'B10', 'Disponible', 1500),
(217, 4, 'C1', 'Disponible', 1500),
(218, 4, 'C2', 'Disponible', 1500),
(219, 4, 'C3', 'Disponible', 1500),
(220, 4, 'C4', 'Disponible', 1500),
(221, 4, 'C5', 'Disponible', 1500),
(222, 4, 'C6', 'Disponible', 1500),
(223, 4, 'C7', 'Disponible', 1500),
(224, 4, 'C8', 'Disponible', 1500),
(225, 4, 'C9', 'Disponible', 1500),
(226, 4, 'C10', 'Disponible', 1500),
(227, 4, 'C11', 'Disponible', 1500),
(228, 4, 'C12', 'Disponible', 1500),
(229, 4, 'D1', 'Disponible', 1500),
(230, 4, 'D2', 'Disponible', 1500),
(231, 4, 'D3', 'Disponible', 1500),
(232, 4, 'D4', 'Disponible', 1500),
(233, 4, 'D5', 'Disponible', 1500),
(234, 4, 'D6', 'Disponible', 1500),
(235, 4, 'D7', 'Disponible', 1500),
(236, 4, 'D8', 'Disponible', 1500),
(237, 4, 'D9', 'Disponible', 1500),
(238, 4, 'D10', 'Disponible', 1500),
(239, 4, 'D11', 'Disponible', 1500),
(240, 4, 'D12', 'Disponible', 1500),
(241, 4, 'E1', 'Disponible', 1500),
(242, 4, 'E2', 'Disponible', 1500),
(243, 4, 'E3', 'Disponible', 1500),
(244, 4, 'E4', 'Disponible', 1500),
(245, 4, 'E5', 'Disponible', 1500),
(246, 4, 'E6', 'Disponible', 1500),
(247, 4, 'E7', 'Disponible', 1500),
(248, 4, 'E8', 'Disponible', 1500),
(249, 4, 'E9', 'Disponible', 1500),
(250, 4, 'E10', 'Disponible', 1500),
(251, 4, 'E11', 'Disponible', 1500),
(252, 4, 'E12', 'Disponible', 1500),
(253, 4, 'F1', 'Disponible', 1500),
(254, 4, 'F2', 'Disponible', 1500),
(255, 4, 'F3', 'Disponible', 1500),
(256, 4, 'F4', 'Disponible', 1500),
(257, 4, 'F5', 'Disponible', 1500),
(258, 4, 'F6', 'Disponible', 1500),
(259, 4, 'F7', 'Disponible', 1500),
(260, 4, 'F8', 'Disponible', 1500),
(261, 4, 'F9', 'Disponible', 1500),
(262, 4, 'F10', 'Disponible', 1500),
(263, 4, 'F11', 'Disponible', 1500),
(264, 4, 'F12', 'Disponible', 1500),
(265, 5, 'A1', 'Disponible', 1500),
(266, 5, 'A2', 'Disponible', 1500),
(267, 5, 'A3', 'Disponible', 1500),
(268, 5, 'A4', 'Disponible', 1500),
(269, 5, 'A5', 'Disponible', 1500),
(270, 5, 'A6', 'Disponible', 1500),
(271, 5, 'A7', 'Disponible', 1500),
(272, 5, 'A8', 'Disponible', 1500),
(273, 5, 'B1', 'Disponible', 1500),
(274, 5, 'B2', 'Disponible', 1500),
(275, 5, 'B3', 'Disponible', 1500),
(276, 5, 'B4', 'Disponible', 1500),
(277, 5, 'B5', 'Disponible', 1500),
(278, 5, 'B6', 'Disponible', 1500),
(279, 5, 'B7', 'Disponible', 1500),
(280, 5, 'B8', 'Disponible', 1500),
(281, 5, 'B9', 'Disponible', 1500),
(282, 5, 'B10', 'Disponible', 1500),
(283, 5, 'C1', 'Disponible', 1500),
(284, 5, 'C2', 'Disponible', 1500),
(285, 5, 'C3', 'Disponible', 1500),
(286, 5, 'C4', 'Disponible', 1500),
(287, 5, 'C5', 'Disponible', 1500),
(288, 5, 'C6', 'Disponible', 1500),
(289, 5, 'C7', 'Disponible', 1500),
(290, 5, 'C8', 'Disponible', 1500),
(291, 5, 'C9', 'Disponible', 1500),
(292, 5, 'C10', 'Disponible', 1500),
(293, 5, 'C11', 'Disponible', 1500),
(294, 5, 'C12', 'Disponible', 1500),
(295, 5, 'D1', 'Disponible', 1500),
(296, 5, 'D2', 'Disponible', 1500),
(297, 5, 'D3', 'Disponible', 1500),
(298, 5, 'D4', 'Disponible', 1500),
(299, 5, 'D5', 'Disponible', 1500),
(300, 5, 'D6', 'Disponible', 1500),
(301, 5, 'D7', 'Disponible', 1500),
(302, 5, 'D8', 'Disponible', 1500),
(303, 5, 'D9', 'Disponible', 1500),
(304, 5, 'D10', 'Disponible', 1500),
(305, 5, 'D11', 'Disponible', 1500),
(306, 5, 'D12', 'Disponible', 1500),
(307, 5, 'E1', 'Disponible', 1500),
(308, 5, 'E2', 'Disponible', 1500),
(309, 5, 'E3', 'Disponible', 1500),
(310, 5, 'E4', 'Disponible', 1500),
(311, 5, 'E5', 'Disponible', 1500),
(312, 5, 'E6', 'Disponible', 1500),
(313, 5, 'E7', 'Disponible', 1500),
(314, 5, 'E8', 'Disponible', 1500),
(315, 5, 'E9', 'Disponible', 1500),
(316, 5, 'E10', 'Disponible', 1500),
(317, 5, 'E11', 'Disponible', 1500),
(318, 5, 'E12', 'Disponible', 1500),
(319, 5, 'F1', 'Disponible', 1500),
(320, 5, 'F2', 'Disponible', 1500),
(321, 5, 'F3', 'Disponible', 1500),
(322, 5, 'F4', 'Disponible', 1500),
(323, 5, 'F5', 'Disponible', 1500),
(324, 5, 'F6', 'Disponible', 1500),
(325, 5, 'F7', 'Disponible', 1500),
(326, 5, 'F8', 'Disponible', 1500),
(327, 5, 'F9', 'Disponible', 1500),
(328, 5, 'F10', 'Disponible', 1500),
(329, 5, 'F11', 'Disponible', 1500),
(330, 5, 'F12', 'Disponible', 1500);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra`
--

CREATE TABLE `compra` (
  `id` int(11) NOT NULL,
  `id_funcion` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `precio` float NOT NULL,
  `fecha_compra` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `compra`
--

INSERT INTO `compra` (`id`, `id_funcion`, `id_usuario`, `precio`, `fecha_compra`) VALUES
(1, 1, 1, 1500, '2024-06-30 10:00:00'),
(2, 1, 2, 1500, '2024-06-30 12:00:00'),
(3, 2, 2, 1500, '2024-06-28 13:00:00'),
(4, 3, 3, 1500, '2024-07-28 13:00:00'),
(5, 1, 4, 1500, '2024-07-28 13:00:00'),
(6, 3, 4, 1500, '2024-07-28 13:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consultas`
--

CREATE TABLE `consultas` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `mensaje` text NOT NULL,
  `hora` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consultas`
--

INSERT INTO `consultas` (`id`, `id_usuario`, `mensaje`, `hora`) VALUES
(1, 2, 'Tengo muchas ganas de ver la pelicula', '2024-06-30 10:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entrada`
--

CREATE TABLE `entrada` (
  `id` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `id_butaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `entrada`
--

INSERT INTO `entrada` (`id`, `id_compra`, `id_butaca`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 2, 5),
(12, 3, 40),
(13, 3, 41),
(14, 3, 42),
(15, 4, 192),
(16, 4, 193),
(17, 5, 46),
(18, 5, 47),
(19, 6, 163),
(20, 6, 164);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `funciones`
--

CREATE TABLE `funciones` (
  `id` int(11) NOT NULL,
  `id_pelicula` int(11) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `horario` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `funciones`
--

INSERT INTO `funciones` (`id`, `id_pelicula`, `id_sala`, `horario`) VALUES
(1, 1, 1, '2024-07-01 15:00:00'),
(2, 1, 1, '2024-07-01 20:00:00'),
(3, 5, 3, '2024-08-01 21:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `id` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `origen` varchar(20) NOT NULL,
  `genero` varchar(20) NOT NULL,
  `sinopsis` text NOT NULL,
  `trailer` varchar(30) NOT NULL,
  `duracion` int(11) NOT NULL,
  `estado` enum('En cartelera','No disponible','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`id`, `titulo`, `origen`, `genero`, `sinopsis`, `trailer`, `duracion`, `estado`) VALUES
(1, 'El Conjuro 4:ultimos ritos', 'Gran Bretaña', 'Terror', 'Los productores James Wan y Peter Safran, el equipo de cineastas detrás de cada película del Universo Conjuring, regresan para The Conjuring: Last Rises, un capítulo más basado en los archivos de casos de la vida real de los investigadores paranormales Ed y Lorraine Warren, aunque el caso exacto de la nueva entrega se mantiene en secreto. Se espera que el dúo conformado por Patrick Wilson y Vera Farmiga, quienes han interpretado a los Warren en las tres películas anteriores, así como en el spin-off de Annabelle, regresen a los personajes.', 'https://www.youtube.com/watch?', 120, 'En cartelera'),
(2, 'Cómo Entrenar a tu Dragón', 'Gran Bretaña', 'Aventuras', 'Del tres veces nominado al Oscar® y ganador del Globo de Oro Dean Deblois, creador de la trilogía original, llega una reimaginación live-action de Cómo entrenar a tu dragón. En la isla de Berk, Hipo desafía la tradición vikinga al hacerse amigo de Chimuelo, un Furia Nocturna, desatando un vínculo que reta la visión de su pueblo sobre los dragones y los obliga a enfrentar una antigua amenaza.', 'https://www.youtube.com/watch?', 125, 'En cartelera'),
(3, 'F1: La Película', 'USA', 'Acción', 'Sonny Hayes (Brad Pitt), antigua promesa de la Fórmula 1, regresa a las pistas tras décadas, convocado por su ex compañero Rubén Cervantes (Javier Bardem) para salvar a un equipo al borde del colapso. Junto al joven Joshua Pearce (Damson Idris), enfrentará un viaje de redención donde la velocidad y la rivalidad lo pondrán todo en juego.', 'https://www.youtube.com/watch?', 155, 'En cartelera'),
(4, 'Jurassic World: Renace', 'Gran Bretaña', 'Aventuras', 'Scarlett Johansson y Mahershala Ali lideran un equipo de extracción hacia la isla prohibida del Parque Jurásico original, ahora habitada por los depredadores más feroces. Entre secretos ocultos y una familia varada, se enfrentarán a una verdad que cambiará el futuro de la humanidad.', 'https://www.youtube.com/watch?', 134, 'En cartelera'),
(5, 'Superman', 'USA', 'Acción', 'James Gunn dirige esta nueva visión del superhéroe original, con una mezcla de acción épica, humor y corazón. Un Superman impulsado por la compasión y la fe en la bondad de la humanidad, en una historia que reinventa al Hombre de Acero para una nueva generación.', 'https://www.youtube.com/watch?', 130, 'En cartelera'),
(6, 'Haz que Regrese', 'Australia', 'Terror', 'De los hermanos Philippou llega una historia de terror sobrenatural. Piper, una niña ciega, y su hermanastro Andy descubren que su nueva madre adoptiva esconde un oscuro secreto: un ritual para traer de regreso a su hija fallecida, desatando fuerzas que jamás debieron despertarse.', 'https://www.youtube.com/watch?', 104, 'En cartelera'),
(7, 'Nadie 2', 'Canadá', 'Acción', 'Bob Odenkirk regresa como Hutch Mansell en este explosivo capítulo. Una simple escapada familiar se convierte en un infierno cuando un altercado lo enfrenta a una peligrosa red criminal liderada por Sharon Stone. Hutch vuelve a demostrar que nadie debería subestimarlo.', 'youtube.com/watch?v=sjnlvBKETS', 89, 'En cartelera'),
(8, 'La Hora de la Desaparición', 'USA', 'Terror', 'Una comunidad queda marcada por el misterio cuando todos los niños, excepto uno, desaparecen exactamente a la misma hora. Con Josh Brolin y Julia Garner al frente, este thriller de terror de Zach Cregger explora el miedo, el desconcierto y un secreto aterrador detrás de la desaparición.', 'youtube.com/watch?v=sjnlvBKETS', 128, 'En cartelera');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id` int(11) NOT NULL,
  `capacidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salas`
--

INSERT INTO `salas` (`id`, `capacidad`) VALUES
(1, 66),
(2, 66),
(3, 66),
(4, 66),
(5, 66);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `fecha_de_nacimiento` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellido`, `fecha_de_nacimiento`, `email`, `contrasena`) VALUES
(1, 'Joaquin', 'Panichelli', '2006-06-30', 'joaquin@gmail.com', 'Joaquin1234'),
(2, 'Ignacio', 'Fernandez', '2006-06-29', 'ignacio@gmail.com', 'Ignacio1234'),
(3, 'Felipe', 'Saenz Valiente', '2006-11-01', 'felipe@gmail.com', 'Felipe1234'),
(4, 'Juan', 'Perez', '1990-05-15', 'juan@gmail.com', 'Juan1234'),
(5, 'Maria', 'Gomez', '1985-08-22', 'maria@gmail.com', 'Maria1234'),
(6, 'Carlos', 'Lopez', '1992-11-30', 'carlos@gmail.com', 'Carlos1234'),
(7, 'Ana', 'Martinez', '1988-03-10', 'ana@gmail.com', 'Ana1234'),
(8, 'Luis', 'Rodriguez', '1995-07-25', 'luis@gmail.com', 'Luis1234'),
(9, 'Sofia', 'Hernandez', '1991-12-05', 'sofia@gmail.com', 'Sofia1234'),
(10, 'Diego', 'Fernandez', '1987-09-18', 'diego@gmail.com', 'Diego1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `butacas`
--
ALTER TABLE `butacas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sala_butacas_id` (`id_sala`);

--
-- Indices de la tabla `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcion_compra_id` (`id_funcion`),
  ADD KEY `fk_usuario_compra_id` (`id_usuario`);

--
-- Indices de la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_usuario_consultas_id` (`id_usuario`);

--
-- Indices de la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_compra_entradas_id` (`id_compra`),
  ADD KEY `fk_butaca_entradas_id` (`id_butaca`);

--
-- Indices de la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sala_funciones_id` (`id_sala`),
  ADD KEY `fk_pelicula_funciones_id` (`id_pelicula`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `un_email_usuario` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `butacas`
--
ALTER TABLE `butacas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT de la tabla `compra`
--
ALTER TABLE `compra`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `consultas`
--
ALTER TABLE `consultas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `entrada`
--
ALTER TABLE `entrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `funciones`
--
ALTER TABLE `funciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `butacas`
--
ALTER TABLE `butacas`
  ADD CONSTRAINT `fk_sala_butacas_id` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id`);

--
-- Filtros para la tabla `compra`
--
ALTER TABLE `compra`
  ADD CONSTRAINT `fk_funcion_compra_id` FOREIGN KEY (`id_funcion`) REFERENCES `funciones` (`id`),
  ADD CONSTRAINT `fk_usuario_compra_id` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `consultas`
--
ALTER TABLE `consultas`
  ADD CONSTRAINT `fk_usuario_consultas_id` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `fk_butaca_entradas_id` FOREIGN KEY (`id_butaca`) REFERENCES `butacas` (`id`),
  ADD CONSTRAINT `fk_compra_entradas_id` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id`);

--
-- Filtros para la tabla `funciones`
--
ALTER TABLE `funciones`
  ADD CONSTRAINT `fk_pelicula_funciones_id` FOREIGN KEY (`id_pelicula`) REFERENCES `pelicula` (`id`),
  ADD CONSTRAINT `fk_sala_funciones_id` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id`);
--
-- Base de datos: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__bookmark`
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
-- Estructura de tabla para la tabla `pma__central_columns`
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
-- Estructura de tabla para la tabla `pma__column_info`
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
-- Estructura de tabla para la tabla `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Volcado de datos para la tabla `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"relation_lines\":\"true\",\"snap_to_grid\":\"off\",\"angular_direct\":\"direct\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__history`
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
-- Estructura de tabla para la tabla `pma__navigationhiding`
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
-- Estructura de tabla para la tabla `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_nr`, `page_descr`) VALUES
('base de datos ruba', 1, 'vista final');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Volcado de datos para la tabla `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"base de datos ruba\",\"table\":\"butacas\"},{\"db\":\"base de datos ruba\",\"table\":\"pelicula\"},{\"db\":\"base de datos ruba\",\"table\":\"usuario\"},{\"db\":\"base de datos ruba\",\"table\":\"salas\"},{\"db\":\"base de datos ruba\",\"table\":\"funciones\"},{\"db\":\"base de datos ruba\",\"table\":\"entrada\"},{\"db\":\"base de datos ruba\",\"table\":\"consultas\"},{\"db\":\"base de datos ruba\",\"table\":\"compra\"}]');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__relation`
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
-- Estructura de tabla para la tabla `pma__savedsearches`
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
-- Estructura de tabla para la tabla `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

--
-- Volcado de datos para la tabla `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('base de datos ruba', 'butacas', 1, 105, 432),
('base de datos ruba', 'compra', 1, 515, 247),
('base de datos ruba', 'consultas', 1, 501, 72),
('base de datos ruba', 'entrada', 1, 958, 303),
('base de datos ruba', 'funciones', 1, 994, 93),
('base de datos ruba', 'pelicula', 1, 919, 469),
('base de datos ruba', 'salas', 1, 536, 524),
('base de datos ruba', 'usuario', 1, 126, 76);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__tracking`
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
-- Estructura de tabla para la tabla `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Volcado de datos para la tabla `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-11-10 01:24:03', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"es\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indices de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indices de la tabla `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indices de la tabla `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indices de la tabla `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indices de la tabla `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indices de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indices de la tabla `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indices de la tabla `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indices de la tabla `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indices de la tabla `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indices de la tabla `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indices de la tabla `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indices de la tabla `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Base de datos: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
