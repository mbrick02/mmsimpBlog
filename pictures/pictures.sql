-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2021 a las 08:16:33
-- Versión del servidor: 10.4.18-MariaDB
-- Versión de PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `blog`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pictures`
--

CREATE TABLE `pictures` (
  `id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `priority` int(11) NOT NULL,
  `target_module` varchar(255) NOT NULL,
  `target_module_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pictures`
--

INSERT INTO `pictures` (`id`, `picture`, `priority`, `target_module`, `target_module_id`) VALUES
(4, 'chicasol568k.jpg', 1, 'blog_notices', 1),
(5, 'br22Qnx.jpg', 4, 'blog_notices', 1),
(6, 'br7qLV.jpg', 2, 'blog_notices', 1),
(7, 'br3vxK3.jpg', 3, 'blog_notices', 1),
(9, 'd8a6N.JPG', 5, 'blog_notices', 1),
(17, 'product7Gvzj.png', 1, 'blog_notices', 4),
(18, 'product9aYLW.png', 1, 'blog_notices', 4),
(19, 'product8mrva.png', 1, 'blog_notices', 4),
(20, 'product19LUR.png', 1, 'blog_notices', 5),
(21, 'product2jQBj.png', 1, 'blog_notices', 5),
(22, 'banner1YVD2.jpg', 1, 'blog_notices', 3),
(23, 'banner2cddR.jpg', 1, 'blog_notices', 3);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
