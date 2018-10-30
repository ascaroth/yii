-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-07-2018 a las 03:32:00
-- Versión del servidor: 10.1.32-MariaDB
-- Versión de PHP: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `pers_id` int(10) DEFAULT NULL,
  `pers_nombre` varchar(100) DEFAULT NULL,
  `pers_usuario` varchar(50) DEFAULT NULL,
  `pers_clave` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`pers_id`, `pers_nombre`, `pers_usuario`, `pers_clave`) VALUES
(1, 'MICHAEL JAIMES', 'mjaimes', '123'),
(2, 'OMAR LANCHEROS', 'OLANCHEROS', '018'),
(3, 'SANTIAGO TOVAR', 'SANTO', '019'),
(3, 'sarmiento agua', 'sarmi', '020'),
(4, 'skinerr rios', 'skiner', '021'),
(5, 'oscar rondon', 'oscarron', '022'),
(6, 'will martinez', 'will', '023'),
(7, 'stiven rios', 'stiff', '024');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
