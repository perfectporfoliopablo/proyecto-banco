-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-03-2021 a las 12:26:56
-- Versión del servidor: 5.7.26
-- Versión de PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `banco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

DROP TABLE IF EXISTS `equipos`;
CREATE TABLE IF NOT EXISTS `equipos` (
  `NUMERO` int(50) NOT NULL,
  `PORCESADOR` varchar(30) NOT NULL,
  `SISTEMA_OPERATIVO` varchar(20) NOT NULL,
  `PLACA_BASE` varchar(30) NOT NULL,
  PRIMARY KEY (`NUMERO`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`NUMERO`, `PORCESADOR`, `SISTEMA_OPERATIVO`, `PLACA_BASE`) VALUES
(1200, 'i5', 'windows 10', 'msi mpg'),
(1230, 'i7', 'windows 10', 'asus prime'),
(1250, 'i5', 'windows 7', 'asus rog'),
(1270, 'i9', 'windows 10', 'aorus pro'),
(1290, 'i7', 'windows 10', 'asus prime');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `incidencia`
--

DROP TABLE IF EXISTS `incidencia`;
CREATE TABLE IF NOT EXISTS `incidencia` (
  `CODIGO_ORDENADOR` int(11) NOT NULL,
  `FECHA` date NOT NULL,
  `HORA` time NOT NULL,
  `INCIDENCIA` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `incidencia`
--

INSERT INTO `incidencia` (`CODIGO_ORDENADOR`, `FECHA`, `HORA`, `INCIDENCIA`) VALUES
(1230, '2021-03-07', '20:00:00', 'probando la incidencia'),
(1230, '2021-03-07', '20:00:01', 'Funciona mal la pantalla'),
(1230, '2021-03-07', '20:00:01', 'Funciona mal la pantalla'),
(1200, '2021-03-07', '20:00:00', 'Funciona mal la pantalla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
CREATE TABLE IF NOT EXISTS `sucursales` (
  `ID` varchar(20) NOT NULL,
  `DIRECCION` varchar(50) NOT NULL,
  `RESPONSABLE` varchar(20) NOT NULL,
  `TELEFONO` int(9) NOT NULL,
  `EMAIL` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `sucursales`
--

INSERT INTO `sucursales` (`ID`, `DIRECCION`, `RESPONSABLE`, `TELEFONO`, `EMAIL`) VALUES
('1568', 'calle maria toboso 34', 'Antonio Robles', 625896584, 'antoniorobles@gmail.com'),
('1568', 'calle maria toboso 34', 'Antonio Robles', 625896584, 'antoniorobles@gmail.com');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
