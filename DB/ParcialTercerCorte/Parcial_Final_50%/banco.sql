-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2025 at 06:56 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banco`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrador`
--

CREATE TABLE `administrador` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `administrador`
--

INSERT INTO `administrador` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'Angel', 'angel@admin.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `analista`
--

CREATE TABLE `analista` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `analista`
--

INSERT INTO `analista` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'Angel', 'angel1@analista.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `asesor`
--

CREATE TABLE `asesor` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asesor`
--

INSERT INTO `asesor` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'Angel', 'angel@asesor.com', '123', '123'),
(2, 'Angel', 'angel1@asesor.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cajero`
--

CREATE TABLE `cajero` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cajero`
--

INSERT INTO `cajero` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'Angel', 'angel@cajero.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cliente`
--

INSERT INTO `cliente` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'Angel', 'angel@cliente.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `gerente`
--

CREATE TABLE `gerente` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gerente`
--

INSERT INTO `gerente` (`ID`, `Nombre`, `Contraseña`, `Con_Confirmacion`, `Correo`) VALUES
(1, 'Angel', '123', '123', 'angel@gerente.com');

-- --------------------------------------------------------

--
-- Table structure for table `registro`
--

CREATE TABLE `registro` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registro`
--

INSERT INTO `registro` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'Angel', 'angel@gmail.com', '$2y$10$MAtRIfgf/wTve5n8/9oXOuttDYfHOX/gkKr2LpfMyOZakX9yqzlUu', '$2y$10$MAtRIfgf/wTve5n8/9oXOuttDYfHOX/gkKr2LpfMyOZakX9yqzlUu'),
(2, 'Angel', 'angel@gmasil.com', '123', '123'),
(3, 'Angel', 'angel@admin.com', '123', '123'),
(4, 'Angel', 'angel@asesor.com', '123', '123'),
(5, 'Angel', 'angel1@asesor.com', '123', '123'),
(6, 'Angel', 'angel1@analista.com', '123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `soporte`
--

CREATE TABLE `soporte` (
  `ID` int(100) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Contraseña` varchar(100) NOT NULL,
  `Con_Confirmacion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soporte`
--

INSERT INTO `soporte` (`ID`, `Nombre`, `Correo`, `Contraseña`, `Con_Confirmacion`) VALUES
(1, 'angel', 'angel@soporte.com', '123', '123'),
(2, 'angel', 'angel1@soporte.com', '123', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `analista`
--
ALTER TABLE `analista`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `asesor`
--
ALTER TABLE `asesor`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cajero`
--
ALTER TABLE `cajero`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `registro`
--
ALTER TABLE `registro`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `soporte`
--
ALTER TABLE `soporte`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `analista`
--
ALTER TABLE `analista`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asesor`
--
ALTER TABLE `asesor`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cajero`
--
ALTER TABLE `cajero`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gerente`
--
ALTER TABLE `gerente`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `registro`
--
ALTER TABLE `registro`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `soporte`
--
ALTER TABLE `soporte`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
