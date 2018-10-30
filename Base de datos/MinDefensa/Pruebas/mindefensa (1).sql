-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-07-2018 a las 02:43:18
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mindefensa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accionservicio`
--

CREATE TABLE `accionservicio` (
  `accs_id` int(11) NOT NULL,
  `accs_descripcion` varchar(60) DEFAULT NULL,
  `accs_fechaINI` datetime DEFAULT NULL,
  `accs_fechaFIN` datetime DEFAULT NULL,
  `accs_registradopor` varchar(20) DEFAULT NULL,
  `accs_fechareg` datetime DEFAULT NULL,
  `Soldado_sold_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_accionservicio`
--

CREATE TABLE `aud_accionservicio` (
  `accs_id` int(11) DEFAULT NULL,
  `accs_descripcion` varchar(45) DEFAULT NULL,
  `accs_fechaINI` datetime DEFAULT NULL,
  `accs_fechaFIN` datetime DEFAULT NULL,
  `accs_registradopor` varchar(20) DEFAULT NULL,
  `accs_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_ciudad`
--

CREATE TABLE `aud_ciudad` (
  `ciud_id` int(11) DEFAULT NULL,
  `ciud_Nombre` varchar(45) DEFAULT NULL,
  `ciud_registradopor` varchar(20) DEFAULT NULL,
  `ciud_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_compañia`
--

CREATE TABLE `aud_compañia` (
  `comp_id` int(11) DEFAULT NULL,
  `comp_actividad` varchar(45) DEFAULT NULL,
  `comp_registradopor` varchar(20) DEFAULT NULL,
  `comp_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_cuartel`
--

CREATE TABLE `aud_cuartel` (
  `cuar_id` int(11) DEFAULT NULL,
  `cuar_nombre` varchar(45) DEFAULT NULL,
  `cuar_Direccion` varchar(45) DEFAULT NULL,
  `cuar_registradopor` varchar(20) DEFAULT NULL,
  `cuar_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_cuerpsoldado`
--

CREATE TABLE `aud_cuerpsoldado` (
  `Cuer_id` int(11) DEFAULT NULL,
  `cuer_tipo` varchar(45) DEFAULT NULL,
  `cuer_registradopor` varchar(20) DEFAULT NULL,
  `cuer_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_rolsoldado`
--

CREATE TABLE `aud_rolsoldado` (
  `rols_id` int(11) DEFAULT NULL,
  `rols_nombre` varchar(45) DEFAULT NULL,
  `rols_registradopor` varchar(20) DEFAULT NULL,
  `rols_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_soldado`
--

CREATE TABLE `aud_soldado` (
  `sold_id` int(11) DEFAULT NULL,
  `sold_nombre` varchar(45) DEFAULT NULL,
  `sold_apellido` varchar(45) DEFAULT NULL,
  `sold_promocion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudad`
--

CREATE TABLE `ciudad` (
  `ciud_id` int(11) NOT NULL,
  `ciud_Nombre` varchar(45) DEFAULT NULL,
  `ciud_registradopor` varchar(20) DEFAULT NULL,
  `ciud_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compania`
--

CREATE TABLE `compania` (
  `comp_id` int(11) NOT NULL,
  `comp_actividad` varchar(45) DEFAULT NULL,
  `comp_registradopor` varchar(20) DEFAULT NULL,
  `comp_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuartel`
--

CREATE TABLE `cuartel` (
  `cuar_id` int(11) NOT NULL,
  `cuar_nombre` varchar(45) DEFAULT NULL,
  `cuar_Direccion` varchar(45) DEFAULT NULL,
  `cuar_registradopor` varchar(20) DEFAULT NULL,
  `cuar_fechareg` datetime DEFAULT NULL,
  `Ciudad_ciud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuerpsoldado`
--

CREATE TABLE `cuerpsoldado` (
  `cuer_id` int(11) NOT NULL,
  `cuer_tipo` varchar(45) DEFAULT NULL,
  `cuer_registradopor` varchar(20) DEFAULT NULL,
  `cuer_fechareg` datetime DEFAULT NULL,
  `RolSoldado_rols_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rolsoldado`
--

CREATE TABLE `rolsoldado` (
  `rols_id` int(11) NOT NULL,
  `rols_nombre` varchar(45) DEFAULT NULL,
  `rols_registradopor` varchar(20) DEFAULT NULL,
  `rols_fechareg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `soldado`
