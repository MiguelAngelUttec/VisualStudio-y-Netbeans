-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 04-11-2019 a las 00:07:21
-- Versión del servidor: 10.4.6-MariaDB
-- Versión de PHP: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `producto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(3) NOT NULL,
  `nombre` varchar(90) NOT NULL,
  `marca` varchar(90) NOT NULL,
  `codigo` varchar(255) NOT NULL,
  `serie` varchar(12) NOT NULL,
  `precio` varchar(90) NOT NULL,
  `nproductos` varchar(90) NOT NULL,
  `area` varchar(4) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id_producto`, `nombre`, `marca`, `codigo`, `serie`, `precio`, `nproductos`, `area`, `foto`) VALUES
(1, 'Agua', 'Epura', 'sjsu', '2', '10', '200', 'Agua', 'a.jpg'),
(2, 'Jugo', 'Boing', 'dgdg5', '78', '15', '150', 'Jugo', 'b.jpg'),
(3, 'Bombon', 'De la rosa', 'dfsd5f', '88', '30', '75', 'dulc', 'c.jpg'),
(4, 'Kisses', 'Hershe', '5fd5', '12', '23', '100', 'Choc', 'd.jpg'),
(5, 'Pan', 'Bimbo', 'wsds', '25', '50', '500', 'Pan', 'e.jpg'),
(6, 'Jamón', 'Fud', 'f5s4s8s', '5', '30', '15', 'Comi', 'f.jpg'),
(7, 'Queso', 'Lala', '2f58de', '5', '20', '50', 'Lact', 'g.jpg'),
(9, 'Papas', 'Sabritas', '1d5s8d', '3', '10', '200', 'Bota', 'h.jpg'),
(11, 'leche', 'lala', '12346', '1', '15', '100', 'lact', 'i.jpg'),
(13, 'Galletas', 'Chokis', 'a4s8da', '1', '20', '100', 'Pan', 'j.png');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id_producto` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
