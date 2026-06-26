-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-06-2026 a las 03:49:17
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
-- Base de datos: `zapatería_elnaves`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre_categoria`) VALUES
(1, 'Deportivo'),
(2, 'Casual'),
(3, 'Escolar'),
(4, 'Formal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `apellidos`, `telefono`) VALUES
(1, 'Carlos', 'Naves', '7788-9900'),
(2, 'Ana', 'Gómez', '7122-3344'),
(3, 'Roberto', 'Flores', '7055-6677'),
(4, 'Elena', 'Pérez', '6433-2211'),
(5, 'Juan', 'Flores', '7699-0011'),
(6, 'Marisol', 'Gonzales', '7211-4455'),
(7, 'Julio', 'Cisneros', '6044-3322'),
(8, 'Alicia', 'Fuentes', '7588-9900'),
(9, 'Pedro', 'Hernández', '7199-8877'),
(10, 'Lucía', 'Guillen', '7033-4455'),
(11, 'Mauricio', 'Romero', '6122-3344'),
(12, 'Sofia', 'Vásquez', '7455-6677'),
(13, 'Miguel', 'Ángel', '7988-0011'),
(14, 'Laura', 'Serrano', '7311-2244'),
(15, 'Diego', 'Andrade', '6055-4433'),
(16, 'Carmen', 'Villalobos', '7622-1100'),
(17, 'Tomás', 'Barahona', '7277-8899'),
(18, 'Verónica', 'Cortez', '7099-1122'),
(19, 'Andrés', 'Molina', '6144-5566'),
(20, 'Silvia', 'Palacios', '7533-2211'),
(21, 'Mauricio', 'Juárez', '7166-0011'),
(22, 'Natalia', 'Ortiz', '7088-9977'),
(23, 'Antonio', 'Lemus', '6011-2233'),
(24, 'Lorena', 'Galdámez', '7422-3344'),
(25, 'Christian', 'Pineda', '7955-6677');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `id_detalle` int(11) NOT NULL,
  `id_venta` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `detalle_ventas`
--

INSERT INTO `detalle_ventas` (`id_detalle`, `id_venta`, `id_producto`, `talla`, `cantidad`, `precio_unitario`) VALUES
(1, 1, 1, '41', 1, 95.00),
(2, 2, 2, '38', 1, 130.00),
(3, 3, 3, '38', 1, 89.99),
(4, 4, 4, '42', 1, 125.00),
(5, 5, 5, '44', 1, 150.00),
(6, 6, 6, '28', 1, 45.00),
(7, 7, 7, '40', 1, 60.00),
(8, 8, 8, '40', 1, 65.00),
(9, 9, 9, '39', 1, 75.00),
(10, 10, 10, '41', 1, 110.00),
(11, 11, 11, '40', 1, 60.00),
(12, 12, 12, '41', 1, 48.00),
(13, 13, 13, '39', 1, 85.00),
(14, 14, 14, '42', 1, 35.00),
(15, 15, 15, '38', 1, 80.00),
(16, 16, 16, '37', 1, 50.00),
(17, 17, 17, '34', 1, 28.00),
(18, 18, 18, '32', 1, 30.00),
(19, 19, 19, '36', 1, 35.00),
(20, 20, 20, '38', 1, 45.00),
(21, 21, 21, '42', 1, 85.00),
(22, 22, 22, '36', 1, 70.00),
(23, 23, 23, '37', 1, 95.00),
(24, 24, 24, '42', 1, 75.00),
(25, 25, 25, '41', 1, 90.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id_empleado` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `cargo` varchar(50) NOT NULL,
  `telefono` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id_empleado`, `nombre`, `apellido`, `cargo`, `telefono`) VALUES
(1, 'Julio', 'Alarcón', 'Vendedor', '7011-2233'),
(2, 'Gisele', 'Rosales', 'Cajera', '7544-5566'),
(3, 'José', 'Vargas', 'Vigilante', '6122-8899'),
(4, 'Carlos', 'Naves', 'Administrador', '7988-1122'),
(5, 'Kevin', 'Villacorta', 'Auxiliar de Bodega', '7233-4455');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `nombre_zapato` varchar(30) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `marca_de_zapato` varchar(30) NOT NULL,
  `talla` varchar(10) NOT NULL,
  `stock` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_categoria`, `nombre_zapato`, `precio`, `marca_de_zapato`, `talla`, `stock`) VALUES
