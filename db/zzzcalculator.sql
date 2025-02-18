-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 12-Fev-2025 às 00:28
-- Versão do servidor: 11.5.2-MariaDB
-- versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `zzz_calculator`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agentinfo`
--

CREATE TABLE `agentinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `tier` enum('A','S') DEFAULT NULL,
  `faction_id` int(11) DEFAULT NULL,
  `element_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `stats_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `agentinfo`
--

INSERT INTO `agentinfo` (`id`, `name`, `nickname`, `tier`, `faction_id`, `element_id`, `type_id`, `stats_id`) VALUES
(1, 'Hoshimi Miyabi', 'Miyabi', 'S', 7, 6, 1, 1),
(2, 'Nicole Demara', 'Nicole', 'A', 1, 5, 3, 2),
(3, 'Anby Demara', 'Anby', 'A', 1, 2, 5, 3),
(4, 'Astra Yao', 'Astra', 'S', 8, 5, 3, 4),
(5, 'Ellen Joe', 'Ellen', 'S', 3, 4, 2, 5),
(6, 'Ben Bigger', 'Ben', 'A', 2, 3, 4, 6),
(7, 'Jane Doe', 'Jane', 'S', 5, 1, 1, 7),
(8, 'Luciana de Montefio', 'Lucy', 'A', 6, 3, 3, 8),
(13, 'Billy Kid', 'Billy', 'A', 1, 1, 2, 16),
(14, 'Burnice White', 'Burnice', 'S', 6, 3, 1, 17),
(15, 'Caesar King', 'Caesar', 'S', 6, 1, 4, 18),
(16, 'Corin Wickes', 'Corin', 'A', 3, 1, 2, 19),
(17, 'Grace Howard', 'Grace', 'S', 2, 2, 1, 20),
(18, 'Koleda Belobog', 'Koleda', 'S', 2, 3, 5, 22),
(19, 'Lighter', 'Lighter', 'S', 6, 3, 5, 23),
(20, 'Von Lycaon', 'Lycaon', 'S', 3, 4, 5, 24),
(21, 'Nekomiya Mana', 'Nekomata', 'S', 1, 1, 2, 25),
(22, 'Piper Wheel', 'Piper', 'A', 6, 1, 1, 26),
(23, 'Qingyi', 'Qingyi', 'S', 5, 2, 5, 27),
(24, 'Alexandrina Sebastiane', 'Rina', 'S', 3, 2, 3, 28),
(25, 'Seth Lowell', 'Seth', 'A', 5, 2, 4, 29),
(26, 'Soldier 11', 'Soldier 11', 'S', 4, 3, 2, 30),
(27, 'Soukaku', 'Soukaku', 'A', 7, 4, 3, 31),
(28, 'Tsukushiro Yanagi', 'Yanagi', 'S', 7, 2, 1, 32),
(29, 'Zhu Yuan', 'Zhu Yuan', 'S', 5, 5, 2, 33),
(30, 'Asaba Harumasa', 'Harumasa', 'S', 7, 2, 2, 34);

-- --------------------------------------------------------

--
-- Estrutura stand-in para vista `agents`
-- (Veja abaixo para a view atual)
--
CREATE TABLE `agents` (
`id` int(11)
,`name` varchar(255)
,`nickname` varchar(255)
,`tier` enum('A','S')
,`faction` varchar(255)
,`element` varchar(255)
,`type` varchar(255)
,`health_point` int(11)
,`attack` int(11)
,`defense` int(11)
,`impact` int(11)
,`crit_rate` float
,`crit_damage` float
,`anomaly_mastery` int(11)
,`anomaly_proficiency` int(11)
,`penetration_ratio` float
,`penetration` float
,`energy_regen` float
);

-- --------------------------------------------------------

--
-- Estrutura da tabela `agentstats`
--

