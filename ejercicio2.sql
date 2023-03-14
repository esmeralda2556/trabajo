-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2021 a las 02:25:34
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdorig`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `apocalipsis`
--

CREATE TABLE `apocalipsis` (
  `cod` int(11) NOT NULL,
  `sanos` int(11) NOT NULL,
  `infectados` int(11) NOT NULL,
  `dias` int(11) NOT NULL,
  `resultado` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='ejercicio 2';

--
-- Volcado de datos para la tabla `apocalipsis`
--

INSERT INTO `apocalipsis` (`cod`, `sanos`, `infectados`, `dias`, `resultado`) VALUES
(1, 100, 0, 20, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `apocalipsis`
--
ALTER TABLE `apocalipsis`
  ADD PRIMARY KEY (`cod`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `apocalipsis`
--
ALTER TABLE `apocalipsis`
  MODIFY `cod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
