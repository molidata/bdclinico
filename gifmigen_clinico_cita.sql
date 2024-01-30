-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:03:46
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
-- Base de datos: `gifmigen_clinico_cita`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `paciente_id` int(11) NOT NULL,
  `apellido_paterno` varchar(30) NOT NULL,
  `apellido_materno` varchar(30) NOT NULL,
  `nombres` varchar(30) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `lugar_nacimiento` varchar(100) NOT NULL,
  `paciente_sexo` varchar(20) NOT NULL,
  `paciente_direccion` varchar(100) NOT NULL,
  `paciente_telefono` varchar(20) NOT NULL,
  `paciente_tipo` varchar(20) NOT NULL,
  `numero_poliza` varchar(20) DEFAULT NULL,
  `eps_seguro` varchar(20) DEFAULT NULL,
  `familiar_declarado` varchar(100) DEFAULT NULL,
  `paciente_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`paciente_id`, `apellido_paterno`, `apellido_materno`, `nombres`, `fecha_nacimiento`, `lugar_nacimiento`, `paciente_sexo`, `paciente_direccion`, `paciente_telefono`, `paciente_tipo`, `numero_poliza`, `eps_seguro`, `familiar_declarado`, `paciente_estado`) VALUES
(1, 'MOLINA', 'ZENTENO', 'JORGE', '1978-08-18', 'HUAYUCACHI', 'MASCULINO', 'AV. SOL DEL CUZCO 666 AZAPAMPA', '987456321', 'SEGURO', '', '', '', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`paciente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `paciente_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
