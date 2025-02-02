-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2025 a las 03:36:56
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `coastallriders`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `company_description`
--

CREATE TABLE `company_description` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `economic_description`
--

CREATE TABLE `economic_description` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `incluye` varchar(100) NOT NULL,
  `1description` varchar(100) NOT NULL,
  `2description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `economic_package`
--

CREATE TABLE `economic_package` (
  `id` int(11) NOT NULL,
  `image` mediumblob NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `footer`
--

CREATE TABLE `footer` (
  `id` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `horarioAtencion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `header`
--

CREATE TABLE `header` (
  `id` int(11) NOT NULL,
  `logo` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hero`
--

CREATE TABLE `hero` (
  `id` int(11) NOT NULL,
  `welcomeText` varchar(100) NOT NULL,
  `heroDescriptionText` varchar(100) NOT NULL,
  `heroButtonText` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premium_description`
--

CREATE TABLE `premium_description` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `incluye` varchar(100) NOT NULL,
  `1description` varchar(100) NOT NULL,
  `2description` varchar(100) NOT NULL,
  `3description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `premium_package`
--

CREATE TABLE `premium_package` (
  `id` int(11) NOT NULL,
  `image` mediumblob NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regular_description`
--

CREATE TABLE `regular_description` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `incluye` varchar(100) NOT NULL,
  `1description` varchar(100) NOT NULL,
  `2description` varchar(100) NOT NULL,
  `3description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `regular_package`
--

CREATE TABLE `regular_package` (
  `id` int(11) NOT NULL,
  `image` mediumblob NOT NULL,
  `title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vehicules`
--

CREATE TABLE `vehicules` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `image` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `company_description`
--
ALTER TABLE `company_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `company_description_unique` (`title`),
  ADD UNIQUE KEY `company_description_unique_1` (`description`) USING HASH;

--
-- Indices de la tabla `economic_description`
--
ALTER TABLE `economic_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `economic_description_unique` (`title`),
  ADD UNIQUE KEY `economic_description_unique_1` (`duracion`),
  ADD UNIQUE KEY `economic_description_unique_2` (`incluye`),
  ADD UNIQUE KEY `economic_description_unique_3` (`1description`),
  ADD UNIQUE KEY `economic_description_unique_4` (`2description`);

--
-- Indices de la tabla `economic_package`
--
ALTER TABLE `economic_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `economicPackage_unique_1` (`title`),
  ADD UNIQUE KEY `economicPackage_unique` (`image`) USING HASH;

--
-- Indices de la tabla `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `header_logo_unique` (`logo`) USING HASH;

--
-- Indices de la tabla `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hero_wText_unique` (`welcomeText`),
  ADD UNIQUE KEY `hero_Dtext_unique` (`heroDescriptionText`),
  ADD UNIQUE KEY `hero_Btext_unique` (`heroButtonText`);

--
-- Indices de la tabla `premium_description`
--
ALTER TABLE `premium_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `economic_description_unique` (`title`),
  ADD UNIQUE KEY `economic_description_unique_1` (`duracion`),
  ADD UNIQUE KEY `economic_description_unique_2` (`incluye`),
  ADD UNIQUE KEY `economic_description_unique_3` (`1description`),
  ADD UNIQUE KEY `economic_description_unique_4` (`2description`),
  ADD UNIQUE KEY `regular_description_unique` (`3description`);

--
-- Indices de la tabla `premium_package`
--
ALTER TABLE `premium_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `premiun_package_unique_1` (`title`),
  ADD UNIQUE KEY `premiun_package_unique` (`image`) USING HASH;

--
-- Indices de la tabla `regular_description`
--
ALTER TABLE `regular_description`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `economic_description_unique` (`title`),
  ADD UNIQUE KEY `economic_description_unique_1` (`duracion`),
  ADD UNIQUE KEY `economic_description_unique_2` (`incluye`),
  ADD UNIQUE KEY `economic_description_unique_3` (`1description`),
  ADD UNIQUE KEY `economic_description_unique_4` (`2description`),
  ADD UNIQUE KEY `regular_description_unique` (`3description`);

--
-- Indices de la tabla `regular_package`
--
ALTER TABLE `regular_package`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `regular_package_unique_1` (`title`),
  ADD UNIQUE KEY `regular_package_unique` (`image`) USING HASH;

--
-- Indices de la tabla `vehicules`
--
ALTER TABLE `vehicules`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vehicules_unique` (`title`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `company_description`
--
ALTER TABLE `company_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `economic_description`
--
ALTER TABLE `economic_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `economic_package`
--
ALTER TABLE `economic_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `footer`
--
ALTER TABLE `footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `premium_description`
--
ALTER TABLE `premium_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `premium_package`
--
ALTER TABLE `premium_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regular_description`
--
ALTER TABLE `regular_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `regular_package`
--
ALTER TABLE `regular_package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vehicules`
--
ALTER TABLE `vehicules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
