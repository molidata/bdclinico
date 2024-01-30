-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:04:02
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
-- Base de datos: `gifmigen_clinico_farmacia`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja_sesion`
--

CREATE TABLE `caja_sesion` (
  `sesion_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sesion_fecha` date NOT NULL,
  `sesion_tipo` varchar(20) DEFAULT NULL,
  `sesion_monto` decimal(10,2) DEFAULT 0.00,
  `sesion_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `caja_sesion`
--

INSERT INTO `caja_sesion` (`sesion_id`, `user_id`, `sesion_fecha`, `sesion_tipo`, `sesion_monto`, `sesion_estado`) VALUES
(1, 1, '2023-12-06', 'APERTURA', 12000.00, 1),
(2, 1, '2023-12-06', 'CIERRE', NULL, 1),
(3, 1, '2023-12-07', 'APERTURA', 5000.00, 1),
(4, 1, '2023-12-11', 'APERTURA', 50000.00, 1),
(5, 1, '2023-12-11', 'CIERRE', NULL, 1),
(6, 2, '2023-12-12', 'APERTURA', 150.00, 1),
(7, 2, '2023-12-12', 'CIERRE', NULL, 1),
(8, 1, '2023-12-13', 'APERTURA', 1000.00, 1),
(10, 1, '2023-12-13', 'CIERRE', NULL, 1),
(11, 1, '2023-12-14', 'APERTURA', 1200.00, 1),
(12, 1, '2023-12-14', 'CIERRE', NULL, 1),
(13, 2, '2023-12-20', 'APERTURA', 150.00, 1),
(14, 1, '2023-12-29', 'APERTURA', 1000.00, 1),
(15, 1, '2024-01-03', 'APERTURA', 1000.00, 1),
(16, 1, '2024-01-04', 'APERTURA', 1000.00, 1),
(17, 1, '2024-01-09', 'APERTURA', 1000.00, 1),
(18, 1, '2024-01-16', 'APERTURA', 1000.00, 1),
(19, 1, '2024-01-17', 'APERTURA', 1000.00, 1),
(20, 1, '2024-01-18', 'APERTURA', 150.00, 1),
(21, 1, '2024-01-20', 'APERTURA', 1000.00, 1),
(22, 1, '2024-01-22', 'APERTURA', 120.00, 1),
(23, 1, '2024-01-25', 'APERTURA', 1000.00, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `cli_id` int(11) NOT NULL,
  `tipo_documento` varchar(20) NOT NULL,
  `numero_documento` varchar(30) NOT NULL,
  `cli_nombre` varchar(100) NOT NULL,
  `cli_direccion` varchar(200) DEFAULT NULL,
  `cli_email` varchar(255) DEFAULT NULL,
  `cli_telefono` varchar(20) DEFAULT NULL,
  `cli_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`cli_id`, `tipo_documento`, `numero_documento`, `cli_nombre`, `cli_direccion`, `cli_email`, `cli_telefono`, `cli_estado`) VALUES
(1, 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'huancayo@gmail.com', '97858588', 1),
(2, 'DNI', '71458963', 'JORGE MZ', 'HUANCAYO', 'huancayo@gmail.com', '978585888', 1),
(3, 'DNI', '45454510', 'JORGE MOLINA', 'MIRAFLORES SN', 'jmx@g.com', '945896830', 1),
(4, 'DNI', '21345672', 'ROSARIO XIMENEZ', 'AV. SIN NUMERO , CHILCA', 'ROSARIO@GMAIL.COM', '976897645', 1),
(5, 'DNI', '10425696', 'JORGE PEREZ', 'AVENIDA ALGONSO UGARTE 2345 CHILCA', 'jorge.perez@gmail.com', '987674563', 1),
(6, 'DNI', '10000001', 'CLIENTES VARIOS', '--', 'clientesvarios@gmail.com', '987654321', 1),
(7, 'DNI', '41589525', 'JOSE VALENTIN', 'CALLE LA CORUÑ', 'JOSVALE.2008@GMAIL.COM', '948998233', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medios_pago`
--

CREATE TABLE `medios_pago` (
  `medio_id` int(11) NOT NULL,
  `medio_descripcion` varchar(50) NOT NULL,
  `medio_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `medios_pago`
--

INSERT INTO `medios_pago` (`medio_id`, `medio_descripcion`, `medio_estado`) VALUES
(1, 'EFECTIVO', 1),
(2, 'BCP CTA 1512125236898', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE `operaciones` (
  `ope_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `fecha_pago` date NOT NULL,
  `ope_tipo` varchar(30) NOT NULL,
  `monto_pago` decimal(10,2) NOT NULL,
  `motivo_pago` varchar(50) NOT NULL,
  `motivo_codigo` int(11) DEFAULT NULL,
  `descripcion_pago` varchar(100) DEFAULT NULL,
  `medio_pago` varchar(50) NOT NULL,
  `medio_detalle` varchar(70) DEFAULT NULL,
  `ope_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`ope_id`, `user_id`, `fecha_pago`, `ope_tipo`, `monto_pago`, `motivo_pago`, `motivo_codigo`, `descripcion_pago`, `medio_pago`, `medio_detalle`, `ope_estado`) VALUES
(1, 1, '2023-11-08', 'INGRESO', 11.40, 'VENTA', 9, '', 'EFECTIVO', '', 1),
(2, 1, '2023-11-08', 'INGRESO', 39.00, 'VENTA', 13, '', 'EFECTIVO', '', 1),
(3, 1, '2023-11-13', 'INGRESO', 28.00, 'VENTA', 10, '', 'EFECTIVO', '', 1),
(4, 1, '2023-11-14', 'INGRESO', 94.50, 'VENTA', 14, '', 'EFECTIVO', '', 1),
(5, 1, '2023-11-24', 'INGRESO', 282.00, 'VENTA', 18, '', 'EFECTIVO', '', 1),
(6, 1, '2023-11-24', 'INGRESO', 10475.00, 'VENTA', 20, '', 'EFECTIVO', '', 1),
(7, 1, '2023-11-27', 'INGRESO', 4.20, 'VENTA', 7, '', 'EFECTIVO', '', 1),
(8, 1, '2023-11-29', 'INGRESO', 1202.00, 'VENTA', 19, '', 'EFECTIVO', '', 1),
(9, 1, '2023-11-29', 'INGRESO', 213.40, 'VENTA', 15, '', 'BCP CTA 1512125236898', '', 1),
(10, 1, '2023-11-29', 'INGRESO', 10030.00, 'VENTA', 21, '', 'BCP CTA 1512125236898', 'NA', 1),
(11, 1, '2023-12-11', 'INGRESO', 1010.00, 'VENTA', 23, '', 'BCP CTA 1512125236898', '10001-ADF', 1),
(12, 2, '2023-12-12', 'INGRESO', 113.50, 'VENTA', 25, '', 'EFECTIVO', '', 1),
(13, 2, '2023-12-12', 'INGRESO', 1143.00, 'VENTA', 26, '', 'BCP CTA 1512125236898', '852-89645', 1),
(14, 1, '2023-12-13', 'INGRESO', 485.00, 'VENTA', 27, '', 'EFECTIVO', '', 1),
(15, 1, '2023-12-13', 'INGRESO', 132.00, 'VENTA', 28, '', 'BCP CTA 1512125236898', '', 1),
(16, 1, '2023-12-14', 'INGRESO', 72.00, 'VENTA', 29, '', 'EFECTIVO', '', 1),
(17, 2, '2023-12-20', 'INGRESO', 93.50, 'VENTA', 30, '', 'EFECTIVO', '', 1),
(18, 2, '2023-12-20', 'INGRESO', 2.20, 'VENTA', 31, '', 'BCP CTA 1512125236898', 'DGDG-52', 1),
(19, 1, '2024-01-03', 'INGRESO', 520.00, 'VENTA', 32, '', 'BCP CTA 1512125236898', '00000111111', 1),
(20, 1, '2024-01-03', 'INGRESO', 490.00, 'VENTA', 36, '', 'EFECTIVO', '', 1),
(21, 1, '2024-01-03', 'INGRESO', 490.00, 'VENTA', 37, '', 'EFECTIVO', '', 1),
(22, 1, '2024-01-03', 'INGRESO', 60.00, 'VENTA', 38, '', 'EFECTIVO', '', 1),
(23, 1, '2024-01-03', 'INGRESO', 490.00, 'VENTA', 34, '', 'EFECTIVO', '', 1),
(24, 1, '2024-01-03', 'INGRESO', 15.00, 'VENTA', 24, '', 'EFECTIVO', '', 1),
(25, 1, '2024-01-03', 'INGRESO', 490.00, 'VENTA', 35, '', 'EFECTIVO', '', 1),
(26, 1, '2024-01-03', 'INGRESO', 490.00, 'VENTA', 33, '', 'EFECTIVO', '', 1),
(27, 1, '2024-01-04', 'INGRESO', 1350.00, 'VENTA', 40, '', 'EFECTIVO', '', 1),
(28, 1, '2024-01-04', 'INGRESO', 300.00, 'VENTA', 41, '', 'EFECTIVO', '', 1),
(29, 1, '2024-01-04', 'INGRESO', 140.00, 'VENTA', 42, '', 'EFECTIVO', '', 1),
(30, 1, '2024-01-09', 'INGRESO', 2000.00, 'VENTA', 44, '', 'EFECTIVO', '', 1),
(31, 1, '2024-01-09', 'INGRESO', 1400.00, 'VENTA', 43, '', 'EFECTIVO', '', 1),
(32, 1, '2024-01-09', 'INGRESO', 1350.00, 'VENTA', 39, '', 'BCP CTA 1512125236898', 'aa', 1),
(33, 1, '2024-01-16', 'INGRESO', 70.00, 'VENTA', 45, '', 'EFECTIVO', '', 1),
(34, 1, '2024-01-16', 'INGRESO', 200.00, 'VENTA', 46, '', 'EFECTIVO', '', 1),
(35, 1, '2024-01-16', 'INGRESO', 100.00, 'VENTA', 47, '', 'BCP CTA 1512125236898', '00001', 1),
(36, 1, '2024-01-16', 'INGRESO', 5.40, 'VENTA', 22, '', 'EFECTIVO', '', 1),
(37, 1, '2024-01-16', 'INGRESO', 13.50, 'VENTA', 16, '', 'EFECTIVO', '', 1),
(38, 1, '2024-01-17', 'INGRESO', 1200.00, 'VENTA', 49, '', 'EFECTIVO', '', 1),
(39, 1, '2024-01-20', 'INGRESO', 360.00, 'VENTA', 52, '', 'EFECTIVO', '', 1),
(40, 1, '2024-01-25', 'INGRESO', 2800.00, 'VENTA', 55, '', 'EFECTIVO', '', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `venta_id` int(11) NOT NULL,
  `venta_fecha` date NOT NULL,
  `cliente_id` int(11) NOT NULL,
  `venta_proceso` varchar(50) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `sucursal_id` int(11) NOT NULL,
  `venta_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`venta_id`, `venta_fecha`, `cliente_id`, `venta_proceso`, `usuario_id`, `sucursal_id`, `venta_estado`) VALUES
(1, '2023-11-06', 1, 'CONFIRMADO', 1, 1, 1),
(2, '2023-11-06', 1, 'PROFORMA', 1, 1, 1),
(3, '2023-11-06', 1, 'PROFORMA', 1, 1, 1),
(4, '2023-11-06', 1, 'PAGADO', 1, 2, 1),
(5, '2023-11-06', 6, 'PROFORMA', 1, 2, 1),
(6, '2023-11-06', 2, 'PROFORMA', 1, 1, 1),
(7, '2023-11-06', 5, 'PAGADO', 1, 1, 1),
(8, '2023-11-06', 1, 'CONFIRMADO', 1, 1, 1),
(9, '2023-11-07', 6, 'PAGADO', 1, 1, 1),
(10, '2023-11-07', 2, 'PAGADO', 1, 1, 1),
(11, '2023-11-07', 3, 'CONFIRMADO', 1, 1, 1),
(12, '2023-11-07', 4, 'PAGADO', 1, 1, 1),
(13, '2023-11-08', 6, 'PAGADO', 1, 1, 1),
(14, '2023-11-14', 6, 'PAGADO', 1, 1, 1),
(15, '2023-11-23', 4, 'PAGADO', 1, 1, 1),
(16, '2023-11-24', 6, 'PAGADO', 1, 1, 1),
(17, '2023-11-24', 6, 'PROFORMA', 1, 1, 1),
(18, '2023-11-24', 2, 'PAGADO', 1, 1, 1),
(19, '2023-11-24', 2, 'PAGADO', 1, 1, 1),
(20, '2023-11-24', 6, 'PAGADO', 1, 1, 1),
(21, '2023-11-29', 6, 'PAGADO', 1, 1, 1),
(22, '2023-12-04', 3, 'PAGADO', 2, 1, 1),
(23, '2023-12-11', 6, 'PAGADO', 1, 1, 1),
(24, '2023-12-11', 6, 'PAGADO', 1, 1, 1),
(25, '2023-12-12', 2, 'PAGADO', 2, 1, 1),
(26, '2023-12-12', 6, 'PAGADO', 2, 1, 1),
(27, '2023-12-13', 6, 'PAGADO', 1, 1, 1),
(28, '2023-12-13', 6, 'PAGADO', 1, 2, 1),
(29, '2023-12-14', 6, 'PAGADO', 1, 1, 1),
(30, '2023-12-20', 6, 'PAGADO', 2, 1, 1),
(31, '2023-12-20', 6, 'PAGADO', 2, 1, 1),
(32, '2024-01-03', 1, 'PAGADO', 1, 1, 1),
(33, '2024-01-03', 1, 'PAGADO', 1, 1, 1),
(34, '2024-01-03', 1, 'PAGADO', 1, 1, 1),
(35, '2024-01-03', 1, 'PAGADO', 1, 1, 1),
(36, '2024-01-03', 1, 'PAGADO', 1, 1, 1),
(37, '2024-01-03', 1, 'PAGADO', 1, 1, 1),
(38, '2024-01-03', 6, 'PAGADO', 1, 1, 1),
(39, '2024-01-04', 1, 'PAGADO', 1, 1, 1),
(40, '2024-01-04', 1, 'PAGADO', 1, 1, 1),
(41, '2024-01-04', 6, 'PAGADO', 1, 1, 1),
(42, '2024-01-04', 6, 'PAGADO', 1, 1, 1),
(43, '2024-01-09', 1, 'PAGADO', 1, 1, 1),
(44, '2024-01-09', 1, 'PAGADO', 1, 1, 1),
(45, '2024-01-16', 7, 'PAGADO', 1, 1, 1),
(46, '2024-01-16', 7, 'PAGADO', 1, 1, 1),
(47, '2024-01-16', 7, 'PAGADO', 1, 1, 1),
(48, '2024-01-17', 7, 'CONFIRMADO', 1, 1, 1),
(49, '2024-01-17', 7, 'PAGADO', 1, 1, 1),
(50, '2024-01-17', 6, 'PROFORMA', 1, 1, 1),
(51, '2024-01-17', 6, 'PROFORMA', 1, 1, 1),
(52, '2024-01-20', 7, 'PAGADO', 1, 1, 1),
(53, '2024-01-22', 6, 'CONFIRMADO', 1, 1, 1),
(54, '2024-01-22', 6, 'CONFIRMADO', 1, 1, 1),
(55, '2024-01-25', 7, 'PAGADO', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `det_id` int(11) NOT NULL,
  `venta_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `cantidad_venta` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `descuento` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `venta_detalle`
--

INSERT INTO `venta_detalle` (`det_id`, `venta_id`, `prod_id`, `cantidad_venta`, `precio_venta`, `descuento`) VALUES
(1, 1, 2, 2.00, 4.00, 0.00),
(2, 7, 1, 1.00, 2.70, 0.00),
(3, 7, 3, 1.00, 1.50, 0.00),
(4, 8, 2, 1.00, 4.00, 0.00),
(5, 8, 3, 1.00, 1.50, 0.00),
(6, 9, 3, 4.00, 1.50, 0.00),
(7, 9, 1, 2.00, 2.70, 0.00),
(8, 10, 4, 2.00, 12.00, 0.00),
(9, 10, 2, 1.00, 4.00, 0.00),
(10, 11, 3, 1.00, 1.50, 0.00),
(11, 11, 4, 1.00, 12.00, 0.00),
(12, 12, 2, 2.00, 4.00, 0.00),
(13, 12, 4, 1.00, 12.00, 0.00),
(14, 13, 4, 1.00, 12.00, 0.00),
(15, 13, 2, 3.00, 4.00, 0.00),
(16, 13, 3, 1.00, 1.50, 0.00),
(17, 13, 3, 1.00, 1.50, 0.00),
(18, 13, 4, 1.00, 12.00, 0.00),
(19, 14, 3, 1.00, 1.50, 0.00),
(20, 14, 2, 1.00, 4.00, 0.00),
(21, 14, 5, 1.00, 89.00, 0.00),
(22, 15, 1, 2.00, 2.70, 0.00),
(23, 15, 6, 2.00, 104.00, 0.00),
(24, 16, 1, 5.00, 2.70, 0.00),
(25, 17, 1, 2.00, 2.70, 0.00),
(26, 18, 6, 1.00, 104.00, 0.00),
(27, 18, 5, 2.00, 89.00, 0.00),
(28, 19, 5, 10.00, 89.00, 0.00),
(29, 19, 6, 3.00, 104.00, 0.00),
(30, 20, 6, 100.00, 104.00, 0.00),
(31, 20, 7, 5.00, 15.00, 0.00),
(32, 21, 8, 100.00, 100.00, 0.00),
(33, 21, 3, 20.00, 1.50, 0.00),
(34, 22, 1, 2.00, 2.70, 0.00),
(35, 23, 9, 50.00, 20.00, 0.00),
(36, 23, 3, 10.00, 1.00, 0.00),
(37, 24, 7, 1.00, 15.00, 0.00),
(38, 25, 1, 5.00, 2.70, 0.00),
(39, 25, 9, 5.00, 20.00, 0.00),
(40, 26, 7, 5.00, 15.00, 0.00),
(41, 26, 5, 12.00, 89.00, 0.00),
(42, 27, 9, 2.00, 20.00, 0.00),
(43, 27, 5, 5.00, 89.00, 0.00),
(44, 28, 1, 10.00, 2.70, 0.00),
(45, 28, 7, 7.00, 15.00, 0.00),
(46, 29, 7, 3.00, 15.00, 0.00),
(47, 29, 1, 10.00, 2.70, 0.00),
(48, 30, 9, 4.00, 20.00, 0.00),
(49, 30, 1, 5.00, 2.70, 0.00),
(50, 31, 1, 1.00, 2.20, 0.00),
(51, 32, 12, 13.00, 40.00, 0.00),
(52, 33, 14, 5.00, 98.00, 0.00),
(53, 34, 14, 5.00, 98.00, 0.00),
(54, 35, 14, 5.00, 98.00, 0.00),
(55, 36, 14, 5.00, 98.00, 0.00),
(56, 37, 14, 5.00, 98.00, 0.00),
(57, 38, 7, 4.00, 15.00, 0.00),
(58, 39, 15, 30.00, 45.00, 0.00),
(59, 40, 15, 30.00, 45.00, 0.00),
(60, 41, 13, 3.00, 100.00, 0.00),
(61, 42, 12, 2.00, 70.00, 0.00),
(62, 43, 12, 20.00, 70.00, 0.00),
(63, 44, 13, 20.00, 100.00, 0.00),
(64, 45, 17, 5.00, 14.00, 0.00),
(65, 46, 17, 10.00, 20.00, 0.00),
(66, 47, 17, 10.00, 10.00, 0.00),
(67, 48, 17, 30.00, 20.00, 0.00),
(68, 49, 17, 60.00, 20.00, 0.00),
(69, 50, 13, 1.00, 100.00, 0.00),
(70, 51, 1, 1.00, 7.00, 0.00),
(71, 52, 17, 20.00, 18.00, 0.00),
(72, 53, 1, 5.00, 7.00, 0.00),
(73, 54, 12, 2.00, 70.00, 0.00),
(74, 55, 17, 70.00, 40.00, 0.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja_sesion`
--
ALTER TABLE `caja_sesion`
  ADD PRIMARY KEY (`sesion_id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cli_id`);

--
-- Indices de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  ADD PRIMARY KEY (`medio_id`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  ADD PRIMARY KEY (`ope_id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`venta_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`det_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja_sesion`
--
ALTER TABLE `caja_sesion`
  MODIFY `sesion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cli_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `medios_pago`
--
ALTER TABLE `medios_pago`
  MODIFY `medio_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
  MODIFY `ope_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `venta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `det_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
