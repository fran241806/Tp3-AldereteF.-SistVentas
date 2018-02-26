-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 25-02-2018 a las 20:31:17
-- Versión del servidor: 5.7.19-0ubuntu0.17.04.1
-- Versión de PHP: 7.0.22-0ubuntu0.17.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `SistemaVentas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(10) UNSIGNED NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `tipo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Lacteos', '2018-02-24 06:56:21', '2018-02-24 06:56:21', NULL),
(2, 'Bebidas', '2018-02-24 07:25:48', '2018-02-24 07:25:48', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dni` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `dni`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Francisco Alderete', 33820514, '2018-02-24 06:56:55', '2018-02-24 06:56:55', NULL),
(2, 'Alejandro Macedo', 34256897, '2018-02-26 02:25:09', '2018-02-26 02:25:09', NULL),
(3, 'Jose Luis Roldan', 33820569, '2018-02-26 02:25:29', '2018-02-26 02:25:29', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `cantidad` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `venta_id` int(10) UNSIGNED NOT NULL,
  `producto_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id`, `cantidad`, `subtotal`, `venta_id`, `producto_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(14, 6, 186, 1, 1, '2018-02-26 00:39:04', '2018-02-26 01:59:39', '2018-02-26 01:59:39'),
(15, 6, 186, 1, 1, '2018-02-26 00:40:44', '2018-02-26 01:59:41', '2018-02-26 01:59:41'),
(16, 3, 93, 1, 1, '2018-02-26 00:43:58', '2018-02-26 01:59:43', '2018-02-26 01:59:43'),
(17, 6, 186, 1, 1, '2018-02-26 00:47:06', '2018-02-26 01:59:45', '2018-02-26 01:59:45'),
(18, 2, 62, 1, 1, '2018-02-26 00:56:55', '2018-02-26 01:59:47', '2018-02-26 01:59:47'),
(19, 2, 62, 1, 1, '2018-02-26 00:58:05', '2018-02-26 01:59:49', '2018-02-26 01:59:49'),
(20, 2, 62, 1, 1, '2018-02-26 00:58:14', '2018-02-26 02:00:01', '2018-02-26 02:00:01'),
(21, 3, 93, 1, 1, '2018-02-26 01:05:05', '2018-02-26 02:00:04', '2018-02-26 02:00:04'),
(22, 3, 93, 1, 1, '2018-02-26 01:06:39', '2018-02-26 02:00:06', '2018-02-26 02:00:06'),
(23, 900, 27900, 1, 1, '2018-02-26 01:06:54', '2018-02-26 02:00:08', '2018-02-26 02:00:08'),
(24, 5, 155, 23, 1, '2018-02-26 01:15:16', '2018-02-26 02:00:11', '2018-02-26 02:00:11'),
(25, 2, 62, 23, 1, '2018-02-26 01:18:02', '2018-02-26 02:00:13', '2018-02-26 02:00:13'),
(26, 6, 186, 23, 1, '2018-02-26 01:19:51', '2018-02-26 02:00:15', '2018-02-26 02:00:15'),
(27, 3, 93, 23, 1, '2018-02-26 01:22:14', '2018-02-26 02:00:17', '2018-02-26 02:00:17'),
(28, 1, 31, 25, 1, '2018-02-26 01:31:25', '2018-02-26 02:00:20', '2018-02-26 02:00:20'),
(29, 32, 992, 26, 1, '2018-02-26 01:34:34', '2018-02-26 02:00:22', '2018-02-26 02:00:22'),
(30, 3, 93, 26, 1, '2018-02-26 01:35:48', '2018-02-26 02:00:24', '2018-02-26 02:00:24'),
(31, 2, 62, 26, 1, '2018-02-26 01:36:25', '2018-02-26 02:00:26', '2018-02-26 02:00:26'),
(32, 6, 186, 26, 1, '2018-02-26 01:38:47', '2018-02-26 02:00:28', '2018-02-26 02:00:28'),
(33, 2, 62, 27, 1, '2018-02-26 01:49:47', '2018-02-26 01:59:35', '2018-02-26 01:59:35'),
(34, 20, 1200, 28, 2, '2018-02-26 02:27:54', '2018-02-26 02:27:54', NULL),
(35, 10, 300, 28, 3, '2018-02-26 02:28:43', '2018-02-26 02:28:43', NULL),
(36, 20, 1000, 28, 4, '2018-02-26 02:28:53', '2018-02-26 02:28:53', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_02_24_033715_create_categorias_table', 1),
(4, '2018_02_24_033926_create_clientes_table', 2),
(5, '2018_02_24_034430_create_productos_table', 3),
(6, '2018_02_24_034902_create_ventas_table', 4),
(7, '2018_02_24_035358_create_detalle_ventas_table', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `categoria_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `stock`, `precio`, `categoria_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Leche sancor', 'Descremeda', 6, 31, 1, '2018-02-24 07:15:54', '2018-02-26 00:20:38', NULL),
(2, 'Pepsi', 'Gaseosa de 3 L', 5, 60, 2, '2018-02-26 02:25:59', '2018-02-26 02:25:59', NULL),
(3, 'Cerveza Quilmes', 'Lata 350', 9, 30, 1, '2018-02-26 02:26:39', '2018-02-26 02:26:39', NULL),
(4, 'Queso Sacor', 'Descremado por salud 350gr', 8, 50, 1, '2018-02-26 02:27:22', '2018-02-26 02:27:22', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Francisco Javier Alderete', 'Franciscoja@live.com.ar', '$2y$10$d/Evr9exIv9eJiojZz3Jp.GM3vyCE0NjZXmWri4aBLcb/OysfiaAG', NULL, '2018-02-24 06:54:35', '2018-02-24 06:54:35');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha` date NOT NULL,
  `cliente_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id`, `fecha`, `cliente_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2018-05-05', 1, '2018-02-24 07:10:53', '2018-02-26 00:23:49', '2018-02-26 00:23:49'),
(2, '2018-02-11', 1, '2018-02-25 03:27:44', '2018-02-26 00:23:52', '2018-02-26 00:23:52'),
(3, '2018-02-10', 1, '2018-02-25 03:28:35', '2018-02-26 00:23:54', '2018-02-26 00:23:54'),
(4, '2018-02-10', 1, '2018-02-25 03:30:48', '2018-02-26 00:23:56', '2018-02-26 00:23:56'),
(5, '2018-02-10', 1, '2018-02-25 03:31:17', '2018-02-26 00:23:58', '2018-02-26 00:23:58'),
(6, '2018-02-23', 1, '2018-02-25 03:32:13', '2018-02-26 00:24:01', '2018-02-26 00:24:01'),
(7, '2018-02-23', 1, '2018-02-25 03:34:30', '2018-02-26 00:24:03', '2018-02-26 00:24:03'),
(8, '2018-02-23', 1, '2018-02-25 03:48:36', '2018-02-26 00:24:05', '2018-02-26 00:24:05'),
(9, '2018-02-10', 1, '2018-02-25 03:49:25', '2018-02-26 00:24:07', '2018-02-26 00:24:07'),
(10, '2018-03-01', 1, '2018-02-25 03:50:19', '2018-02-26 00:24:10', '2018-02-26 00:24:10'),
(11, '2018-02-16', 1, '2018-02-25 03:50:54', '2018-02-26 00:24:12', '2018-02-26 00:24:12'),
(12, '2018-02-17', 1, '2018-02-25 03:51:50', '2018-02-26 00:24:14', '2018-02-26 00:24:14'),
(13, '2018-02-10', 1, '2018-02-25 03:56:11', '2018-02-26 00:24:17', '2018-02-26 00:24:17'),
(14, '2018-02-10', 1, '2018-02-25 03:58:02', '2018-02-26 00:24:19', '2018-02-26 00:24:19'),
(15, '2018-02-13', 1, '2018-02-25 04:02:42', '2018-02-26 00:24:21', '2018-02-26 00:24:21'),
(16, '2018-02-10', 1, '2018-02-25 04:13:17', '2018-02-26 00:24:24', '2018-02-26 00:24:24'),
(17, '2018-02-17', 1, '2018-02-26 00:38:10', '2018-02-26 00:45:07', '2018-02-26 00:45:07'),
(18, '2018-02-21', 1, '2018-02-26 00:43:41', '2018-02-26 00:45:10', '2018-02-26 00:45:10'),
(19, '2018-02-04', 1, '2018-02-26 00:47:00', '2018-02-26 02:00:34', '2018-02-26 02:00:34'),
(20, '2018-02-14', 1, '2018-02-26 00:56:50', '2018-02-26 02:00:36', '2018-02-26 02:00:36'),
(21, '2018-02-10', 1, '2018-02-26 01:00:40', '2018-02-26 02:00:39', '2018-02-26 02:00:39'),
(22, '2018-02-10', 1, '2018-02-26 01:04:58', '2018-02-26 02:00:46', '2018-02-26 02:00:46'),
(23, '2018-03-01', 1, '2018-02-26 01:14:53', '2018-02-26 02:00:48', '2018-02-26 02:00:48'),
(24, '2018-03-01', 1, '2018-02-26 01:30:00', '2018-02-26 02:00:52', '2018-02-26 02:00:52'),
(25, '2018-02-10', 1, '2018-02-26 01:31:19', '2018-02-26 02:00:56', '2018-02-26 02:00:56'),
(26, '2018-02-18', 1, '2018-02-26 01:34:28', '2018-02-26 02:00:59', '2018-02-26 02:00:59'),
(27, '2018-02-18', 1, '2018-02-26 01:49:39', '2018-02-26 02:01:05', '2018-02-26 02:01:05'),
(28, '2018-02-25', 1, '2018-02-26 02:27:41', '2018-02-26 02:27:41', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `detalle_ventas_venta_id_foreign` (`venta_id`),
  ADD KEY `detalle_ventas_producto_id_foreign` (`producto_id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productos_categoria_id_foreign` (`categoria_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_cliente_id_foreign` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `detalle_ventas_venta_id_foreign` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
