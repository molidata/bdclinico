-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:04:51
-- Versión del servidor: 10.6.16-MariaDB-cll-lve
-- Versión de PHP: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gifmigen_clinico_logistica`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `compra_id` int(11) NOT NULL,
  `proveedor_id` int(10) UNSIGNED NOT NULL,
  `compra_fecha` date NOT NULL,
  `compra_moneda` varchar(20) NOT NULL,
  `empresa_id` int(10) UNSIGNED NOT NULL,
  `tipo_pago` varchar(20) NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `proceso` varchar(20) NOT NULL,
  `comprobante_tipo` varchar(20) DEFAULT NULL,
  `comprobante_serie` varchar(10) DEFAULT NULL,
  `comprobante_numero` varchar(10) DEFAULT NULL,
  `destino_id` int(11) NOT NULL,
  `estado` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `compras`
--

INSERT INTO `compras` (`compra_id`, `proveedor_id`, `compra_fecha`, `compra_moneda`, `empresa_id`, `tipo_pago`, `usuario_id`, `proceso`, `comprobante_tipo`, `comprobante_serie`, `comprobante_numero`, `destino_id`, `estado`) VALUES
(1, 1, '2023-11-15', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(2, 1, '2023-11-15', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(3, 2, '2023-11-15', 'SOLES', 1, 'CREDITO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(4, 2, '2023-11-17', 'SOLES', 1, 'CREDITO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(5, 2, '2023-11-22', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', 'BOLETA', '11111', '235', 1, 1),
(6, 1, '2023-12-20', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(7, 1, '2024-01-03', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', 'BOLETA', '0011', '11', 1, 1),
(8, 1, '2024-01-03', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(9, 1, '2024-01-04', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(10, 3, '2024-01-15', 'SOLES', 1, 'CONTADO', 1, 'COTIZACION', '', '', '', 0, 1),
(11, 3, '2024-01-15', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', 'BOLETA', '001', '100100', 3, 1),
(12, 3, '2024-01-16', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(13, 3, '2024-01-16', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(14, 3, '2024-01-16', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(15, 3, '2024-01-16', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(16, 3, '2024-01-16', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(17, 3, '2024-01-17', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(18, 3, '2024-01-17', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(19, 3, '2024-01-17', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1),
(20, 3, '2024-01-17', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(21, 3, '2024-01-20', 'SOLES', 1, 'CONTADO', 1, 'COTIZACION', '', '', '', 0, 1),
(22, 3, '2024-01-20', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', NULL, NULL, NULL, 0, 1),
(23, 3, '2024-01-20', 'SOLES', 1, 'CONTADO', 1, 'CONFIRMADO', '', '', '', 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compra_detalle`
--

