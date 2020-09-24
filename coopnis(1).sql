-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-09-2020 a las 16:58:16
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coopnis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `albumnes`
--

CREATE TABLE `albumnes` (
  `album_id` int(11) NOT NULL,
  `album_titulo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `album_portada_principal` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `banners`
--

CREATE TABLE `banners` (
  `banner_id` int(11) NOT NULL,
  `banner_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `banner_imagen` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `titulo_pub` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contenido_pub` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `autor_pub` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_pub` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `portada_pub` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contenido_galeria`
--

CREATE TABLE `contenido_galeria` (
  `contenido_galeria_id` int(11) NOT NULL,
  `contenido_galeria_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `album_id` int(11) NOT NULL,
  `contenido_galeria_foto` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `id_archivo` int(11) NOT NULL,
  `nombre_archivo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo_archivo` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `archivo` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `peso_archivo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `ruta_basica` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `procedencia` varchar(20) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal`
--

CREATE TABLE `personal` (
  `personal_id` int(11) NOT NULL,
  `personal_nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `personal_cargo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `personal_foto` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `link_facebook` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `link_instagram` varchar(500) COLLATE utf8_spanish_ci NOT NULL,
  `link_twitter` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_servicios`
--

CREATE TABLE `productos_servicios` (
  `item_id` int(11) NOT NULL,
  `item_nombre` varchar(100) COLLATE utf8mb4_spanish_ci NOT NULL,
  `item_desc` varchar(500) COLLATE utf8mb4_spanish_ci NOT NULL,
  `item_foto` varchar(1000) COLLATE utf8mb4_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `programas`
--

CREATE TABLE `programas` (
  `programa_id` int(11) NOT NULL,
  `titulo_programa` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `contenido_programa` varchar(1000) COLLATE utf8_spanish_ci NOT NULL,
  `portada_programa` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_administradores`
--

CREATE TABLE `usuarios_administradores` (
  `usuario_id` int(11) NOT NULL,
  `usuario` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `clave` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios_administradores`
--

INSERT INTO `usuarios_administradores` (`usuario_id`, `usuario`, `clave`) VALUES
(2, 'jduran1061539548@gmail.com', '1061539548');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_contacto`
--

CREATE TABLE `usuario_contacto` (
  `usuario_contacto_id` int(11) NOT NULL,
  `usuario_contacto_nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `usuario_contacto_correo` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `usuario_contacto_mensaje` varchar(500) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `albumnes`
--
ALTER TABLE `albumnes`
  ADD PRIMARY KEY (`album_id`);

--
-- Indices de la tabla `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indices de la tabla `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indices de la tabla `contenido_galeria`
--
ALTER TABLE `contenido_galeria`
  ADD PRIMARY KEY (`contenido_galeria_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id_archivo`);

--
-- Indices de la tabla `personal`
--
ALTER TABLE `personal`
  ADD PRIMARY KEY (`personal_id`);

--
-- Indices de la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  ADD PRIMARY KEY (`item_id`);

--
-- Indices de la tabla `programas`
--
ALTER TABLE `programas`
  ADD PRIMARY KEY (`programa_id`);

--
-- Indices de la tabla `usuarios_administradores`
--
ALTER TABLE `usuarios_administradores`
  ADD PRIMARY KEY (`usuario_id`);

--
-- Indices de la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  ADD PRIMARY KEY (`usuario_contacto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `albumnes`
--
ALTER TABLE `albumnes`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `banners`
--
ALTER TABLE `banners`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contenido_galeria`
--
ALTER TABLE `contenido_galeria`
  MODIFY `contenido_galeria_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id_archivo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personal`
--
ALTER TABLE `personal`
  MODIFY `personal_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `productos_servicios`
--
ALTER TABLE `productos_servicios`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `programas`
--
ALTER TABLE `programas`
  MODIFY `programa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios_administradores`
--
ALTER TABLE `usuarios_administradores`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuario_contacto`
--
ALTER TABLE `usuario_contacto`
  MODIFY `usuario_contacto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contenido_galeria`
--
ALTER TABLE `contenido_galeria`
  ADD CONSTRAINT `contenido_galeria_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albumnes` (`album_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
