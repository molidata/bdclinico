-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:03:51
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
-- Base de datos: `gifmigen_clinico_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `empresa_id` int(11) NOT NULL,
  `empresa_ruc` varchar(11) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `nombre_comercial` varchar(100) NOT NULL,
  `empresa_direccion` varchar(100) NOT NULL,
  `direccion_distrito` varchar(30) NOT NULL,
  `direccion_provincia` varchar(30) NOT NULL,
  `direccion_departamento` varchar(30) NOT NULL,
  `empresa_ubigeo` varchar(30) NOT NULL,
  `empresa_logo` varchar(30) DEFAULT NULL,
  `empresa_telefono` varchar(30) DEFAULT NULL,
  `empresa_email` varchar(30) DEFAULT NULL,
  `usuario_sol` varchar(30) DEFAULT NULL,
  `clave_sol` varchar(30) DEFAULT NULL,
  `clave_firma` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`empresa_id`, `empresa_ruc`, `razon_social`, `nombre_comercial`, `empresa_direccion`, `direccion_distrito`, `direccion_provincia`, `direccion_departamento`, `empresa_ubigeo`, `empresa_logo`, `empresa_telefono`, `empresa_email`, `usuario_sol`, `clave_sol`, `clave_firma`) VALUES
(1, '20515151511', 'QARA SAC', 'QARAMEDIC', 'AV- LOS CLAVELES N° 145', 'EL TAMBO', 'HUANCAYO', 'JUNIN', '110101', NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`empresa_id`),
  ADD UNIQUE KEY `empresa_ruc` (`empresa_ruc`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
