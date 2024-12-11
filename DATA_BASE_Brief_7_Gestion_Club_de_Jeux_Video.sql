-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2024 at 11:32 PM
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
-- Database: `club_jeuxs`
--

-- --------------------------------------------------------

--
-- Table structure for table `abonnements`
--

CREATE TABLE `abonnements` (
  `id` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_fin` date DEFAULT NULL,
  `membre_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `abonnements`
--

INSERT INTO `abonnements` (`id`, `date_start`, `date_fin`, `membre_id`) VALUES
(1, '2024-01-01', '2024-12-31', 1),
(2, '2024-02-01', '2024-08-01', 2),
(3, '2024-03-15', '2024-09-15', 3),
(4, '2024-04-01', '2024-10-01', 4),
(5, '2024-05-01', '2025-05-01', 5),
(6, '2024-06-01', '2024-12-31', 6),
(7, '2024-07-01', '2025-01-01', 7),
(8, '2024-08-15', '2025-02-15', 8),
(9, '2024-09-01', '2025-03-01', 9),
(10, '2024-10-01', '2025-04-01', 10);

-- --------------------------------------------------------

--
-- Table structure for table `emprunts`
--

CREATE TABLE `emprunts` (
  `emprunte_id` int(11) NOT NULL,
  `date_start` date DEFAULT NULL,
  `date_retour_pre` date DEFAULT NULL,
  `date_retour_ree` date DEFAULT NULL,
  `membre_id` int(11) DEFAULT NULL,
  `jeux_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emprunts`
--

INSERT INTO `emprunts` (`emprunte_id`, `date_start`, `date_retour_pre`, `date_retour_ree`, `membre_id`, `jeux_id`) VALUES
(1, '2024-11-01', '2024-11-15', '2024-11-14', 1, 1),
(2, '2024-11-02', '2024-11-16', '2024-11-17', 2, 2),
(3, '2024-11-03', '2024-11-17', '2024-11-19', 3, 3),
(4, '2024-11-04', '2024-11-18', '2024-11-18', 4, 4),
(5, '2024-11-05', '2024-11-19', '2024-11-20', 5, 5),
(6, '2024-11-06', '2024-11-20', '2024-11-21', 6, 6),
(7, '2024-11-07', '2024-11-21', '2024-11-21', 7, 7),
(8, '2024-11-08', '2024-11-22', '2024-11-23', 8, 8),
(9, '2024-11-09', '2024-11-23', '2024-11-24', 9, 9),
(10, '2024-11-10', '2024-11-24', '2024-11-25', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `jeuxs`
--

CREATE TABLE `jeuxs` (
  `jeux_id` int(11) NOT NULL,
  `titre` varchar(100) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `studioDev` varchar(50) DEFAULT NULL,
  `annee_sortie` date DEFAULT NULL,
  `multijoueur` enum('oui','non') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jeuxs`
--

INSERT INTO `jeuxs` (`jeux_id`, `titre`, `genre`, `studioDev`, `annee_sortie`, `multijoueur`) VALUES
(1, 'PES2025', 'sport', 'morococco studio dev', '2025-01-01', 'oui'),
(2, 'GTA5', 'action-adventure', 'Rockstar Games', '2023-02-01', 'non'),
(3, 'The Witcher 3', 'role-playing', 'CD Projekt Red', '2023-02-01', 'oui'),
(4, 'Minecraft', 'sandbox', 'Mojang Studios', '2023-02-01', 'oui'),
(5, 'FIFA 2025', 'sport', 'EA Sports', '2023-02-01', 'non'),
(6, 'Call of Duty: Modern Warfare', 'shooter', 'Infinity Ward', '2023-02-01', 'oui'),
(7, 'Elden Ring', 'action role-playing', 'FromSoftware', '2023-02-01', 'non'),
(8, 'Fortnite', 'battle royale', 'Epic Games', '2023-02-01', 'oui'),
(9, 'Among Us', 'party', 'InnerSloth', '2023-02-01', 'non'),
(10, 'Cyberpunk 2077', 'open-world RPG', 'CD Projekt Red', '2023-02-01', 'oui');

-- --------------------------------------------------------

--
-- Table structure for table `membres`
--

CREATE TABLE `membres` (
  `membre_id` int(11) NOT NULL,
  `pseudo` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `date_dinscription` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membres`
--

INSERT INTO `membres` (`membre_id`, `pseudo`, `Email`, `date_dinscription`) VALUES
(1, 'ALIENS', 'hamzasaaf725@gmil.com', '2024-12-25'),
(2, 'STARLORD', 'peterquill2024@space.com', '2024-12-20'),
(3, 'GAMERPRO', 'gamerpro99@gmail.com', '2024-12-22'),
(4, 'MAVERICK', 'topgunpilot@maverick.com', '2024-12-21'),
(5, 'NIGHTOWL', 'nightowl@hotmail.com', '2024-12-23'),
(6, 'HACKER123', 'cyberking@securemail.com', '2024-12-24'),
(7, 'JEDI42', 'forcepower@galaxy.net', '2024-12-26'),
(8, 'IRONCLAD', 'ironshield@yahoo.com', '2024-12-27'),
(9, 'PIXELART', 'artist@designs.com', '2024-12-28'),
(10, 'WONDERKID', 'futurestar@world.net', '2024-12-29');

-- --------------------------------------------------------

--
-- Table structure for table `participer`
--

CREATE TABLE `participer` (
  `participer_id` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `range_final` int(11) DEFAULT NULL,
  `membre_idp` int(11) DEFAULT NULL,
  `tournoi_idp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `participer`
--

INSERT INTO `participer` (`participer_id`, `score`, `range_final`, `membre_idp`, `tournoi_idp`) VALUES
(2, 75, 2, 2, 2),
(3, 60, 3, 3, 3),
(4, 95, 1, 4, 4),
(5, 70, 2, 5, 5),
(6, 50, 5, 6, 6),
(7, 80, 3, 7, 7),
(8, 65, 4, 8, 8),
(9, 90, 1, 9, 9),
(10, 55, 6, 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tournoi`
--

CREATE TABLE `tournoi` (
  `touroi_id` int(11) NOT NULL,
  `nom` varchar(50) DEFAULT NULL,
  `date_tour` varchar(50) DEFAULT NULL,
  `recompense` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tournoi`
--

INSERT INTO `tournoi` (`touroi_id`, `nom`, `date_tour`, `recompense`) VALUES
(1, 'tournoi_1', '2024-12-01', 'book'),
(2, 'tournoi_2', '2024-12-05', 'medal'),
(3, 'tournoi_3', '2024-12-10', 'cash prize'),
(4, 'tournoi_4', '2024-12-15', 'gift card'),
(5, 'tournoi_5', '2024-12-20', 'trophy'),
(6, 'tournoi_6', '2024-12-22', 'subscription'),
(7, 'tournoi_7', '2024-12-25', 'gaming headset'),
(8, 'tournoi_8', '2024-12-27', 'console'),
(9, 'tournoi_9', '2024-12-29', 'exclusive badge'),
(10, 'tournoi_10', '2024-12-31', 'custom avatar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abonnements`
--
ALTER TABLE `abonnements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membre_id` (`membre_id`);

--
-- Indexes for table `emprunts`
--
ALTER TABLE `emprunts`
  ADD PRIMARY KEY (`emprunte_id`),
  ADD KEY `membre_id` (`membre_id`),
  ADD KEY `jeux_id` (`jeux_id`);

--
-- Indexes for table `jeuxs`
--
ALTER TABLE `jeuxs`
  ADD PRIMARY KEY (`jeux_id`);

--
-- Indexes for table `membres`
--
ALTER TABLE `membres`
  ADD PRIMARY KEY (`membre_id`);

--
-- Indexes for table `participer`
--
ALTER TABLE `participer`
  ADD PRIMARY KEY (`participer_id`),
  ADD KEY `membre_idp` (`membre_idp`),
  ADD KEY `tournoi_idp` (`tournoi_idp`);

--
-- Indexes for table `tournoi`
--
ALTER TABLE `tournoi`
  ADD PRIMARY KEY (`touroi_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abonnements`
--
ALTER TABLE `abonnements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `emprunts`
--
ALTER TABLE `emprunts`
  MODIFY `emprunte_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jeuxs`
--
ALTER TABLE `jeuxs`
  MODIFY `jeux_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `membres`
--
ALTER TABLE `membres`
  MODIFY `membre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `participer`
--
ALTER TABLE `participer`
  MODIFY `participer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tournoi`
--
ALTER TABLE `tournoi`
  MODIFY `touroi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abonnements`
--
ALTER TABLE `abonnements`
  ADD CONSTRAINT `abonnements_ibfk_1` FOREIGN KEY (`membre_id`) REFERENCES `membres` (`membre_id`);

--
-- Constraints for table `emprunts`
--
ALTER TABLE `emprunts`
  ADD CONSTRAINT `emprunts_ibfk_1` FOREIGN KEY (`membre_id`) REFERENCES `membres` (`membre_id`),
  ADD CONSTRAINT `emprunts_ibfk_2` FOREIGN KEY (`jeux_id`) REFERENCES `jeuxs` (`jeux_id`);

--
-- Constraints for table `participer`
--
ALTER TABLE `participer`
  ADD CONSTRAINT `participer_ibfk_1` FOREIGN KEY (`membre_idp`) REFERENCES `membres` (`membre_id`),
  ADD CONSTRAINT `participer_ibfk_2` FOREIGN KEY (`tournoi_idp`) REFERENCES `tournoi` (`touroi_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
