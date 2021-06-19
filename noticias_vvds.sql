-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-06-2021 a las 19:44:41
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `noticias_vvds`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articulo`
--

CREATE TABLE `articulo` (
  `articulo_id` int(4) NOT NULL,
  `categoria_id` int(4) DEFAULT NULL,
  `autor` varchar(40) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `contenido` text NOT NULL,
  `fecha` date NOT NULL,
  `img` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `articulo`
--

INSERT INTO `articulo` (`articulo_id`, `categoria_id`, `autor`, `titulo`, `contenido`, `fecha`, `img`) VALUES
(4, 6, 'William Ramses Vazquez Sanchez', 'CRUELLA: DISNEY YA ESTA DESARROLLANDO LA', 'Disney acaba de hacer oficial que la secuela de Cruella está oficialmente en desarrollo, que contará con los regresos de Craig Gillespie y Tony McNamara en la dirección y el guión, vía THR.\r\n\r\n\r\n\r\n\"Estamos muy satisfechos con el éxito de taquilla de Cruella, junto con su fuerte rendimiento en Disney+ Premier Access hasta la fecha\", comentó un portavoz de Disney. \"La película ha sido increíblemente bien recibida por el público de todo el mundo, con un 97% de puntuación de la audiencia en Rotten Tomatoes, así como una puntuación en CinemaScore, situándose entre nuestras acciones en vivo más populares. Esperamos que el público siga disfrutando de esta fantástica película\", añade.\r\n\r\n\r\n\r\nSe espera que Emma Stone, Emma Thompson y más nombres del reparto original regresen para la nueva película. Cruella está actualmente disponible en salas de cines y a través de Disney+ por medio de Premier Access.', '2021-06-06', 'image_2021-06-05_174250.png'),
(5, 1, 'William Ramses Vazquez Sanchez', '¡Cruz Azul Es Campeón De La Liga MX!', 'Cruz Azul vuelve a festejar 23 años, 5 meses y 23 días después. La novena, tan caprichosa como soñada, llegó al fin a las vitrinas de la Máquina. Un gol de Jonathan \'Cabecita\' Rodríguez dejó atrás seis finales perdidas de manera consecutiva y le dio a los celestes el noveno título de Liga MX: empate 1-1 en el Estadio Azteca; triunfo cementero por 2-1 global.\r\n\r\nLa gloria volvió a vestirse de celeste y premió a una de las aficiones más fieles del fútbol mexicano, no sin antes regalarles unos últimos minutos de sufrimiento. El primer tiempo, al igual que en el partido de ida, dibujó a un conjunto visitante dominando en posesión, con los locales apostando a los contragolpes.\r\n\r\n', '2021-06-06', 'cruz-azul.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(11) NOT NULL,
  `categoria` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria`) VALUES
(1, 'Deportes'),
(2, 'Cultural'),
(3, 'Anime'),
(4, 'Policial'),
(5, 'Caricaturas'),
(6, 'Farandulas'),
(7, 'Economicas'),
(8, 'Politica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_dev` int(4) NOT NULL,
  `email_dev` varchar(50) NOT NULL,
  `usuario_dev` varchar(80) NOT NULL,
  `password_dev` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_dev`, `email_dev`, `usuario_dev`, `password_dev`) VALUES
(1, 'wvazquez0@ucol.mx', 'William Ramses Vazquez Sanchez', '$2y$10$xrtUpX5.Fb1b93K05DsZYuqtVBx0Ppoq4N0jr4BUk2r2XfLPF8E06');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`articulo_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_dev`),
  ADD UNIQUE KEY `email_dev` (`email_dev`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articulo`
--
ALTER TABLE `articulo`
  MODIFY `articulo_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_dev` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
