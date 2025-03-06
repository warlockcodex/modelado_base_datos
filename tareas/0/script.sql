-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-02-2025 a las 13:11:53
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
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `id_categoria` int(11) NOT NULL,
  `nombre_categoria` varchar(50) NOT NULL,
  `descripcion_categoria` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`id_categoria`, `nombre_categoria`, `descripcion_categoria`) VALUES
(5, 'Electrónica', 'Dispositivos electrónicos y accesorios.'),
(6, 'Ropa y Calzado', 'Prendas de vestir y calzado para todas las edades.'),
(7, 'Hogar y Jardín', 'Artículos para el hogar, muebles y productos de jardinería.'),
(8, 'Libros', 'Libros de diversos géneros y autores.'),
(9, 'Deportes y Aire Libre', 'Equipamiento deportivo y artículos para actividades al aire libre.'),
(10, 'Belleza y Cuidado Personal', 'Productos de belleza, cuidado de la piel y el cabello.'),
(11, 'Juguetes', 'Juegos y juguetes para niños de todas las edades.'),
(12, 'Alimentos y Bebidas', 'Productos de alimentación y bebidas.'),
(13, 'Mascotas', 'Productos y alimentos para mascotas.'),
(14, 'Informática', 'Equipos informáticos, software y accesorios.'),
(15, 'Telefonía', 'Teléfonos móviles, smartphones y accesorios.'),
(16, 'Audio y Video', 'Equipos de audio y video, como televisores, altavoces y reproductores.'),
(17, 'Fotografía', 'Cámaras fotográficas, objetivos y accesorios.'),
(18, 'Instrumentos Musicales', 'Instrumentos musicales de cuerda, viento, percusión y teclados.'),
(19, 'Arte y Manualidades', 'Materiales para dibujo, pintura, escultura y manualidades.'),
(20, 'Oficina y Papelería', 'Artículos de oficina, material de escritura y papel.'),
(21, 'Viajes', 'Equipaje, accesorios de viaje y guías turísticas.'),
(22, 'Automoción', 'Piezas y accesorios para automóviles.'),
(23, 'Motos', 'Piezas y accesorios para motocicletas.'),
(24, 'Bicicletas', 'Bicicletas, componentes y accesorios.'),
(25, 'Náutica', 'Equipamiento y accesorios para embarcaciones.'),
(26, 'Camping', 'Equipamiento y accesorios para acampar.'),
(27, 'Pesca', 'Equipamiento y accesorios para la pesca.'),
(28, 'Caza', 'Equipamiento y accesorios para la caza.'),
(29, 'Joyería', 'Joyas y artículos de joyería.'),
(30, 'Relojería', 'Relojes de pulsera y de pared.'),
(31, 'Muebles', 'Mobiliario para el hogar y la oficina.'),
(32, 'Decoración', 'Artículos de decoración para el hogar.'),
(33, 'Textiles', 'Tejidos y textiles para el hogar.'),
(34, 'Menaje del Hogar', 'Utensilios de cocina y artículos para el hogar.'),
(35, 'Electrodomésticos', 'Electrodomésticos para el hogar.'),
(36, 'Jardinería', 'Herramientas y productos para el jardín.'),
(37, 'Construcción', 'Materiales y herramientas para la construcción.'),
(38, 'Bricolaje', 'Herramientas y materiales para bricolaje.'),
(39, 'Industria', 'Productos y equipos para la industria.'),
(40, 'Agricultura', 'Productos y equipos para la agricultura.'),
(41, 'Ganadería', 'Productos y equipos para la ganadería.'),
(42, 'Alimentos Ecológicos', 'Productos de alimentación ecológicos.'),
(43, 'Cosmética Natural', 'Productos de cosmética natural.'),
(44, 'Moda Sostenible', 'Ropa y accesorios de moda sostenible.'),
(45, 'Productos de Comercio Justo', 'Productos de comercio justo.'),
(46, 'Artesanía', 'Productos de artesanía.'),
(47, 'Coleccionismo', 'Artículos de coleccionismo.'),
(48, 'Antigüedades', 'Objetos antiguos y antigüedades.'),
(49, 'Libros de Texto', 'Libros de texto para diferentes niveles educativos.'),
(50, 'Material Escolar', 'Artículos escolares y material didáctico.'),
(51, 'Juegos de Mesa', 'Juegos de mesa para todas las edades.'),
(52, 'Puzzles', 'Puzzles de diferentes tipos y niveles.'),
(53, 'Videojuegos', 'Videojuegos para diferentes plataformas.'),
(54, 'Consolas', 'Consolas de videojuegos y accesorios.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `codigo` int(11) NOT NULL,
  `nombre_producto` varchar(50) NOT NULL,
  `id_categoria` int(11) DEFAULT NULL,
  `rif_proveedor` varchar(10) DEFAULT NULL,
  `cantidad_producto` int(11) DEFAULT NULL,
  `precio_producto` double(5,2) DEFAULT NULL,
  `fecha_vencimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`codigo`, `nombre_producto`, `id_categoria`, `rif_proveedor`, `cantidad_producto`, `precio_producto`, `fecha_vencimiento`) VALUES
(1000, 'Laptop HP Pavilion', 14, 'J-04567891', 5, 799.99, '2023-02-01'),
(1001, 'Camiseta Algodón Hombre', 6, 'J-87654321', 20, 19.99, '2015-09-12'),
(1002, 'Juego de Sartenes Antiadherentes', 34, 'J-79801236', 10, 49.99, '2030-11-25'),
(1003, 'El Señor de los Anillos', 8, 'J-65431234', 15, 12.99, '2025-08-01'),
(1004, 'Balón de Fútbol', 9, 'J-34567890', 25, 24.99, '2029-01-01'),
(1005, 'Crema Hidratante Facial', 10, 'J-43123456', 30, 14.99, '2027-12-01'),
(1006, 'Coche de Juguete', 11, 'J-56789012', 40, 9.99, '2028-04-02'),
(1007, 'Café Molido', 12, 'J-21345678', 50, 7.99, '2025-12-31'),
(1008, 'Alimento para Perros', 13, 'J-78901234', 5, 29.99, '2025-06-30'),
(1009, 'Mouse Inalámbrico', 14, 'J-04567891', 10, 12.99, '2031-05-14'),
(1010, 'Smartphone Samsung Galaxy', 15, 'J-98765431', 3, 999.99, '2026-03-05'),
(1011, 'Televisor LED 55', 16, 'J-98765432', 2, 599.99, '2024-03-04'),
(1012, 'Cámara Réflex', 17, 'J-32456780', 1, 799.99, '2038-02-05'),
(1013, 'Guitarra Acústica', 18, 'J-21345679', 4, 299.99, '2025-12-12'),
(1014, 'Set de Pintura al Óleo', 19, 'J-54678902', 8, 39.99, '2026-01-02'),
(1015, 'Bolígrafo Pilot', 20, 'J-65789013', 100, 1.99, '2025-03-02'),
(1016, 'Maleta de Viaje', 21, 'J-76890124', 6, 79.99, '2031-02-03'),
(1017, 'Neumático Michelin', 22, 'J-87901235', 2, 129.99, '2035-08-03'),
(1018, 'Cámara X76 Pro', 17, 'J-32456780', 3, 89.99, '2030-04-04'),
(1019, 'Bicicleta de Montaña', 24, 'J-09123457', 4, 399.99, '2026-02-03'),
(1020, 'Tablet Samsung Galaxy Tab', 5, 'J-98765432', 3, 349.99, '2026-03-04'),
(1021, 'Pantalón Vaquero Mujer', 6, 'J-87654321', 15, 39.99, '2026-12-15'),
(1022, 'Aspiradora Robot', 35, 'J-98765432', 5, 199.99, '2035-12-05'),
(1023, 'Cien Años de Soledad', 8, 'J-65431234', 20, 14.99, '2025-03-05'),
(1024, 'Tienda de Campaña', 26, 'J-29345671', 2, 129.99, '2028-02-04'),
(1025, 'Champú para Cabello Seco', 10, 'J-43123456', 25, 9.99, '2028-01-01'),
(1026, 'Muñeca Barbie', 11, 'J-56789012', 30, 11.99, '2024-05-06'),
(1027, 'Aceite de Oliva', 12, 'J-21345678', 40, 6.99, '2025-10-31'),
(1028, 'Comida para Gatos', 13, 'J-79801236', 10, 19.99, '2025-12-31'),
(1029, 'Teclado Mecánico', 14, 'J-04567891', 7, 79.99, '2230-10-10'),
(1030, 'Auriculares Inalámbricos', 15, 'J-98765432', 5, 149.99, '2025-04-08'),
(1031, 'Proyector Portátil', 16, 'J-98765432', 3, 299.99, '0000-00-00'),
(1032, 'Objetivo para Cámara', 17, 'J-32456780', 2, 499.99, '2029-04-05'),
(1033, 'Piano Digital', 18, 'J-21345679', 1, 799.99, '2028-04-18'),
(1034, 'Set de Dibujo', 19, 'J-54678902', 10, 24.99, '0000-00-00'),
(1035, 'Resma de Papel', 20, 'J-65789013', 50, 4.99, '2027-02-08'),
(1036, 'Mochila de Viaje', 21, 'J-76890124', 8, 59.99, '2029-04-08'),
(1037, 'Filtro de Aceite', 22, 'J-87901235', 12, 9.99, '2028-04-08'),
(1038, 'Guantes de Moto', 23, 'J-15467892', 6, 39.99, '2028-11-08'),
(1039, 'Casco de Bicicleta', 24, 'J-09123457', 9, 29.99, '2025-04-08'),
(1040, 'Smartwatch', 15, 'J-98765432', 7, 249.99, '0000-00-00'),
(1041, 'Chaqueta de Invierno', 6, 'J-87654312', 12, 79.99, '0000-00-00'),
(1042, 'Horno Eléctrico', 35, 'J-98765431', 4, 149.99, '2029-04-05'),
(1043, 'Don Quijote de la Mancha', 8, 'J-65431234', 18, 19.99, '2028-12-12'),
(1044, 'Saco de Dormir', 26, 'J-29345671', 3, 59.99, '2026-05-01'),
(1045, 'Gel de Ducha', 10, 'J-43123456', 22, 7.99, '2026-01-05'),
(1046, 'Tren de Juguete', 11, 'J-56789012', 28, 14.99, '2025-04-08'),
(1047, 'Arroz', 12, 'J-21345679', 35, 2.99, '2028-12-25'),
(1048, 'Arena para Gatos', 13, 'J-78901234', 8, 17.99, '2025-01-02'),
(1049, 'Impresora Multifunción', 14, 'J-04567891', 5, 199.99, '2027-05-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `rif` varchar(10) NOT NULL,
  `nombre_proveedor` varchar(36) NOT NULL,
  `direccion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedor`
--

INSERT INTO `proveedor` (`rif`, `nombre_proveedor`, `direccion`) VALUES
('J-01234567', 'Informática Avanzada, C.A.', 'Av. Fuerzas Armadas, Edificio 123, Caracas'),
('J-04567891', 'Soluciones Informáticas, C.A.', 'Av. Fuerzas Armadas, Edificio 123, Caracas'),
('J-06578903', 'Bicicletas y Ciclismo, S.A.', 'Calle Real, Edificio 456, Valencia'),
('J-09123457', 'Bicicletas y Deportes, S.A.', 'Calle Real, Edificio 456, Valencia'),
('J-10234568', 'Telefonía Celular, S.A.', 'Calle Real, Centro Comercial 789, Valencia'),
('J-12345678', 'Electrónica Innovadora, C.A.', 'Av. Principal, Edificio XYZ, Caracas'),
('J-13456789', 'Mascotas y Compañía, C.A.', 'Av. Urdaneta, Local 123, Cumaná'),
('J-15467892', 'Accesorios para Motos, C.A.', 'Av. Fuerzas Armadas, Centro Comercial 789, Caracas'),
('J-18234560', 'Náutica y Pesca, C.A.', 'Av. Libertador, Local 123, Maracaibo'),
('J-21345678', 'Alimentos Naturales, S.L.', 'Calle Vargas, Galpón 456, Maturín'),
('J-21345679', 'Audio y Video, C.A.', 'Av. Miranda, Edificio 456, Maracaibo'),
('J-23456789', 'Distribuidora de Libros, S.L.', 'Calle Miranda, Edificio 456, Barquisimeto'),
('J-24356781', 'Repuestos Automotrices, C.A.', 'Av. Urdaneta, Edificio 123, Cumaná'),
('J-29345671', 'Camping y Excursionismo, S.L.', 'Calle Miranda, Galpón 789, Barquisimeto'),
('J-30456782', 'Caza y Pesca Deportiva, C.A.', 'Av. Sucre, Edificio 123, Puerto La Cruz'),
('J-31234567', 'Juegos y Diversión, C.A.', 'Av. Carabobo, Edificio 789, Ciudad Bolívar'),
('J-32456780', 'Fotografía Profesional, S.L.', 'Calle Bolívar, Local 123, Barquisimeto'),
('J-33245670', 'Agencia de Viajes, S.L.', 'Calle Vargas, Local 789, Maturín'),
('J-34567890', 'Deportes y Aventura, C.A.', 'Av. Sucre, Local 789, Puerto La Cruz'),
('J-41567893', 'Joyería y Relojería Fina, S.A.', 'Calle Páez, Centro Comercial 456, San Cristóbal'),
('J-42134569', 'Equipamiento de Oficina, C.A.', 'Av. Carabobo, Centro Comercial 456, Ciudad Bolívar'),
('J-43123456', 'Belleza y Bienestar, S.A.', 'Calle Páez, Centro Comercial 123, San Cristóbal'),
('J-43567891', 'Instrumentos Musicales, C.A.', 'Av. Sucre, Galpón 789, Puerto La Cruz'),
('J-45678901', 'Belleza Natural, S.A.', 'Calle Páez, Centro Comercial 123, San Cristóbal'),
('J-51023458', 'Mobiliario y Decoración, C.A.', 'Av. Carabobo, Local 789, Ciudad Bolívar'),
('J-51023459', 'Creatividad y Arte, S.A.', 'Calle Páez, Edificio 123, San Cristóbal'),
('J-52678904', 'Muebles y Decoración, C.A.', 'Av. Carabobo, Local 789, Ciudad Bolívar'),
('J-54312345', 'Aventura y Deporte, C.A.', 'Av. Sucre, Local 789, Puerto La Cruz'),
('J-54678902', 'Arte y Manualidades, S.A.', 'Calle Páez, Edificio 123, San Cristóbal'),
('J-56789012', 'Juguetes Divertidos, C.A.', 'Av. Carabobo, Edificio 789, Ciudad Bolívar'),
('J-60912347', 'Melodías y Armonía, C.A.', 'Av. Sucre, Galpón 789, Puerto La Cruz'),
('J-60912348', 'Joyería y Relojería, S.A.', 'Calle Páez, Centro Comercial 456, San Cristóbal'),
('J-65431234', 'Lecturas y Saber, S.L.', 'Calle Miranda, Edificio 456, Barquisimeto'),
('J-65789013', 'Oficina Moderna, C.A.', 'Av. Carabobo, Centro Comercial 456, Ciudad Bolívar'),
('J-67890123', 'Alimentos Frescos, S.L.', 'Calle Vargas, Galpón 456, Maturín'),
('J-76543123', 'Hogar y Confort, C.A.', 'Av. Libertador, Centro Comercial ABC, Maracaibo'),
('J-76890124', 'Viajes y Turismo, S.L.', 'Calle Vargas, Local 789, Maturín'),
('J-78901234', 'Mascotas Felices, C.A.', 'Av. Urdaneta, Local 123, Cumaná'),
('J-79801235', 'Fotografía y Video, S.L.', 'Calle Bolívar, Local 123, Barquisimeto'),
('J-79801236', 'Equipamiento de Caza, C.A.', 'Av. Sucre, Edificio 123, Puerto La Cruz'),
('J-86789013', 'Entretenimiento Audiovisual, C.A.', 'Av. Miranda, Edificio 456, Maracaibo'),
('J-87654312', 'Moda y Estilo, S.A.', 'Calle Bolívar, Galpón 123, Valencia'),
('J-87654321', 'Textiles y Moda, S.A.', 'Calle Bolívar, Galpón 123, Valencia'),
('J-87901235', 'Automotriz Global, C.A.', 'Av. Urdaneta, Edificio 123, Cumaná'),
('J-88790125', 'Artículos de Camping, S.L.', 'Calle Miranda, Galpón 789, Barquisimeto'),
('J-95678902', 'Comunicación Celular, S.A.', 'Calle Real, Centro Comercial 789, Valencia'),
('J-97689014', 'Equipamiento Náutico, C.A.', 'Av. Libertador, Local 123, Maracaibo'),
('J-98012346', 'Motos y Accesorios, C.A.', 'Av. Fuerzas Armadas, Centro Comercial 789, Caracas'),
('J-98765431', 'Tecnología del Futuro, C.A.', 'Av. Principal, Edificio XYZ, Caracas'),
('J-98765432', 'Hogar Moderno, C.A.', 'Av. Libertador, Centro Comercial ABC, Maracaibo');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`id_categoria`),
  ADD UNIQUE KEY `nombre_categoria` (`nombre_categoria`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `nombre_producto` (`nombre_producto`),
  ADD KEY `id_categoria` (`id_categoria`),
  ADD KEY `rif_proveedor` (`rif_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`rif`),
  ADD UNIQUE KEY `nombre_proveedor` (`nombre_proveedor`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categoria` (`id_categoria`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`rif_proveedor`) REFERENCES `proveedor` (`rif`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