CREATE TABLE `agentstats` (
  `id` int(11) NOT NULL,
  `health_point` int(11) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` int(11) DEFAULT NULL,
  `impact` int(11) DEFAULT NULL,
  `crit_rate` float DEFAULT NULL,
  `crit_damage` float DEFAULT NULL,
  `anomaly_mastery` int(11) DEFAULT NULL,
  `anomaly_proficiency` int(11) DEFAULT NULL,
  `penetration_ratio` float DEFAULT NULL,
  `penetration` float DEFAULT NULL,
  `energy_regen` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `agentstats`
--

INSERT INTO `agentstats` (`id`, `health_point`, `attack`, `defense`, `impact`, `crit_rate`, `crit_damage`, `anomaly_mastery`, `anomaly_proficiency`, `penetration_ratio`, `penetration`, `energy_regen`) VALUES
(1, 7673, 880, 606, 86, 5, 50, 116, 180, 0, 0, 1.2),
(2, 8146, 649, 623, 88, 5, 50, 88, 90, 0, 0, 1.56),
(3, 7501, 613, 659, 136, 5, 50, 93, 90, 0, 0, 1.2),
(4, 8609, 715, 600, 83, 5, 50, 93, 90, 0, 0, 1.56),
(5, 7674, 938, 607, 93, 19.4, 50, 93, 90, 0, 0, 1.2),
(6, 8578, 653, 724, 95, 5, 50, 90, 90, 0, 0, 1.56),
(7, 7789, 881, 601, 86, 5, 50, 150, 90, 0, 0, 1.2),
(8, 8026, 659, 613, 86, 5, 50, 93, 90, 0, 0, 1.56),
(16, 6907, 787, 607, 91, 5, 50, 91, 90, 0, 0, 1.2),
(17, 7368, 863, 601, 83, 5, 20, 118, 90, 0, 0, 1.56),
(18, 9526, 712, 754, 123, 5, 50, 87, 90, 0, 0, 1.2),
(19, 6977, 807, 605, 93, 5, 78.8, 96, 90, 0, 0, 1.2),
(20, 7483, 826, 601, 83, 5, 50, 152, 90, 0, 0, 1.2),
(21, 7405, 915, 600, 90, 19.4, 50, 80, 90, 0, 0, 1.2),
(22, 8127, 736, 595, 134, 5, 50, 96, 90, 0, 0, 1.2),
(23, 8253, 797, 612, 137, 5, 50, 91, 90, 0, 0, 1.2),
(24, 8416, 729, 607, 137, 5, 50, 90, 90, 0, 0, 1.2),
(25, 7560, 911, 588, 92, 19.4, 50, 96, 90, 0, 0, 1.2),
(26, 6977, 758, 613, 86, 5, 50, 116, 90, 0, 0, 1.56),
(27, 8251, 758, 613, 136, 5, 50, 94, 90, 0, 0, 1.2),
(28, 8609, 717, 601, 83, 5, 50, 92, 90, 14.4, 0, 1.2),
(29, 8701, 643, 746, 94, 5, 50, 90, 90, 0, 0, 1.56),
(30, 7674, 889, 613, 93, 19.4, 50, 93, 90, 0, 0, 1.2),
(31, 8026, 666, 598, 86, 5, 50, 96, 90, 0, 0, 1.56),
(32, 7789, 873, 613, 86, 5, 50, 148, 90, 0, 0, 1.2),
(33, 7483, 919, 601, 90, 5, 78.8, 92, 90, 0, 0, 1.2),
(34, 7405, 915, 600, 90, 19.4, 50, 80, 90, 0, 0, 1.2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `basestatsname`
--

CREATE TABLE `basestatsname` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` enum('Flat','Percentage') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `basestatsname`
--

INSERT INTO `basestatsname` (`id`, `name`, `type`) VALUES
(1, 'HP', 'Flat'),
(2, 'HP', 'Percentage'),
(3, 'ATK', 'Flat'),
(4, 'ATK', 'Percentage'),
(5, 'DEF', 'Flat'),
(6, 'DEF', 'Percentage'),
(7, 'CRIT Rate', 'Percentage'),
(8, 'CRIT DMG', 'Percentage'),
(9, 'Anomaly Proficiency', 'Flat'),
(10, 'Anomaly Mastery', 'Flat'),
(11, 'Anomaly Mastery', 'Percentage'),
(12, 'PEN', 'Flat'),
(13, 'PEN Ratio', 'Percentage'),
(14, 'Impact', 'Flat'),
(15, 'Impact', 'Percentage'),
(16, 'Energy Regen', 'Flat'),
(17, 'Energy Regen', 'Percentage'),
(18, 'Physical Damage', 'Percentage'),
(19, 'Eletric Damage', 'Percentage'),
(20, 'Fire Damage', 'Percentage'),
(21, 'Ice Damage', 'Percentage'),
(22, 'Ether Damage', 'Percentage');

-- --------------------------------------------------------

--
-- Estrutura da tabela `constantmainstat`
--

CREATE TABLE `constantmainstat` (
  `id` int(11) NOT NULL,
  `statname_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `constantmainstat`
--

INSERT INTO `constantmainstat` (`id`, `statname_id`, `value`) VALUES
(1, 1, 2200),
(2, 3, 316),
(3, 5, 184),
(4, 4, 30),
(5, 2, 30),
(6, 6, 30),
(7, 7, 24),
(8, 8, 48),
(9, 9, 30),
(10, 13, 24),
(11, 11, 30),
(12, 15, 18),
(13, 17, 60),
(14, 18, 30),
(15, 19, 30),
(16, 20, 30),
(17, 21, 30),
(18, 22, 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `constantsubstat`
--

CREATE TABLE `constantsubstat` (
  `id` int(11) NOT NULL,
  `statname_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `constantsubstat`
--

INSERT INTO `constantsubstat` (`id`, `statname_id`, `value`) VALUES
(1, 1, 112),
(2, 3, 19),
(3, 5, 15),
(4, 4, 3),
(5, 2, 3),
(6, 6, 4.8),
(7, 7, 2.4),
(8, 8, 4.8),
(9, 9, 9),
(10, 12, 9);

-- --------------------------------------------------------

--
-- Estrutura da tabela `discs`
--

CREATE TABLE `discs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `passive_stat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `discs`
--

INSERT INTO `discs` (`id`, `name`, `passive_stat_id`) VALUES
(1, 'Branch & Blade Song', 1),
(2, 'Astral Voice', 2),
(3, 'Chaos Jazz', 3),
(4, 'Chaotic Metal', 4),
(5, 'Fanged Metal', 5),
(6, 'Swing Jazz', 6),
(7, 'Puffer Electro', 7),
(8, 'Woodpecker Electro', 8),
(9, 'Shockstar Disco', 9),
(10, 'Freedom Blues', 10),
(11, 'Hormone Punk', 11),
(12, 'Soul Rock', 12),
(13, 'Inferno Metal', 13),
(14, 'Thunder Metal', 14),
(15, 'Polar Metal', 15);

-- --------------------------------------------------------

--
-- Estrutura da tabela `element`
--

CREATE TABLE `element` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `element`
--

INSERT INTO `element` (`id`, `name`) VALUES
(1, 'Physical'),
(2, 'Eletric'),
(3, 'Fire'),
(4, 'Ice'),
(5, 'Ether'),
(6, 'Frost');

-- --------------------------------------------------------

--
-- Estrutura da tabela `faction`
--

CREATE TABLE `faction` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `faction`
--

INSERT INTO `faction` (`id`, `name`) VALUES
(1, 'Cunning Hares'),
(2, 'Belobog Heavy Industries'),
(3, 'Victoria Housekeeping Co.'),
(4, 'Obol Squad'),
(5, 'Criminal Investigation Special Response Team'),
(6, 'Sons of Calydon'),
(7, 'Hollow Special Operations Section 6'),
(8, 'Stars of Lyra');

-- --------------------------------------------------------

--
-- Estrutura da tabela `passivestat`
--

CREATE TABLE `passivestat` (
  `id` int(11) NOT NULL,
  `statname_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `passivestat`
--

INSERT INTO `passivestat` (`id`, `statname_id`, `value`) VALUES
(1, 8, 16),
(2, 4, 10),
(3, 9, 30),
(4, 22, 10),
(5, 18, 10),
(6, 17, 20),
(7, 13, 8),
(8, 7, 8),
(9, 15, 8),
(10, 9, 30),
(11, 4, 10),
(12, 6, 16),
(13, 20, 10),
(14, 19, 10),
(15, 21, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `possiblepositionstat`
--

CREATE TABLE `possiblepositionstat` (
  `id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `statname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `possiblepositionstat`
--

INSERT INTO `possiblepositionstat` (`id`, `position`, `statname_id`) VALUES
(1, 1, 1),
(2, 2, 3),
(3, 3, 5),
(4, 4, 2),
(5, 4, 4),
(6, 4, 6),
(7, 4, 7),
(8, 4, 8),
(9, 4, 9),
(10, 5, 2),
(11, 5, 4),
(12, 5, 6),
(13, 5, 13),
(14, 5, 18),
(15, 5, 19),
(16, 5, 20),
(17, 5, 21),
(18, 5, 22),
(19, 6, 2),
(20, 6, 4),
(21, 6, 6),
(22, 6, 11),
(23, 6, 15),
(24, 6, 17);

-- --------------------------------------------------------

--
-- Estrutura da tabela `possiblesubstat`
--

CREATE TABLE `possiblesubstat` (
  `id` int(11) NOT NULL,
  `statname_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `possiblesubstat`
--

INSERT INTO `possiblesubstat` (`id`, `statname_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `type`
--

INSERT INTO `type` (`id`, `name`) VALUES
(1, 'Anomaly'),
(2, 'Attacker'),
(3, 'Support'),
(4, 'Defense'),
(5, 'Stunner');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wengine`
--

CREATE TABLE `wengine` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tier` enum('B','A','S') DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `stat_id` int(11) DEFAULT NULL,
  `substat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `wengine`
--

INSERT INTO `wengine` (`id`, `name`, `tier`, `type_id`, `stat_id`, `substat_id`) VALUES
(1, 'Hailstorm Shrine', 'S', 1, 1, 1),
(2, 'Deep Sea Visitor', 'S', 2, 2, 2),
(3, '[Lunar] Noviluna', 'B', 2, 3, 3),
(4, 'Bashful Demon', 'A', 3, 4, 4),
(5, 'Elegant Vanity', 'S', 3, 5, 5),
(6, 'Rainforest Gourmet', 'A', 1, 6, 6),
(7, 'Tusks of Fury', 'S', 4, 7, 7),
(8, 'Peacekeeper - Specialized', 'A', 4, 8, 8),
(9, 'Precious Fossilized Core', 'A', 5, 9, 9),
(10, 'Demara Battery Mark II', 'A', 5, 10, 10),
(11, 'Ice-Jade Teapot', 'S', 5, 11, 11),
(12, 'Unfettered Game Ball', 'A', 3, 12, 12),
(13, 'Kaboom the Cannon', 'A', 5, 13, 13),
(14, 'Flamemaker Shaker', 'S', 1, 14, 14),
(15, 'Fusion Compiler', 'S', 1, 15, 15),
(16, 'Sharpened Stinger', 'S', 1, 16, 16),
(17, 'Timeweaver', 'S', 1, 17, 17),
(18, 'Electro-Lip Gloss', 'A', 1, 18, 18),
(19, 'Roaring Ride', 'A', 1, 19, 19),
(20, 'Weeping Gemini', 'A', 1, 20, 20),
(21, '[Magnetic Storm] Alpha', 'B', 1, 21, 21),
(22, '[Magnetic Storm] Bravo', 'B', 1, 22, 22),
(23, '[Magnetic Storm] Charlie', 'B', 1, 23, 23),
(24, 'Gilded Blossom', 'A', 2, 24, 24),
(25, 'Housekeeper', 'A', 1, 25, 25),
(26, 'Marcato Desire', 'A', 2, 26, 26),
(28, 'Starlight Engine', 'A', 2, 27, 27),
(29, 'Starlight Engine Replica', 'A', 2, 28, 28),
(30, 'Street Superstar', 'A', 2, 29, 29),
(31, '[Lunar] Decrescent', 'B', 2, 30, 30),
(32, '[Lunar] Pleniluna', 'B', 2, 31, 31),
(33, 'Riot Suppressor Mark VI', 'S', 2, 32, 32),
(34, 'Steel Cushion', 'S', 2, 33, 33),
(35, 'The Brimstone', 'S', 2, 34, 34),
(36, 'Zanshin Herb Case', 'S', 2, 35, 35),
(37, 'Cannon Rotor', 'A', 2, 36, 36),
(38, 'Drill Rig - Red Axis', 'A', 2, 37, 37),
(39, 'Big Cylinder', 'A', 4, 38, 38),
(40, 'Bunny Band', 'A', 4, 39, 39),
(41, 'Original Transmorpher', 'A', 4, 40, 40),
(42, 'Spring Embrace', 'A', 4, 41, 41),
(43, '[Identity] Base', 'B', 4, 42, 42),
(44, '[Identity] Inflection', 'B', 4, 43, 43),
(46, 'Hellfire Gears', 'S', 5, 45, 45),
(47, 'The Restrained', 'S', 5, 46, 46),
(48, 'Six Shooter', 'S', 5, 47, 47),
(49, 'Steam Oven', 'S', 5, 48, 48),
(50, '[Vortex] Arrow', 'B', 5, 49, 49),
(51, '[Vortex] Hatchet', 'B', 5, 50, 50),
(52, '[Vortex] Revolver', 'B', 5, 51, 51),
(53, 'Blazing Laurel', 'S', 5, 52, 52),
(54, 'Weeping Cradle', 'S', 3, 53, 53),
(55, 'Slice of Time', 'A', 3, 54, 54),
(56, 'The Vault', 'A', 3, 55, 55),
(57, '[Reverb] Mark I', 'B', 3, 56, 56),
(58, '[Reverb] Mark II', 'B', 3, 57, 57),
(59, '[Reverb] Mark III', 'B', 3, 58, 58);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wenginemainstats`
--

CREATE TABLE `wenginemainstats` (
  `id` int(11) NOT NULL,
  `statname_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `wenginemainstats`
--

INSERT INTO `wenginemainstats` (`id`, `statname_id`, `value`) VALUES
(1, 3, 743),
(2, 3, 713),
(3, 3, 475),
(4, 3, 624),
(5, 3, 713),
(6, 3, 594),
(7, 3, 713),
(8, 3, 624),
(9, 3, 594),
(10, 3, 624),
(11, 3, 713),
(12, 3, 594),
(13, 3, 624),
(14, 3, 713),
(15, 3, 684),
(16, 3, 713),
(17, 3, 713),
(18, 3, 594),
(19, 3, 624),
(20, 3, 594),
(21, 3, 475),
(22, 3, 475),
(23, 3, 475),
(24, 3, 594),
(25, 3, 624),
(26, 3, 594),
(27, 3, 594),
(28, 3, 624),
(29, 3, 594),
(30, 3, 475),
(31, 3, 475),
(32, 3, 713),
(33, 3, 684),
(34, 3, 684),
(35, 3, 713),
(36, 3, 594),
(37, 3, 624),
(38, 3, 624),
(39, 3, 594),
(40, 3, 594),
(41, 3, 594),
(42, 3, 475),
(43, 3, 475),
(45, 3, 684),
(46, 3, 684),
(47, 3, 594),
(48, 3, 594),
(49, 3, 475),
(50, 3, 475),
(51, 3, 475),
(52, 3, 713),
(53, 3, 684),
(54, 3, 594),
(55, 3, 624),
(56, 3, 475),
(57, 3, 475),
(58, 3, 475);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wenginesubstats`
--

CREATE TABLE `wenginesubstats` (
  `id` int(11) NOT NULL,
  `statname_id` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `wenginesubstats`
--

INSERT INTO `wenginesubstats` (`id`, `statname_id`, `value`) VALUES
(1, 7, 24),
(2, 7, 24),
(3, 7, 16),
(4, 4, 25),
(5, 4, 30),
(6, 9, 75),
(7, 15, 18),
(8, 4, 25),
(9, 15, 15),
(10, 15, 15),
(11, 15, 18),
(12, 17, 50),
(13, 17, 50),
(14, 4, 30),
(15, 13, 24),
(16, 9, 90),
(17, 4, 30),
(18, 9, 75),
(19, 4, 25),
(20, 4, 25),
(21, 4, 20),
(22, 9, 60),
(23, 13, 16),
(24, 4, 25),
(25, 4, 25),
(26, 7, 20),
(27, 4, 25),
(28, 4, 25),
(29, 4, 25),
(30, 4, 20),
(31, 4, 20),
(32, 8, 48),
(33, 7, 24),
(34, 4, 30),
(35, 8, 48),
(36, 7, 20),
(37, 17, 50),
(38, 6, 40),
(39, 6, 40),
(40, 2, 25),
(41, 4, 25),
(42, 6, 32),
(43, 6, 32),
(45, 15, 18),
(46, 15, 18),
(47, 15, 15),
(48, 17, 50),
(49, 15, 12),
(50, 17, 40),
(51, 4, 20),
(52, 15, 18),
(53, 13, 24),
(54, 13, 20),
(55, 17, 50),
(56, 4, 20),
(57, 17, 40),
(58, 2, 20);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wengine_agent`
--

CREATE TABLE `wengine_agent` (
  `id` int(11) NOT NULL,
  `wengine_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `wengine_agent`
--

INSERT INTO `wengine_agent` (`id`, `wengine_id`, `agent_id`) VALUES
(1, 1, 1),
(3, 2, 5),
(4, 4, 27),
(5, 5, 4),
(6, 11, 23),
(7, 10, 3),
(8, 8, 25),
(9, 7, 15),
(10, 13, 8);

-- --------------------------------------------------------

--
-- Estrutura para vista `agents`
--
DROP TABLE IF EXISTS `agents`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `agents`  AS SELECT `agentinfo`.`id` AS `id`, `agentinfo`.`name` AS `name`, `agentinfo`.`nickname` AS `nickname`, `agentinfo`.`tier` AS `tier`, `faction`.`name` AS `faction`, `element`.`name` AS `element`, `type`.`name` AS `type`, `agentstats`.`health_point` AS `health_point`, `agentstats`.`attack` AS `attack`, `agentstats`.`defense` AS `defense`, `agentstats`.`impact` AS `impact`, `agentstats`.`crit_rate` AS `crit_rate`, `agentstats`.`crit_damage` AS `crit_damage`, `agentstats`.`anomaly_mastery` AS `anomaly_mastery`, `agentstats`.`anomaly_proficiency` AS `anomaly_proficiency`, `agentstats`.`penetration_ratio` AS `penetration_ratio`, `agentstats`.`penetration` AS `penetration`, `agentstats`.`energy_regen` AS `energy_regen` FROM ((((`agentinfo` join `faction` on(`agentinfo`.`faction_id` = `faction`.`id`)) join `element` on(`agentinfo`.`element_id` = `element`.`id`)) join `type` on(`agentinfo`.`type_id` = `type`.`id`)) join `agentstats` on(`agentinfo`.`stats_id` = `agentstats`.`id`)) ORDER BY `agentinfo`.`tier` ASC ;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `agentinfo`
--
ALTER TABLE `agentinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `faction_id` (`faction_id`),
  ADD KEY `element_id` (`element_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `stats_id` (`stats_id`);

--
-- Índices para tabela `agentstats`
--
ALTER TABLE `agentstats`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `basestatsname`
--
ALTER TABLE `basestatsname`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `constantmainstat`
--
ALTER TABLE `constantmainstat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `constantsubstat`
--
ALTER TABLE `constantsubstat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `discs`
--
ALTER TABLE `discs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `passive_stat_id` (`passive_stat_id`);

--
-- Índices para tabela `element`
--
ALTER TABLE `element`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `faction`
--
ALTER TABLE `faction`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `passivestat`
--
ALTER TABLE `passivestat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `possiblepositionstat`
--
ALTER TABLE `possiblepositionstat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `possiblesubstat`
--
ALTER TABLE `possiblesubstat`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `wengine`
--
ALTER TABLE `wengine`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `stat_id` (`stat_id`),
  ADD KEY `substat_id` (`substat_id`);

--
-- Índices para tabela `wenginemainstats`
--
ALTER TABLE `wenginemainstats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `wenginesubstats`
--
ALTER TABLE `wenginesubstats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statname_id` (`statname_id`);

--
-- Índices para tabela `wengine_agent`
--
ALTER TABLE `wengine_agent`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wengine_id` (`wengine_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `agentinfo`
--
ALTER TABLE `agentinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de tabela `agentstats`
--
ALTER TABLE `agentstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de tabela `basestatsname`
--
ALTER TABLE `basestatsname`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `constantmainstat`
--
ALTER TABLE `constantmainstat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `constantsubstat`
--
ALTER TABLE `constantsubstat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `discs`
--
ALTER TABLE `discs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `element`
--
ALTER TABLE `element`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `faction`
--
ALTER TABLE `faction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `passivestat`
--
ALTER TABLE `passivestat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `possiblepositionstat`
--
ALTER TABLE `possiblepositionstat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `possiblesubstat`
--
ALTER TABLE `possiblesubstat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `wengine`
--
ALTER TABLE `wengine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `wenginemainstats`
--
ALTER TABLE `wenginemainstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `wenginesubstats`
--
ALTER TABLE `wenginesubstats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT de tabela `wengine_agent`
--
ALTER TABLE `wengine_agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `agentinfo`
--
ALTER TABLE `agentinfo`
  ADD CONSTRAINT `agentinfo_ibfk_1` FOREIGN KEY (`faction_id`) REFERENCES `faction` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agentinfo_ibfk_2` FOREIGN KEY (`element_id`) REFERENCES `element` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agentinfo_ibfk_3` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `agentinfo_ibfk_4` FOREIGN KEY (`stats_id`) REFERENCES `agentstats` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `constantmainstat`
--
ALTER TABLE `constantmainstat`
  ADD CONSTRAINT `constantmainstat_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `constantsubstat`
--
ALTER TABLE `constantsubstat`
  ADD CONSTRAINT `constantsubstat_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `discs`
--
ALTER TABLE `discs`
  ADD CONSTRAINT `discs_ibfk_1` FOREIGN KEY (`passive_stat_id`) REFERENCES `passivestat` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `passivestat`
--
ALTER TABLE `passivestat`
  ADD CONSTRAINT `passivestat_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `possiblepositionstat`
--
ALTER TABLE `possiblepositionstat`
  ADD CONSTRAINT `possiblepositionstat_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `possiblesubstat`
--
ALTER TABLE `possiblesubstat`
  ADD CONSTRAINT `possiblesubstat_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `wengine`
--
ALTER TABLE `wengine`
  ADD CONSTRAINT `wengine_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wengine_ibfk_2` FOREIGN KEY (`stat_id`) REFERENCES `wenginemainstats` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wengine_ibfk_3` FOREIGN KEY (`substat_id`) REFERENCES `wenginesubstats` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `wenginemainstats`
--
ALTER TABLE `wenginemainstats`
  ADD CONSTRAINT `wenginemainstats_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `wenginesubstats`
--
ALTER TABLE `wenginesubstats`
  ADD CONSTRAINT `wenginesubstats_ibfk_1` FOREIGN KEY (`statname_id`) REFERENCES `basestatsname` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `wengine_agent`
--
ALTER TABLE `wengine_agent`
  ADD CONSTRAINT `wengine_agent_ibfk_1` FOREIGN KEY (`wengine_id`) REFERENCES `wengine` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wengine_agent_ibfk_2` FOREIGN KEY (`agent_id`) REFERENCES `agentinfo` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
