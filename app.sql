-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2019 at 08:25 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `app`
--

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint(20) NOT NULL,
  `migration_name` varchar(100) DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stuffs`
--

CREATE TABLE `stuffs` (
  `id` int(55) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` varchar(10000) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stuffs`
--

INSERT INTO `stuffs` (`id`, `title`, `content`, `created`, `modified`) VALUES
(44, 'Second edited', 'Moon provides the best linkage to Earth’s early history. It offers an undisturbed historical record of the inner Solar system environment. Though there are a few mature models, further explanations were needed to understand the origin of the Moon. Extensive mapping of lunar surface to study variations in lunar surface were essential to trace back the origin and evolution of the Moon. Evidence for water molecules discovered by Chandrayaan-1, required further studies on the extent of water molecule distribution on the surface, below the surface and in the tenous lunar exosphere to address the origin of water on Moon.', '2019-10-11 08:22:49', '2019-10-11 08:22:49'),
(45, 'Third', 'The Lunar South pole is especially interesting because of the lunar surface area that remains in shadow is much larger than that at the North Pole. There could be a possibility of presence of water in permanently shadowed areas around it. In addition, South Pole region has craters that are cold traps and contain a fossil record of the early Solar System.   ', '2019-10-11 08:23:06', '2019-10-11 08:23:06'),
(47, 'check time if', 'The Moon is the closest cosmic body at which space discovery can be attempted and documented. It is also a promising test bed to demonstrate technologies required for deep-space missions. Chandrayaan-2 aims for enhancing our understanding of the Moon, stimulate the advancement of technology, promote global alliances and inspire a future generation of explorers and scientists.', '2019-10-11 11:59:41', '2019-10-11 12:01:40'),
(48, 'last edited', 'Moon provides the best linkage to Earth’s early history. It offers an undisturbed historical record of the inner Solar system environment. Though there are a few mature models, further explanations were needed to understand the origin of the Moon. Extensive mapping of lunar surface to study variations in lunar surface were essential to trace back the origin and evolution of the Moon. Evidence for water molecules discovered by Chandrayaan-1, required further studies on the extent of water molecule distribution on the surface, below the surface and in the tenous lunar exosphere to address the origin of water on Moon.  The Lunar South pole is especially interesting because of the lunar surface area that remains in shadow is much larger than that at the North Pole. There could be a possibility of presence of water in permanently shadowed areas around it. In addition, South Pole region has craters that are cold traps and contain a fossil record of the early Solar System.', '2019-10-16 06:03:09', '2019-10-16 06:03:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(55) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `modified`) VALUES
(1, '123', '123', '2019-10-11 13:19:54', '2019-10-11 13:19:54'),
(2, 'abc', 'abc', '2019-10-11 13:20:22', '2019-10-11 13:20:22'),
(5, 'xyz', '$2y$10$fr.GyPHiCRf.NtWGVjiTdusgS1wxV4Hbed5pW8Jorare5nwYTuixy', '2019-10-12 04:26:55', '2019-10-12 04:26:55'),
(6, 'ooo', '$2y$10$p9qqFxAhXZZr8ufyUaKThepJZjuCR0R3hKIdzWwGhgpOn00v70SZe', '2019-10-12 04:33:54', '2019-10-12 04:33:54'),
(7, '', '', '2019-10-13 08:35:58', '2019-10-13 08:35:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `stuffs`
--
ALTER TABLE `stuffs`
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
-- AUTO_INCREMENT for table `stuffs`
--
ALTER TABLE `stuffs`
  MODIFY `id` int(55) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(55) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
