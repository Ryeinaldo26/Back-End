-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 10:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datauas`
--

-- --------------------------------------------------------

--
-- Table structure for table `gamelist`
--

CREATE TABLE `gamelist` (
  `id` int(11) NOT NULL,
  `game_name` varchar(255) NOT NULL,
  `Popularity` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamelist`
--

INSERT INTO `gamelist` (`id`, `game_name`, `Popularity`) VALUES
(1, 'Mobile Legends : Bang Bang', 10),
(2, 'Free Fire', 10),
(3, 'Call Of Duty Mobile', 0),
(4, 'Stumble Guys', 0),
(5, 'Genshin Impact', 10),
(6, 'Honkai Impact', 0),
(7, 'Apex Legends Mobile', 0),
(8, 'Valorant', 10),
(9, 'STEAM Voucher', 0),
(10, 'Google Play Voucher', 0),
(11, 'League Of Legends', 0),
(12, 'League Of Legends : Wild Rift', 0),
(13, 'Arena Of Valor', 0),
(14, 'Player Unknown Battleground', 10),
(15, 'Bigo Live', 0);

-- --------------------------------------------------------

--
-- Table structure for table `mobile legends`
--

CREATE TABLE `mobile legends` (
  `id` int(11) NOT NULL,
  `product_name` int(11) NOT NULL,
  `product_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `password` varchar(55) NOT NULL,
  `active` tinyint(4) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `active`, `createdAt`, `updatedAt`) VALUES
(1, 'AlvinAHA', 'Halleluya', 1, '2023-01-27 08:01:39', '2023-01-27 08:01:39'),
(2, 'RezaAHA', 'Alhamdullilah', 1, '2023-01-27 08:03:32', '2023-01-27 08:03:32'),
(3, 'BastianAHA', 'Halleluya', 1, '2023-01-27 08:04:11', '2023-01-27 08:04:11'),
(4, 'RyeinaldoAHA', 'Amitabha', 1, '2023-01-27 08:04:39', '2023-01-27 08:04:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gamelist`
--
ALTER TABLE `gamelist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gamelist`
--
ALTER TABLE `gamelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
