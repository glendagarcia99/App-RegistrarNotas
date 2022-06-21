-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 19, 2022 at 10:57 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registronotas`
--

-- --------------------------------------------------------

--
-- Table structure for table `curso`
--

CREATE TABLE `curso` (
  `IdCurso` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Descripcion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `curso`
--

INSERT INTO `curso` (`IdCurso`, `Nombre`, `Descripcion`) VALUES
(1, 'Matematica', 'Ingenieria'),
(2, 'Sociologia', 'Humanidades'),
(3, 'Anatomia ', 'Anatomia Humana Medicina'),
(4, 'Finanzas publicas', ' Ciencias Economicas'),
(5, 'Derecho Civil I', 'Jurisprudencia'),
(6, 'Derecho Penal', 'Jurisprudencia'),
(7, 'Microprogramacion', 'Ingenieria en Sistemas'),
(8, 'Sistemas Operativos', 'Ingenieria en Sistemas'),
(10, 'Desarrollo Web I', 'Ingenieria en Sistemas');

-- --------------------------------------------------------

--
-- Table structure for table `estudiante`
--

CREATE TABLE `estudiante` (
  `IdEstudiante` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Telefono` int(8) DEFAULT NULL,
  `FechaIngreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `estudiante`
--

INSERT INTO `estudiante` (`IdEstudiante`, `Nombre`, `Correo`, `Telefono`, `FechaIngreso`) VALUES
(1, 'Daniela Castro', 'Daniela@hotmail.com', 78526398, '2022-06-04'),
(2, 'Juan Carlos Gomez', 'Juanca63@gmail.com', 78635241, '2022-06-19'),
(3, 'Juliana Cruz', 'July63@gmail.com', 78362589, '2022-06-19');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `IdNota` int(11) NOT NULL,
  `Nota1` varchar(50) DEFAULT NULL,
  `Nota2` varchar(50) DEFAULT NULL,
  `Nota3` varchar(50) DEFAULT NULL,
  `IdEstudiante` int(11) DEFAULT NULL,
  `IdCurso` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`IdNota`, `Nota1`, `Nota2`, `Nota3`, `IdEstudiante`, `IdCurso`) VALUES
(1, '7', '7', '8', 1, 1),
(2, '9', '8', '6', 2, 4),
(3, '9', '9', '9', 3, 2),
(4, '6', '6', '6', 1, 6),
(5, '10', '10', '10', 2, 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`IdCurso`);

--
-- Indexes for table `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`IdEstudiante`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`IdNota`),
  ADD KEY `IdCurso` (`IdCurso`),
  ADD KEY `IdEstudiante` (`IdEstudiante`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `IdCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `estudiante`
--
ALTER TABLE `estudiante`
  MODIFY `IdEstudiante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `IdNota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `nota_ibfk_1` FOREIGN KEY (`IdCurso`) REFERENCES `curso` (`IdCurso`),
  ADD CONSTRAINT `nota_ibfk_2` FOREIGN KEY (`IdEstudiante`) REFERENCES `estudiante` (`IdEstudiante`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
