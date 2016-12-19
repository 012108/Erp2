-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2016 a las 23:05:24
-- Versión del servidor: 10.1.19-MariaDB
-- Versión de PHP: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `erp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_categorias`
--

CREATE TABLE `erp_categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_departamentos`
--

CREATE TABLE `erp_departamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_funciones`
--

CREATE TABLE `erp_funciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `icono_small` varchar(100) NOT NULL,
  `icono_big` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `menu` tinyint(1) NOT NULL,
  `modulo_x` int(11) NOT NULL,
  `funcion_x` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `erp_funciones`
--

INSERT INTO `erp_funciones` (`id`, `nombre`, `icono_small`, `icono_big`, `url`, `activo`, `menu`, `modulo_x`, `funcion_x`) VALUES
(1, 'Pedidos', 'fa fa-barcode ', 'fa fa-barcode-3x ', '/Pedidos', 1, 1, 2, NULL),
(2, 'Ofertas', 'fa fa-percent', 'fa fa-percent-3x', '/Ofertas', 1, 1, 2, NULL),
(3, 'Facturas', 'fa fa-file-text-o ', 'fa fa-file-text-o-3x', '/Facturas', 1, 1, 2, NULL),
(4, 'Estadisticas', 'fa fa-line-chart', 'fa fa-line-chart-3x', '/Estadisticas', 1, 1, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_funciones_permisos`
--

CREATE TABLE `erp_funciones_permisos` (
  `id` int(11) NOT NULL,
  `funcion_x` int(11) NOT NULL,
  `usuario_x` int(11) NOT NULL,
  `fecha_ini` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `grupo_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_grupos`
--

CREATE TABLE `erp_grupos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_modulos`
--

CREATE TABLE `erp_modulos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `icono_small` varchar(80) NOT NULL,
  `icono_big` varchar(80) NOT NULL,
  `url` varchar(100) NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `erp_modulos`
--

INSERT INTO `erp_modulos` (`id`, `nombre`, `descripcion`, `icono_small`, `icono_big`, `url`, `activo`) VALUES
(1, 'Administracion', 'Modulo de administracion', 'fa fa-cog', 'fa fa-cog-3x', '/Administracion', 1),
(2, 'Ventas', 'Modulo de ventas ', 'fa fa-balance-scale', 'fa fa-balance-scale-3x', '/Ventas', 1),
(3, 'Tienda', 'Módulo para la gestión de la tienda', 'fa fa-shopping-basket', 'fa fa-shopping-basket-2x', '/Tienda', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_modulos_permisos`
--

CREATE TABLE `erp_modulos_permisos` (
  `id` int(11) NOT NULL,
  `modulo_x` int(11) NOT NULL,
  `usuario_x` int(11) NOT NULL,
  `fecha_ini` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `grupo_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_ofertas`
--

CREATE TABLE `erp_ofertas` (
  `id` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `oferta` decimal(10,0) NOT NULL,
  `fecha_ini` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_pedidos`
--

CREATE TABLE `erp_pedidos` (
  `id` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `estado` varchar(20) NOT NULL,
  `cliente_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_pedidos_item`
--

CREATE TABLE `erp_pedidos_item` (
  `id` int(11) NOT NULL,
  `pedido_x` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total_bruto` decimal(10,0) NOT NULL,
  `total_descuento` decimal(10,0) NOT NULL,
  `producto_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_productos`
--

CREATE TABLE `erp_productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `stock` int(11) NOT NULL,
  `precio` decimal(10,0) NOT NULL,
  `categoria_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_productos_categorias`
--

CREATE TABLE `erp_productos_categorias` (
  `id` int(11) NOT NULL,
  `producto_x` int(11) NOT NULL,
  `categoria_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_productos_ofertas`
--

CREATE TABLE `erp_productos_ofertas` (
  `id` int(11) NOT NULL,
  `producto_x` int(11) NOT NULL,
  `oferta_x` int(11) NOT NULL,
  `fecha_ini` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `erp_usuarios`
--

CREATE TABLE `erp_usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `email` varchar(70) NOT NULL,
  `telefono` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(30) NOT NULL,
  `grupo_x` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `erp_categorias`
--
ALTER TABLE `erp_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_departamentos`
--
ALTER TABLE `erp_departamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_funciones`
--
ALTER TABLE `erp_funciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_funciones_permisos`
--
ALTER TABLE `erp_funciones_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_grupos`
--
ALTER TABLE `erp_grupos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indices de la tabla `erp_modulos`
--
ALTER TABLE `erp_modulos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_modulos_permisos`
--
ALTER TABLE `erp_modulos_permisos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_ofertas`
--
ALTER TABLE `erp_ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_pedidos`
--
ALTER TABLE `erp_pedidos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_pedidos_item`
--
ALTER TABLE `erp_pedidos_item`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_productos`
--
ALTER TABLE `erp_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_productos_categorias`
--
ALTER TABLE `erp_productos_categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_productos_ofertas`
--
ALTER TABLE `erp_productos_ofertas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `erp_usuarios`
--
ALTER TABLE `erp_usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grupo_x` (`grupo_x`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `erp_categorias`
--
ALTER TABLE `erp_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_departamentos`
--
ALTER TABLE `erp_departamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_funciones`
--
ALTER TABLE `erp_funciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `erp_funciones_permisos`
--
ALTER TABLE `erp_funciones_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_grupos`
--
ALTER TABLE `erp_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_modulos`
--
ALTER TABLE `erp_modulos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `erp_modulos_permisos`
--
ALTER TABLE `erp_modulos_permisos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_ofertas`
--
ALTER TABLE `erp_ofertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_pedidos`
--
ALTER TABLE `erp_pedidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_pedidos_item`
--
ALTER TABLE `erp_pedidos_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_productos`
--
ALTER TABLE `erp_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_productos_categorias`
--
ALTER TABLE `erp_productos_categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_productos_ofertas`
--
ALTER TABLE `erp_productos_ofertas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `erp_usuarios`
--
ALTER TABLE `erp_usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
