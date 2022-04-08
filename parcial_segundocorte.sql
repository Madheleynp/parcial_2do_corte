-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 08-04-2022 a las 21:12:32
-- Versión del servidor: 8.0.17
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcial_segundocorte`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `tercer punto` (IN `genero` VARCHAR(50))  NO SQL
BEGIN
SELECT * 
FROM cine
WHERE genero=TERROR;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cine`
--

CREATE TABLE `cine` (
  `Id_pe` int(10) NOT NULL,
  `Nombre_pelicula` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Usuario` varchar(30) NOT NULL,
  `No_sala` int(10) NOT NULL,
  `Hora_presentacion` datetime NOT NULL,
  `Direccion` varchar(60) NOT NULL,
  `Telefono` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `cine`
--

INSERT INTO `cine` (`Id_pe`, `Nombre_pelicula`, `Usuario`, `No_sala`, `Hora_presentacion`, `Direccion`, `Telefono`) VALUES
(1, 'La noche del demonio', '1', 11, '2022-04-05 06:46:07', 'carrera 38 B #32-58', 355879642),
(2, 'Las brujas', '2', 12, '2022-04-08 05:14:00', 'carrera 38 c #32-55', 325458191),
(3, 'REÍR', '3', 13, '2022-04-05 06:46:07', 'carrera 38 B #32-58', 335514455);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `ID` int(11) NOT NULL,
  `Lunes,Martes y Jueves` decimal(10,0) NOT NULL,
  `Miercoles` decimal(10,0) NOT NULL,
  `Viernes y Sábado` decimal(10,0) NOT NULL,
  `Domingo y Festivos` decimal(10,0) NOT NULL,
  `Tarjeta_Cine` decimal(10,0) NOT NULL,
  `Tarjeta_estudiantil` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`ID`, `Lunes,Martes y Jueves`, `Miercoles`, `Viernes y Sábado`, `Domingo y Festivos`, `Tarjeta_Cine`, `Tarjeta_estudiantil`) VALUES
(1, '7000', '5000', '10000', '12000', '7500', '6500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pelicula`
--

CREATE TABLE `pelicula` (
  `Id` int(11) NOT NULL,
  `Nombre_pelicula` varchar(20) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Protagonista_Principal` varchar(20) NOT NULL,
  `Director` varchar(20) NOT NULL,
  `Duracion` time NOT NULL,
  `Actores_Secundarios` varchar(60) NOT NULL,
  `Estreno` date NOT NULL,
  `No_Re` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `pelicula`
--

INSERT INTO `pelicula` (`Id`, `Nombre_pelicula`, `Genero`, `Protagonista_Principal`, `Director`, `Duracion`, `Actores_Secundarios`, `Estreno`, `No_Re`) VALUES
(1, 'La noche del demonio', 'terror', 'Madheleyn', 'Mayherlis p', '02:47:25', 'Magnolia R,Maylin A, Manuela v y Marianella R', '2022-04-13', 1),
(2, 'Las brujas', 'terror', 'Mayherlis p', 'madheleyn', '24:00:00', 'Magnolia R,Maylin A, Manuela v y Marianella R', '2022-04-13', 2),
(3, 'REÍR', 'COMEDIA', 'Madheleyn', 'Mayherlis p', '02:47:25', 'Magnolia R,Maylin A, Manuela v y Marianella R', '2022-04-13', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sala`
--

CREATE TABLE `sala` (
  `Id` int(11) NOT NULL,
  `N_sala` int(11) NOT NULL,
  `Fila` int(11) NOT NULL,
  `Columna` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sala`
--

INSERT INTO `sala` (`Id`, `N_sala`, `Fila`, `Columna`) VALUES
(11, 11, 1, 2),
(12, 12, 2, 2),
(13, 13, 1, 2);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `segundo_punto`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `segundo_punto` (
`Genero` varchar(20)
,`Nombre_pelicula` varchar(20)
,`Actores_Secundarios` varchar(60)
,`Protagonista_Principal` varchar(20)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id` int(20) NOT NULL,
  `Nombre` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `usuario` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `tipo_de_pelicula_a_veer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id`, `Nombre`, `Apellido`, `usuario`, `tipo_de_pelicula_a_veer`) VALUES
(1, 'Madheleyn', 'Perez', '1', 'TERROR\r\n'),
(2, 'Mayherlis', 'Perez', '2', 'TERROR\r\n'),
(3, 'Magnolia', 'Perez', '3', 'COMEDIA\r\n');

-- --------------------------------------------------------

--
-- Estructura para la vista `segundo_punto`
--
DROP TABLE IF EXISTS `segundo_punto`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `segundo_punto`  AS  select `pelicula`.`Genero` AS `Genero`,`pelicula`.`Nombre_pelicula` AS `Nombre_pelicula`,`pelicula`.`Actores_Secundarios` AS `Actores_Secundarios`,`pelicula`.`Protagonista_Principal` AS `Protagonista_Principal` from (`pelicula` join `usuario` on(((`pelicula`.`Genero` = `usuario`.`tipo_de_pelicula_a_veer`) = `pelicula`.`Genero`))) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cine`
--
ALTER TABLE `cine`
  ADD PRIMARY KEY (`Id_pe`),
  ADD UNIQUE KEY `No_sala` (`No_sala`),
  ADD KEY `Nombre_Pelicula` (`Nombre_pelicula`,`Usuario`,`No_sala`),
  ADD KEY `Usuario` (`Usuario`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Nombre_pelicula` (`Nombre_pelicula`);

--
-- Indices de la tabla `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `usuario` (`usuario`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD CONSTRAINT `descuentos_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `cine` (`Id_pe`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `descuentos_ibfk_2` FOREIGN KEY (`ID`) REFERENCES `usuario` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pelicula`
--
ALTER TABLE `pelicula`
  ADD CONSTRAINT `pelicula_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `cine` (`Id_pe`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `pelicula_ibfk_2` FOREIGN KEY (`Nombre_pelicula`) REFERENCES `cine` (`Nombre_pelicula`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `sala`
--
ALTER TABLE `sala`
  ADD CONSTRAINT `sala_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `cine` (`No_sala`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `cine` (`Usuario`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
