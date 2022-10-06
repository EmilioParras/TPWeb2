-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-10-2022 a las 12:58:26
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbtp1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id` int(11) NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `descripcion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id`, `categoria`, `descripcion`) VALUES
(1, 'Urbana', 'Zapatillas urbanas para el dia a dia.'),
(2, 'Deportiva', 'Zapatillas deportivas ideales para todo tipo de actividad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `Nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `clave_hash` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zapatillas`
--

CREATE TABLE `zapatillas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `marca` varchar(200) NOT NULL,
  `precio` int(200) NOT NULL,
  `talle` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `id_categoria_fk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `zapatillas`
--

INSERT INTO `zapatillas` (`id`, `nombre`, `marca`, `precio`, `talle`, `imagen`, `id_categoria_fk`) VALUES
(1, 'Nike Air Force 1', 'Nike', 25000, '39-40-41-41.5', './imagenes/ZapatillasUrbanas/NikeAirForce1.jpg', 1),
(2, 'Adidas Breaknet', 'Adidas', 25000, '39-40-41 ', './imagenes/ZapatillasUrbanas/AdidasBreaknet.jpg', 1),
(3, 'Vans U Old Skool', 'Vans', 15000, '39-40-41-41.5-42', './imagenes/ZapatillasUrbanas/VansUOldSkool.jpg', 1),
(4, 'Jhoon Foos Claw Black', 'Jhon Foos', 23000, '40-41-42', './imagenes/ZapatillasUrbanas/JhonFoosClawBlack.jpg', 1),
(5, 'Zapatillas Adidas Core racer', 'Adidas', 14500, '39-40-41', './imagenes/ZapatillasDeportivas/ZapatillasAdidasCoreracer.jpg', 2),
(6, 'Zapatilla Negra Topper Core', 'Topper', 18000, '40-41-42', './imagenes/ZapatillasDeportivas/ZapatillaNegraTopperCore.jpg\r\n', 2),
(7, 'Zapatilla Negra Puma Comet', 'Puma', 20000, '40-41', './imagenes/ZapatillasDeportivas/ZapatillaNegraPumaComet.jpg', 2),
(9, 'Zapatilla Gris Topper Core W', 'Topper', 13000, '40-41-42', './imagenes/ZapatillasDeportivas/ZapatillaGrisTopperCoreW.jpg', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `zapatillas`
--
ALTER TABLE `zapatillas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria_fk` (`id_categoria_fk`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `zapatillas`
--
ALTER TABLE `zapatillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `zapatillas`
--
ALTER TABLE `zapatillas`
  ADD CONSTRAINT `zapatillas_ibfk_1` FOREIGN KEY (`id_categoria_fk`) REFERENCES `categoria` (`ID`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
