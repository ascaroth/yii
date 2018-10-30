-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-08-2018 a las 19:38:01
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_hotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_categoria`
--

CREATE TABLE `aud_categoria` (
  `Cate_id` int(11) DEFAULT NULL,
  `Cate_estrella` int(7) DEFAULT NULL,
  `Cate_iva` int(17) DEFAULT NULL,
  `Cate_descripci` varchar(60) DEFAULT NULL,
  `Cate_creadopor` varchar(45) NOT NULL,
  `Cate_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_habitacion`
--

CREATE TABLE `aud_habitacion` (
  `Habi_id` int(11) DEFAULT NULL,
  `Habi_tipo` varchar(45) DEFAULT NULL,
  `Habi_NumHubic` varchar(22) DEFAULT NULL,
  `Habi_descripc` varchar(45) DEFAULT NULL,
  `Habi_planta` varchar(15) DEFAULT NULL,
  `Habi_creadopor` varchar(45) NOT NULL,
  `Habi_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_hotel`
--

CREATE TABLE `aud_hotel` (
  `Hote_id` int(11) DEFAULT NULL,
  `Hote_nombre` varchar(45) DEFAULT NULL,
  `Hote_direccion` varchar(45) DEFAULT NULL,
  `Hote_telefono` int(11) DEFAULT NULL,
  `Hote_NumHabita` int(11) DEFAULT NULL,
  `Hote_AnoConstruc` datetime DEFAULT NULL,
  `Hote_fechareg` datetime NOT NULL,
  `Hote_creadopor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_reseragen`
--

CREATE TABLE `aud_reseragen` (
  `Rage_id` int(11) DEFAULT NULL,
  `Rage_nombre` varchar(45) DEFAULT NULL,
  `Rage_direccion` varchar(45) DEFAULT NULL,
  `Rage_telefono` int(11) DEFAULT NULL,
  `Rage_Precio` varchar(15) DEFAULT NULL,
  `Rage_Fechaini` datetime DEFAULT NULL,
  `Rage_Fechafin` datetime DEFAULT NULL,
  `Rage_NomPer` varchar(45) DEFAULT NULL,
  `Rage_Ident` int(11) DEFAULT NULL,
  `Rage_creadopor` varchar(45) NOT NULL,
  `Rage_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aud_reserparti`
--

CREATE TABLE `aud_reserparti` (
  `Rpar_id` int(11) DEFAULT NULL,
  `Rpar_nombre` varchar(45) DEFAULT NULL,
  `Rpar_direccion` varchar(45) DEFAULT NULL,
  `Rpar_telefono` int(11) DEFAULT NULL,
  `Rpar_Precio` int(11) DEFAULT NULL,
  `Rpar_fechaini` datetime DEFAULT NULL,
  `Rpar_fechafin` datetime DEFAULT NULL,
  `Rpar_creadopor` varchar(45) NOT NULL,
  `Rpar_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `Cate_id` int(11) NOT NULL,
  `Cate_estrella` int(7) DEFAULT NULL,
  `Cate_iva` int(17) DEFAULT NULL,
  `Cate_descripci` varchar(60) DEFAULT NULL,
  `Cate_creadopor` varchar(45) NOT NULL,
  `Cate_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `categoria`
--
DELIMITER $$
CREATE TRIGGER `t_Deletecategoria` BEFORE DELETE ON `categoria` FOR EACH ROW begin insert into aud_categoria values (old.Cate_estrella, old.Cate_iva, old.Cate_descripci, old.Cate_creadopor, '2018- 04-07', 'D'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Insertcategoria` BEFORE INSERT ON `categoria` FOR EACH ROW begin insert into aud_categoria values (new.Cate_descripci, new.Cate_estrella, new.Cate_iva, new.Cate_creadopor, '2018- 04-07', 'I'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Updatecategoria` BEFORE UPDATE ON `categoria` FOR EACH ROW begin insert into aud_categoria values (old.Cate_estrella, old.Cate_iva, old.Cate_descripci, old.Cate_creadopor, '2018- 04-07', '2018- 04-07', 'U'); end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitacion`
--

CREATE TABLE `habitacion` (
  `Habi_id` int(11) NOT NULL,
  `Habi_tipo` varchar(45) DEFAULT NULL,
  `Habi_NumHubic` varchar(22) DEFAULT NULL,
  `Habi_descripc` varchar(45) DEFAULT NULL,
  `Habi_planta` varchar(15) DEFAULT NULL,
  `Hotel_Hote_id` int(11) NOT NULL,
  `Habi_creadopor` varchar(45) NOT NULL,
  `Habi_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `habitacion`
--
DELIMITER $$
CREATE TRIGGER `t_Deletehabitacion` BEFORE DELETE ON `habitacion` FOR EACH ROW begin insert into aud_habitacion values (old.Habi_tipo, old.Habi_NumHubic, old.Habi_descripc, old.Habi_planta, old.Hotel_Hote_id, old.Habi_creadopor, '2018- 04-07', 'D'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Inserthabitacion` BEFORE INSERT ON `habitacion` FOR EACH ROW begin insert into aud_habitacion values (new.Habi_tipo, new.Habi_NumHubic, new.Habi_descripc, new.Habi_planta, new.Hotel_Hote_id, new.Habi_creadopor, '2018- 04-07', 'I'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Updatehabitacion` BEFORE UPDATE ON `habitacion` FOR EACH ROW begin insert into aud_habitacion values (old.Habi_tipo, old.Habi_NumHubic, old.Habi_descripc, old.Habi_planta, old.Hotel_Hote_id, old.Habi_creadopor, '2018- 04-07', '2018- 04-07', 'U'); end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `Hote_id` int(11) NOT NULL,
  `Hote_nombre` varchar(45) DEFAULT NULL,
  `Hote_direccion` varchar(45) DEFAULT NULL,
  `Hote_telefono` int(11) DEFAULT NULL,
  `Hote_NumHabita` int(11) DEFAULT NULL,
  `Hote_AnoConstruc` datetime DEFAULT NULL,
  `Categoria_Cate_id` int(11) NOT NULL,
  `Hote_fechareg` datetime NOT NULL,
  `Hote_creadopor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `hotel`
--
DELIMITER $$
CREATE TRIGGER `t_Deletehotel` BEFORE DELETE ON `hotel` FOR EACH ROW begin insert into aud_hotel values (old.Hote_nombre, old.Hote_direccion, old.Hote_telefono, old.Hote_NumHabita, old.Hote_AnoConstruc, old.Categoria_Cate_id, old.Hote_creadopor, '2018- 04-07', 'D'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Inserthotel` BEFORE INSERT ON `hotel` FOR EACH ROW begin insert into aud_hotel values (new.Hote_id, new.Hote_nombre, new.Hote_direccion, new.Hote_telefono, new.Hote_NumHabita, new.Hote_AnoConstruc, new.Categoria_Cate_id, new.Hote_creadopor, '2018- 04-07', 'I'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Updatehotel` BEFORE UPDATE ON `hotel` FOR EACH ROW begin insert into aud_hotel values (old.Hote_nombre, old.Hote_direccion, old.Hote_telefono, old.Hote_NumHabita, old.Hote_AnoConstruc, old.Categoria_Cate_id, old.Hote_creadopor, '2018- 04-07', '2018- 04-07', 'U'); end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reseragen`
--

CREATE TABLE `reseragen` (
  `Rage_id` int(11) NOT NULL,
  `Rage_nombre` varchar(45) DEFAULT NULL,
  `Rage_direccion` varchar(45) DEFAULT NULL,
  `Rage_telefono` int(11) DEFAULT NULL,
  `Rage_Precio` varchar(15) DEFAULT NULL,
  `Rage_Fechaini` datetime DEFAULT NULL,
  `Rage_Fechafin` datetime DEFAULT NULL,
  `Rage_NomPer` varchar(45) DEFAULT NULL,
  `Rage_Ident` int(11) DEFAULT NULL,
  `Hotel_Hote_id` int(11) NOT NULL,
  `Rage_creadopor` varchar(45) NOT NULL,
  `Rage_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `reseragen`
--
DELIMITER $$
CREATE TRIGGER `t_Deletereseragen` BEFORE DELETE ON `reseragen` FOR EACH ROW begin insert into aud_reseragen values (old.Rage_nombre, old.Rage_direccion, old.Rage_telefono, old.Rage_Precio, old.Rage_Fechaini, old.Rage_Fechafin, old.Rage_NomPer, old.Rage_Ident, old.Hotel_Hote_id, old.Rage_creadopor, '2018- 04-07', 'D'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Insertreseragen` BEFORE INSERT ON `reseragen` FOR EACH ROW begin insert into aud_reseragen values (new.Rage_nombre, new.Rage_direccion, new.Rage_telefono, new.Rage_Precio, new.Rage_Fechaini, new.Rage_Fechafin, new.Rage_NomPer, new.Rage_Ident, new.Hotel_Hote_id, new.Rage_creadopor, '2018- 04-07', 'I'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Updatereseragen` BEFORE UPDATE ON `reseragen` FOR EACH ROW begin insert into aud_reseragen values (old.Rage_nombre, old.Rage_direccion, old.Rage_telefono, old.Rage_Precio, old.Rage_Fechaini, old.Rage_Fechafin, old.Rage_NomPer, old.Rage_Ident, old.Hotel_Hote_id, old.Rage_creadopor, '2018- 04-07', 'U'); end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reserparti`
--

CREATE TABLE `reserparti` (
  `Rpar_id` int(11) NOT NULL,
  `Rpar_nombre` varchar(45) DEFAULT NULL,
  `Rpar_direccion` varchar(45) DEFAULT NULL,
  `Rpar_telefono` int(11) DEFAULT NULL,
  `Rpar_Precio` int(11) DEFAULT NULL,
  `Rpar_fechaini` datetime DEFAULT NULL,
  `Rpar_fechafin` datetime DEFAULT NULL,
  `Hotel_Hote_id` int(11) NOT NULL,
  `Rpar_creadopor` varchar(45) NOT NULL,
  `Rpar_fechareg` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Disparadores `reserparti`
--
DELIMITER $$
CREATE TRIGGER `t_Deletereserparti` BEFORE DELETE ON `reserparti` FOR EACH ROW begin insert into aud_reserparti values (old.Rpar_nombre, old.Rpar_direccion, old.Rpar_telefono, old.Rpar_Precio, old.Rpar_fechaini, old.Rpar_fechafin, old.Hotel_Hote_id, old.Rpar_creadopor, '2018- 04-07', 'D'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Insertreserparti` BEFORE INSERT ON `reserparti` FOR EACH ROW begin insert into aud_reserparti values (new.Rpar_nombre, new.Rpar_direccion, new.Rpar_telefono, new.Rpar_Precio, new.Rpar_fechaini, new.Rpar_fechafin, new.Hotel_Hote_id, new.Rpar_creadopor, '2018- 04-07', 'I'); end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `t_Updatereserparti` BEFORE UPDATE ON `reserparti` FOR EACH ROW begin insert into aud_reserparti values (old.Rpar_nombre, old.Rpar_direccion, old.Rpar_telefono, old.Rpar_Precio, old.Rpar_fechaini, old.Rpar_fechafin, old.Hotel_Hote_id, old.Rpar_creadopor, '2018- 04-07', 'U'); end
$$
DELIMITER ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`Cate_id`);

--
-- Indices de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD PRIMARY KEY (`Habi_id`),
  ADD KEY `fk_Habitacion_Hotel1` (`Hotel_Hote_id`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`Hote_id`),
  ADD KEY `fk_Hotel_Categoria` (`Categoria_Cate_id`);

--
-- Indices de la tabla `reseragen`
--
ALTER TABLE `reseragen`
  ADD PRIMARY KEY (`Rage_id`),
  ADD KEY `fk_ReserAgen_Hotel1` (`Hotel_Hote_id`);

--
-- Indices de la tabla `reserparti`
--
ALTER TABLE `reserparti`
  ADD PRIMARY KEY (`Rpar_id`),
  ADD KEY `fk_ReserParti_Hotel1` (`Hotel_Hote_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `Cate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `habitacion`
--
ALTER TABLE `habitacion`
  MODIFY `Habi_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hotel`
--
ALTER TABLE `hotel`
  MODIFY `Hote_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reseragen`
--
ALTER TABLE `reseragen`
  MODIFY `Rage_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reserparti`
--
ALTER TABLE `reserparti`
  MODIFY `Rpar_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitacion`
--
ALTER TABLE `habitacion`
  ADD CONSTRAINT `fk_Habitacion_Hotel1` FOREIGN KEY (`Hotel_Hote_id`) REFERENCES `hotel` (`Hote_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD CONSTRAINT `fk_Hotel_Categoria` FOREIGN KEY (`Categoria_Cate_id`) REFERENCES `categoria` (`Cate_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reseragen`
--
ALTER TABLE `reseragen`
  ADD CONSTRAINT `fk_ReserAgen_Hotel1` FOREIGN KEY (`Hotel_Hote_id`) REFERENCES `hotel` (`Hote_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `reserparti`
--
ALTER TABLE `reserparti`
  ADD CONSTRAINT `fk_ReserParti_Hotel1` FOREIGN KEY (`Hotel_Hote_id`) REFERENCES `hotel` (`Hote_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
