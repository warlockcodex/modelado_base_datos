/**
 *
 *    UNIVERSIDAD POLITÉCNICA TERRITORIAL DE VALENCIA
 *    INFORMÁTICA
 *    TRAYECTO III
 *    MODELADO DE BASE DE DATOS
 *
 *    PRÁCTICA EN SQL
 *    LIBRERÍA
 *    FECHA: 2025-03-16
 *
 */

/**
 *
 *    NOMBRES: Jose Antonio
 *    APELLIDOS: Brett Gil
 *    C.I.: V-30.336.423
 *    SECCIÓN: IN-332
 *
 */

/**
 *
 *    NOMBRES: SAMUEL DAVID
 *    APELLIDOS: BRITO VARGAS
 *    C.I.: V-29.530.516
 *    SECCIÓN: IN-332
 *
 */

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 08:52 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `libreria_mi_bendicion`
--

create database libreria_mi_bendicion;

use libreria_mi_bendicion;

-- --------------------------------------------------------

--
-- Table structure for table `autor_libro`
--

CREATE TABLE `autor_libro` (
  `ced_a_fk` varchar(20) DEFAULT NULL,
  `cod_l_fk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `autor_libro`
--

INSERT INTO `autor_libro` (`ced_a_fk`, `cod_l_fk`) VALUES
('V12345678', 1),
('V87654321', 2),
('V11223344', 3),
('V55667788', 4),
('V99887766', 5),
('V55443322', 6),
('V66778899', 7),
('V33445566', 8),
('V22334455', 9),
('V44556677', 10),
('V12345679', 11),
('V98765432', 12),
('V11223345', 13),
('V55667789', 14),
('V99887767', 15),
('V55443323', 16),
('V66778900', 17),
('V33445567', 18),
('V22334456', 19),
('V44556678', 20),
('V12345680', 21),
('V98765433', 22),
('V11223346', 23),
('V55667790', 24),
('V99887768', 25),
('V55443324', 26),
('V66778901', 27),
('V33445568', 28),
('V22334457', 29),
('V44556679', 30),
('V12345681', 31),
('V98765434', 32),
('V11223347', 33),
('V55667791', 34),
('V99887769', 35),
('V55443325', 36),
('V33445569', 37),
('V22334458', 38),
('V44556680', 39),
('V12345682', 40),
('V12341234', 41),
('V23452345', 42),
('V34563456', 43),
('V45674567', 44),
('V56785678', 45),
('V67896789', 46),
('V78907890', 47),
('V89018901', 48),
('V90129012', 49),
('V01230123', 50);

-- --------------------------------------------------------

--
-- Table structure for table `compra_cliente`
--

CREATE TABLE `compra_cliente` (
  `cod_cc` int(10) NOT NULL,
  `ced_c_fk` varchar(20) DEFAULT NULL,
  `cod_mp_fk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `compra_cliente`
--

INSERT INTO `compra_cliente` (`cod_cc`, `ced_c_fk`, `cod_mp_fk`) VALUES
(1, 'V12345678', 1),
(2, 'V87654321', 2),
(3, 'V11223344', 3),
(4, 'V55667788', 4),
(5, 'V99887766', 5),
(6, 'V55443322', 6),
(7, 'V66778899', 7),
(8, 'V33445566', 8),
(9, 'V22334455', 9),
(10, 'V44556677', 10),
(11, 'V12341234', 11),
(12, 'V23452345', 12),
(13, 'V34563456', 13),
(14, 'V45674567', 14),
(15, 'V56785678', 15),
(16, 'V67896789', 16),
(17, 'V78907890', 17),
(18, 'V89018901', 18),
(19, 'V90129012', 19),
(20, 'V01230123', 20),
(21, 'V12345679', 21),
(22, 'V98765432', 22),
(23, 'V11223345', 23),
(24, 'V55667789', 24),
(25, 'V99887767', 25),
(26, 'V55443323', 26),
(27, 'V66778900', 27),
(28, 'V33445567', 28),
(29, 'V22334456', 29),
(30, 'V44556678', 30),
(31, 'V12345680', 31),
(32, 'V98765433', 32),
(33, 'V11223346', 33),
(34, 'V55667790', 34),
(35, 'V99887768', 35),
(36, 'V55443324', 36),
(37, 'V66778901', 37),
(38, 'V33445568', 38),
(39, 'V22334457', 39),
(40, 'V44556679', 40),
(41, 'V12345681', 41),
(42, 'V98765434', 42),
(43, 'V11223347', 43),
(44, 'V55667791', 44),
(45, 'V99887769', 45),
(46, 'V55443325', 46),
(47, 'V33445569', 47),
(48, 'V22334458', 48),
(49, 'V44556680', 49),
(50, 'V12345682', 50);

-- --------------------------------------------------------

--
-- Table structure for table `datos_personales`
--

CREATE TABLE `datos_personales` (
  `ced` varchar(20) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `tel_dp` varchar(15) DEFAULT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datos_personales`
--

INSERT INTO `datos_personales` (`ced`, `nombre`, `apellido`, `tel_dp`, `direccion`, `email`) VALUES
('V01230123', 'Sebastián', 'Castro', '0416-0120123', 'Calle 2, Barcelona', 'sebastian.castro@outlook.com'),
('V11223344', 'José', 'Ramírez', '0426-3344556', 'Av. Los Próceres, Mérida', 'jramirez@hotmail.com'),
('V11223345', 'Daniela', 'García', '0414-11223345', 'Calle 15, Ciudad Ojeda', 'daniela.garcia@hotmail.com'),
('V11223346', 'Isabella', 'Soto', '0426-11223346', 'Calle 10, Guatire', 'isabella.soto@hotmail.com'),
('V11223347', 'Camila', 'Chávez', '0414-11223347', 'Calle 3, Páez', 'camila.chavez@hotmail.com'),
('V12341234', 'Sofía', 'Gómez', '0412-1231234', 'Av. Principal, Los Teques', 's.gomez@gmail.com'),
('V12345678', 'Carlos', 'González', '0412-1234567', 'Av. Bolívar, Caracas', 'carlosg@gmail.com'),
('V12345679', 'Gabriela', 'Jiménez', '0426-12345679', 'Av. Sucre, Trujillo', 'gabriela.jimenez@gmail.com'),
('V12345680', 'Valeria', 'Mendoza', '0414-12345680', 'Calle 8, Ocumare del Tuy', 'valeria.mendoza@gmail.com'),
('V12345681', 'Luciana', 'Ortega', '0426-12345681', 'Calle 12, Plaza', 'luciana.ortega@gmail.com'),
('V12345682', 'Rafael', 'Medina', '0414-12345682', 'Av. Francisco de Miranda, Altamira', 'rafael.medina@gmail.com'),
('V22334455', 'Ricardo', 'Torres', '0414-3344556', 'Av. Intercomunal, Pto. La Cruz', 'r.torres@gmail.com'),
('V22334456', 'Adriana', 'Alvarez', '0426-22334456', 'Calle 3, Tucupita', 'adriana.alvarez@gmail.com'),
('V22334457', 'Mariana', 'Blanco', '0414-22334457', 'Calle 7, Libertador', 'mariana.blanco@gmail.com'),
('V22334458', 'Miguel', 'Salas', '0426-22334458', 'Av. La Trinidad, La Castellana', 'miguel.salas@gmail.com'),
('V23452345', 'Diego', 'López', '0414-2342345', 'Calle 5, Cumaná', 'diego.lopez@yahoo.com'),
('V33445566', 'Isabel', 'Morales', '0412-4455667', 'Calle 3, San Cristóbal', 'isamorales@hotmail.com'),
('V33445567', 'Javier', 'Romero', '0416-33445567', 'Av. Andrés Bello, Puerto Ayacucho', 'javier.romero@hotmail.com'),
('V33445568', 'Nicolás', 'Silva', '0412-33445568', 'Av. Principal, Chacao', 'nicolas.silva@hotmail.com'),
('V33445569', 'Elena', 'Gil', '0416-33445569', 'Calle 18, El Cafetal', 'elena.gil@hotmail.com'),
('V34563456', 'Valentina', 'Martins', '0426-3453456', 'Av. Universidad, Maturín', 'valen.martins@hotmail.com'),
('V44556677', 'Lucía', 'Rivas', '0412-5566778', 'Av. Sucre, Maracaibo', 'lucia.rivas@outlook.com'),
('V44556678', 'Leonardo', 'Guzmán', '0412-44556678', 'Av. Principal, Charallave', 'leonardo.guzman@outlook.com'),
('V44556679', 'Joaquín', 'Delgado', '0416-44556679', 'Av. Universidad, Sucre', 'joaquin.delgado@outlook.com'),
('V44556680', 'Laura', 'Vargas', '0412-44556680', 'Calle 5, Los Palos Grandes', 'laura.vargas@outlook.com'),
('V45674567', 'Andrés', 'Pérez', '0412-4564567', 'Urb. El Centro, Puerto Ordaz', 'andresperez@gmail.com'),
('V55443322', 'Carmen', 'Rodríguez', '0416-4433221', 'Calle 8, Barquisimeto', 'crodriguez@gmail.com'),
('V55443323', 'David', 'Navarro', '0412-55443323', 'Av. Intercomunal, Acarigua', 'david.navarro@gmail.com'),
('V55443324', 'Martín', 'Flores', '0416-55443324', 'Av. Intercomunal, Baruta', 'martin.flores@gmail.com'),
('V55443325', 'Andrés', 'Ramírez', '0412-55443325', 'Av. Principal, Cristóbal Rojas', 'andres.ramirez@gmail.com'),
('V55667788', 'Ana', 'Fernández', '0412-5678943', 'Urb. Las Delicias, Valencia', 'anafer@gmail.com'),
('V55667789', 'Emilio', 'Díaz', '0416-55667789', 'Av. Rotaria, Punto Fijo', 'emilio.diaz@gmail.com'),
('V55667790', 'Gabriel', 'Vargas', '0412-55667790', 'Av. Principal, Los Valles del Tuy', 'gabriel.vargas@gmail.com'),
('V55667791', 'Mateo', 'Herrera', '0416-55667791', 'Av. Sucre, Independencia', 'mateo.herrera@gmail.com'),
('V56785678', 'Camila', 'Rodríguez', '0414-5675678', 'Av. Miranda, San Fernando de Apure', 'camila.rodriguez@outlook.com'),
('V66778899', 'Pedro', 'Sánchez', '0426-7788990', 'Av. Urdaneta, Caracas', 'pedro.san@yahoo.com'),
('V66778900', 'Sara', 'Castillo', '0414-66778900', 'Calle 12, San Felipe', 'sara.castillo@yahoo.com'),
('V66778901', 'Juliana', 'Cordero', '0426-66778901', 'Calle 15, El Hatillo', 'juliana.cordero@yahoo.com'),
('V67896789', 'Santiago', 'Sánchez', '0416-6786789', 'Calle 10, Guanare', 'santi.sanchez@gmail.com'),
('V78907890', 'Renata', 'Morales', '0426-7897890', 'Av. Fuerzas Armadas, Coro', 'renata.morales@yahoo.com'),
('V87654321', 'María', 'Pérez', '0414-7654321', 'Calle Sucre, Maracay', 'maria_perez@yahoo.com'),
('V89018901', 'Mateo', 'Torres', '0412-8908901', 'Calle Bolívar, La Guaira', 'mateo.torres@hotmail.com'),
('V90129012', 'Victoria', 'Rivas', '0414-9019012', 'Av. Principal, Valle de la Pascua', 'victoria.rivas@gmail.com'),
('V98765432', 'Alejandro', 'Ruiz', '0412-98765432', 'Av. 20, Cabimas', 'alejandro.ruiz@yahoo.com'),
('V98765433', 'Manuel', 'Herrera', '0416-98765433', 'Av. Bolívar, Guarenas', 'manuel.herrera@yahoo.com'),
('V98765434', 'Diego', 'Méndez', '0412-98765434', 'Av. Principal, Zamora', 'diego.mendez@yahoo.com'),
('V99887766', 'Luis', 'Martínez', '0414-9876543', 'Av. Libertador, Barinas', 'luis_mtz@outlook.com'),
('V99887767', 'Paula', 'Hernández', '0426-99887767', 'Calle 7, El Tigre', 'paula.hernandez@outlook.com'),
('V99887768', 'Fernanda', 'Rojas', '0414-99887768', 'Calle 5, Altos Mirandinos', 'fernanda.rojas@outlook.com'),
('V99887769', 'Valentina', 'Pérez', '0426-99887769', 'Calle 8, Simón Bolívar', 'valentina.perez@outlook.com');

-- --------------------------------------------------------

--
-- Table structure for table `editorial`
--

CREATE TABLE `editorial` (
  `rif` varchar(10) NOT NULL,
  `nombre_e` varchar(50) DEFAULT NULL,
  `dir_fiscal` varchar(255) DEFAULT NULL,
  `email_e` varchar(254) DEFAULT NULL,
  `tel_e` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `editorial`
--

INSERT INTO `editorial` (`rif`, `nombre_e`, `dir_fiscal`, `email_e`, `tel_e`) VALUES
('J000111222', 'Amazona Editorial', 'Av. Amazonas, Puerto Ayacucho', 'amazonaed@gmail.com', '0248-0011222'),
('J111222333', 'Editorial Andes', 'Av. Los Próceres, Mérida', 'andeseditorial@gmail.com', '0274-1122333'),
('J112233445', 'Editorial Valencia', 'Av. Bolívar, Valencia', 'editorval@hotmail.com', '0241-3344556'),
('J123456789', 'Editorial Libre', 'Av. Libertador, Caracas', 'editorlibre@gmail.com', '0212-1234567'),
('J123654789', 'Editorial Trueno', 'Av. 5 de Julio, Cabimas', 'truenoeditores@hotmail.com', '0264-1236547'),
('J123987456', 'Sabanas Editores', 'Calle Sabana, Calabozo', 'sabanaseditores@yahoo.com', '0246-1239874'),
('J147258369', 'Bosque Editorial', 'Calle Bosque, El Vigía', 'bosqueeditorial@yahoo.com', '0275-1472583'),
('J159357486', 'Editorial Insular', 'Calle Isla, La Asunción', 'insulareditores@gmail.com', '0295-1593574'),
('J159486357', 'Editorial Oasis', 'Calle Páez, Acarigua', 'oasiseditorial@hotmail.com', '0255-1594863'),
('J222333444', 'Editorial Caribe', 'Av. Principal, Barcelona', 'editorialcaribe@outlook.com', '0281-2233444'),
('J223344556', 'Táchira Editores', 'Calle 3, San Cristóbal', 'tachiraed@gmail.com', '0276-3344556'),
('J258369147', 'Aurora Editorial', 'Calle Aurora, Caracas', 'auroraeditores@outlook.com', '0212-2583691'),
('J321654987', 'Editorial Delta', 'Av. Delta, Tucupita', 'deltareditorial@gmail.com', '0287-3216549'),
('J321987654', 'Nube Editorial', 'Av. Nube, Los Teques', 'nubeeditores@outlook.com', '0212-3219876'),
('J333444555', 'Plaza Editores', 'Calle Plaza, Barinas', 'plazaeditores@yahoo.com', '0273-3344555'),
('J334455667', 'Delicias Editores', 'Urb. Las Delicias, Maracay', 'deliciasedit@hotmail.com', '0243-4455667'),
('J357159486', 'Selva Editorial', 'Av. Selva, San Carlos', 'selvaed@hotmail.com', '0243-3571594'),
('J357951486', 'Editorial Faro', 'Av. Principal, Punto Fijo', 'faroeditorial@gmail.com', '0269-3579514'),
('J369147258', 'Cumbre Editores', 'Av. Cumbre, Mérida', 'cumbreed@gmail.com', '0274-3691472'),
('J369258147', 'Luna Editores', 'Calle Luna, Guarenas', 'lunaeditores@hotmail.com', '0212-3692581'),
('J444555666', 'Editorial Llanos', 'Av. Guasdualito, Apure', 'editorialllanos@gmail.com', '0247-4455666'),
('J445566778', 'Oriente Editorial', 'Av. Intercomunal, Puerto La Cruz', 'editororiente@outlook.com', '0281-5566778'),
('J456123789', 'Desierto Editores', 'Calle Desierto, Coro', 'desiertoeditores@outlook.com', '0268-4561237'),
('J456789123', 'Editorial Guayana', 'Calle Guayana, Ciudad Bolívar', 'editorialguayana@outlook.com', '0285-4567891'),
('J456987123', 'Editorial Reflejo', 'Av. Rotaria, San Juan de los Morros', 'reflejoeditorial@gmail.com', '0246-4569871'),
('J554433221', 'Sierra Editorial', 'Calle 8, Mérida', 'sierraeditorial@gmail.com', '0274-4433221'),
('J555666777', 'Costa Editores', 'Av. Marina, Cumaná', 'costaeditores@hotmail.com', '0293-5566777'),
('J556677889', 'Editorial del Centro', 'Calle 21, Barquisimeto', 'delcentro.ed@gmail.com', '0251-5678943'),
('J654123987', 'Estrella Editores', 'Calle Estrella, San Felipe', 'estrellaeditores@gmail.com', '0254-6541239'),
('J654321987', 'Editorial Crepúsculo', 'Av. Miranda, Barquisimeto', 'crepusculoeditores@yahoo.com', '0251-6543219'),
('J654987321', 'Editorial Arauco', 'Av. Arauca, San Fernando', 'araucoeditores@hotmail.com', '0247-6549873'),
('J666777888', 'Montaña Editorial', 'Calle Montaña, Trujillo', 'montanaeditorial@yahoo.com', '0272-6677888'),
('J667788990', 'Editor Lago', 'Av. Los Haticos, Maracaibo', 'editorlago@yahoo.com', '0261-7788990'),
('J741258963', 'Editorial Relámpago', 'Calle La Línea, Ciudad Ojeda', 'relampagoeditorial@gmail.com', '0265-7412589'),
('J741852963', 'Río Bravo Editorial', 'Av. Bravo, El Tigre', 'riobravoed@gmail.com', '0283-7418529'),
('J777888999', 'Río Editores', 'Av. Río, Ciudad Bolívar', 'rioeditores@gmail.com', '0285-7788999'),
('J789123456', 'Editorial Amanecer', 'Calle Bolívar, Maturín', 'amanecereditorial@gmail.com', '0291-7891234'),
('J789456123', 'Litoral Editores', 'Calle Litoral, Carúpano', 'litoraledit@gmail.com', '0294-7894561'),
('J852369741', 'Editorial Brisa', 'Calle Sucre, Carúpano', 'brisaeditores@outlook.com', '0294-8523697'),
('J852741963', 'Mar Editorial', 'Calle Mar, Punto Fijo', 'mareditorial@hotmail.com', '0269-8527419'),
('J852963741', 'Editorial Caribeña', 'Av. Caribe, Porlamar', 'caribenaeditores@yahoo.com', '0295-8529637'),
('J888999000', 'Editorial Delta', 'Av. Orinoco, Tucupita', 'deltareditorial@hotmail.com', '0287-8899000'),
('J963147852', 'Editorial Viento', 'Av. Intercomunal, El Tigre', 'vientoeditorial@yahoo.com', '0283-9631478'),
('J963852741', 'Océano Editores', 'Av. Océano, Valencia', 'oceanoeditores@gmail.com', '0241-9638527'),
('J987123654', 'Páramo Editorial', 'Av. Páramo, Mérida', 'paramoed@gmail.com', '0274-9871236'),
('J987321654', 'Editorial Eco', 'Calle Vargas, Guanare', 'ecoeditores@outlook.com', '0257-9873216'),
('J987456321', 'Sol Editorial', 'Av. Sol, Maracay', 'soleditorial@yahoo.com', '0243-9874563'),
('J987654321', 'Ediciones Zulia', 'Calle Sucre, Maracaibo', 'edicioneszulia@yahoo.com', '0261-7654321'),
('J998877665', 'Andina Editores', 'Av. Urdaneta, Caracas', 'andinaeditores@outlook.com', '0212-9876543'),
('J999000111', 'Marina Editores', 'Calle Marina, La Guaira', 'marinaeditores@outlook.com', '0212-9900111');

-- --------------------------------------------------------

--
-- Table structure for table `libro`
--

CREATE TABLE `libro` (
  `cod_l` int(10) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `fecha_pub` date DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  `cantidad_l` int(10) DEFAULT NULL,
  `precio` double(5,2) DEFAULT NULL,
  `rif_fk` varchar(10) DEFAULT NULL,
  `cod_s_fk` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `libro`
--

INSERT INTO `libro` (`cod_l`, `titulo`, `fecha_pub`, `descripcion`, `cantidad_l`, `precio`, `rif_fk`, `cod_s_fk`) VALUES
(1, 'La Sombra del Viento', '2001-04-12', 'Misterio y drama en Barcelona', 50, 15.99, 'J123456789', 1),
(2, 'Crónicas Marcianas', '1950-05-04', 'Relatos de Marte', 30, 12.50, 'J987654321', 2),
(3, 'El Código Da Vinci', '2003-03-18', 'Misterio religioso', 45, 18.75, 'J112233445', 1),
(4, 'Historia de Venezuela', '1998-07-22', 'Desde la colonia hasta hoy', 25, 20.00, 'J556677889', 3),
(5, 'Cuentos Infantiles', '2010-06-15', 'Historias para niños', 60, 10.00, 'J998877665', 4),
(6, 'Psicología Social', '2015-09-30', 'Comportamiento humano', 35, 22.99, 'J554433221', 5),
(7, 'Arte Moderno', '2007-12-05', 'Corrientes artísticas', 40, 17.50, 'J667788990', 6),
(8, 'Cómo Ser Feliz', '2019-02-14', 'Guía de autoayuda', 55, 14.25, 'J334455667', 7),
(9, 'El Hobbit', '1937-09-21', 'Aventura en la Tierra Media', 70, 19.99, 'J223344556', 8),
(10, 'Recetas Venezolanas', '2021-11-10', 'Sabores del país', 50, 25.50, 'J445566778', 10),
(11, 'El Señor de los Anillos', '1954-07-29', 'Epopeya en la Tierra Media', 65, 22.50, 'J111222333', 8),
(12, 'Orgullo y Prejuicio', '1813-01-28', 'Romance en la Inglaterra del siglo XIX', 40, 16.75, 'J222333444', 28),
(13, '1984', '1949-06-08', 'Distopía y control social', 35, 18.00, 'J333444555', 1),
(14, 'Don Quijote de la Mancha', '1605-01-16', 'Aventuras del ingenioso hidalgo', 50, 25.00, 'J444555666', 1),
(15, 'Cien años de soledad', '1967-05-30', 'Historia de la familia Buendía', 45, 20.50, 'J555666777', 1),
(16, 'Matar a un ruiseñor', '1960-07-11', 'Racismo y justicia en el sur de EE.UU.', 60, 19.25, 'J666777888', 1),
(17, 'El Principito', '1943-04-06', 'Fábula filosófica', 70, 15.50, 'J777888999', 1),
(18, 'Harry Potter y la piedra filosofal', '1997-06-26', 'Inicio de la saga del joven mago', 80, 21.00, 'J888999000', 8),
(19, 'El Alquimista', '1988-01-01', 'Búsqueda del tesoro personal', 55, 17.75, 'J999000111', 7),
(20, 'El Perfume', '1985-09-01', 'Historia de un asesino obsesionado con los olores', 30, 23.00, 'J000111222', 1),
(21, 'La Historia Interminable', '1979-09-01', 'Aventura en el mundo de Fantasía', 40, 18.50, 'J123987456', 8),
(22, 'El nombre del viento', '2007-03-27', 'Inicio de la Crónica del Asesino de Reyes', 35, 20.25, 'J987123654', 8),
(23, 'Los juegos del hambre', '2008-09-14', 'Distopía y supervivencia en Panem', 65, 19.75, 'J456789123', 1),
(24, 'La ladrona de libros', '2005-03-01', 'Historia de una niña en la Alemania nazi', 50, 22.00, 'J321654987', 1),
(25, 'El guardián entre el centeno', '1951-07-16', 'Reflexiones de un adolescente inconformista', 45, 16.00, 'J654987321', 1),
(26, 'El retrato de Dorian Gray', '1890-06-20', 'Pacto con el diablo y decadencia', 30, 24.50, 'J789456123', 1),
(27, 'Las ventajas de ser invisible', '1999-02-01', 'Cartas de un adolescente introvertido', 60, 17.25, 'J852963741', 1),
(28, 'Mujercitas', '1868-09-30', 'Vida de cuatro hermanas en el siglo XIX', 70, 15.00, 'J159357486', 1),
(29, 'Moby Dick', '1851-11-14', 'Obsesión por la ballena blanca', 55, 21.50, 'J357159486', 1),
(30, 'Anna Karenina', '1877-01-01', 'Drama de la aristocracia rusa', 40, 23.50, 'J456123789', 1),
(31, 'Crimen y castigo', '1866-01-01', 'Psicología de un asesino', 35, 20.75, 'J741852963', 1),
(32, 'Los miserables', '1862-01-01', 'Justicia y redención en la Francia del siglo XIX', 65, 22.75, 'J369258147', 1),
(33, 'El conde de Montecristo', '1844-08-28', 'Venganza y justicia en la Francia del siglo XIX', 50, 19.50, 'J987456321', 1),
(34, 'Viaje al centro de la Tierra', '1864-11-25', 'Aventura en el interior del planeta', 45, 18.25, 'J654123987', 29),
(35, 'La vuelta al mundo en 80 días', '1872-12-21', 'Apuesta y aventura alrededor del globo', 30, 24.00, 'J321987654', 29),
(36, 'Veinte mil leguas de viaje submarino', '1870-01-01', 'Aventura en el Nautilus', 60, 21.75, 'J852741963', 29),
(37, 'La isla del tesoro', '1883-11-14', 'Búsqueda de un tesoro pirata', 70, 16.50, 'J963852741', 29),
(38, 'El libro de la selva', '1894-04-01', 'Aventuras de Mowgli en la India', 55, 17.00, 'J147258369', 4),
(39, 'Las aventuras de Tom Sawyer', '1876-11-01', 'Travesuras de un niño en el río Misisipi', 40, 15.75, 'J369147258', 4),
(40, 'Alicia en el país de las maravillas', '1865-11-26', 'Aventura surrealista de una niña', 35, 18.75, 'J258369147', 4),
(41, 'Momo', '1973-09-01', 'Lucha contra los hombres grises que roban el tiemp', 65, 22.25, 'J789123456', 4),
(42, 'El jardín secreto', '1911-06-01', 'Descubrimiento de un jardín mágico', 50, 19.00, 'J654321987', 4),
(43, 'El Silmarillion', '1977-09-15', 'Relatos de la Primera Edad de la Tierra Media', 30, 21.00, 'J111222333', 8),
(44, 'La Historia Interminable II', '1984-09-01', 'Continuación de la aventura en Fantasía', 25, 19.50, 'J123987456', 8),
(45, 'El Temor de un Hombre Sabio', '2011-03-01', 'Segunda parte de la Crónica del Asesino de Reyes', 32, 22.50, 'J987123654', 8),
(46, 'Sinsajo', '2010-08-24', 'Final de la trilogía de Los juegos del hambre', 40, 20.00, 'J456789123', 1),
(47, 'La Sombra del Viento II', '2008-11-01', 'Continuación de la historia de Daniel Sempere', 38, 23.00, 'J123456789', 1),
(48, 'El Juego de Ender', '1985-01-15', 'Novela de ciencia ficción militar', 28, 18.00, 'J999000111', 2),
(49, 'Dune', '1965-08-01', 'Clásico de la ciencia ficción', 35, 21.50, 'J000111222', 2),
(50, 'Fundación', '1951-06-01', 'Primera novela del ciclo de la Fundación', 30, 19.00, 'J112233445', 2);

-- --------------------------------------------------------

--
-- Table structure for table `metodo_pago`
--

CREATE TABLE `metodo_pago` (
  `cod_mp` int(10) NOT NULL,
  `moneda_nacional` int(1) DEFAULT NULL,
  `divisas` int(1) DEFAULT NULL,
  `pago_linea` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `metodo_pago`
--

INSERT INTO `metodo_pago` (`cod_mp`, `moneda_nacional`, `divisas`, `pago_linea`) VALUES
(1, 1, 0, 0),
(2, 0, 1, 0),
(3, 1, 0, 1),
(4, 0, 1, 1),
(5, 1, 1, 0),
(6, 1, 0, 1),
(7, 0, 1, 1),
(8, 1, 0, 0),
(9, 0, 1, 0),
(10, 1, 1, 1),
(11, 0, 0, 1),
(12, 1, 0, 0),
(13, 0, 1, 0),
(14, 1, 1, 0),
(15, 0, 0, 0),
(16, 1, 0, 1),
(17, 0, 1, 1),
(18, 1, 1, 1),
(19, 0, 0, 0),
(20, 1, 0, 0),
(21, 0, 1, 0),
(22, 1, 1, 0),
(23, 0, 0, 1),
(24, 1, 0, 1),
(25, 0, 1, 1),
(26, 1, 1, 1),
(27, 0, 0, 0),
(28, 1, 0, 0),
(29, 0, 1, 0),
(30, 1, 1, 0),
(31, 0, 0, 1),
(32, 1, 0, 1),
(33, 0, 1, 1),
(34, 1, 1, 1),
(35, 0, 0, 0),
(36, 1, 0, 0),
(37, 0, 1, 0),
(38, 1, 1, 0),
(39, 0, 0, 1),
(40, 1, 0, 1),
(41, 0, 1, 1),
(42, 1, 1, 1),
(43, 0, 0, 0),
(44, 1, 0, 0),
(45, 0, 1, 0),
(46, 1, 1, 0),
(47, 0, 0, 1),
(48, 1, 0, 1),
(49, 0, 1, 1),
(50, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `seccion`
--

CREATE TABLE `seccion` (
  `cod_s` int(10) NOT NULL,
  `nombre_s` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seccion`
--

INSERT INTO `seccion` (`cod_s`, `nombre_s`) VALUES
(1, 'Literatura'),
(2, 'ciencia ficción'),
(3, 'historia'),
(4, 'infantil'),
(5, 'ciencias sociales'),
(6, 'arte y fotografía'),
(7, 'autoayuda'),
(8, 'fantasía'),
(9, 'biografías'),
(10, 'cocina y gastronomía'),
(11, 'Economía y negocios'),
(12, 'Psicología'),
(13, 'Filosofía'),
(14, 'Religión y espiritualidad'),
(15, 'Salud y bienestar'),
(16, 'Viajes'),
(17, 'Deportes'),
(18, 'Música'),
(19, 'Cine y televisión'),
(20, 'Teatro'),
(21, 'Poesía'),
(22, 'Idiomas'),
(23, 'Informática'),
(24, 'Jardinería'),
(25, 'Manualidades'),
(26, 'Misterio y suspense'),
(27, 'Novela negra'),
(28, 'Romance'),
(29, 'Aventura'),
(30, 'Humor'),
(31, 'Cómics y novelas gráficas'),
(32, 'Libros de texto'),
(33, 'Enciclopedias'),
(34, 'Diccionarios'),
(35, 'Atlas'),
(36, 'Libros de referencia'),
(37, 'Libros antiguos y de colección'),
(38, 'Libros firmados'),
(39, 'Libros en otros idiomas'),
(40, 'Libros sobre libros'),
(41, 'Astronomía'),
(42, 'Botánica'),
(43, 'Zoología'),
(44, 'Geología'),
(45, 'Química'),
(46, 'Física'),
(47, 'Matemáticas'),
(48, 'Medicina'),
(49, 'Ingeniería'),
(50, 'Arquitectura');

-- --------------------------------------------------------

--
-- Table structure for table `venta_libro`
--

CREATE TABLE `venta_libro` (
  `cod_cc_fk` int(10) DEFAULT NULL,
  `cod_l_fk` int(10) DEFAULT NULL,
  `cantidad_vl` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `venta_libro`
--

INSERT INTO `venta_libro` (`cod_cc_fk`, `cod_l_fk`, `cantidad_vl`) VALUES
(1, 1, 2),
(2, 3, 1),
(3, 5, 3),
(4, 2, 1),
(5, 8, 4),
(6, 6, 2),
(7, 9, 1),
(8, 4, 3),
(9, 7, 2),
(10, 7, 1),
(11, 23, 2),
(12, 48, 1),
(13, 14, 3),
(14, 37, 1),
(15, 2, 4),
(16, 41, 2),
(17, 19, 1),
(18, 50, 3),
(19, 31, 2),
(20, 8, 1),
(21, 26, 2),
(22, 43, 1),
(23, 11, 3),
(24, 39, 1),
(25, 4, 4),
(26, 33, 2),
(27, 21, 1),
(28, 17, 3),
(29, 46, 2),
(30, 29, 1),
(31, 16, 2),
(32, 35, 1),
(33, 1, 3),
(34, 44, 1),
(35, 6, 4),
(36, 28, 2),
(37, 49, 1),
(38, 20, 3),
(39, 3, 2),
(40, 10, 1),
(41, 25, 2),
(42, 47, 1),
(43, 13, 3),
(44, 38, 1),
(45, 7, 4),
(46, 30, 2),
(47, 22, 1),
(48, 18, 3),
(49, 45, 2),
(50, 36, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autor_libro`
--
ALTER TABLE `autor_libro`
  ADD KEY `ced_a_fk` (`ced_a_fk`),
  ADD KEY `cod_l_fk` (`cod_l_fk`);

--
-- Indexes for table `compra_cliente`
--
ALTER TABLE `compra_cliente`
  ADD PRIMARY KEY (`cod_cc`),
  ADD KEY `ced_c_fk` (`ced_c_fk`),
  ADD KEY `cod_mp_fk` (`cod_mp_fk`);

--
-- Indexes for table `datos_personales`
--
ALTER TABLE `datos_personales`
  ADD PRIMARY KEY (`ced`);

--
-- Indexes for table `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`rif`);

--
-- Indexes for table `libro`
--
ALTER TABLE `libro`
  ADD PRIMARY KEY (`cod_l`),
  ADD KEY `rif_fk` (`rif_fk`),
  ADD KEY `cod_s_fk` (`cod_s_fk`);

--
-- Indexes for table `metodo_pago`
--
ALTER TABLE `metodo_pago`
  ADD PRIMARY KEY (`cod_mp`);

--
-- Indexes for table `seccion`
--
ALTER TABLE `seccion`
  ADD PRIMARY KEY (`cod_s`);

--
-- Indexes for table `venta_libro`
--
ALTER TABLE `venta_libro`
  ADD KEY `cod_cc_fk` (`cod_cc_fk`),
  ADD KEY `cod_l_fk` (`cod_l_fk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `autor_libro`
--
ALTER TABLE `autor_libro`
  ADD CONSTRAINT `autor_libro_ibfk_1` FOREIGN KEY (`ced_a_fk`) REFERENCES `datos_personales` (`ced`),
  ADD CONSTRAINT `autor_libro_ibfk_2` FOREIGN KEY (`cod_l_fk`) REFERENCES `libro` (`cod_l`);

--
-- Constraints for table `compra_cliente`
--
ALTER TABLE `compra_cliente`
  ADD CONSTRAINT `compra_cliente_ibfk_1` FOREIGN KEY (`ced_c_fk`) REFERENCES `datos_personales` (`ced`),
  ADD CONSTRAINT `compra_cliente_ibfk_2` FOREIGN KEY (`cod_mp_fk`) REFERENCES `metodo_pago` (`cod_mp`);

--
-- Constraints for table `libro`
--
ALTER TABLE `libro`
  ADD CONSTRAINT `libro_ibfk_1` FOREIGN KEY (`rif_fk`) REFERENCES `editorial` (`rif`),
  ADD CONSTRAINT `libro_ibfk_2` FOREIGN KEY (`cod_s_fk`) REFERENCES `seccion` (`cod_s`);

--
-- Constraints for table `venta_libro`
--
ALTER TABLE `venta_libro`
  ADD CONSTRAINT `venta_libro_ibfk_1` FOREIGN KEY (`cod_cc_fk`) REFERENCES `compra_cliente` (`cod_cc`),
  ADD CONSTRAINT `venta_libro_ibfk_2` FOREIGN KEY (`cod_l_fk`) REFERENCES `libro` (`cod_l`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
