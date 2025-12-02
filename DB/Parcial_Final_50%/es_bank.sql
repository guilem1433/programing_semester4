-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2025 at 05:12 PM
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
-- Database: `es_bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_banco`
--

CREATE TABLE `admin_banco` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ana_rie`
--

CREATE TABLE `ana_rie` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ase_comercial`
--

CREATE TABLE `ase_comercial` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cajero`
--

CREATE TABLE `cajero` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cliente`
--

CREATE TABLE `cliente` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ger_gen`
--

CREATE TABLE `ger_gen` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sop_tec`
--

CREATE TABLE `sop_tec` (
  `id` int(20) NOT NULL,
  `nom` varchar(64) NOT NULL,
  `cor_el` varchar(64) NOT NULL,
  `contra` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_banco`
--
ALTER TABLE `admin_banco`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ana_rie`
--
ALTER TABLE `ana_rie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ase_comercial`
--
ALTER TABLE `ase_comercial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cajero`
--
ALTER TABLE `cajero`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ger_gen`
--
ALTER TABLE `ger_gen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sop_tec`
--
ALTER TABLE `sop_tec`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_banco`
--
ALTER TABLE `admin_banco`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ana_rie`
--
ALTER TABLE `ana_rie`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ase_comercial`
--
ALTER TABLE `ase_comercial`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cajero`
--
ALTER TABLE `cajero`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ger_gen`
--
ALTER TABLE `ger_gen`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sop_tec`
--
ALTER TABLE `sop_tec`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