CREATE TABLE `compra_detalle` (
  `detalle_id` int(10) NOT NULL,
  `compra_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `unidad_medida` int(10) UNSIGNED NOT NULL,
  `precio_compra` float(10,2) NOT NULL,
  `entrega` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `compra_detalle`
--

INSERT INTO `compra_detalle` (`detalle_id`, `compra_id`, `producto_id`, `cantidad`, `unidad_medida`, `precio_compra`, `entrega`) VALUES
(1, 0, 4, 1.00, 2, 12.00, 0),
(2, 0, 2, 1.00, 0, 7.00, 0),
(3, 0, 4, 1.00, 2, 12.00, 0),
(4, 0, 2, 1.00, 0, 8.00, 0),
(5, 4, 2, 30.00, 1, 12.00, 0),
(6, 1, 3, 1.00, 2, 1.50, 0),
(7, 1, 5, 1.00, 5, 90.00, 0),
(8, 2, 5, 100.00, 5, 89.00, 0),
(9, 2, 2, 100.00, 0, 3.50, 0),
(10, 3, 4, 50.00, 2, 12.00, 0),
(11, 4, 1, 100.00, 1, 12.00, 0),
(12, 5, 6, 100.00, 5, 115.00, 0),
(13, 5, 3, 50.00, 2, 100.00, 0),
(14, 6, 11, 50.00, 1, 10.00, 0),
(15, 7, 14, 100.00, 7, 100.00, 0),
(16, 8, 14, 100.00, 7, 100.00, 0),
(17, 9, 15, 100.00, 7, 50.00, 0),
(18, 11, 16, 100.00, 1, 40.00, 0),
(19, 12, 16, 150.00, 1, 40.00, 0),
(20, 13, 16, 200.00, 1, 40.00, 0),
(21, 14, 16, 10.00, 1, 40.00, 0),
(22, 15, 16, 20.00, 1, 40.00, 0),
(23, 16, 17, 50.00, 1, 15.00, 0),
(24, 17, 17, 33.00, 1, 20.00, 0),
(25, 18, 17, 66.00, 1, 20.00, 0),
(26, 19, 17, 60.00, 1, 20.00, 0),
(27, 20, 7, 50.00, 6, 15.00, 0),
(28, 22, 17, 15.00, 1, 20.00, 0),
(29, 23, 17, 5.00, 1, 20.00, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimientos`
--

CREATE TABLE `movimientos` (
  `movimiento_id` int(11) NOT NULL,
  `movimiento_fecha` datetime NOT NULL,
  `movimiento_tipo` varchar(30) NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `sucursal_id` int(10) UNSIGNED NOT NULL,
  `movimiento_origen` varchar(50) NOT NULL,
  `codigo_origen` varchar(30) DEFAULT NULL,
  `movimiento_observaciones` varchar(100) DEFAULT NULL,
  `movimiento_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `movimientos`
--

INSERT INTO `movimientos` (`movimiento_id`, `movimiento_fecha`, `movimiento_tipo`, `usuario_id`, `sucursal_id`, `movimiento_origen`, `codigo_origen`, `movimiento_observaciones`, `movimiento_estado`) VALUES
(1, '2023-11-17 16:09:00', 'INGRESO', 1, 1, 'COMPRA', '4', '', 1),
(2, '2023-11-17 18:32:00', 'INGRESO', 1, 1, 'COMPRA', '50', '', 1),
(3, '2023-11-20 16:44:00', 'INGRESO', 1, 1, 'COMPRA', '2', '', 1),
(4, '2023-11-20 16:52:00', 'INGRESO', 1, 1, 'COMPRA', '2', '', 1),
(5, '2023-11-22 09:20:00', 'INGRESO', 1, 1, 'COMPRA', '4', '', 1),
(6, '2023-11-22 16:28:00', 'INGRESO', 1, 1, 'COMPRA', '5', '', 1),
(7, '2023-11-23 14:43:00', 'SALIDA', 1, 1, 'VENTA', '15', '', 1),
(8, '2023-11-23 17:13:00', 'SALIDA', 1, 1, 'VENTA', '7', '', 1),
(9, '2023-11-23 17:13:00', 'SALIDA', 1, 1, 'VENTA', '7', '', 1),
(10, '2023-11-24 17:09:00', 'SALIDA', 1, 1, 'VENTA', '16', '', 1),
(11, '2023-11-24 17:48:00', 'SALIDA', 1, 1, 'VENTA', '18', '', 1),
(12, '2023-11-24 17:50:00', 'SALIDA', 1, 1, 'VENTA', '19', '', 1),
(13, '2023-11-24 18:07:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(14, '2023-11-24 18:09:00', 'SALIDA', 1, 1, 'VENTA', '20', '', 1),
(15, '2023-11-27 12:11:00', 'SALIDA', 1, 1, 'VENTA', '7', '', 1),
(16, '2023-11-29 10:18:00', 'SALIDA', 1, 1, 'VENTA', '19', '', 1),
(17, '2023-11-29 12:22:00', 'SALIDA', 1, 1, 'VENTA', '15', '', 1),
(18, '2023-11-29 12:41:00', 'INGRESO', 1, 1, 'COMPRA', '6', '', 1),
(19, '2023-11-29 12:44:00', 'SALIDA', 1, 1, 'VENTA', '21', '', 1),
(20, '2023-12-11 12:01:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(21, '2023-12-11 12:15:00', 'SALIDA', 1, 1, 'VENTA', '23', '', 1),
(22, '2023-12-11 15:37:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(23, '2023-12-11 15:37:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(24, '2023-12-12 09:22:00', 'SALIDA', 2, 1, 'VENTA', '25', '', 1),
(25, '2023-12-12 10:43:00', 'SALIDA', 2, 1, 'VENTA', '26', '', 1),
(26, '2023-12-13 09:18:00', 'SALIDA', 1, 1, 'VENTA', '27', '', 1),
(27, '2023-12-13 09:18:00', 'SALIDA', 1, 1, 'VENTA', '28', '', 1),
(28, '2023-12-14 08:49:00', 'SALIDA', 1, 1, 'VENTA', '29', '', 1),
(29, '2023-12-19 10:56:00', 'INGRESO', 1, 1, 'COMPRA', '1', '', 1),
(30, '2023-12-20 09:18:00', 'SALIDA', 2, 1, 'VENTA', '30', '', 1),
(31, '2023-12-20 09:18:00', 'SALIDA', 2, 1, 'VENTA', '31', '', 1),
(32, '2023-12-28 20:47:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '001', '', 1),
(33, '2023-12-28 20:49:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(34, '2023-12-29 16:33:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(35, '2024-01-03 12:50:00', 'SALIDA', 1, 1, 'VENTA', '32', '', 1),
(36, '2024-01-03 13:47:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '000111', '', 1),
(37, '2024-01-03 14:06:00', 'SALIDA', 1, 1, 'VENTA', '36', '', 1),
(38, '2024-01-03 14:08:00', 'SALIDA', 1, 1, 'VENTA', '37', '', 1),
(39, '2024-01-03 17:37:00', 'SALIDA', 1, 1, 'VENTA', '38', '', 1),
(40, '2024-01-03 17:38:00', 'SALIDA', 1, 1, 'VENTA', '34', '', 1),
(41, '2024-01-03 17:41:00', 'SALIDA', 1, 1, 'VENTA', '24', '', 1),
(42, '2024-01-03 17:47:00', 'SALIDA', 1, 1, 'VENTA', '35', '', 1),
(43, '2024-01-03 17:49:00', 'SALIDA', 1, 1, 'VENTA', '33', '', 1),
(44, '2024-01-04 01:28:00', 'INGRESO', 1, 1, 'COMPRA', '9', '', 1),
(45, '2024-01-04 01:34:00', 'SALIDA', 1, 1, 'VENTA', '40', '', 1),
(46, '2024-01-04 09:22:00', 'SALIDA', 1, 1, 'VENTA', '41', '', 1),
(47, '2024-01-04 09:28:00', 'SALIDA', 1, 1, 'VENTA', '42', '', 1),
(48, '2024-01-05 10:13:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(49, '2024-01-05 10:15:00', 'INGRESO', 1, 1, 'COMPRA', '9', '', 1),
(50, '2024-01-09 01:15:00', 'SALIDA', 1, 1, 'VENTA', '44', '', 1),
(51, '2024-01-09 01:19:00', 'SALIDA', 1, 1, 'VENTA', '43', '', 1),
(52, '2024-01-09 01:25:00', 'SALIDA', 1, 1, 'VENTA', '39', '', 1),
(53, '2024-01-16 11:08:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(54, '2024-01-16 17:20:00', 'INGRESO', 1, 1, 'COMPRA', '16', '', 1),
(55, '2024-01-16 17:21:00', 'INGRESO', 1, 1, 'COMPRA', '16', '', 1),
(56, '2024-01-16 17:39:00', 'SALIDA', 1, 1, 'VENTA', '45', '', 1),
(57, '2024-01-16 21:02:00', 'SALIDA', 1, 1, 'VENTA', '46', '', 1),
(58, '2024-01-16 23:13:00', 'SALIDA', 1, 1, 'VENTA', '47', '', 1),
(59, '2024-01-16 23:29:00', 'INGRESO', 1, 1, 'COMPRA', '16', '', 1),
(60, '2024-01-16 23:31:00', 'SALIDA', 1, 1, 'VENTA', '22', '', 1),
(61, '2024-01-16 23:31:00', 'SALIDA', 1, 1, 'VENTA', '16', '', 1),
(62, '2024-01-16 23:32:00', 'INGRESO', 1, 1, 'COMPRA', '16', '', 1),
(63, '2024-01-16 23:33:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(64, '2024-01-17 09:56:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(65, '2024-01-17 10:03:00', 'SALIDA', 1, 1, 'VENTA', '49', '', 1),
(66, '2024-01-20 17:11:00', 'INGRESO', 1, 1, 'STOCK INICIAL', '', '', 1),
(67, '2024-01-20 17:19:00', 'SALIDA', 1, 1, 'VENTA', '52', '', 1),
(68, '2024-01-22 11:45:00', 'SALIDA', 1, 1, 'VENTA', '53', '', 1),
(69, '2024-01-22 11:45:00', 'SALIDA', 1, 1, 'VENTA', '53', '', 1),
(70, '2024-01-22 11:50:00', 'SALIDA', 1, 1, 'VENTA', '54', '', 1),
(71, '2024-01-25 22:27:00', 'SALIDA', 1, 1, 'VENTA', '55', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_detalle`
--

CREATE TABLE `movimiento_detalle` (
  `detalle_id` int(10) NOT NULL,
  `movimiento_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `unidad_medida` int(10) UNSIGNED NOT NULL,
  `fecha_vencimiento` date DEFAULT NULL,
  `lote` varchar(50) DEFAULT NULL,
  `peso` float(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `movimiento_detalle`
--

INSERT INTO `movimiento_detalle` (`detalle_id`, `movimiento_id`, `producto_id`, `cantidad`, `unidad_medida`, `fecha_vencimiento`, `lote`, `peso`) VALUES
(1, 1, 2, 5.00, 2, '2023-11-22', '2', 15.00),
(2, 50, 3, 15.00, 2, '2024-02-12', '2', 15.00),
(3, 3, 1, 20.00, 1, '2023-11-21', '2', 2.00),
(4, 3, 3, 5.00, 2, '2024-03-21', '1', 5.00),
(5, 4, 1, 50.00, 1, '2023-11-20', '12', 50.00),
(6, 4, 2, 16.00, 1, '2024-02-23', '5', 5.00),
(7, 5, 1, 50.00, 1, '2024-03-27', '2', 5.00),
(8, 5, 5, 100.00, 5, '2026-10-14', '5', 50.00),
(9, 6, 6, 20.00, 5, '2026-06-22', '2', 20.00),
(10, 6, 3, 50.00, 2, '2027-07-21', '2', 10.00),
(11, 7, 6, 2.00, 5, '0000-00-00', '', 0.00),
(12, 7, 1, 2.00, 1, '0000-00-00', '', 0.00),
(13, 8, 3, 1.00, 2, '0000-00-00', '', 0.00),
(14, 8, 1, 1.00, 1, '0000-00-00', '', 0.00),
(15, 9, 3, 1.00, 2, '0000-00-00', '', 0.00),
(16, 9, 1, 1.00, 1, '0000-00-00', '', 0.00),
(17, 10, 1, 5.00, 1, '0000-00-00', '', 0.00),
(18, 11, 6, 1.00, 5, '0000-00-00', '', 0.00),
(19, 11, 5, 2.00, 5, '0000-00-00', '', 0.00),
(20, 12, 5, 10.00, 5, '0000-00-00', '', 0.00),
(21, 12, 6, 3.00, 5, '0000-00-00', '', 0.00),
(22, 13, 7, 12.00, 6, '2024-04-19', '3', 10.00),
(23, 13, 6, 100.00, 5, '2029-06-14', '5', 50.00),
(24, 14, 6, 100.00, 5, '0000-00-00', '', 0.00),
(25, 14, 7, 5.00, 6, '0000-00-00', '', 0.00),
(26, 15, 3, 1.00, 2, '0000-00-00', '', 0.00),
(27, 15, 1, 1.00, 1, '0000-00-00', '', 0.00),
(28, 16, 5, 10.00, 5, '0000-00-00', '', 0.00),
(29, 16, 6, 3.00, 5, '0000-00-00', '', 0.00),
(30, 17, 1, 2.00, 1, '0000-00-00', '', 0.00),
(31, 17, 6, 2.00, 5, '0000-00-00', '', 0.00),
(32, 18, 8, 100.00, 2, '2024-11-29', '2', 50.00),
(33, 19, 8, 100.00, 2, '0000-00-00', '', 0.00),
(34, 19, 3, 20.00, 2, '0000-00-00', '', 0.00),
(35, 20, 9, 80.00, 6, '2033-06-14', '2', 40.00),
(36, 21, 3, 10.00, 2, '0000-00-00', '', 0.00),
(37, 21, 9, 50.00, 6, '0000-00-00', '', 0.00),
(38, 22, 7, 13.00, 6, '2023-12-12', '2', 25.00),
(39, 23, 7, 10.00, 6, '2023-12-13', '2', 25.00),
(40, 23, 9, 10.00, 6, '2023-12-11', '2', 20.00),
(41, 24, 9, 5.00, 6, '0000-00-00', '', 0.00),
(42, 24, 1, 5.00, 1, '0000-00-00', '', 0.00),
(43, 25, 7, 5.00, 6, '0000-00-00', '', 0.00),
(44, 25, 5, 12.00, 5, '0000-00-00', '', 0.00),
(45, 26, 9, 2.00, 6, '0000-00-00', '', 0.00),
(46, 26, 5, 5.00, 5, '0000-00-00', '', 0.00),
(47, 27, 1, 10.00, 1, '0000-00-00', '', 0.00),
(48, 27, 7, 7.00, 6, '0000-00-00', '', 0.00),
(49, 28, 7, 3.00, 6, '0000-00-00', '', 0.00),
(50, 28, 1, 10.00, 1, '0000-00-00', '', 0.00),
(51, 29, 3, 1.00, 2, '2023-12-31', '1', 2.00),
(52, 29, 5, 1.00, 5, '2023-12-24', '1', 2.00),
(53, 30, 9, 4.00, 6, '0000-00-00', '', 0.00),
(54, 30, 1, 5.00, 1, '0000-00-00', '', 0.00),
(55, 31, 1, 1.00, 1, '0000-00-00', '', 0.00),
(56, 32, 12, 20.00, 7, '2024-01-31', '1', 1.00),
(57, 33, 12, 20.00, 7, '2024-01-31', '1', 0.50),
(58, 34, 13, 150.00, 7, '2024-01-19', '1', 1.00),
(59, 35, 12, 13.00, 7, '0000-00-00', '', 0.00),
(60, 36, 14, 30.00, 7, '2024-02-29', '1', 1.00),
(61, 37, 14, 5.00, 7, '0000-00-00', '', 0.00),
(62, 38, 14, 5.00, 7, '0000-00-00', '', 0.00),
(63, 39, 7, 4.00, 6, '0000-00-00', '', 0.00),
(64, 40, 14, 5.00, 7, '0000-00-00', '', 0.00),
(65, 41, 7, 1.00, 6, '0000-00-00', '', 0.00),
(66, 42, 14, 5.00, 7, '0000-00-00', '', 0.00),
(67, 43, 14, 5.00, 7, '0000-00-00', '', 0.00),
(68, 44, 15, 50.00, 7, '2024-02-29', '1', 1.00),
(69, 45, 15, 30.00, 7, '0000-00-00', '', 0.00),
(70, 46, 13, 3.00, 7, '0000-00-00', '', 0.00),
(71, 47, 12, 2.00, 7, '0000-00-00', '', 0.00),
(72, 48, 12, 1000.00, 7, '2024-01-01', '2', 120.00),
(73, 49, 15, 100.00, 7, '2024-02-22', '1', 12.00),
(74, 50, 13, 20.00, 7, '0000-00-00', '', 0.00),
(75, 51, 12, 20.00, 7, '0000-00-00', '', 0.00),
(76, 52, 15, 30.00, 7, '0000-00-00', '', 0.00),
(77, 53, 16, 1000.00, 1, '2024-02-14', '1', 1.00),
(78, 55, 17, 50.00, 1, '2024-02-22', '1', 1.00),
(79, 56, 17, 5.00, 1, '0000-00-00', '', 0.00),
(80, 57, 17, 10.00, 1, '0000-00-00', '', 0.00),
(81, 58, 17, 10.00, 1, '0000-00-00', '', 0.00),
(82, 60, 1, 2.00, 1, '0000-00-00', '', 0.00),
(83, 61, 1, 5.00, 1, '0000-00-00', '', 0.00),
(84, 63, 17, 5.00, 1, '2024-02-08', '1', 1.00),
(85, 64, 17, 5000.00, 1, '2024-02-14', '3', 1.00),
(86, 65, 17, 60.00, 1, '0000-00-00', '', 0.00),
(87, 67, 17, 20.00, 1, '0000-00-00', '', 0.00),
(88, 68, 1, 5.00, 1, '0000-00-00', '', 0.00),
(89, 69, 1, 5.00, 1, '0000-00-00', '', 0.00),
(90, 70, 12, 2.00, 7, '0000-00-00', '', 0.00),
(91, 71, 17, 70.00, 1, '0000-00-00', '', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `proveedor_id` int(11) NOT NULL,
  `documento_tipo` varchar(20) NOT NULL,
  `documento_numero` varchar(20) NOT NULL,
  `razon_social` varchar(50) NOT NULL,
  `proveedor_direccion` varchar(100) DEFAULT NULL,
  `proveedor_telefono` varchar(20) DEFAULT NULL,
  `proveedor_email` varchar(50) DEFAULT NULL,
  `proveedor_descripcion` varchar(50) DEFAULT NULL,
  `representante_ventas` varchar(50) DEFAULT NULL,
  `proveedor_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`proveedor_id`, `documento_tipo`, `documento_numero`, `razon_social`, `proveedor_direccion`, `proveedor_telefono`, `proveedor_email`, `proveedor_descripcion`, `representante_ventas`, `proveedor_estado`) VALUES
(1, 'RUC', '10416820959', 'JORGE MOLINA', 'AV. ANGARAES N° 354 HUANCAYO HUANCAYO JUNIN', '945896830', 'MOLIDATAHYO@GMAIL.COM', 'VENTA DE PARTES INFORMATICAS', 'JORGE MOLINA', 1),
(2, 'RUC', '10748596320', 'LAS AGUILAS S.A.C.', 'AV. FRAY DIONISIO ORTIZ S/N - EL TAMBO ', '987415263', 'AGUILAS_CORP@GMAIL.COM', 'PROVEEDOR DE SERVICIOS DE REDES', 'JUAN PACHECO', 1),
(3, 'DNI', '41589525', 'INSUMOS DE LABORATORIO SA', 'CALLE LOS LABORATORIOS S/N', '948998233', 'JOSVALE.2008@GMAIL.COM', 'EMPRESA DEDICADA A LA COMERCIALIZACION DE INSUMOS ', 'JOSE', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimientos`
--

CREATE TABLE `requerimientos` (
  `requerimiento_id` int(11) NOT NULL,
  `requerimiento_fecha` datetime NOT NULL,
  `usuario_id` int(10) UNSIGNED NOT NULL,
  `sucursal_id` int(10) UNSIGNED NOT NULL,
  `requerimiento_proceso` varchar(100) DEFAULT NULL,
  `requerimiento_observaciones` varchar(100) DEFAULT NULL,
  `requerimiento_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `requerimientos`
--

INSERT INTO `requerimientos` (`requerimiento_id`, `requerimiento_fecha`, `usuario_id`, `sucursal_id`, `requerimiento_proceso`, `requerimiento_observaciones`, `requerimiento_estado`) VALUES
(1, '2023-12-01 11:45:00', 1, 1, 'SOLICITUD', '', 1),
(2, '2023-12-01 12:00:00', 1, 1, 'REVISADO', 'TOMADO EN CUENTA', 1),
(3, '2023-12-11 12:06:00', 1, 1, 'REVISADO', 'EN PROCESO DE REVISION', 1),
(4, '2023-12-28 12:37:00', 1, 1, 'REVISADO', 'NO HAY STOCK', 1),
(5, '2023-12-29 16:31:00', 1, 1, 'SOLICITUD', '', 1),
(6, '2024-01-03 13:38:00', 1, 1, 'ATENDIDO', 'Stock disponible, realizar transferencia de almacen', 1),
(7, '2024-01-03 13:46:00', 1, 1, 'ATENDIDO', 'Enviado Lote 1, cod compra: 000111', 1),
(8, '2024-01-04 01:25:00', 1, 1, 'ATENDIDO', 'SE ENVIAN 50 UNIDADES', 1),
(9, '2024-01-16 17:13:00', 1, 1, 'REVISADO', 'NO SE CUENTA CON STOCK, PUEDE SOLICITAR HASTA 10 UNIDADES', 1),
(10, '2024-01-16 17:19:00', 1, 1, 'ATENDIDO', 'SE ATIENDE LA SOLICITUD, PUEDE HACER EL MOVIMIENTO DE ALMACEN', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `requerimiento_detalle`
--

CREATE TABLE `requerimiento_detalle` (
  `detalle_id` int(10) NOT NULL,
  `requerimiento_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `requerimiento_cantidad` float(10,2) NOT NULL,
  `unidad_medida` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `requerimiento_detalle`
--

INSERT INTO `requerimiento_detalle` (`detalle_id`, `requerimiento_id`, `producto_id`, `requerimiento_cantidad`, `unidad_medida`) VALUES
(1, 1, 8, 100.00, 2),
(2, 1, 7, 43.00, 6),
(3, 2, 6, 5.00, 5),
(4, 3, 7, 500.00, 6),
(5, 4, 12, 5.00, 7),
(6, 5, 13, 100.00, 7),
(7, 6, 14, 20.00, 7),
(8, 7, 14, 30.00, 7),
(9, 8, 15, 150.00, 7),
(10, 9, 17, 300.00, 1),
(11, 10, 17, 10.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocks`
--

CREATE TABLE `stocks` (
  `stock_id` int(10) NOT NULL,
  `almacen_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `cantidad` float(10,2) NOT NULL,
  `unidad_medida` int(10) UNSIGNED NOT NULL,
  `stock_minimo` float(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `stocks`
--

INSERT INTO `stocks` (`stock_id`, `almacen_id`, `producto_id`, `cantidad`, `unidad_medida`, `stock_minimo`) VALUES
(1, 1, 1, 149.00, 1, 1.00),
(2, 1, 5, 62.00, 5, 0.00),
(3, 1, 3, 19.00, 2, 20.00),
(4, 1, 6, 9.00, 5, 0.00),
(5, 1, 7, 10.00, 6, 0.00),
(6, 1, 8, 0.00, 2, 0.00),
(7, 1, 9, 29.00, 6, 5.00),
(8, 1, 12, 1005.00, 7, 0.00),
(9, 1, 13, 127.00, 7, 5.00),
(10, 1, 14, 5.00, 7, 5.00),
(11, 1, 15, 90.00, 7, 10.00),
(12, 1, 16, 1000.00, 1, 0.00),
(13, 1, 17, 4880.00, 1, 1.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`compra_id`);

--
-- Indices de la tabla `compra_detalle`
--
ALTER TABLE `compra_detalle`
  ADD PRIMARY KEY (`detalle_id`);

--
-- Indices de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  ADD PRIMARY KEY (`movimiento_id`);

--
-- Indices de la tabla `movimiento_detalle`
--
ALTER TABLE `movimiento_detalle`
  ADD PRIMARY KEY (`detalle_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`proveedor_id`);

--
-- Indices de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  ADD PRIMARY KEY (`requerimiento_id`);

--
-- Indices de la tabla `requerimiento_detalle`
--
ALTER TABLE `requerimiento_detalle`
  ADD PRIMARY KEY (`detalle_id`);

--
-- Indices de la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `compra_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `compra_detalle`
--
ALTER TABLE `compra_detalle`
  MODIFY `detalle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `movimientos`
--
ALTER TABLE `movimientos`
  MODIFY `movimiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT de la tabla `movimiento_detalle`
--
ALTER TABLE `movimiento_detalle`
  MODIFY `detalle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `proveedor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `requerimientos`
--
ALTER TABLE `requerimientos`
  MODIFY `requerimiento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `requerimiento_detalle`
--
ALTER TABLE `requerimiento_detalle`
  MODIFY `detalle_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
