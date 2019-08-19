-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Rgp 19 d. 09:46
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kavine`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `patiekalai`
--

CREATE TABLE `patiekalai` (
  `id` int(11) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `trukme_ruosimo` int(11) NOT NULL,
  `trukme_kaitinimo` int(11) NOT NULL,
  `kaina` int(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `patiekalai`
--

INSERT INTO `patiekalai` (`id`, `pav`, `trukme_ruosimo`, `trukme_kaitinimo`, `kaina`) VALUES
(3, 'Ledai', 0, 0, 3),
(4, 'Kava Juoda', 0, 0, 4),
(5, 'Cezario salotos', 15, 0, 20),
(6, 'Obuolių pyragas su braškėmis', 0, 0, 6),
(7, 'Kava Late', 0, 0, 7),
(8, 'Humus Pica', 15, 8, 31),
(9, 'Šaltibarščiai su bulvėmis', 15, 5, 29),
(10, 'Bulviniai blynai', 10, 15, 35),
(11, 'Vaisinė arbata', 0, 0, 11),
(12, 'Blyneliai su bananais', 15, 10, 37),
(13, 'Varškėčiai', 20, 10, 43);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `patiekalu_produktai`
--

CREATE TABLE `patiekalu_produktai` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_patiekalo` int(10) UNSIGNED NOT NULL,
  `id_produkto` int(10) UNSIGNED NOT NULL,
  `kiekis` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `patiekalu_produktai`
--

INSERT INTO `patiekalu_produktai` (`id`, `id_patiekalo`, `id_produkto`, `kiekis`) VALUES
(1, 12, 11, 5),
(2, 12, 12, 200),
(3, 12, 14, 3),
(4, 12, 2, 30),
(5, 12, 7, 250),
(6, 3, 22, 200),
(7, 3, 37, 10),
(8, 10, 15, 5),
(9, 10, 21, 1),
(10, 10, 14, 1),
(11, 10, 12, 100),
(12, 10, 2, 100),
(13, 10, 9, 5),
(14, 10, 10, 2),
(15, 5, 33, 200),
(16, 5, 13, 40),
(17, 5, 32, 1),
(18, 5, 14, 2),
(19, 5, 34, 1),
(20, 5, 35, 100),
(21, 5, 10, 5),
(22, 5, 9, 5),
(23, 5, 36, 100),
(24, 8, 16, 250),
(25, 8, 17, 120),
(26, 8, 18, 2),
(27, 8, 19, 100),
(28, 8, 20, 100),
(29, 8, 21, 2),
(30, 8, 9, 5),
(31, 8, 35, 60),
(32, 4, 23, 20),
(33, 4, 38, 250),
(34, 4, 30, 5),
(35, 7, 23, 25),
(36, 7, 38, 120),
(37, 7, 7, 100),
(38, 7, 30, 10),
(55, 6, 25, 100),
(56, 6, 30, 250),
(57, 6, 12, 250),
(62, 6, 14, 4),
(69, 11, 29, 10),
(70, 13, 31, 500),
(71, 13, 14, 4),
(72, 13, 12, 200),
(73, 13, 30, 100),
(74, 13, 9, 7),
(75, 13, 2, 100),
(76, 13, 34, 1),
(77, 9, 15, 5),
(78, 9, 26, 500),
(79, 9, 14, 3),
(80, 9, 28, 200),
(81, 9, 27, 1),
(82, 9, 9, 5);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `produktai`
--

CREATE TABLE `produktai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `mat_vnt` varchar(32) COLLATE utf8_lithuanian_ci NOT NULL,
  `mat_kiek` int(11) NOT NULL,
  `kaina` decimal(10,2) NOT NULL,
  `kiekis_sand` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `produktai`
--

INSERT INTO `produktai` (`id`, `pav`, `mat_vnt`, `mat_kiek`, `kaina`, `kiekis_sand`) VALUES
(2, 'Aliejus', 'l', 100, '5.00', 50.145),
(3, 'Šafranas', 'kg', 500, '20750.00', 18.35),
(4, 'Duona', 'kg', 800, '2.00', 42),
(5, 'Sūris', 'kg', 250, '9.85', 56.425),
(7, 'Pienas', 'l', 20, '25.00', 10),
(9, 'Druska', 'kg', 100, '1.00', 200.15),
(10, 'Pipirai', 'g', 100, '0.85', 510.5),
(11, 'Bananai', 'vnt', 5, '0.79', 12),
(12, 'Miltai', 'g', 400, '2.00', 102.5),
(13, 'Sviestas', 'vnt', 100, '1.49', 1000),
(14, 'Kiaušiniai', 'vnt', 1, '0.15', 70),
(15, 'Bulvės', 'g', 200, '0.40', 1000),
(16, 'Humusas', 'g', 100, '2.00', 700),
(17, 'Cukinija', 'vnt', 1, '1.50', 25),
(18, 'Paprika', 'vnt', 2, '1.00', 20),
(19, 'Marinuoti pievagrybiai', 'g', 50, '3.00', 450),
(20, 'Alyvuogės', 'g', 100, '0.89', 650),
(21, 'Svogūnai', 'vnt', 1, '0.15', 100),
(22, 'Ledai', 'g', 200, '5.00', 1000),
(23, 'Kava', 'g', 20, '1.50', 2000),
(24, 'Obuoliai', 'vnt', 6, '1.25', 30),
(25, 'Braškės', 'g', 200, '2.20', 700),
(26, 'Burokėliai', 'g', 500, '0.75', 10),
(27, 'Kefyras', 'l', 1, '0.99', 10),
(28, 'Agurkai', 'g', 200, '0.65', 1000),
(29, 'Arbatžolės (vaisinės)', 'g', 10, '1.30', 100),
(30, 'Cukrus', 'g', 100, '0.10', 333),
(31, 'Varškė', 'g', 500, '2.00', 26),
(32, 'Romaninė salota', 'vnt', 1, '1.29', 18),
(33, 'Balta duona', 'g', 200, '0.25', 950),
(34, 'Citrina', 'vnt', 1, '0.45', 22),
(35, 'Alyvuogių aliejus', 'ml', 100, '1.00', 650),
(36, 'Parmezano sūris', 'g', 100, '2.00', 725.5),
(37, 'Sirupas', 'ml', 10, '0.50', 520),
(38, 'Vanduo', 'g', 100, '0.01', 10000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patiekalai`
--
ALTER TABLE `patiekalai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patiekalu_produktai`
--
ALTER TABLE `patiekalu_produktai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_produkto` (`id_produkto`),
  ADD KEY `id_patiekalo` (`id_patiekalo`);

--
-- Indexes for table `produktai`
--
ALTER TABLE `produktai`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patiekalai`
--
ALTER TABLE `patiekalai`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `patiekalu_produktai`
--
ALTER TABLE `patiekalu_produktai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `produktai`
--
ALTER TABLE `produktai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `patiekalu_produktai`
--
ALTER TABLE `patiekalu_produktai`
  ADD CONSTRAINT `patiekalu_produktai_ibfk_1` FOREIGN KEY (`id_produkto`) REFERENCES `produktai` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `patiekalu_produktai_ibfk_2` FOREIGN KEY (`id_patiekalo`) REFERENCES `patiekalai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
