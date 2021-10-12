-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Počítač: 127.0.0.1
-- Vytvořeno: Úte 12. říj 2021, 14:11
-- Verze serveru: 10.4.21-MariaDB
-- Verze PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Databáze: `zaoralek_music`
--
CREATE DATABASE IF NOT EXISTS `zaoralek_music` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_czech_ci;
USE `zaoralek_music`;

-- --------------------------------------------------------

--
-- Struktura tabulky `authors`
--

CREATE TABLE `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `created` date NOT NULL,
  `end` date DEFAULT NULL,
  `bio` text COLLATE utf8mb4_czech_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `authors`
--

INSERT INTO `authors` (`id`, `name`, `created`, `end`, `bio`, `image`) VALUES
(1, 'Slipknot', '1993-01-01', '0000-00-00', NULL, NULL),
(2, 'Slipknot', '1993-01-01', NULL, NULL, NULL),
(3, 'Childish Gambino', '2000-01-04', NULL, NULL, NULL),
(4, 'BTS', '2013-01-01', NULL, NULL, NULL),
(5, 'Lukas Kril', '2002-01-01', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktura tabulky `genres`
--

CREATE TABLE `genres` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `genres`
--

INSERT INTO `genres` (`id`, `name`) VALUES
(1, 'nu-meta'),
(2, 'metalcore'),
(3, 'pop'),
(4, 'rap'),
(5, 'K-pop'),
(6, 'Rap'),
(7, 'Rap'),
(8, 'love songs');

-- --------------------------------------------------------

--
-- Struktura tabulky `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `id_author` int(11) NOT NULL,
  `id_genre` int(11) NOT NULL,
  `duration` time NOT NULL DEFAULT '00:00:00',
  `name` varchar(255) COLLATE utf8mb4_czech_ci NOT NULL,
  `year` int(4) DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_czech_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_czech_ci;

--
-- Vypisuji data pro tabulku `songs`
--

INSERT INTO `songs` (`id`, `id_author`, `id_genre`, `duration`, `name`, `year`, `file`) VALUES
(1, 2, 1, '00:00:00', 'Spit it Out', 1999, 'https://www.youtube.com/watch?v=ZPUZwriSX4M'),
(2, 3, 3, '00:00:00', 'this is america', 2018, NULL),
(3, 4, 5, '00:00:00', 'Dynamite', NULL, NULL),
(4, 4, 5, '00:00:00', 'Butter', NULL, NULL),
(5, 3, 4, '00:00:00', 'Bonfire', NULL, NULL),
(6, 5, 8, '00:00:00', 'Ledový srdce', NULL, NULL),
(7, 5, 7, '00:00:00', 'Liberecká verbeš', NULL, NULL);

--
-- Indexy pro exportované tabulky
--

--
-- Indexy pro tabulku `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

--
-- Indexy pro tabulku `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_author` (`id_author`),
  ADD KEY `id_genre` (`id_genre`);

--
-- AUTO_INCREMENT pro tabulky
--

--
-- AUTO_INCREMENT pro tabulku `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pro tabulku `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pro tabulku `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Omezení pro exportované tabulky
--

--
-- Omezení pro tabulku `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`id_author`) REFERENCES `authors` (`id`),
  ADD CONSTRAINT `songs_ibfk_2` FOREIGN KEY (`id_genre`) REFERENCES `genres` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
