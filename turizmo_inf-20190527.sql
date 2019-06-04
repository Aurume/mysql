-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019 m. Geg 27 d. 13:11
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
-- Database: `turizmo_inf`
--

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `ist_ivykiai`
--

CREATE TABLE `ist_ivykiai` (
  `id` int(11) NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `aprasymas` text COLLATE utf8_lithuanian_ci NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `ist_ivykiai`
--

INSERT INTO `ist_ivykiai` (`id`, `pav`, `aprasymas`, `data`) VALUES
(1, 'Pirmasis pasaulinis karas', 'Pirmasis pasaulinis karas (iki Antrojo pasaulinio karo vadintas Didžiuoju karu, arba Didžkariu) – vienas iš pasaulinių karų, vykęs 1914 m. liepos 28 d. – 1918 m. lapkričio 11 d. daugiausia Europoje (taip pat Artimuosiuose Rytuose, Afrikoje ir Rytų Azijoje), kurio metu mobilizuota buvo 70 mln. karių, iš jų 60 – europiečių.', '1914-07-28'),
(2, 'Lietuvos nepriklausomybės atkūrimo diena', '1990 m. kovo 11 d. Lietuvos Respublikos Aukščiausioji Taryba pasirašė Lietuvos nepriklausomybės atstatymo aktą, kuriame rašoma, kad atstatomas 1940 m. svetimos jėgos panaikintas Lietuvos Valstybės suvereninių galių vykdymas ir Lietuva nuo šiol yra nepriklausoma valstybė.', '1990-03-11'),
(3, 'Antrasis pasaulinis karas', 'Antrasis pasaulinis karas – didžiausias karas žmonijos istorijoje[1], trukęs nuo 1939 iki 1945 m.', '1939-09-01'),
(4, 'Lietuvos krikštas', 'Lietuvos krikštas – procesas, kurio metu etninė lietuvių religija buvo pakeista krikščionybe. Oficialiai Lietuva pakrikštyta 1387 m. Lenkijos karaliaus ir Lietuvos didžiojo kunigaikščio Jogailos bei Lietuvos didžiojo kunigaikščio Vytauto iniciatyva.', '1389-04-17'),
(5, 'Pirmieji Lietuvos prezidento rinkimai', '1919 m. Lietuvos Prezidento rinkimai buvo pirmieji rinkimai nepriklausomoje Lietuvoje. Jie vyko 1919 m. balandžio 4 d. Kaune.', '1919-04-04'),
(6, 'Žalgirio mūšis', 'Žalgirio mūšis – 1410 m. liepos 15 d. netoli Tanenbergo ir Griunvaldo (Žalgirio) vykęs mūšis tarp jungtinių Lietuvos Didžiosios Kunigaikštystės ir Lenkijos Karalystės pajėgų ir Kryžiuočių ordino.', '1410-07-15'),
(7, 'Karaliaus Mindaugo karūnavimas', 'Mindaugas (g. apie 1200 m. – 1263 m. rugsėjo 12 d.) – Lietuvos didysis kunigaikštis (~1236–1253 m.), taip pat pirmasis Lietuvos karalius (1253–1263 m.). Jo vainikavimo Lietuvos karaliumi diena yra Lietuvos Respublikos valstybinė šventė.', '1253-07-06');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `keliai`
--

CREATE TABLE `keliai` (
  `id` int(10) UNSIGNED NOT NULL,
  `nr_pav` varchar(10) COLLATE utf8_lithuanian_ci NOT NULL,
  `tipas` enum('magistralinis','europos','krasto','rajoninis') COLLATE utf8_lithuanian_ci NOT NULL,
  `kelio_ilgis` int(11) NOT NULL,
  `id_prad_miesto` int(10) UNSIGNED DEFAULT NULL,
  `id_gal_miesto` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `keliai`
--

INSERT INTO `keliai` (`id`, `nr_pav`, `tipas`, `kelio_ilgis`, `id_prad_miesto`, `id_gal_miesto`) VALUES
(1, 'A5', 'magistralinis', 0, NULL, NULL),
(2, 'E67', 'europos', 0, NULL, NULL),
(3, 'A1', 'magistralinis', 0, NULL, NULL),
(4, 'E85', 'europos', 0, NULL, NULL),
(5, 'KK130', 'krasto', 0, NULL, NULL),
(6, 'KK139', 'krasto', 0, NULL, NULL),
(7, 'KK140', 'krasto', 0, NULL, NULL),
(8, 'KK141', 'krasto', 0, NULL, NULL),
(9, 'RK1919', 'rajoninis', 0, NULL, NULL),
(10, 'RK1901', 'rajoninis', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `keliai_miestai`
--

CREATE TABLE `keliai_miestai` (
  `id_miesto` int(10) UNSIGNED NOT NULL,
  `id_kelio` int(10) UNSIGNED NOT NULL,
  `atstumas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `keliai_miestai`
--

INSERT INTO `keliai_miestai` (`id_miesto`, `id_kelio`, `atstumas`) VALUES
(12, 1, 1),
(12, 10, 0),
(11, 2, 50),
(10, 1, 46),
(12, 9, 10),
(12, 5, 195),
(14, 5, 196);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `lankyt_vietos`
--

CREATE TABLE `lankyt_vietos` (
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `aprasymas` text COLLATE utf8_lithuanian_ci NOT NULL,
  `id_miesto` int(10) UNSIGNED NOT NULL,
  `tipas` enum('fortas','baznycia','muziejai','parkas','ezeras','akmuo','aerodromas') COLLATE utf8_lithuanian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `lankyt_vietos`
--

INSERT INTO `lankyt_vietos` (`id`, `pav`, `aprasymas`, `id_miesto`, `tipas`) VALUES
(1, 'IX Kauno fortas', 'Vienas Kauno tvirtoves fortu, kuris yra miesto šiaures vakaruose. ', 12, 'fortas'),
(2, 'Ramybės parkas', 'Ramybės parkas (Karmelitų kapinės, oficialus pavadinimas Kauno senosios kapinės) yra Kauno naujamiestyje, Vytauto pr., į šiaurę nuo autobusų stoties.', 12, 'parkas'),
(3, 'S. Dariaus ir S. Girėno aerodromas', 'S. Dariaus ir S. Girėno aerodromas (Aleksoto oro uostas, Aleksoto aerodromas) – seniausias veikiantis aerodromas Lietuvoje ir vienas seniausių Europoje. Įkurtas 1915 m. Aleksote, pakeliui į Garliavą.', 12, 'aerodromas'),
(4, 'Klaipėdos Šv. Kazimiero bažnyčia', '1992 m. įkurta parapija. Bažnyčia pastatyta pagal architekto Ričardo Krištapavičiaus ir dailininko A. Skiesgelio projektą.', 14, 'baznycia'),
(5, 'Klaipėdos pilies muziejus', 'Klaipėdos pilies muziejus atidarytas 2002 m. rugpjūčio 1 d. Kasmet piliavietėje rugpjūčio 1-ąją, minint miesto įkūrimą 1252-aisiais, vyksta atraktyvūs renginiai.\r\n', 14, 'muziejai'),
(6, 'Kupiškio etnografijos muziejus', 'Kupiškio etnografijos muziejus – muziejus Kupiškyje, nuo 1984 m. veikiantis didikų Čartoriskių įsteigtos buvusios mokyklos akmens mūro pastate, statytame 1823 m., Gedimino g. 2.', 11, 'muziejai'),
(7, 'Birštono Šv. Antano Paduviečio bažnyčia', 'Birštono Šv. Antano Paduviečio bažnyčia stovi Birštone, Nemuno dešiniajame krante.', 10, 'baznycia'),
(8, 'Klaipėdos skulptūrų parkas', 'Klaipėdos skulptūrų parkas (Martyno Mažvydo skulptūrų parkas) – miesto parkas centrinėje Klaipėdos dalyje. L-formos parkas yra išsidėstęs 12,2 ha plote. Jame yra 116 modernios skulptūros.', 14, 'parkas');

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `miestai`
--

CREATE TABLE `miestai` (
  `id` int(10) UNSIGNED NOT NULL,
  `pav` varchar(256) COLLATE utf8_lithuanian_ci NOT NULL,
  `plotas` decimal(12,2) NOT NULL,
  `platuma` decimal(10,7) NOT NULL,
  `ilguma` decimal(10,7) NOT NULL,
  `gyv_sk` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Sukurta duomenų kopija lentelei `miestai`
--

INSERT INTO `miestai` (`id`, `pav`, `plotas`, `platuma`, `ilguma`, `gyv_sk`) VALUES
(8, 'Panevežys', '54.00', '55.7374380', '24.3703310', 98258),
(9, 'Taurage', '17.00', '55.2533610', '22.2850490', 22018),
(10, 'Birštonas', '13.00', '54.6057590', '24.0293290', 2381),
(11, 'Kupiškis', '7.00', '55.8391910', '24.9755590', 6152),
(12, 'Kaunas', '157.00', '54.8968700', '23.8924290', 286763),
(13, 'Vilnius', '401.00', '54.6871570', '25.2796520', 536692),
(14, 'Klaipeda', '98.00', '55.7032970', '21.1442790', 149015),
(15, 'Suvalkai', '65.00', '54.6491600', '23.1249600', 69340),
(16, 'Helsinkis', '715.49', '60.1698300', '24.9381900', 578126),
(17, 'Praha', '496.00', '50.0755390', '14.4378000', 1223368),
(18, 'Aleksandropolis', '54.00', '40.8456920', '25.8753280', 146400),
(19, 'Alytus', '48.00', '54.3962940', '24.0458760', 51561),
(20, 'Garliava', '3.00', '54.8246190', '23.8825800', 10112),
(21, 'Šakiai', '7.00', '54.9537090', '23.0484100', 5146),
(22, 'Ramučiai', '1.50', '54.9465800', '24.0367400', 2372),
(23, 'Martinava', '1.00', '48.2991000', '20.1709000', 97),
(24, 'Vaišvydava', '3.00', '54.8423900', '24.0452100', 4000),
(25, 'Pabališkiai', '1.00', '54.7702600', '23.6921200', 20);

-- --------------------------------------------------------

--
-- Sukurta duomenų struktūra lentelei `miestai_atstumai`
--

CREATE TABLE `miestai_atstumai` (
  `id_miesto1` int(10) UNSIGNED DEFAULT NULL,
  `id_miesto2` int(10) UNSIGNED DEFAULT NULL,
  `atstumas_geografinis` int(11) NOT NULL,
  `atstumas_keliai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ist_ivykiai`
--
ALTER TABLE `ist_ivykiai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keliai`
--
ALTER TABLE `keliai`
  ADD PRIMARY KEY (`id`),
  ADD KEY `keliai_ibfk_1` (`id_prad_miesto`),
  ADD KEY `id_gal_miesto` (`id_gal_miesto`);

--
-- Indexes for table `keliai_miestai`
--
ALTER TABLE `keliai_miestai`
  ADD KEY `id_miesto` (`id_miesto`),
  ADD KEY `id_kelio` (`id_kelio`);

--
-- Indexes for table `lankyt_vietos`
--
ALTER TABLE `lankyt_vietos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_miesto` (`id_miesto`);

--
-- Indexes for table `miestai`
--
ALTER TABLE `miestai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `miestai_atstumai`
--
ALTER TABLE `miestai_atstumai`
  ADD KEY `id_miesto1` (`id_miesto1`),
  ADD KEY `id_miesto2` (`id_miesto2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ist_ivykiai`
--
ALTER TABLE `ist_ivykiai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `keliai`
--
ALTER TABLE `keliai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lankyt_vietos`
--
ALTER TABLE `lankyt_vietos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `miestai`
--
ALTER TABLE `miestai`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Apribojimai eksportuotom lentelėm
--

--
-- Apribojimai lentelei `keliai`
--
ALTER TABLE `keliai`
  ADD CONSTRAINT `keliai_ibfk_1` FOREIGN KEY (`id_prad_miesto`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `keliai_ibfk_2` FOREIGN KEY (`id_gal_miesto`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE;

--
-- Apribojimai lentelei `keliai_miestai`
--
ALTER TABLE `keliai_miestai`
  ADD CONSTRAINT `id_kelio` FOREIGN KEY (`id_kelio`) REFERENCES `keliai` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `id_miesto` FOREIGN KEY (`id_miesto`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE;

--
-- Apribojimai lentelei `lankyt_vietos`
--
ALTER TABLE `lankyt_vietos`
  ADD CONSTRAINT `lankyt_vietos_ibfk_1` FOREIGN KEY (`id_miesto`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE;

--
-- Apribojimai lentelei `miestai_atstumai`
--
ALTER TABLE `miestai_atstumai`
  ADD CONSTRAINT `miestai_atstumai_ibfk_1` FOREIGN KEY (`id_miesto1`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `miestai_atstumai_ibfk_2` FOREIGN KEY (`id_miesto2`) REFERENCES `miestai` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