(1, 1, 'Air Max Alpha', 95.00, 'Nike', '41', 12),
(2, 1, 'Ultraboost 22', 130.00, 'Adidas', '38', 8),
(3, 1, 'Running Speed 3', 89.99, 'Puma', '38', 10),
(4, 1, 'Mercurial Vapor Soccer', 125.00, 'Nike', '42', 11),
(5, 1, 'Air Jordan Retro', 150.00, 'Nike', '44', 4),
(6, 1, 'Star Runner Kids', 45.00, 'Nike', '28', 20),
(7, 1, 'Grand Court Train', 60.00, 'Adidas', '40', 18),
(8, 2, 'Mocasín Class Confort', 65.00, 'Clarks', '40', 15),
(9, 2, 'Classic Leather Urban', 75.00, 'Reebok', '39', 14),
(10, 2, 'Bota Urbana Classic', 110.00, 'Timberland', '41', 7),
(11, 2, 'Chuck Taylor All Star', 60.00, 'Converse', '40', 22),
(12, 2, 'Mocasín Náutico', 48.00, 'Sperry', '41', 13),
(13, 2, 'Walk Easy Relax', 85.00, 'Skechers', '39', 16),
(14, 2, 'Sandalia Sport', 35.00, 'Columbia', '42', 9),
(15, 2, 'Platform Super Vans', 80.00, 'Vans', '38', 12),
(16, 2, 'Loafer Casual Dama', 50.00, 'Zara', '37', 15),
(17, 3, 'Escolar Cordón Fuerte', 28.00, 'Coqueta', '34', 30),
(18, 3, 'Escolar Velcro Kínder', 30.00, 'Mike Mike', '32', 25),
(19, 3, 'Zapato Escolar Premium', 35.00, 'Coqueta', '36', 15),
(20, 3, 'Bota Escolar Industrial', 45.00, 'Mike Mike', '38', 10),
(21, 4, 'Oxford Executive', 85.00, 'Florsheim', '42', 6),
(22, 4, 'Tacón Gala Elegance', 70.00, 'Nine West', '36', 5),
(23, 4, 'Zapatilla Noche Steve', 95.00, 'Steve Madden', '37', 6),
(24, 4, 'Loafer Elegante Piel', 75.00, 'Florsheim', '42', 10),
(25, 4, 'Mocasín Formal Cuero', 90.00, 'Clarks', '41', 8);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp(),
  `id_cliente` int(11) DEFAULT NULL,
  `id_empleado` int(11) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha`, `id_cliente`, `id_empleado`, `total`) VALUES
(1, '2026-06-01 15:30:00', 1, 1, 95.00),
(2, '2026-06-01 16:15:00', 2, 2, 130.00),
(3, '2026-06-02 17:00:00', 3, 3, 89.99),
(4, '2026-06-02 20:20:00', 4, 1, 125.00),
(5, '2026-06-03 21:45:00', 5, 2, 150.00),
(6, '2026-06-04 15:00:00', 6, 3, 45.00),
(7, '2026-06-04 18:10:00', 7, 1, 60.00),
(8, '2026-06-05 22:30:00', 8, 2, 65.00),
(9, '2026-06-06 16:00:00', 9, 3, 75.00),
(10, '2026-06-06 17:40:00', 10, 1, 110.00),
(11, '2026-06-07 19:00:00', 11, 2, 60.00),
(12, '2026-06-08 21:15:00', 12, 3, 48.00),
(13, '2026-06-09 15:45:00', 13, 1, 85.00),
(14, '2026-06-09 23:00:00', 14, 2, 35.00),
(15, '2026-06-10 17:20:00', 15, 3, 80.00),
(16, '2026-06-11 20:10:00', 16, 1, 50.00),
(17, '2026-06-11 22:00:00', 17, 2, 28.00),
(18, '2026-06-12 16:30:00', 18, 3, 30.00),
(19, '2026-06-13 18:00:00', 19, 1, 35.00),
(20, '2026-06-14 21:30:00', 20, 2, 45.00),
(21, '2026-06-15 15:15:00', 21, 3, 85.00),
(22, '2026-06-15 20:45:00', 22, 1, 70.00),
(23, '2026-06-16 17:00:00', 23, 2, 95.00),
(24, '2026-06-17 22:20:00', 24, 3, 75.00),
(25, '2026-06-18 16:00:00', 25, 1, 90.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `fk_detalle_ventas_maestro` (`id_venta`),
  ADD KEY `fk_detalle_ventas_productos` (`id_producto`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id_empleado`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `fk_productos_categorias` (`id_categoria`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_ventas_clientes` (`id_cliente`),
  ADD KEY `fk_ventas_empleados` (`id_empleado`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id_empleado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `fk_detalle_ventas_maestro` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_detalle_ventas_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_productos_categorias` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_ventas_clientes` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ventas_empleados` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
