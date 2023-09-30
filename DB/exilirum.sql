-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2023 a las 20:31:51
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29
SET
  SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";

START TRANSACTION;

SET
  time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;

/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;

/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;

/*!40101 SET NAMES utf8mb4 */
;

--
-- Base de datos: `exilirum`
--
-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `facturacion`
--
CREATE TABLE `facturacion` (
  `id_factura` int(11) NOT NULL,
  `n_documento` int(11) NOT NULL,
  `id_producto` int(12) NOT NULL,
  `fecha_compra` date NOT NULL,
  `cantidad` int(3) NOT NULL,
  `valor_total` int(8) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `productos`
--
CREATE TABLE `productos` (
  `id_producto` int(12) NOT NULL,
  `nombre_producto` varchar(30) NOT NULL,
  `descripcion_producto` varchar(120) NOT NULL,
  `precio` int(10) NOT NULL,
  `n_documento` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `recetas`
--
CREATE TABLE `recetas` (
  `id_receta` int(12) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descripcion_receta` varchar(1000) NOT NULL,
  `alcohol` int(1) NOT NULL,
  `tipo_bebida` varchar(30) NOT NULL,
  `n_documento` int(11) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `usuario`
--
CREATE TABLE `usuario` (
  `n_documento` int(11) NOT NULL,
  `nombre_completo` varchar(80) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contraseña` varchar(100) NOT NULL,
  `tipo_usuario` int(1) NOT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8mb4;

--
-- Índices para tablas volcadas
--
--
-- Indices de la tabla `facturacion`
--
ALTER TABLE
  `facturacion`
ADD
  PRIMARY KEY (`id_factura`),
ADD
  KEY `n_documento` (`n_documento`),
ADD
  KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE
  `productos`
ADD
  PRIMARY KEY (`id_producto`),
ADD
  KEY `n_documento` (`n_documento`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE
  `recetas`
ADD
  PRIMARY KEY (`id_receta`),
ADD
  KEY `n_documento` (`n_documento`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE
  `usuario`
ADD
  PRIMARY KEY (`n_documento`);

--
-- AUTO_INCREMENT de las tablas volcadas
--
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE
  `productos`
MODIFY
  `id_producto` int(12) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--
--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE
  `facturacion`
ADD
  CONSTRAINT `facturacion_ibfk_1` FOREIGN KEY (`n_documento`) REFERENCES `usuario` (`n_documento`),
ADD
  CONSTRAINT `facturacion_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE
  `productos`
ADD
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`n_documento`) REFERENCES `usuario` (`n_documento`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE
  `recetas`
ADD
  CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`n_documento`) REFERENCES `usuario` (`n_documento`);

COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;

/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;