--

CREATE TABLE `soldado` (
  `sold_id` int(11) NOT NULL,
  `sold_nombre` varchar(45) DEFAULT NULL,
  `sold_apellido` varchar(45) DEFAULT NULL,
  `sold_promocion` datetime DEFAULT NULL,
  `Cuartel_cuar_id` int(11) NOT NULL,
  `CuerpSoldado_cuer_id` int(11) NOT NULL,
  `Cuartel_cuar_id1` int(11) NOT NULL,
  `Compania_comp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accionservicio`
--
ALTER TABLE `accionservicio`
  ADD PRIMARY KEY (`accs_id`),
  ADD KEY `fk_AccionServicio_Soldado1_idx` (`Soldado_sold_id`);

--
-- Indices de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  ADD PRIMARY KEY (`ciud_id`);

--
-- Indices de la tabla `compania`
--
ALTER TABLE `compania`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indices de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD PRIMARY KEY (`cuar_id`),
  ADD KEY `fk_Cuartel_Ciudad1_idx` (`Ciudad_ciud_id`);

--
-- Indices de la tabla `cuerpsoldado`
--
ALTER TABLE `cuerpsoldado`
  ADD PRIMARY KEY (`cuer_id`,`RolSoldado_rols_id`),
  ADD KEY `fk_CuerpSoldado_RolSoldado1_idx` (`RolSoldado_rols_id`);

--
-- Indices de la tabla `rolsoldado`
--
ALTER TABLE `rolsoldado`
  ADD PRIMARY KEY (`rols_id`);

--
-- Indices de la tabla `soldado`
--
ALTER TABLE `soldado`
  ADD PRIMARY KEY (`sold_id`),
  ADD KEY `fk_Soldado_CuerpSoldado1_idx` (`CuerpSoldado_cuer_id`),
  ADD KEY `fk_Soldado_Cuartel1_idx` (`Cuartel_cuar_id1`),
  ADD KEY `fk_Soldado_Compania1_idx` (`Compania_comp_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accionservicio`
--
ALTER TABLE `accionservicio`
  MODIFY `accs_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `ciudad`
--
ALTER TABLE `ciudad`
  MODIFY `ciud_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `compania`
--
ALTER TABLE `compania`
  MODIFY `comp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuartel`
--
ALTER TABLE `cuartel`
  MODIFY `cuar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cuerpsoldado`
--
ALTER TABLE `cuerpsoldado`
  MODIFY `cuer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rolsoldado`
--
ALTER TABLE `rolsoldado`
  MODIFY `rols_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `soldado`
--
ALTER TABLE `soldado`
  MODIFY `sold_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `accionservicio`
--
ALTER TABLE `accionservicio`
  ADD CONSTRAINT `fk_AccionServicio_Soldado1` FOREIGN KEY (`Soldado_sold_id`) REFERENCES `soldado` (`sold_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuartel`
--
ALTER TABLE `cuartel`
  ADD CONSTRAINT `fk_Cuartel_Ciudad1` FOREIGN KEY (`Ciudad_ciud_id`) REFERENCES `ciudad` (`ciud_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `cuerpsoldado`
--
ALTER TABLE `cuerpsoldado`
  ADD CONSTRAINT `fk_CuerpSoldado_RolSoldado1` FOREIGN KEY (`RolSoldado_rols_id`) REFERENCES `rolsoldado` (`rols_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `soldado`
--
ALTER TABLE `soldado`
  ADD CONSTRAINT `fk_Soldado_Compania1` FOREIGN KEY (`Compania_comp_id`) REFERENCES `compania` (`comp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Soldado_Cuartel1` FOREIGN KEY (`Cuartel_cuar_id1`) REFERENCES `cuartel` (`cuar_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Soldado_CuerpSoldado1` FOREIGN KEY (`CuerpSoldado_cuer_id`) REFERENCES `cuerpsoldado` (`cuer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
