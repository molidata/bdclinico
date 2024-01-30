-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:03:56
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
-- Base de datos: `gifmigen_clinico_facturacion`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobantes`
--

CREATE TABLE `comprobantes` (
  `comprobante_id` int(11) NOT NULL,
  `comprobante_tipo` varchar(5) NOT NULL,
  `fecha_emision` date NOT NULL,
  `empresa_emision` varchar(11) NOT NULL,
  `cliente_documento_tipo` varchar(20) NOT NULL,
  `cliente_documento_numero` varchar(20) NOT NULL,
  `cliente_razon_social` varchar(100) NOT NULL,
  `cliente_direccion` varchar(100) NOT NULL,
  `comprobante_serie` varchar(10) NOT NULL,
  `comprobante_numero` bigint(20) NOT NULL,
  `envio_sunat` varchar(20) NOT NULL,
  `respuesta_sunat` varchar(100) DEFAULT NULL,
  `estado_comprobante` varchar(30) NOT NULL DEFAULT 'ACTIVO',
  `codigo_observacion` varchar(10) DEFAULT NULL,
  `motivo_observacion` varchar(100) DEFAULT NULL,
  `nota_tipo` varchar(30) DEFAULT NULL,
  `nota_serie` varchar(10) DEFAULT NULL,
  `nota_numero` int(11) DEFAULT NULL,
  `cod_tipo_motivo` varchar(5) DEFAULT NULL,
  `nota_desc_motivo` varchar(70) DEFAULT NULL,
  `venta_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comprobantes`
--

INSERT INTO `comprobantes` (`comprobante_id`, `comprobante_tipo`, `fecha_emision`, `empresa_emision`, `cliente_documento_tipo`, `cliente_documento_numero`, `cliente_razon_social`, `cliente_direccion`, `comprobante_serie`, `comprobante_numero`, `envio_sunat`, `respuesta_sunat`, `estado_comprobante`, `codigo_observacion`, `motivo_observacion`, `nota_tipo`, `nota_serie`, `nota_numero`, `cod_tipo_motivo`, `nota_desc_motivo`, `venta_id`) VALUES
(1, '1', '2024-01-04', '20515151511', 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'B040', 1, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40),
(2, '1', '2024-01-05', '20515151511', 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'B040', 2, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35),
(3, '1', '2024-01-09', '20515151511', 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'B040', 3, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44),
(4, '1', '2024-01-09', '20515151511', 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'B040', 3, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44),
(5, '1', '2024-01-09', '20515151511', 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'B040', 3, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44),
(6, '1', '2024-01-09', '20515151511', 'DNI', '41682095', 'JORGE TOBIAS MOLINA ZENTENO', 'HUANCAYO', 'B040', 4, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43),
(7, '1', '2024-01-16', '20515151511', 'DNI', '41589525', 'JOSE VALENTIN', 'CALLE LA CORUÑ', 'B040', 5, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46),
(8, '1', '2024-01-16', '20515151511', 'DNI', '41589525', 'JOSE VALENTIN', 'CALLE LA CORUÑ', 'B040', 5, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46),
(9, '2', '2024-01-25', '20515151511', 'DNI', '41589525', 'JOSE VALENTIN', 'CALLE LA CORUÑ', 'F001', 10, 'ESPERA', NULL, 'ACTIVO', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_detalles`
--

CREATE TABLE `comprobante_detalles` (
  `detalle_id` int(11) NOT NULL,
  `comprobante` varchar(30) NOT NULL,
  `producto_codigo` varchar(30) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `precio_venta` float(10,2) NOT NULL,
  `cantidad_venta` float(10,2) NOT NULL,
  `gravado` float(10,2) NOT NULL,
  `exonerado` float(10,2) NOT NULL,
  `gratuitas` float(10,2) NOT NULL,
  `igv` float(10,2) NOT NULL,
  `isc` float(10,2) NOT NULL,
  `medida` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comprobante_detalles`
--

INSERT INTO `comprobante_detalles` (`detalle_id`, `comprobante`, `producto_codigo`, `producto_nombre`, `precio_venta`, `cantidad_venta`, `gravado`, `exonerado`, `gratuitas`, `igv`, `isc`, `medida`) VALUES
(1, '1', '000222', 'Espuma de limpieza facial. Frasco de 236 ml', 45.00, 30.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Ml'),
(2, '2', '000111', 'AFELIUS OIL FREE GEL FPS 50 - TUBO 90ML', 98.00, 5.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Ml'),
(3, '3', '001234', 'Hidratante Cetaphil Pro AD Control - Frasco 295 ML', 100.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Ml'),
(4, '4', '001234', 'Hidratante Cetaphil Pro AD Control - Frasco 295 ML', 100.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Ml'),
(5, '5', '001234', 'Hidratante Cetaphil Pro AD Control - Frasco 295 ML', 100.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Ml'),
(6, '6', '000123', 'Fotoprotector ISDIN Fusion Water Urban SPF 30 - Frasco 50 ML', 70.00, 20.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Ml'),
(7, '7', '01010', 'FIOLA DE VIDRIO 50 ML C/TAPA CLASE A -TRANSPARENTE', 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Und'),
(8, '8', '01010', 'FIOLA DE VIDRIO 50 ML C/TAPA CLASE A -TRANSPARENTE', 20.00, 10.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Und'),
(9, '9', '01010', 'FIOLA DE VIDRIO 50 ML C/TAPA CLASE A -TRANSPARENTE', 40.00, 70.00, 0.00, 0.00, 0.00, 0.00, 0.00, 'Und');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_numeracion`
--

CREATE TABLE `comprobante_numeracion` (
  `numeracion_id` int(11) NOT NULL,
  `sede_id` int(11) NOT NULL,
  `comprobante_tipo` varchar(5) NOT NULL,
  `serie` varchar(10) NOT NULL,
  `numero` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comprobante_numeracion`
--

INSERT INTO `comprobante_numeracion` (`numeracion_id`, `sede_id`, `comprobante_tipo`, `serie`, `numero`) VALUES
(1, 1, '1', 'B040', 6),
(3, 2, '1', 'B050', 1),
(4, 1, '2', 'F001', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comprobante_tipos`
--

CREATE TABLE `comprobante_tipos` (
  `tipo_id` int(11) NOT NULL,
  `tipo_nombre` varchar(20) NOT NULL,
  `codigo_sunat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `comprobante_tipos`
--

INSERT INTO `comprobante_tipos` (`tipo_id`, `tipo_nombre`, `codigo_sunat`) VALUES
(1, 'BOLETA DE VENTA ELEC', '03'),
(2, 'FACTURA ELECTRONICA', '01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  ADD PRIMARY KEY (`comprobante_id`);

--
-- Indices de la tabla `comprobante_detalles`
--
ALTER TABLE `comprobante_detalles`
  ADD PRIMARY KEY (`detalle_id`);

--
-- Indices de la tabla `comprobante_numeracion`
--
ALTER TABLE `comprobante_numeracion`
  ADD PRIMARY KEY (`numeracion_id`);

--
-- Indices de la tabla `comprobante_tipos`
--
ALTER TABLE `comprobante_tipos`
  ADD PRIMARY KEY (`tipo_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comprobantes`
--
ALTER TABLE `comprobantes`
  MODIFY `comprobante_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comprobante_detalles`
--
ALTER TABLE `comprobante_detalles`
  MODIFY `detalle_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `comprobante_numeracion`
--
ALTER TABLE `comprobante_numeracion`
  MODIFY `numeracion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `comprobante_tipos`
--
ALTER TABLE `comprobante_tipos`
  MODIFY `tipo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
