-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 30-01-2024 a las 19:04:57
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
-- Base de datos: `gifmigen_clinico_producto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `cat_id` int(11) NOT NULL,
  `cat_nombre` varchar(50) NOT NULL,
  `cat_descripcion` varchar(100) NOT NULL,
  `cat_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`cat_id`, `cat_nombre`, `cat_descripcion`, `cat_estado`) VALUES
(1, 'ANALGÉSICOS', 'PARA REDUCIR O ALIVIAR LOS DOLORES DE CABEZA, MUSCULARES, ARTRÍTICOS O MUCHOS OTROS ACHAQUES Y DOLOR', 1),
(2, 'AMPOLLA', 'PARA APLICAR', 1),
(3, 'CREMA', 'APLICAR FROTANDO', 1),
(4, 'ANTIGRIPAL', 'PARA PREVENIR O COMBATIR LA GRIPE.', 1),
(5, 'ESTOMACALES', 'PARA DOLORES E INFECCIONES', 1),
(6, 'ANTINFLAMATORIO', 'REDUCE LA INFLAMACIÓN (ENROJECIMIENTO, INFLAMACIÓN Y DOLOR) EN EL CUERPO.', 1),
(7, 'CUIDADO DENTAL', 'COLGATE, DENTO', 1),
(8, 'CATEGORY 88', 'DESCRIPCION DE CATEGORIA 88', 1),
(9, 'CATEGORIA 9', 'DESCRIPCION CATEGORIA 9', 1),
(10, 'PRIMEROS AUXILIOS', 'PRIMEROS AUXILIOS', 1),
(11, 'ABARROTES', 'Abarrotes', 1),
(13, 'PROTECCION SOLAR', 'CREMAS Y BLOQUEADORES PARA EL SOL', 1),
(14, 'Limpieza Facial', 'Productos de limpieza facial', 1),
(15, 'INSUMOS DE LABORTORIO', 'INSUMOS DE LABORATORIO (TUBOS, VASOS, PIPETAS...)', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medidas`
--

CREATE TABLE `medidas` (
  `med_id` int(11) NOT NULL,
  `med_nombre` varchar(50) NOT NULL,
  `med_simbolo` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `medidas`
--

INSERT INTO `medidas` (`med_id`, `med_nombre`, `med_simbolo`) VALUES
(1, 'UNIDADES', 'Und'),
(2, 'KILOGRAMO', 'Kg'),
(3, 'METROS', 'Mt'),
(4, 'PAQUETE', 'Pqte'),
(5, 'LITROS', 'L'),
(6, 'CAJAS', 'Cj'),
(7, 'MILILITROS', 'Ml');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `prod_id` int(11) NOT NULL,
  `prod_codigo` varchar(30) NOT NULL,
  `prod_nombre` varchar(100) NOT NULL,
  `prod_descripcion` varchar(500) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `med_id` int(11) NOT NULL,
  `imagen_nombre` varchar(30) DEFAULT NULL,
  `cat_id` int(11) NOT NULL,
  `prod_estado` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`prod_id`, `prod_codigo`, `prod_nombre`, `prod_descripcion`, `precio_venta`, `med_id`, `imagen_nombre`, `cat_id`, `prod_estado`) VALUES
(1, 'DRTR', 'DOLOREUMATRON', 'PARA DOLORES E INFECCIONES', 7.00, 1, NULL, 6, 1),
(2, 'AFB', 'VIX VAPORUB', 'UNGUENTO CONTRA RESFRIOS', 4.00, 1, NULL, 2, 1),
(3, 'ARF', 'AMOXICILINA', 'CAPSULAS', 1.50, 2, NULL, 8, 1),
(4, 'SRT', 'ADMITIEERS', 'GOTAS PARA EL CUIDADO OCULAR', 12.00, 2, NULL, 9, 1),
(5, 'SH23', 'SHAMPOO EUSERIN', 'PRESENTACION DE FRASCO DE 500ML', 89.00, 5, NULL, 9, 1),
(6, 'LRPSY', 'LA ROCHE-POSAY', 'HIDRATANTE PARA ROSTRO DE 40ML', 104.00, 5, NULL, 3, 1),
(7, 'PDRM5MG', 'PREDMISONA 5MG GENERICO', 'CAJA X 10 UNIDADES', 15.00, 6, NULL, 6, 1),
(8, 'BSE200ML', 'BLOQUEADOR SOLAR EUSERIN 200ML', 'PRESENTACIÓN EN BOTELLA DE 200ML', 100.00, 2, NULL, 9, 1),
(9, 'PRDC50', 'PREDNISONA 5GR - GENÉRICO', 'PRESENTACION EN CAJA DE 50 UNIDADES', 20.00, 6, NULL, 6, 1),
(10, '0001PP', 'PRODUCTO DE PRUEBA 1', 'DESCRIPCION DE PRODUCTO DE PRUEBA 1 CAJA X 5 UNIDADES', 100.00, 6, NULL, 3, 1),
(11, '0011ALGODON', 'ALGODON HIPOALERGENICO', 'ALGODON HIPOALERGENICO 500GR', 10.00, 1, NULL, 10, 1),
(12, '000123', 'Fotoprotector ISDIN Fusion Water Urban SPF 30 - Frasco 50 ML', 'Fotoprotector ISDIN Fusion Water Urban SPF 30 - Frasco 50 ML', 70.00, 7, NULL, 3, 1),
(13, '001234', 'Hidratante Cetaphil Pro AD Control - Frasco 295 ML', 'Hidratante Cetaphil Pro AD Control - Frasco 295 ML', 100.00, 7, NULL, 3, 1),
(14, '000111', 'AFELIUS OIL FREE GEL FPS 50 - TUBO 90ML', 'PROTECCIÓN SOLAR PROFESIONAL', 100.00, 7, NULL, 13, 1),
(15, '000222', 'Espuma de limpieza facial. Frasco de 236 ml', 'Espuma de limpieza facial. Frasco de 236 ml', 50.00, 7, NULL, 14, 1),
(16, '0100', 'VASO PRECIPITACION 3000 ML', 'VASO PRECIPITACION 3000 ML', 40.00, 1, NULL, 15, 1),
(17, '01010', 'FIOLA DE VIDRIO 50 ML C/TAPA CLASE A -TRANSPARENTE', 'FIOLA DE VIDRIO 50 ML C/TAPA CLASE A -TRANSPARENTE', 40.00, 1, NULL, 15, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stocks`
--

CREATE TABLE `stocks` (
  `stock_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `suc_id` int(11) NOT NULL,
  `stock_disponible` decimal(10,2) NOT NULL,
  `stock_critico` decimal(10,2) DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_nombre` (`cat_nombre`);

--
-- Indices de la tabla `medidas`
--
ALTER TABLE `medidas`
  ADD PRIMARY KEY (`med_id`),
  ADD UNIQUE KEY `med_nombre` (`med_nombre`),
  ADD UNIQUE KEY `med_simbolo` (`med_simbolo`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`prod_id`),
  ADD UNIQUE KEY `prod_codigo` (`prod_codigo`);

--
-- Indices de la tabla `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`stock_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `medidas`
--
ALTER TABLE `medidas`
  MODIFY `med_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `prod_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `stocks`
--
ALTER TABLE `stocks`
  MODIFY `stock_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
