-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-10-2019 a las 02:35:27
-- Versión del servidor: 5.6.44-log
-- Versión de PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tenis`
--
CREATE DATABASE IF NOT EXISTS `tenis` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tenis`;

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `Insertaalta` (IN `nom` VARCHAR(90), IN `mar` VARCHAR(90), IN `model` VARCHAR(90), IN `ser` VARCHAR(90), IN `colo` VARCHAR(90), IN `aut` VARCHAR(90), IN `ani` VARCHAR(90))  BEGIN
INSERT INTO tenis(nombre,marca,modelo,serie,color,autor,anio) VALUES(nom,mar,model,ser,colo,aut,ani);
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tenis`
--

CREATE TABLE `tenis` (
  `id_tenis` int(3) NOT NULL,
  `nombre` varchar(90) NOT NULL,
  `marca` varchar(90) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `serie` varchar(12) NOT NULL,
  `color` varchar(90) NOT NULL,
  `autor` varchar(90) NOT NULL,
  `anio` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tenis`
--

INSERT INTO `tenis` (`id_tenis`, `nombre`, `marca`, `modelo`, `serie`, `color`, `autor`, `anio`) VALUES
(1, 'Jordan', 'Nike', '3TSM4', '', '', '', ''),
(4, 'NetaPre', 'Gucci', '4smdw2', '', '', '', ''),
(5, 'NetaPre', 'Gucci', '4smdw2', '', '', '', ''),
(6, 'Jordan XXXIII', 'Nike', 'Retro', '12345678', 'Azul', 'Michel Jackson', '2018');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `user` varchar(90) NOT NULL,
  `contra` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tenis`
--
ALTER TABLE `tenis`
  ADD PRIMARY KEY (`id_tenis`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tenis`
--
ALTER TABLE `tenis`
  MODIFY `id_tenis` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
