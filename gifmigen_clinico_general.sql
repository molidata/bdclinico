-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:04:44
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
-- Base de datos: `gifmigen_clinico_general`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `rol_id` int(11) NOT NULL,
  `rol_nombre` varchar(50) NOT NULL,
  `rol_descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`rol_id`, `rol_nombre`, `rol_descripcion`) VALUES
(1, 'ADMINISTRADOR', 'ROL CENTRAL  DEL SISTEMA - USUARIO ADMINISTRADOR'),
(2, 'LOGISTICA', ' ROL CENTRAL DEL SISTEMA - USUARIO ENCARGADO DE LO'),
(3, 'CONTABLE', 'ROL CENTRAL DEL SISTEMA - USUARIO CONTABLE'),
(4, 'GERENCIA', 'ROL CENTRAL DEL SISTEMA - USUARIO GERENCIA'),
(5, 'ADMINISTRADOR DE SUCURSAL', 'ROL DE SUCURSAL - USUARIO ADMINISTRADOR'),
(6, 'VENTAS', 'ROL DE SUCURSAL - USUARIO VENTAS'),
(7, 'CAJA', 'ROL DE SUCURSAL - USUARIO ENCARGADO DE CAJA'),
(8, 'ALMACEN', 'ROL DE SUCURSAL - USUARIO ENCARGADO DEL ALMACEN');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

CREATE TABLE `sucursales` (
  `suc_id` int(11) NOT NULL,
  `suc_nombre` varchar(50) NOT NULL,
  `suc_direccion` varchar(100) NOT NULL,
  `suc_estado` tinyint(1) DEFAULT 1,
  `codigo_autorizacion` varchar(10) NOT NULL DEFAULT '1234'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`suc_id`, `suc_nombre`, `suc_direccion`, `suc_estado`, `codigo_autorizacion`) VALUES
(1, 'ELTAMBITO', 'AV. MARISCAL CASTILLA 2345', 1, '654321'),
(2, 'NEGOCIOS CHILCA', 'AV. 9 DE DICIEMBRE CHILCA', 1, '1234'),
(3, 'Lima - Surco', 'Calle La Coruña', 1, '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_nombre` varchar(50) NOT NULL,
  `user_correo` varchar(100) DEFAULT NULL,
  `user_telefono` varchar(20) DEFAULT NULL,
  `user_clave` varchar(300) NOT NULL,
  `fecha_registro` date NOT NULL,
  `rol_id` int(11) NOT NULL,
  `sucursal_id` int(11) NOT NULL,
  `user_panel` int(11) NOT NULL DEFAULT 1,
  `user_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`user_id`, `user_name`, `user_nombre`, `user_correo`, `user_telefono`, `user_clave`, `fecha_registro`, `rol_id`, `sucursal_id`, `user_panel`, `user_estado`) VALUES
(1, 'master', 'master', NULL, NULL, 'eb0a191797624dd3a48fa681d3061212', '2023-10-03', 1, 1, 1, 1),
(2, 'VENTAS', 'VENTAS', NULL, NULL, '260ebbae64c0831bbe4c52c123393863', '2023-12-04', 8, 1, 1, 1),
(3, 'jorge', 'jorge-ventas', 'jorge@gmail.com', '987456321', 'eb0a191797624dd3a48fa681d3061212', '2023-12-21', 6, 1, 1, 1),
(4, 'clinica', 'clinica', NULL, NULL, '163ee9847a2b5b7441f33aa23ec31304', '2024-01-15', 1, 1, 2, 1),
(5, 'administracion', 'administracion', 'administracion@qara.com.pe', NULL, 'ab8c7e66da21afff105e7263fce45206', '2024-01-22', 1, 1, 3, 1),
(6, 'joseclinica', 'USUARIO JOSE CLINICA', '', '', '25f9e794323b453885f5181f1b624d0b', '2024-01-23', 1, 3, 2, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`rol_id`),
  ADD UNIQUE KEY `rol_nombre` (`rol_nombre`);

--
-- Indices de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  ADD PRIMARY KEY (`suc_id`),
  ADD UNIQUE KEY `suc_nombre` (`suc_nombre`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_name` (`user_name`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `rol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `sucursales`
--
ALTER TABLE `sucursales`
  MODIFY `suc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
