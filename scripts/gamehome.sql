-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-02-2022 a las 00:15:03
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `gamehome`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Adata', '2022-02-09 23:57:37', '2022-02-09 23:57:37'),
(2, 'Barracuda', '2022-02-09 23:59:15', '2022-02-09 23:59:15'),
(3, 'HP', '2022-02-09 23:59:28', '2022-02-09 23:59:28'),
(4, 'Asus', '2022-02-09 23:59:38', '2022-02-09 23:59:38'),
(5, 'Intel', '2022-02-10 00:00:07', '2022-02-10 00:00:07'),
(6, 'AMD', '2022-02-10 00:00:36', '2022-02-10 00:00:36'),
(7, 'Gigabyte', '2022-02-10 00:00:49', '2022-02-10 00:00:49'),
(8, 'Asrock', '2022-02-10 00:01:08', '2022-02-10 00:01:08'),
(9, 'Aerocool', '2022-02-10 00:01:21', '2022-02-10 00:01:21'),
(10, 'DeepCool', '2022-02-10 00:01:32', '2022-02-10 00:01:32'),
(11, 'Geil Evo Potenza', '2022-02-10 00:01:46', '2022-02-10 00:01:46'),
(12, 'Nvidia', '2022-02-10 00:01:59', '2022-02-10 00:01:59'),
(13, 'Phantom', '2022-02-10 00:02:18', '2022-02-10 00:02:18'),
(14, 'Logitech', '2022-02-10 00:02:44', '2022-02-10 00:02:44'),
(15, 'Shelong', '2022-02-10 00:06:34', '2022-02-10 00:06:34'),
(16, 'Gamemax', '2022-02-10 00:06:50', '2022-02-10 00:06:50'),
(17, 'Kolink', '2022-02-10 00:07:05', '2022-02-10 00:07:05'),
(18, 'Segotep', '2022-02-10 00:07:15', '2022-02-10 00:07:15'),
(19, 'LG', '2022-02-10 00:07:28', '2022-02-10 00:07:28'),
(20, 'Samsung', '2022-02-10 00:07:41', '2022-02-10 00:07:41'),
(21, 'Redragon', '2022-02-10 00:07:54', '2022-02-10 00:07:54'),
(22, 'Nisuta', '2022-02-10 00:08:12', '2022-02-10 00:08:12'),
(23, 'Marvo', '2022-02-10 00:12:09', '2022-02-10 00:12:09'),
(24, 'Genius', '2022-02-10 00:12:32', '2022-02-10 00:12:32'),
(25, 'HiperX', '2022-02-10 00:12:44', '2022-02-10 00:12:44'),
(26, 'Elgato', '2022-02-10 00:12:57', '2022-02-10 00:12:57'),
(27, 'ThunderX', '2022-02-10 00:13:08', '2022-02-10 00:13:08'),
(28, 'Kingston', '2022-02-10 00:13:29', '2022-02-10 00:13:29'),
(29, 'Sandisk', '2022-02-10 00:13:37', '2022-02-10 00:13:37');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'pc/notebook', '2022-02-09 23:37:12', '2022-02-09 23:37:12'),
(2, 'audio', '2022-02-09 23:38:03', '2022-02-09 23:38:03'),
(3, 'video', '2022-02-09 23:38:22', '2022-02-09 23:38:22'),
(4, 'sillas gamer', '2022-02-09 23:41:16', '2022-02-09 23:41:16'),
(5, 'perifericos/componentes', '2022-02-09 23:42:13', '2022-02-09 23:42:13'),
(6, 'otros', '2022-02-09 23:43:08', '2022-02-09 23:43:08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'negro', '2022-02-09 23:44:40', '2022-02-09 23:44:40'),
(2, 'blanco', '2022-02-09 23:45:14', '2022-02-09 23:45:14'),
(3, 'rojo', '2022-02-09 23:45:26', '2022-02-09 23:45:26'),
(4, 'azul', '2022-02-09 23:45:37', '2022-02-09 23:45:37'),
(5, 'verde', '2022-02-09 23:45:51', '2022-02-09 23:45:51'),
(6, 'violeta', '2022-02-09 23:46:31', '2022-02-09 23:46:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `stock_min` int(11) DEFAULT NULL,
  `stock_max` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `extended_description` varchar(255) DEFAULT NULL,
  `product_category` varchar(255) DEFAULT NULL,
  `categoryId` int(11) NOT NULL,
  `colorId` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rols`
--

CREATE TABLE `rols` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `rols`
--

INSERT INTO `rols` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '2022-02-09 23:21:42', '2022-02-09 23:21:42'),
(2, 'user', '2022-02-09 23:21:42', '2022-02-09 23:21:42'),
(3, 'client', '2022-02-09 23:33:49', '2022-02-09 23:33:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220204175113-create-color.js'),
('20220204175123-create-brand.js'),
('20220204175134-create-rol.js'),
('20220204180008-create-user.js'),
('20220207150702-create-category.js'),
('20220209150113-create-product.js');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryId` (`categoryId`),
  ADD KEY `colorId` (`colorId`),
  ADD KEY `brandId` (`brandId`);

--
-- Indices de la tabla `rols`
--
ALTER TABLE `rols`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roleId` (`roleId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `rols`
--
ALTER TABLE `rols`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`colorId`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`brandId`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`roleId`) REFERENCES `rols` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
