-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2025 a las 01:03:24
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
-- Estructura de tabla para la tabla `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `image_url` varchar(100) NOT NULL,
  `customer_name` varchar(20) NOT NULL,
  `social_media` varchar(30) NOT NULL,
  `customer_comment` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `image_url`, `customer_name`, `social_media`, `customer_comment`) VALUES
(1, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPiFrwekd2lvtAPg_pEk4bdSiEZ_BA4xe82g&s', 'Valeria Ramírez', '@valeramirezweb', '¡El servicio de Coastall Riders fue excelente. Los vehículos estaban en perfectas condiciones, limpios y muy cómodos para nuestro viaje a las zonas co'),
(2, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQE6-KsNGUoKgyIAATW1CNPeVSHhZzS_FN0Zg&s', 'Javier Morales', '@javiermoralsweb', '¡El vehículo que alquilamos con Coastall Riders fue funcional y cumplió con su propósito, pero tuvimos algunos problemas con el motor durante el recor'),
(3, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPiFrwekd2lvtAPg_pEk4bdSiEZ_BA4xe82g&s', 'Sofía López', '@sofilopeweb', '¡La experiencia con Coastall Riders no fue la mejor. El vehículo no estaba tan limpio como esperaba y tuvimos un retraso en la entrega, lo que afectó ');

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

--
-- Volcado de datos para la tabla `hero`
--

INSERT INTO `hero` (`id`, `welcomeText`, `heroDescriptionText`, `heroButtonText`) VALUES
(1, '¡Bienvenido a Coastall Riders!', 'Somos Coastall Riders\r\nTu aventura costera comienza aquí.', 'Reserva tu aventura ahora');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `hero_wText_unique` (`welcomeText`),
  ADD UNIQUE KEY `hero_Dtext_unique` (`heroDescriptionText`),
  ADD UNIQUE KEY `hero_Btext_unique` (`heroButtonText`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
