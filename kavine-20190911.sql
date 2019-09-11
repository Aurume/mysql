-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Rgs 11 d. 09:53
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
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `trukme_ruosimo` int(11) NOT NULL,
  `trukme_kaitinimo` int(11) NOT NULL,
  `kaina` double NOT NULL
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
(13, 'Varškėčiai', 20, 10, 43),
(18, 'Čeburėkai', 10, 5, 3.5),
(19, 'Cepelinai', 45, 55, 5),
(20, 'Kepta duona', 25, 30, 3);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `patiekalu_produktai`
--

CREATE TABLE `patiekalu_produktai` (
  `id` int(10) UNSIGNED NOT NULL,
  `patiekalai_id` int(10) UNSIGNED NOT NULL,
  `produktai_id` int(10) UNSIGNED NOT NULL,
  `kiekis_produkto` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `patiekalu_produktai`
--

INSERT INTO `patiekalu_produktai` (`id`, `patiekalai_id`, `produktai_id`, `kiekis_produkto`) VALUES
(1, 12, 11, 5),
(2, 12, 12, 200),
(3, 12, 14, 3),
(5, 12, 7, 250),
(8, 10, 15, 5),
(9, 10, 21, 1),
(10, 10, 14, 1),
(11, 10, 12, 100),
(13, 10, 9, 5),
(14, 10, 10, 2),
(24, 8, 16, 250),
(25, 8, 17, 120),
(26, 8, 18, 2),
(27, 8, 19, 100),
(28, 8, 20, 100),
(29, 8, 21, 2),
(30, 8, 9, 5),
(31, 8, 35, 60),
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
(76, 13, 34, 1),
(77, 9, 15, 5),
(78, 9, 26, 500),
(79, 9, 14, 3),
(80, 9, 28, 200),
(81, 9, 27, 1),
(82, 9, 9, 5),
(83, 9, 39, 100),
(84, 5, 33, 220),
(85, 5, 52, 250),
(86, 5, 32, 220),
(87, 5, 36, 100),
(88, 5, 35, 10),
(89, 5, 14, 1),
(90, 6, 24, 250),
(91, 3, 22, 200),
(92, 3, 37, 15),
(93, 20, 4, 250),
(94, 20, 35, 25),
(95, 20, 5, 80),
(96, 20, 54, 20),
(97, 20, 9, 7);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `produktai`
--

CREATE TABLE `produktai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `mat_vnt` varchar(32) COLLATE utf8_lithuanian_ci NOT NULL,
  `mat_kiek` double NOT NULL,
  `kaina` decimal(10,2) NOT NULL,
  `kiekis_sand` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `produktai`
--

INSERT INTO `produktai` (`id`, `pav`, `mat_vnt`, `mat_kiek`, `kaina`, `kiekis_sand`) VALUES
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
(38, 'Vanduo', 'g', 100, '0.01', 10000),
(39, 'Krapai', 'g', 100, '0.25', 1.5),
(43, 'Pomidorai', 'g', 250, '0.50', 20),
(52, 'Vištiena', 'g', 300, '3.20', 12),
(53, 'Kokosų aliejus', 'g', 20, '1.50', 20),
(54, 'Česnakas', 'g', 10, '0.15', 10);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `top_patiekalai`
--

CREATE TABLE `top_patiekalai` (
  `pat_id` int(11) NOT NULL,
  `fld_delim` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `kaina_patiek` double NOT NULL,
  `kaitinti` int(11) NOT NULL,
  `patiekalas` varchar(255) COLLATE utf8_lithuanian_ci DEFAULT NULL,
  `ruosti` int(11) NOT NULL,
  `uz_suma` double NOT NULL,
  `uzsakymu` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `uzsakymai`
--

CREATE TABLE `uzsakymai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `trukme_ruosimo` int(11) DEFAULT NULL,
  `trukme_kaitinimo` int(11) DEFAULT NULL,
  `busena` enum('uzsakytas','anuliuotas','ivykdytas') COLLATE utf8_lithuanian_ci NOT NULL DEFAULT 'uzsakytas',
  `laikas_uzsakymo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `laikas_pateikimo` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `klientas` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `id_patiekalo` int(10) UNSIGNED NOT NULL,
  `kaina` decimal(32,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `uzsakymai`
--

INSERT INTO `uzsakymai` (`id`, `pav`, `trukme_ruosimo`, `trukme_kaitinimo`, `busena`, `laikas_uzsakymo`, `laikas_pateikimo`, `klientas`, `id_patiekalo`, `kaina`) VALUES
(7, 'Kava Late', 0, 0, 'anuliuotas', '2019-08-06 04:26:55', '2019-08-07 10:30:42', '', 7, '3'),
(19, 'Blyneliai su bananais', 15, 10, 'anuliuotas', '2019-08-06 06:32:42', '2019-08-06 06:33:16', '54', 12, '4'),
(24, 'Bulviniai blynai', 10, 15, 'uzsakytas', '2019-08-07 04:00:38', '2019-08-07 04:00:38', '101', 10, '35'),
(25, 'Ledai', 0, 0, 'uzsakytas', '2019-08-07 04:05:55', '2019-08-07 04:05:55', '101', 3, '3'),
(26, 'Humus Pica', 15, 8, 'ivykdytas', '2019-08-07 04:08:06', '2019-08-07 10:15:06', '101', 8, '31'),
(27, 'Varšk??iai', 20, 10, 'ivykdytas', '2019-08-07 04:15:20', '2019-08-07 10:26:33', '21', 13, '43'),
(28, 'Obuoli? pyragas su brašk?mis', 0, 0, 'ivykdytas', '2019-08-07 08:59:07', '2019-08-07 10:01:27', '66', 6, '6'),
(30, 'Humus Pica', 15, 8, 'anuliuotas', '2019-08-07 09:03:39', '2019-08-07 10:25:59', '101', 8, '31'),
(31, 'Ledai', 0, 0, 'ivykdytas', '2019-08-07 09:04:02', '2019-08-07 10:26:03', '21', 3, '3'),
(35, 'Cezario salotos', 15, 0, 'ivykdytas', '2019-08-07 09:04:50', '2019-08-07 10:25:35', '66', 5, '20'),
(37, 'Cezario salotos', 15, 0, 'ivykdytas', '2019-08-07 09:05:07', '2019-08-07 10:25:46', '54', 5, '20'),
(39, 'Vaisin? arbata', 0, 0, 'anuliuotas', '2019-08-07 09:05:31', '2019-08-07 10:25:26', '101', 11, '11'),
(46, 'Vaisin? arbata', 0, 0, 'ivykdytas', '2019-08-07 10:11:29', '2019-08-07 10:25:54', '101', 11, '11'),
(47, 'Kava Juoda', 0, 0, 'ivykdytas', '2019-08-07 10:12:07', '2019-08-07 10:13:52', '101', 4, '4'),
(48, 'Bulviniai blynai', 10, 15, 'ivykdytas', '2019-08-07 10:39:55', '2019-08-07 10:40:12', '101', 10, '35'),
(49, 'Humus Pica', 15, 8, 'ivykdytas', '2019-08-07 10:46:58', '2019-08-07 10:47:05', '21', 8, '31'),
(50, 'Varškėčiai', 20, 10, 'uzsakytas', '2019-08-07 10:47:22', NULL, '21', 13, '43');

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
  ADD KEY `id_produkto` (`produktai_id`),
  ADD KEY `id_patiekalo` (`patiekalai_id`);

--
-- Indexes for table `produktai`
--
ALTER TABLE `produktai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_patiekalai`
--
ALTER TABLE `top_patiekalai`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `uzsakymai`
--
ALTER TABLE `uzsakymai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_patiekalo` (`id_patiekalo`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patiekalai`
--
ALTER TABLE `patiekalai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `patiekalu_produktai`
--
ALTER TABLE `patiekalu_produktai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `produktai`
--
ALTER TABLE `produktai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `uzsakymai`
--
ALTER TABLE `uzsakymai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `patiekalu_produktai`
--
ALTER TABLE `patiekalu_produktai`
  ADD CONSTRAINT `patiekalu_produktai_ibfk_1` FOREIGN KEY (`produktai_id`) REFERENCES `produktai` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `patiekalu_produktai_ibfk_2` FOREIGN KEY (`patiekalai_id`) REFERENCES `patiekalai` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Apribojimai lentelei `uzsakymai`
--
ALTER TABLE `uzsakymai`
  ADD CONSTRAINT `uzsakymai_ibfk_1` FOREIGN KEY (`id_patiekalo`) REFERENCES `patiekalai` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
