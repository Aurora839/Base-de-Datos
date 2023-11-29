-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2023 a las 03:49:30
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `riac`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `accion_realizada`
--

CREATE TABLE `accion_realizada` (
  `Id_Accion_Realizada` int(11) NOT NULL,
  `Observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `accion_realizada`
--

INSERT INTO `accion_realizada` (`Id_Accion_Realizada`, `Observaciones`) VALUES
(1, 'Agresión a compañeros'),
(2, 'Indiciplina'),
(3, 'Peleas dentro del plantel'),
(4, ''),
(5, 'Agresión a docentes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carreras`
--

CREATE TABLE `carreras` (
  `Id_Carrera` int(11) NOT NULL,
  `Nombre_Carrera` varchar(255) NOT NULL,
  `Id_Grupo` int(11) NOT NULL,
  `Id_Semestre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `carreras`
--

INSERT INTO `carreras` (`Id_Carrera`, `Nombre_Carrera`, `Id_Grupo`, `Id_Semestre`) VALUES
(1, 'Informatica', 6, 5),
(2, 'Contabilidad', 3, 5),
(3, 'Hospitalidad Turistica', 4, 5),
(4, 'Alimentos y Bebidas', 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estados`
--

CREATE TABLE `estados` (
  `Id_Estado` int(11) NOT NULL,
  `Nombre_Estado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estados`
--

INSERT INTO `estados` (`Id_Estado`, `Nombre_Estado`) VALUES
(1, 'Mexico'),
(2, 'Puebla');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estatus`
--

CREATE TABLE `estatus` (
  `Id_Estatus` int(11) NOT NULL,
  `Nombre_Estatus` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estatus`
--

INSERT INTO `estatus` (`Id_Estatus`, `Nombre_Estatus`) VALUES
(1, 'Activo'),
(2, 'Baja');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `expedientes`
--

CREATE TABLE `expedientes` (
  `Id_Expediente` int(11) NOT NULL,
  `Matricula` varchar(255) NOT NULL,
  `Calle` varchar(55) NOT NULL,
  `Colonia` varchar(55) NOT NULL,
  `Numero` varchar(55) NOT NULL,
  `CP` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `expedientes`
--

INSERT INTO `expedientes` (`Id_Expediente`, `Matricula`, `Calle`, `Colonia`, `Numero`, `CP`) VALUES
(1, '211870031-5', 'Avenida Juarez', 'Miguel Hidalgo', '12', 50503),
(2, '211870012-5', 'Rivera', 'Neto', '66', 53900),
(3, '211870091-9', 'Napoleon', 'Santa Ana', '45', 50241),
(4, '211870003-4', 'Leon', 'San Antonio Zomeyucan', '9', 53570),
(5, '211870072-9', 'San Agustin', 'Beniro Juarez', '89', 52136),
(6, '211870086-9', 'San Joaquin', 'Centenario', '56', 56894),
(7, '211870052-1', 'Venustiano', 'Vicentenario', '23', 56412),
(8, '211870020-8', 'San Esteban', 'Tlamulco', '45', 52367),
(9, '211870007-5', 'Abasolo', 'San Antonio Zomeyucan', '26', 53570),
(10, '211870195-8', 'Guerrero', 'Naucalpan', '36', 54263),
(11, '211870456-4', 'El Mirador', 'San Juan', '56', 57412),
(12, '211870595-9', 'Anillo Pereferico', 'Valle de Mexico', '8', 52012),
(13, '191870636-5', 'Avenida 16 de Septiembre', 'Ciudad de Mexico', '4', 52036),
(14, '181870728-1', 'Av Alvaro Obregon', 'Naucalpan', '78', 56987),
(15, '211870082-8', 'AV Amsterdam', 'Farias', '56', 54123),
(16, '211870112-3', 'Av Bucareli', 'Cisco', '13', 52098),
(17, '211870139-6', 'Callejon Manzanares', 'Obregon', '23', 58974),
(18, '211870185-9', 'Calzada de Tlalpan', 'Veracruz', '11', 52483),
(19, '211870180-0', 'Ignacio Zaragoza', 'Naucalpan', '63', 52143),
(20, '211870466-3', 'Rio de la juventud', 'Valle', '96', 54178),
(21, '211870274-1', 'Calle Hidalgo', 'Lazaro Cardenas', '56', 52148),
(22, '191870352-9', 'Justo Sierra', 'Calzada Zaragosa', '66', 54218),
(23, '211870507-4', 'Av Mateo', 'Fagon', '32', 52394),
(24, '211870484-6', 'Av Insurgentes', 'Dolores', '11', 52369),
(25, '211870303-8', 'Camaron', 'Paanteones', '478', 52084),
(26, '211870281-6', 'Gustavo Baz', 'Naucalpan', '99', 52369),
(27, '211870279-0', 'Segunda Cerrdada de Centenario', 'San Antonio Zomeyucan', '65', 53570),
(28, '211870167-7', 'Moctezuma', 'San Martin', '79', 25486),
(29, '211870217-0', 'San Rafael', 'Los Recuierdos', '80', 54008),
(30, '211870194-1', '5 de Mayo0', 'Mercedes', '30', 50036),
(31, '211870351-7', 'Primera Cerrda del Centenario', 'San Antonio Zomeyucan', '8', 53570),
(32, '211870114-9', 'Poza Onda', 'Naucalpan de Jarez', '25', 52103),
(33, '211870147-9', 'Amado Nervo', 'Valle Dorado', '52', 52100),
(34, '201870405-2', 'La Tolva', 'San Antonio Zomeyucan', '56', 25413),
(35, '211870607-2', 'Vicente Guerrero', 'Tlamulco', '54', 23658),
(36, '211870398-8', 'San Cristibal', 'Central', '387', 52410),
(37, '211870542-1', 'Av de los Maestros', 'Bugambilia', '22', 55630),
(38, '191870383-4', 'Rosario', 'Venustiano', '45', 21305),
(39, '211870307-9', 'Concepcion', 'Inturbide', '452', 55547),
(40, '211870375-6', 'Madero', 'Centro', '112', 45872),
(41, '235', 'Hidalgo', 'Alvaro Obregon', '87', 59023);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `Id_Genero` int(11) NOT NULL,
  `Genero` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`Id_Genero`, `Genero`) VALUES
(1, 'Hombre'),
(2, 'Mujer');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `Id_Grupo` int(11) NOT NULL,
  `Nombre_Grupo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`Id_Grupo`, `Nombre_Grupo`) VALUES
(1, '501'),
(2, '502'),
(3, '503'),
(4, '504'),
(5, '505'),
(6, '506');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informes`
--

CREATE TABLE `informes` (
  `Id_Informe` int(11) NOT NULL,
  `Id_Modulo` int(11) NOT NULL,
  `N_Tutor` varchar(255) NOT NULL,
  `Id_Grupo` int(11) NOT NULL,
  `Id_Carrera` int(11) NOT NULL,
  `Id_Turno` int(11) NOT NULL,
  `Id_Mes` int(11) NOT NULL,
  `Fecha_Entrega` date NOT NULL,
  `Id_Usuario` int(11) NOT NULL,
  `Id_Genero` int(11) NOT NULL,
  `Id_Problematica` int(11) NOT NULL,
  `Observacion` varchar(500) DEFAULT NULL,
  `Id_Accion_Realizada` int(11) NOT NULL,
  `Sugerencia` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `informes`
--

INSERT INTO `informes` (`Id_Informe`, `Id_Modulo`, `N_Tutor`, `Id_Grupo`, `Id_Carrera`, `Id_Turno`, `Id_Mes`, `Fecha_Entrega`, `Id_Usuario`, `Id_Genero`, `Id_Problematica`, `Observacion`, `Id_Accion_Realizada`, `Sugerencia`) VALUES
(11, 2, 'Blanca', 6, 1, 1, 9, '0000-00-00', 22, 2, 3, 'Uso de palabras inapropiadas', 2, 'Cuidar el lenguaje'),
(12, 1, 'Julieta', 6, 1, 1, 10, '0000-00-00', 13, 2, 3, 'Falta mucho', 4, 'No estar tan ausente'),
(13, 3, 'Mercy', 6, 1, 1, 9, '0000-00-00', 5, 2, 3, 'Indiciplinado', 3, 'Tener compromiso'),
(14, 1, 'Oscar', 6, 1, 1, 11, '0000-00-00', 17, 2, 3, 'Se distrae mucho', 4, 'Enfocarse'),
(15, 2, 'Carolina', 6, 1, 1, 8, '0000-00-00', 5, 2, 3, 'Actitudes fuera de lugar', 3, 'Saber diferenciar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `meses`
--

CREATE TABLE `meses` (
  `Id_Mes` int(11) NOT NULL,
  `Nombre_Mes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `meses`
--

INSERT INTO `meses` (`Id_Mes`, `Nombre_Mes`) VALUES
(1, 'Enero'),
(2, 'Febrero'),
(3, 'Marzo'),
(4, 'Abril'),
(5, 'Mayo'),
(6, 'Junio'),
(7, 'Julio'),
(8, 'Agosto'),
(9, 'Septiembre'),
(10, 'Octubre'),
(11, 'Noviembre'),
(12, 'Diciembre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulos`
--

CREATE TABLE `modulos` (
  `Id_Modulo` int(11) NOT NULL,
  `Nombre_Modulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modulos`
--

INSERT INTO `modulos` (`Id_Modulo`, `Nombre_Modulo`) VALUES
(1, 'Diseño de portales dinamicos'),
(2, 'Manejo del proceso administrativo'),
(3, 'Instalacion de redes locales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `municipios`
--

CREATE TABLE `municipios` (
  `Id_Municipio` int(11) NOT NULL,
  `Nombre_Municipio` varchar(255) NOT NULL,
  `Id_Estado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `municipios`
--

INSERT INTO `municipios` (`Id_Municipio`, `Nombre_Municipio`, `Id_Estado`) VALUES
(1, 'Naucalpan', 1),
(2, 'Chalco', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planteles`
--

CREATE TABLE `planteles` (
  `Id_Plantel` int(11) NOT NULL,
  `Nombre_Plantel` varchar(255) NOT NULL,
  `Email_Plantel` varchar(255) NOT NULL,
  `Telefono_Plantel` varchar(255) NOT NULL,
  `Id_Estado` int(11) NOT NULL,
  `Id_Municipio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `planteles`
--

INSERT INTO `planteles` (`Id_Plantel`, `Nombre_Plantel`, `Email_Plantel`, `Telefono_Plantel`, `Id_Estado`, `Id_Municipio`) VALUES
(1, 'Naucalpan1', 'cn_naucalpan1@conalepmex.edu.mx', '55-53-12-22-77', 1, 1),
(2, 'Naucalpan2', 'cn_naucalpan2@conalepmex.edu.mx', '55-53-12-43-92', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `problematicas`
--

CREATE TABLE `problematicas` (
  `Id_Problematica` int(11) NOT NULL,
  `Nombre_Problematica` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `problematicas`
--

INSERT INTO `problematicas` (`Id_Problematica`, `Nombre_Problematica`) VALUES
(1, 'Inasistencias'),
(2, 'Bajo Rendimiento'),
(3, 'Comportamiento'),
(4, 'Estudiante NEE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `semestres`
--

CREATE TABLE `semestres` (
  `Id_Semestre` int(11) NOT NULL,
  `Nombre_Semestre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `semestres`
--

INSERT INTO `semestres` (`Id_Semestre`, `Nombre_Semestre`) VALUES
(1, 'Primer Semestre'),
(2, 'Segundo Semestre'),
(3, 'Tercer Semestre'),
(4, 'Cuarto Semestre'),
(5, 'Quinto Semestre'),
(6, 'Sexto Semestre');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turno`
--

CREATE TABLE `turno` (
  `Id_Turno` int(11) NOT NULL,
  `Turno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turno`
--

INSERT INTO `turno` (`Id_Turno`, `Turno`) VALUES
(1, 'Matutino'),
(2, 'Vespertino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tusuarios`
--

CREATE TABLE `tusuarios` (
  `Id_TUsuario` int(11) NOT NULL,
  `Nombre_TUsuario` varchar(255) NOT NULL,
  `Descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tusuarios`
--

INSERT INTO `tusuarios` (`Id_TUsuario`, `Nombre_TUsuario`, `Descripcion`) VALUES
(1, 'Sistemas', 'SuperUsuario'),
(2, 'Administrativos', 'UsuarioTecnico'),
(3, 'Docentes', 'UsuarioTecnico'),
(4, 'Tutor_F', 'UsuarioFinal'),
(5, 'Orientador', 'UsuarioTecnico'),
(6, 'Alumnos', 'UsuarioFinal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_Usuario` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `ApellidoP` varchar(255) NOT NULL,
  `ApellidoM` varchar(255) NOT NULL,
  `Telefono` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `Online` int(11) NOT NULL,
  `Img_Usuario` varchar(255) DEFAULT NULL,
  `Id_Plantel` int(11) NOT NULL,
  `Id_TUsuario` int(11) NOT NULL,
  `Id_Estatus` int(11) NOT NULL,
  `Id_Expediente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_Usuario`, `Nombre`, `ApellidoP`, `ApellidoM`, `Telefono`, `Email`, `Password`, `UserName`, `Online`, `Img_Usuario`, `Id_Plantel`, `Id_TUsuario`, `Id_Estatus`, `Id_Expediente`) VALUES
(1, 'David', 'Anacleto', 'Cocoletzi', '5555555555', 'danacleto2021@conalepmex.edu.mx', 'DacnaucalpanI123', 'David_21', 1, '0', 1, 6, 1, 2),
(2, 'Julio', 'Angel', 'Rodriguez', '5545585072', 'jangel2521@conalepmex.edu.mx', 'JarnaucalpanI345', 'Julio_134', 1, '0', 1, 6, 1, 3),
(3, 'Brandon', 'Barrios', 'Aguilar', '5520299601', 'bbarrios1121@conalepmex.edu.mx', 'BbanaucalpanI678', 'Brandon_786', 1, '0', 1, 6, 1, 4),
(4, 'Elver', 'Casimiro', 'Sanchez', '5635852434', 'ecasimiro1121@conalepmex.edu.mx', 'EcsnaucalpanI6543', 'Elver_765', 1, '0', 1, 6, 1, 5),
(5, 'Linda', 'Español', 'Dominguez', '5577342302', 'lespanol0121@conalepmex.edu.mx', 'LednaucalpanI5543', 'Linda_58', 1, '0', 1, 6, 1, 7),
(6, 'Abi', 'Flores', 'Benitez', '5616098236', 'aflores1121@conalepmex.edu.mx', 'AfbnaucalpanI765', 'AbiF1', 1, '0', 1, 6, 1, 8),
(7, 'Ludwin', 'Franco', 'Valdes', '5578930283', 'ifranco2121@conalepmex.edu.mx', ' LfvnaucalpanI432', 'Ludwin%42', 1, '0', 1, 6, 1, 9),
(8, 'Armando', 'Gabriel', 'Hernandez', '55 6220 6105', 'agabriel1521@conalepmex.edu.mx', 'AghnaucalpanI876', 'Armando544', 1, '0', 1, 6, 1, 10),
(9, 'Aline', 'Hernandez', 'Daniel', ' 55 1981 4781', 'ahdaniel1621@conalepmex.edu.mx', 'AhdnaycalpanI766', 'AlineHdz', 1, '0', 1, 6, 1, 11),
(10, 'Carlos', 'Huerta', 'Galvan', ' 55 4156 2358', 'chuerta3119@conalepmex.edu.mx', 'ChgnaucalpanI622', 'Carlos_Huerta', 1, '0', 1, 6, 1, 13),
(11, 'Naomi', 'Leon', 'Cordero', ' 55 2435 5551', 'nleon0921@conalepmex.edu.mx', 'NlcnaucalpanI099', 'Naomi_Cordero', 1, '0', 1, 6, 1, 15),
(12, 'Valeria', 'Lopez', 'Avila', '55 1677 1266', 'vlopez1321@conalepmex.edu.mx', 'VlanaucalpanI776', 'ValeriaL_23', 1, '0', 1, 6, 1, 17),
(13, 'Isabel', 'Lucas', 'Vazquez', ' 56 3528 0442', 'ilucas0521@conalepmex.edu.mix', 'Ilv556', 'IsabeL_321', 1, '0', 1, 6, 1, 18),
(14, 'Daniela', 'Martinez', 'Martinez', ' 56 2459 3563', 'dmmartinez1521@conalepmex.edu.mx', 'DmmnaucalpanI996', 'DanielaM_87', 1, '0', 1, 6, 1, 20),
(15, 'Isabel', 'Martinez', 'Martinez', '5587035975', 'imartinez2721@conalepmex.edu.mx', 'ImmnaucalpanI664', 'IsabelM_87', 1, '0', 1, 6, 1, 21),
(16, 'Angel', 'Martinez', 'Percil', '5555555555', 'ampercil1819@conalepmex.edu.mx', 'Amp543', 'Angel_MP', 1, '0', 1, 6, 1, 22),
(17, 'Erwin', 'Martinez', 'Sanchez', ' 5587959986', 'emartinez1221@conalepmex.edu.mx', 'EmsnaucalpanI453', 'Erwin_Marinez', 1, '0', 1, 6, 1, 23),
(18, 'Abigail', 'Mendoza', 'Velazquez', '553199753', 'amendoza1121@conalepmex.edu.mx', 'AmvnaucalpanI675', 'Abi_Mendoza11', 1, '0', 1, 6, 1, 24),
(19, 'Daniela', 'Muñoz', 'Villegas', ' 5599617792', 'dmunoz2921@conalepmex.edu.mx', 'DmvnaucalpanI543', 'Daniela_09', 1, '0', 1, 6, 1, 27),
(20, 'Vladimir', 'Navarro', 'Barrera', ' 5583277683', 'vnavarro1121@conalepmex.edu.mx', 'VnbnaucalpanI198', 'Vladimir_Navarro', 1, '0', 1, 6, 1, 29),
(21, 'Hector', 'Nicanor', 'Narvaez', ' 55 1461 9096', 'hnicanor3121@conalepmex.edu.mx', 'HnnnaucalpanI333', 'Hector_221', 1, '0', 1, 6, 1, 30),
(22, 'Kateryn', 'Ortiz', 'Picazo', '5574432074', 'kortiz3121@conalepmex.edu.mx', 'KopnaucalpanI280', 'Kath_Picazo', 1, '0', 1, 6, 1, 31),
(23, 'Jose', 'Ortiz', 'Roque', '55 2111 5040', 'jortiz0821@conalepmex.edu.mx', 'rodrigo1', 'Jose_Roque', 1, '0', 1, 6, 1, 32),
(24, 'Aurora', 'Palma', 'Herrera', '5617032208', 'apalma0721@conalepmex.edu.mx', 'AphnaucalpanI443', 'Aurora_hp07', 1, '0', 1, 6, 1, 33),
(25, 'Joseph', 'Pineda', 'Huerta', ' 55 4652 7419', 'jpineda0420@conalepmez.edu.mx', 'JphnaucalpanI776', 'Joseph_ph21', 1, '0', 1, 6, 1, 34),
(26, 'Nestor', 'Quintana', 'Cruz', ' 56 1774 7377', 'nquintana2321@conalepmex.edu.mx', 'NqcnaucalpanI098', 'Nestor_Quintana', 1, '0', 1, 6, 1, 35),
(27, 'Isaias', 'Santiago', 'Antonio', ' 55 1196 9638', 'isantiago1319@conalepmex.edu.mx', 'IsanaucalpanI876', 'Isaias554', 1, '0', 1, 6, 1, 38),
(28, 'Lucero', 'Zuñiga', 'Dominguez', ' 55 1782 4768', 'lzuniga0321@conalepmex.edu.mx', 'LzdnaucalpanI178', 'Lucero334', 1, '0', 1, 6, 1, 40),
(29, 'Jose', 'Chavez', 'Gomez', '5581546200', 'luis.chavez_183d@conalepmex.edu.mx', 'JlcgnaucalpanI89', 'Jlch1234', 1, '0', 1, 3, 1, 41);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `accion_realizada`
--
ALTER TABLE `accion_realizada`
  ADD PRIMARY KEY (`Id_Accion_Realizada`);

--
-- Indices de la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD PRIMARY KEY (`Id_Carrera`),
  ADD KEY `Id_Grupo` (`Id_Grupo`),
  ADD KEY `Id_Semestre` (`Id_Semestre`);

--
-- Indices de la tabla `estados`
--
ALTER TABLE `estados`
  ADD PRIMARY KEY (`Id_Estado`);

--
-- Indices de la tabla `estatus`
--
ALTER TABLE `estatus`
  ADD PRIMARY KEY (`Id_Estatus`);

--
-- Indices de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  ADD PRIMARY KEY (`Id_Expediente`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`Id_Genero`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`Id_Grupo`);

--
-- Indices de la tabla `informes`
--
ALTER TABLE `informes`
  ADD PRIMARY KEY (`Id_Informe`),
  ADD KEY `Id_Modulo` (`Id_Modulo`),
  ADD KEY `Id_Grupo` (`Id_Grupo`),
  ADD KEY `Id_Carrera` (`Id_Carrera`),
  ADD KEY `Id_Turno` (`Id_Turno`),
  ADD KEY `Id_Mes` (`Id_Mes`),
  ADD KEY `Id_Usuario` (`Id_Usuario`),
  ADD KEY `Id_Genero` (`Id_Genero`),
  ADD KEY `Id_Accion_Realizada` (`Id_Accion_Realizada`);

--
-- Indices de la tabla `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`Id_Mes`);

--
-- Indices de la tabla `modulos`
--
ALTER TABLE `modulos`
  ADD PRIMARY KEY (`Id_Modulo`);

--
-- Indices de la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD PRIMARY KEY (`Id_Municipio`),
  ADD KEY `Id_Estado` (`Id_Estado`);

--
-- Indices de la tabla `planteles`
--
ALTER TABLE `planteles`
  ADD PRIMARY KEY (`Id_Plantel`),
  ADD KEY `Id_Estado` (`Id_Estado`),
  ADD KEY `Id_Municipio` (`Id_Municipio`);

--
-- Indices de la tabla `problematicas`
--
ALTER TABLE `problematicas`
  ADD PRIMARY KEY (`Id_Problematica`);

--
-- Indices de la tabla `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`Id_Semestre`);

--
-- Indices de la tabla `turno`
--
ALTER TABLE `turno`
  ADD PRIMARY KEY (`Id_Turno`);

--
-- Indices de la tabla `tusuarios`
--
ALTER TABLE `tusuarios`
  ADD PRIMARY KEY (`Id_TUsuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_Usuario`),
  ADD KEY `Id_Plantel` (`Id_Plantel`),
  ADD KEY `Id_TUsuario` (`Id_TUsuario`),
  ADD KEY `Id_Estatus` (`Id_Estatus`),
  ADD KEY `Id_Expediente` (`Id_Expediente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `accion_realizada`
--
ALTER TABLE `accion_realizada`
  MODIFY `Id_Accion_Realizada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `carreras`
--
ALTER TABLE `carreras`
  MODIFY `Id_Carrera` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `estados`
--
ALTER TABLE `estados`
  MODIFY `Id_Estado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `estatus`
--
ALTER TABLE `estatus`
  MODIFY `Id_Estatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `expedientes`
--
ALTER TABLE `expedientes`
  MODIFY `Id_Expediente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `Id_Genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `Id_Grupo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `informes`
--
ALTER TABLE `informes`
  MODIFY `Id_Informe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `meses`
--
ALTER TABLE `meses`
  MODIFY `Id_Mes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `modulos`
--
ALTER TABLE `modulos`
  MODIFY `Id_Modulo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `municipios`
--
ALTER TABLE `municipios`
  MODIFY `Id_Municipio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `planteles`
--
ALTER TABLE `planteles`
  MODIFY `Id_Plantel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `problematicas`
--
ALTER TABLE `problematicas`
  MODIFY `Id_Problematica` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `semestres`
--
ALTER TABLE `semestres`
  MODIFY `Id_Semestre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `turno`
--
ALTER TABLE `turno`
  MODIFY `Id_Turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tusuarios`
--
ALTER TABLE `tusuarios`
  MODIFY `Id_TUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carreras`
--
ALTER TABLE `carreras`
  ADD CONSTRAINT `carreras_ibfk_1` FOREIGN KEY (`Id_Grupo`) REFERENCES `grupos` (`Id_Grupo`),
  ADD CONSTRAINT `carreras_ibfk_2` FOREIGN KEY (`Id_Semestre`) REFERENCES `semestres` (`Id_Semestre`);

--
-- Filtros para la tabla `informes`
--
ALTER TABLE `informes`
  ADD CONSTRAINT `informes_ibfk_1` FOREIGN KEY (`Id_Modulo`) REFERENCES `modulos` (`Id_Modulo`),
  ADD CONSTRAINT `informes_ibfk_2` FOREIGN KEY (`Id_Grupo`) REFERENCES `grupos` (`Id_Grupo`),
  ADD CONSTRAINT `informes_ibfk_3` FOREIGN KEY (`Id_Carrera`) REFERENCES `carreras` (`Id_Carrera`),
  ADD CONSTRAINT `informes_ibfk_4` FOREIGN KEY (`Id_Turno`) REFERENCES `turno` (`Id_Turno`),
  ADD CONSTRAINT `informes_ibfk_5` FOREIGN KEY (`Id_Mes`) REFERENCES `meses` (`Id_Mes`),
  ADD CONSTRAINT `informes_ibfk_6` FOREIGN KEY (`Id_Usuario`) REFERENCES `usuarios` (`Id_Usuario`),
  ADD CONSTRAINT `informes_ibfk_7` FOREIGN KEY (`Id_Genero`) REFERENCES `genero` (`Id_Genero`),
  ADD CONSTRAINT `informes_ibfk_8` FOREIGN KEY (`Id_Accion_Realizada`) REFERENCES `accion_realizada` (`Id_Accion_Realizada`);

--
-- Filtros para la tabla `municipios`
--
ALTER TABLE `municipios`
  ADD CONSTRAINT `municipios_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `estados` (`Id_Estado`);

--
-- Filtros para la tabla `planteles`
--
ALTER TABLE `planteles`
  ADD CONSTRAINT `planteles_ibfk_1` FOREIGN KEY (`Id_Estado`) REFERENCES `estados` (`Id_Estado`),
  ADD CONSTRAINT `planteles_ibfk_2` FOREIGN KEY (`Id_Municipio`) REFERENCES `municipios` (`Id_Municipio`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Id_Plantel`) REFERENCES `planteles` (`Id_Plantel`),
  ADD CONSTRAINT `usuarios_ibfk_2` FOREIGN KEY (`Id_TUsuario`) REFERENCES `tusuarios` (`Id_TUsuario`),
  ADD CONSTRAINT `usuarios_ibfk_3` FOREIGN KEY (`Id_Estatus`) REFERENCES `estatus` (`Id_Estatus`),
  ADD CONSTRAINT `usuarios_ibfk_4` FOREIGN KEY (`Id_Expediente`) REFERENCES `expedientes` (`Id_Expediente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
