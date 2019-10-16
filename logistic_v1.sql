-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 02, 2019 at 01:45 PM
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
-- Database: `logistic_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `location_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `order_id` int(10) DEFAULT NULL,
  `trailer` int(55) DEFAULT NULL,
  `inventory_status_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventories`
--

INSERT INTO `inventories` (`id`, `location_id`, `product_id`, `quantity`, `order_id`, `trailer`, `inventory_status_id`, `created`, `modified`) VALUES
(3, 0, 8, 5, 0, NULL, 2, '2019-09-24 12:36:03', '2019-09-23 09:36:26'),
(4, 0, 4, 12, 0, NULL, 3, '2019-09-24 12:36:08', '2019-09-23 09:53:19'),
(5, 0, 3, 22, 0, NULL, 3, '2019-09-24 12:36:10', '2019-09-23 09:54:21'),
(6, 0, 3, 26, 0, NULL, 2, '2019-09-24 12:36:18', '2019-09-23 12:37:40'),
(7, 0, 2, 98, 0, NULL, 0, '2019-09-24 09:14:09', '2019-09-24 09:14:09'),
(8, 0, 7, 9, 0, NULL, 0, '2019-09-24 09:14:41', '2019-09-24 09:14:41'),
(46, 35, 1, 19, 1, NULL, 2, '2019-10-01 16:49:03', '2019-10-01 16:49:03'),
(47, 35, 17, 4, NULL, NULL, 0, '2019-10-01 16:49:35', '2019-10-01 16:49:35'),
(48, 35, 4, 40, 1, NULL, 1, '2019-10-01 16:51:00', '2019-10-01 16:51:00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_statuses`
--

CREATE TABLE `inventory_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventory_statuses`
--

INSERT INTO `inventory_statuses` (`id`, `name`, `created`, `modified`) VALUES
(1, 'active', '2019-09-23 08:04:56', '2019-09-23 08:04:56'),
(2, 'in progress', '2019-09-23 08:05:05', '2019-09-23 08:05:05'),
(3, 'completed', '2019-09-23 08:05:13', '2019-09-23 08:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `location_number` varchar(10) DEFAULT NULL,
  `region_id` int(10) UNSIGNED NOT NULL,
  `trailer_bays` int(11) DEFAULT NULL,
  `location_type_id` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `address`, `city`, `state`, `zipcode`, `location_number`, `region_id`, `trailer_bays`, `location_type_id`, `created`, `modified`) VALUES
(35, 'sumit', 'none', 'nagpur', 'mah', '987656', '89765', 1, 67, 1, '2019-09-23 07:14:47', '2019-09-23 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `location_types`
--

CREATE TABLE `location_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_types`
--

INSERT INTO `location_types` (`id`, `name`, `created`, `modified`) VALUES
(1, 'store', '2019-08-17 06:53:54', NULL),
(2, 'Warehouse', '2019-08-17 06:53:57', NULL),
(3, 'ADC', '2019-08-17 06:54:02', NULL),
(4, 'add', '2019-09-19 08:21:34', '2019-09-19 08:21:34'),
(5, '', '2019-09-19 08:27:38', '2019-09-19 08:27:38'),
(6, '', '2019-09-19 08:29:11', '2019-09-19 08:29:11');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `has_child` tinyint(4) DEFAULT NULL,
  `display` int(4) DEFAULT NULL,
  `menu_order` int(10) DEFAULT NULL,
  `controller` varchar(50) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `lft`, `rght`, `parent_id`, `has_child`, `display`, `menu_order`, `controller`, `action`, `url`, `class`, `tag`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'Dashboard', 12, 12, 0, 1, 1, 1, '', '', '', '', '', '2017-02-23 08:40:29', '2017-02-23 08:40:29', 1, 1),
(2, 'Locations', 31, 31, NULL, 2, 1, 2, '', '', '', '', '', '2017-02-23 08:40:29', '2019-08-29 10:49:16', 1, 1),
(3, 'New Location', 12, 12, 2, 0, 1, 10, 'Locations', 'newLocation', '/locations/add', '', '', '2017-02-23 08:40:29', '2019-08-29 10:52:43', 1, 1),
(4, 'Location List', 12, 12, 2, 0, 1, 11, 'Locations', '', '/locations', '', '', '2017-02-23 08:40:29', '2019-08-29 10:57:11', 1, 1),
(5, 'New User', 33, 33, 7, 0, 1, 40, 'Users', 'newUser', '/users/add', '', '', '2017-03-16 12:19:58', '2019-09-06 07:58:27', 1, 1),
(6, 'List Of Users', 34, 34, 7, 0, 1, 43, 'Users', 'usersList', 'users', '', '', '2017-03-16 12:19:58', '2019-09-06 12:12:56', 1, 1),
(7, 'Users', 32, 35, NULL, 1, 0, 1, '', '', '/users', '', '', '2019-09-06 07:57:06', '2019-09-24 08:50:03', NULL, NULL),
(70, 'Trailers', 36, 39, NULL, 1, NULL, NULL, '', '', '', '', '', '2019-09-20 09:04:52', '2019-09-20 09:04:52', NULL, NULL),
(71, 'Add Trailers', 37, 38, 70, NULL, NULL, NULL, '', '', '/trailers/add', '', '', '2019-09-20 09:06:29', '2019-09-20 09:06:29', NULL, NULL),
(72, 'Inventories', 40, 43, NULL, 1, NULL, NULL, '', '', '', '', '', '2019-09-20 09:09:33', '2019-09-20 09:09:33', NULL, NULL),
(73, 'Inventories List', 41, 42, 72, NULL, NULL, NULL, '', '', '/inventories', '', '', '2019-09-20 09:10:08', '2019-09-20 09:10:08', NULL, NULL),
(74, 'Orders', 44, 49, NULL, 1, 0, NULL, '', '', '', '', '', '2019-09-23 07:20:44', '2019-09-23 07:20:44', NULL, NULL),
(75, 'Add Order', 45, 46, 74, NULL, NULL, NULL, '', '', '/orders/add', '', '', '2019-09-23 07:22:25', '2019-09-23 07:22:25', NULL, NULL),
(76, 'Orders List', 47, 48, 74, NULL, NULL, NULL, '', '', '/orders', '', '', '2019-09-23 07:23:01', '2019-09-23 07:23:01', NULL, NULL),
(77, 'Products', 50, 55, NULL, 1, NULL, NULL, '', '', '', '', '', '2019-09-23 07:24:52', '2019-09-23 07:24:52', NULL, NULL),
(78, 'Add products', 51, 52, 77, NULL, NULL, NULL, '', '', '/products/add', '', '', '2019-09-23 07:25:26', '2019-09-23 07:25:26', NULL, NULL),
(79, 'Products List', 53, 54, 77, NULL, NULL, NULL, '', '', '/products', '', '', '2019-09-23 07:26:19', '2019-09-23 07:26:19', NULL, NULL),
(80, 'Store', 56, 59, NULL, 1, NULL, NULL, '', '', '', '', '', '2019-09-26 12:20:19', '2019-09-26 12:27:31', NULL, NULL),
(81, 'Store Dashboard', 57, 58, 80, NULL, NULL, NULL, '', '', '/store', '', '', '2019-09-26 12:27:03', '2019-09-26 12:27:03', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus_types`
--

CREATE TABLE `menus_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `type_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus_types`
--

INSERT INTO `menus_types` (`id`, `menu_id`, `type_id`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(2, 9, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(3, 10, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(4, 11, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(8, 15, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(9, 16, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(10, 17, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(11, 18, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(12, 19, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(13, 20, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(14, 21, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(15, 22, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(16, 23, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(17, 24, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(18, 25, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(19, 26, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(20, 27, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(21, 28, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(22, 29, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(23, 30, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(24, 31, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(25, 32, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(26, 33, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(27, 34, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(28, 35, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(29, 36, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(30, 37, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(31, 38, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(32, 39, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(33, 40, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(36, 43, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(37, 44, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(38, 45, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(39, 46, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(40, 47, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(41, 48, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(42, 49, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(43, 50, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(44, 51, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(45, 52, 1, '2017-08-23 12:32:22', '2017-08-23 12:32:22', NULL, NULL),
(46, 59, 1, '2017-08-23 13:08:32', '2017-08-23 13:08:32', NULL, NULL),
(47, 60, 1, '2017-08-23 13:08:32', '2017-08-23 13:08:32', NULL, NULL),
(48, 61, 1, '2017-08-23 13:08:32', '2017-08-23 13:08:32', NULL, NULL),
(49, 62, 1, '2017-08-23 13:08:32', '2017-08-23 13:08:32', NULL, NULL),
(50, 63, 1, '2017-08-23 13:08:32', '2017-08-23 13:08:32', NULL, NULL),
(51, 1, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(60, 19, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(61, 24, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(62, 29, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(63, 34, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(64, 39, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(65, 40, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(68, 43, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(69, 49, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(70, 50, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(71, 51, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(72, 53, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(73, 54, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(74, 55, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(75, 56, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(76, 57, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(77, 58, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(78, 59, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(79, 64, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(80, 65, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(81, 66, 2, '2017-08-23 13:14:34', '2017-08-23 13:14:34', NULL, NULL),
(82, 1, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(91, 19, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(92, 24, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(93, 29, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(94, 34, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(95, 39, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(96, 40, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(99, 43, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(100, 49, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(101, 50, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(102, 51, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(103, 53, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(104, 54, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(105, 55, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(106, 56, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(107, 57, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(108, 58, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(109, 59, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(110, 64, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(111, 65, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(112, 66, 3, '2017-08-23 13:15:38', '2017-08-23 13:15:38', NULL, NULL),
(113, 1, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(114, 9, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(115, 10, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(116, 11, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(120, 15, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(121, 16, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(122, 17, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(123, 18, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(124, 19, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(125, 20, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(126, 21, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(127, 22, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(128, 23, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(129, 24, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(130, 25, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(131, 26, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(132, 27, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(133, 28, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(134, 29, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(135, 30, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(136, 31, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(137, 32, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(138, 33, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(139, 34, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(140, 35, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(141, 36, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(142, 37, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(143, 38, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(144, 39, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(145, 40, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(148, 43, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(149, 44, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(150, 45, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(151, 46, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(152, 47, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(153, 48, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(154, 49, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(155, 50, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(156, 51, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(157, 52, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(158, 59, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(159, 60, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(160, 61, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(161, 62, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(162, 63, 4, '2017-08-23 13:16:37', '2017-08-23 13:16:37', NULL, NULL),
(163, 67, 2, NULL, NULL, NULL, NULL),
(164, 67, 3, NULL, NULL, NULL, NULL),
(165, 68, 2, NULL, NULL, NULL, NULL),
(166, 68, 3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus_users`
--

CREATE TABLE `menus_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `modified_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `menus_users`
--

INSERT INTO `menus_users` (`id`, `menu_id`, `user_id`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(299, 2, 16, NULL, NULL, NULL, NULL),
(300, 3, 16, NULL, NULL, NULL, NULL),
(301, 4, 16, NULL, NULL, NULL, NULL),
(303, 5, 16, '2019-09-20 08:49:32', '2019-09-20 08:49:32', NULL, NULL),
(304, 6, 16, '2019-09-20 08:49:43', '2019-09-20 08:49:43', NULL, NULL),
(305, 7, 16, '2019-09-20 08:49:54', '2019-09-20 08:49:54', NULL, NULL),
(306, 70, 16, '2019-09-20 09:10:47', '2019-09-20 09:10:47', NULL, NULL),
(307, 71, 16, '2019-09-20 09:10:59', '2019-09-20 09:10:59', NULL, NULL),
(308, 72, 16, '2019-09-20 09:11:09', '2019-09-20 09:11:09', NULL, NULL),
(309, 73, 16, '2019-09-20 09:11:21', '2019-09-20 09:11:21', NULL, NULL),
(310, 74, 16, '2019-09-23 07:23:31', '2019-09-23 07:23:31', NULL, NULL),
(311, 75, 16, '2019-09-23 07:23:52', '2019-09-23 07:23:52', NULL, NULL),
(312, 76, 16, '2019-09-23 07:24:00', '2019-09-23 07:24:00', NULL, NULL),
(313, 77, 16, '2019-09-23 07:26:38', '2019-09-23 07:26:38', NULL, NULL),
(314, 78, 16, '2019-09-23 07:26:52', '2019-09-23 07:26:52', NULL, NULL),
(315, 79, 16, '2019-09-23 07:27:05', '2019-09-23 07:27:05', NULL, NULL),
(316, 80, 16, '2019-09-26 12:20:51', '2019-09-26 12:20:51', NULL, NULL),
(317, 81, 16, '2019-09-26 12:28:04', '2019-09-26 12:28:04', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `source_id` int(10) NOT NULL,
  `destination_id` int(10) NOT NULL,
  `user_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `trailer_id` int(10) NOT NULL,
  `pickup_time` datetime NOT NULL,
  `drop_off_time` datetime NOT NULL,
  `order_status_id` int(10) NOT NULL,
  `comments` varchar(500) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `source_id`, `destination_id`, `user_id`, `product_id`, `quantity`, `trailer_id`, `pickup_time`, `drop_off_time`, `order_status_id`, `comments`, `created`, `modified`) VALUES
(1, 35, 35, 1, 1, 13, 1, '2019-09-23 08:03:00', '2019-09-23 08:03:00', 2, 'I\'m shocked!', '2019-09-23 08:04:07', '2019-09-23 08:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_statuses`
--

INSERT INTO `order_statuses` (`id`, `name`, `created`, `modified`) VALUES
(1, 'active', '2019-09-23 08:03:20', '2019-09-23 08:03:20'),
(2, 'in progress', '2019-09-23 08:03:29', '2019-09-23 08:03:29'),
(3, 'completed', '2019-09-23 08:03:44', '2019-09-23 08:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(500) NOT NULL,
  `price` int(10) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `created`, `modified`) VALUES
(1, 'products', NULL, '2019-09-19 12:02:01', '2019-09-19 12:02:01'),
(2, 'DXP - Dandux Pictures/Posters	', NULL, '2019-09-19 12:02:21', '2019-09-19 12:02:21'),
(3, 'DXR - Dandux Full Raw	', NULL, '2019-09-19 12:02:32', '2019-09-19 12:02:32'),
(4, 'DXB - Dandux Full Books	', NULL, '2019-09-19 12:02:43', '2019-09-19 12:02:43'),
(5, 'DXS - Dandux Full Shoes	', NULL, '2019-09-19 12:02:56', '2019-09-19 12:02:56'),
(6, 'DXM - Dandux Full Media(A,V,G)	', NULL, '2019-09-19 12:03:18', '2019-09-19 12:03:18'),
(7, 'DSE - Duros Empty	', NULL, '2019-09-19 12:03:59', '2019-09-19 12:03:59'),
(8, 'DSHG - Duros Hard Goods	', NULL, '2019-09-19 12:04:11', '2019-09-19 12:04:11'),
(9, 'DSMR - Duros Full Metal Recycle	', NULL, '2019-09-19 12:04:21', '2019-09-19 12:04:21'),
(10, 'DSCS - Duros Clothes Salvage	', NULL, '2019-09-19 12:04:32', '2019-09-19 12:04:32'),
(11, 'DSCP - Duros Clothes Pulls/Rotation	', NULL, '2019-09-19 12:04:51', '2019-09-19 12:04:51'),
(12, 'DSC Raw - Duros Clothes Raw	', NULL, '2019-09-19 12:05:02', '2019-09-19 12:05:02'),
(13, 'DSLS - Duros Linen Salvage	', NULL, '2019-09-19 12:05:13', '2019-09-19 12:05:13'),
(14, 'DSLR - Duros Linen Raw	', NULL, '2019-09-19 12:05:24', '2019-09-19 12:05:24'),
(15, 'GE20 - Gaylord Empty 20	', NULL, '2019-09-19 12:05:36', '2019-09-19 12:05:36'),
(16, 'GE10 - Gaylord Empty 10	', NULL, '2019-09-19 12:05:47', '2019-09-19 12:05:47'),
(17, 'GR - Gaylord Raw	', NULL, '2019-09-19 12:06:00', '2019-09-19 12:06:00'),
(18, 'GB - Gaylord Books	', NULL, '2019-09-19 12:06:13', '2019-09-19 12:06:13'),
(19, 'DSMD - Duros Medical	', NULL, '2019-09-19 12:06:24', '2019-09-19 12:06:24'),
(20, 'GS - Gaylord Shoes	', NULL, '2019-09-19 12:06:35', '2019-09-19 12:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `product_statuses`
--

CREATE TABLE `product_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Outlets&Transportation', '2019-08-17 05:56:46', '2019-08-17 05:56:46'),
(2, 'Region 01', '2019-08-17 05:56:54', '2019-08-17 05:56:54'),
(3, 'Florida', '2019-08-17 05:57:03', '2019-08-17 05:57:03'),
(4, 'Alabama', '2019-08-17 05:57:12', '2019-08-17 05:57:12'),
(5, 'Philadelphia', '2019-08-20 08:48:31', '2019-08-20 08:48:31');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Admin', '2019-08-17 06:20:03', NULL),
(2, 'Supervisor', '2019-08-17 06:20:25', NULL),
(3, 'Manager', '2019-08-17 06:20:31', NULL),
(4, 'User', '2019-08-17 06:20:36', NULL),
(5, 'Driver', '2019-08-17 06:20:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_users`
--

CREATE TABLE `roles_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roles_users`
--

INSERT INTO `roles_users` (`id`, `role_id`, `user_id`, `created`, `modified`) VALUES
(1, 1, 1, '2019-08-17 06:26:50', NULL),
(2, 2, 1, '2019-08-17 06:26:50', NULL),
(3, 3, 1, '2019-08-17 06:26:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedules`
--

CREATE TABLE `schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `day` varchar(255) NOT NULL,
  `am` tinyint(4) NOT NULL,
  `pm` tinyint(4) NOT NULL,
  `location_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `schedules`
--

INSERT INTO `schedules` (`id`, `name`, `day`, `am`, `pm`, `location_id`, `created`, `modified`) VALUES
(1, '--', 'Sunday', 1, 1, 27, '2019-09-07 11:48:59', '2019-09-07 11:48:59'),
(2, '--', 'Sunday', 1, 1, 28, '2019-09-07 11:56:09', '2019-09-07 11:56:09'),
(3, '--', 'Sunday', 1, 1, 29, '2019-09-07 11:57:43', '2019-09-07 11:57:43'),
(4, '--', 'Monday', 1, 1, 29, '2019-09-07 11:57:43', '2019-09-07 11:57:43'),
(5, '--', 'Sunday', 1, 1, 30, '2019-09-11 10:15:34', '2019-09-11 10:15:34'),
(6, '--', 'Monday', 1, 1, 30, '2019-09-11 10:15:35', '2019-09-11 10:15:35'),
(7, 'test', 'Sunday', 1, 1, 31, '2019-09-11 10:29:33', '2019-09-11 10:29:33'),
(8, NULL, 'Monday', 1, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(9, NULL, 'Tuesday', 0, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(10, NULL, 'Wednesday', 0, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(11, NULL, 'Thursday', 0, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(12, NULL, 'Friday', 0, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(13, NULL, 'Saturday', 0, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(14, NULL, 'Sunday', 0, 0, 32, '2019-09-20 12:38:31', '2019-09-20 12:38:31'),
(15, NULL, 'Monday', 0, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(16, NULL, 'Tuesday', 0, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(17, NULL, 'Wednesday', 0, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(18, NULL, 'Thursday', 0, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(19, NULL, 'Friday', 0, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(20, NULL, 'Saturday', 1, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(21, NULL, 'Sunday', 0, 0, 33, '2019-09-20 12:52:00', '2019-09-20 12:52:00'),
(22, NULL, 'Monday', 0, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(23, NULL, 'Tuesday', 1, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(24, NULL, 'Wednesday', 0, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(25, NULL, 'Thursday', 0, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(26, NULL, 'Friday', 0, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(27, NULL, 'Saturday', 0, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(28, NULL, 'Sunday', 0, 0, 34, '2019-09-20 12:55:20', '2019-09-20 12:55:20'),
(29, NULL, 'Monday', 0, 0, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(30, NULL, 'Tuesday', 1, 0, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(31, NULL, 'Wednesday', 0, 1, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(32, NULL, 'Thursday', 0, 0, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(33, NULL, 'Friday', 0, 0, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(34, NULL, 'Saturday', 0, 0, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(35, NULL, 'Sunday', 0, 0, 32, '2019-09-21 05:01:40', '2019-09-21 05:01:40'),
(36, NULL, 'Monday', 0, 0, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47'),
(37, NULL, 'Tuesday', 1, 1, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47'),
(38, NULL, 'Wednesday', 0, 0, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47'),
(39, NULL, 'Thursday', 0, 0, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47'),
(40, NULL, 'Friday', 0, 0, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47'),
(41, NULL, 'Saturday', 0, 0, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47'),
(42, NULL, 'Sunday', 0, 0, 35, '2019-09-23 07:14:47', '2019-09-23 07:14:47');

-- --------------------------------------------------------

--
-- Table structure for table `trailers`
--

CREATE TABLE `trailers` (
  `id` int(10) UNSIGNED NOT NULL,
  `trailer_number` int(10) NOT NULL,
  `trailer_statuses_id` int(10) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trailers`
--

INSERT INTO `trailers` (`id`, `trailer_number`, `trailer_statuses_id`, `created`, `modified`) VALUES
(1, 32, 1, '2019-09-23 08:01:34', '2019-09-23 08:01:34'),
(2, 15, 3, '2019-09-23 08:01:45', '2019-09-23 08:01:45'),
(3, 1, 0, '2019-09-27 14:52:06', '2019-09-27 14:52:06'),
(4, 5, 1, '2019-09-30 06:48:18', '2019-09-30 06:48:18'),
(5, 8, 1, '2019-09-30 06:49:32', '2019-09-30 06:49:32'),
(6, 87654, 0, '2019-10-01 16:47:01', '2019-10-01 16:47:01'),
(7, 87, 0, '2019-10-01 16:47:26', '2019-10-01 16:47:26'),
(8, 54, 0, '2019-10-01 16:47:33', '2019-10-01 16:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `trailer_statuses`
--

CREATE TABLE `trailer_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trailer_statuses`
--

INSERT INTO `trailer_statuses` (`id`, `name`, `created`, `modified`) VALUES
(1, 'Active', '2019-09-23 08:00:57', '2019-09-23 08:00:57'),
(2, 'On Progress', '2019-09-23 08:01:11', '2019-09-23 08:01:11'),
(3, 'completed', '2019-09-23 08:01:21', '2019-09-23 08:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `long_desc` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `modified_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `name`, `short_desc`, `long_desc`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 'Admin', 'Admin', '', '2017-02-01 07:01:32', '2017-08-23 13:08:32', NULL, NULL),
(2, 'Business Owner', 'Business Owner', '', '2017-02-01 07:02:48', '2017-09-14 13:10:09', NULL, NULL),
(3, 'Buisness User', 'Buisness User', '', '2017-02-01 07:26:14', '2017-12-08 19:41:59', NULL, NULL),
(4, 'Admin User', 'Admin User', '', '2017-02-01 07:26:14', '2017-11-17 14:54:26', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `location_id` varchar(55) NOT NULL,
  `latitude` double(10,0) DEFAULT NULL,
  `longitude` double(10,0) DEFAULT NULL,
  `user_status_id` tinyint(4) DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `boss` tinyint(4) DEFAULT NULL,
  `password_token` varchar(500) DEFAULT NULL,
  `password_token_expire` datetime DEFAULT NULL,
  `confirm_email_token` varchar(500) DEFAULT NULL,
  `email_verified` tinyint(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `mobile`, `active`, `role`, `location_id`, `latitude`, `longitude`, `user_status_id`, `parent_id`, `boss`, `password_token`, `password_token_expire`, `confirm_email_token`, `email_verified`, `created`, `modified`) VALUES
(1, 'admin@admin.com', '$2y$10$BOrvnY5f8/rYKF0LzAXvv.bYN27llGsFzCRIBQJA8sa.OhEMgKJE2', 'admin', 'admin', 'admin@admin.com', '7887777777', 1, 'admin', '', 899887, 8989879, 1, 0, 1, NULL, NULL, NULL, 1, '2017-02-08 07:19:34', '2017-08-23 13:17:09'),
(2, 'arocon@mailinator.com', '$2y$10$fJpQ0Ga5fyq6LsJYxoWdBuYQqlyePBvLuGhjvB5inDmzUJkQe1Tjm', NULL, NULL, 'arocon@mailinator.com', NULL, 1, 'business', '', NULL, NULL, NULL, 0, 1, '5a12fb80d620c', '2017-11-21 15:57:52', '59a0598528f29', 1, '2017-08-25 17:08:21', '2017-12-20 07:22:30'),
(3, 'rmw@mailinator.com', '$2y$10$ulkUNZKzbr232WuldXCQpOIfHI7DkLJz3JTFtQdXgvR6UJx6FV0vC', NULL, NULL, 'rmw@mailinator.com', NULL, 1, 'business', '', NULL, NULL, NULL, 0, 1, NULL, NULL, '59a05f29db5de', 1, '2017-08-25 17:32:25', '2017-12-11 13:11:44'),
(4, 'ashish@appxbuild.com', '$2y$10$..yna/vRa7aAt5ufl1VN6.ySgZkHa8QLPTnuw2QdDN7hBSP0D8EFm', NULL, NULL, 'ashish@appxbuild.com', NULL, NULL, 'business', '', NULL, NULL, NULL, 0, 1, NULL, NULL, '59ba7fb130c09', NULL, '2017-09-14 13:10:09', '2017-09-14 13:10:09'),
(5, 'sean', '$2y$10$PsQwqmD6DFBLtj1Dqx.wfOBIVHcdk7vs9lnHlGky/ub.lL59zdsEi', 'Sean', 'Wolfe', 'sean@instreamone.com', '', NULL, NULL, '', NULL, NULL, NULL, 1, 0, NULL, NULL, '5a0ef821f35cf', NULL, '2017-11-17 14:54:26', '2017-11-17 14:54:26'),
(6, 'ashish.onmobile@gmail.com', '$2y$10$kFriEyeEsNNvLQ5qL7g.Yuo3yi5kq4mBAallRSKXhelMa3Zb2jxRy', 'ashish', 'patel', 'ashish.onmobile@gmail.com', '', NULL, NULL, '', NULL, NULL, NULL, 2, 0, '5a12fb10c4620', '2017-11-21 15:56:00', '5a11a5e49b082', NULL, '2017-11-19 15:40:20', '2017-11-20 15:56:01'),
(7, 'ashish.onmobile1@gmail.com', '$2y$10$jzxqaQIW8RlGlFag0K44lOSyAWHmoD4vVi7n1iGB65nQou/EkHrGe', 'ashish', 'patel', 'ashish.onmobile1@gmail.com', '', NULL, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a11b2b579c97', NULL, '2017-11-19 16:35:01', '2017-11-19 16:35:01'),
(8, 'nupur.batra@appxbuild.com', '$2y$10$8jBDxwCYdwxuqo0tOlPUquAGf8Baq3xlV.7Oupck7hsjmotCrXezC', 'ashish', 'patel', 'nupur.batra@appxbuild.com', '', NULL, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a11b30f41672', NULL, '2017-11-19 16:36:31', '2017-11-19 16:36:31'),
(9, 'ravina.nanwani@appxbuild.com', '$2y$10$HUO8ZT7EunCF/DmJb6xFDOrtFW7zOFm6Bj059tdg.3j5..kOEGFp2', 'nanwani', 'ravina', 'ravina.nanwani@appxbuild.com', '', NULL, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a11b348a0ee8', NULL, '2017-11-19 16:37:28', '2017-11-19 16:37:28'),
(10, 'ashishptest@mailinator.com', '$2y$10$FT.wBCY2bVfAo6IhJb0lkO8MdZ9U5xLCaob2ldZ6.RH3CoOiC4c46', 'ashishptest@mailinator.com', 'ashishptest@mailinator.com', 'ashishptest@mailinator.com', '', 1, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a12fc442279f', 1, '2017-11-20 16:01:08', '2017-11-20 16:03:02'),
(11, 'ragawolfe1@gmail.com', '$2y$10$EywOHy98A.35YCSNMVf5i.25MfHovExMpjZJ6/PsA9jvYPbMqHJnm', 'Sean', 'Wolfe', 'ragawolfe1@gmail.com', '', 0, '', '', NULL, NULL, 1, 0, NULL, NULL, NULL, NULL, NULL, '2017-11-20 16:06:10', '2017-11-20 16:06:10'),
(12, 'ragawolfe@gmail.com', '$2y$10$ez7KLv.dBKGC0IPMDv5JYeJ3dV/KvmP.T1C22lTtHQGFvcyn5fCyu', 'Sean', 'Wolfe', 'ragawolfe@gmail.com', '', 1, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a13009508ede', 1, '2017-11-20 16:19:33', '2017-11-20 16:20:09'),
(13, 'Chris@aroconllc.com', '$2y$10$sR7sduEPm0Y.mBrtyC1BlOYT3ESahHsG6FjjibnSFuNs4JVoQb9tC', 'Chris', 'Toleman', 'chris@aroconllc.com', '', NULL, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a1c2928cb997', NULL, '2017-11-27 15:03:04', '2017-11-27 15:03:04'),
(14, 'eric.consuegra@aroconllc.com ', '$2y$10$7fZur3FoTicM5c.LDpaTIOBfrS9i.PPprVWqVQXGDwIvLD5i1PsXu', 'Eric ', 'Consuegra', 'eric.consuegra@aroconllc.com', '', NULL, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a2aea6e9e778', NULL, '2017-12-08 19:39:26', '2017-12-08 19:39:26'),
(15, 'michael.neubauer@aroconllc.com ', '$2y$10$BpeO6ZX7j1jgRVRMVOH8VOCl1bnoL1/hCNLj0jmtwDKok.qG7O4bK', 'Michael', 'Neubauer', 'michael.neubauer@aroconllc.com', '', 1, NULL, '', NULL, NULL, NULL, 2, 0, NULL, NULL, '5a2aeb0709fdb', 1, '2017-12-08 19:41:59', '2017-12-08 19:48:03'),
(16, 'ashish', '$2y$10$f3ONMJGTlGLyEqtYxnWROOxX7ePgYC5U1VFaGsgc7W23/C5AuwBM6', 'ashish', 'patel', 'ashish.omobile@gmail.com', '9860677800', 1, '1', '35', NULL, NULL, 1, 1, 1, '', NULL, '', NULL, '2019-09-09 08:41:30', '2019-09-09 08:41:30'),
(17, 'pallavi', '$2y$10$5LIwgbTFNiDhi5iuwlgqeOPkfVUNHW0QnBUkcqeBcwBrQhIO13S4.', 'pallavi', 'fsdf', 'a@a.com', '1234567897', NULL, NULL, '', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2019-09-09 09:25:21', '2019-09-09 09:25:21');

-- --------------------------------------------------------

--
-- Table structure for table `users_types`
--

CREATE TABLE `users_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `type_id` int(10) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created_by` int(10) DEFAULT NULL,
  `modifid_by` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users_types`
--

INSERT INTO `users_types` (`id`, `user_id`, `type_id`, `created`, `modified`, `created_by`, `modifid_by`) VALUES
(1, 1, 1, '2017-02-08 07:19:34', '2017-02-08 07:19:34', NULL, NULL),
(2, 2, 2, '2017-08-25 17:08:21', '2017-08-25 17:08:21', NULL, NULL),
(3, 3, 2, '2017-08-25 17:32:25', '2017-08-25 17:32:25', NULL, NULL),
(4, 4, 2, '2017-09-14 13:10:09', '2017-09-14 13:10:09', NULL, NULL),
(5, 5, 4, '2017-11-17 14:54:26', '2017-11-17 14:54:26', NULL, NULL),
(6, 6, 3, '2017-11-19 15:40:20', '2017-11-19 15:40:20', NULL, NULL),
(7, 7, 3, '2017-11-19 16:35:01', '2017-11-19 16:35:01', NULL, NULL),
(8, 8, 3, '2017-11-19 16:36:31', '2017-11-19 16:36:31', NULL, NULL),
(9, 9, 3, '2017-11-19 16:37:28', '2017-11-19 16:37:28', NULL, NULL),
(10, 10, 3, '2017-11-20 16:01:08', '2017-11-20 16:01:08', NULL, NULL),
(11, 11, 1, '2017-11-20 16:06:10', '2017-11-20 16:06:10', NULL, NULL),
(12, 12, 3, '2017-11-20 16:19:33', '2017-11-20 16:19:33', NULL, NULL),
(13, 13, 3, '2017-11-27 15:03:04', '2017-11-27 15:03:04', NULL, NULL),
(14, 14, 3, '2017-12-08 19:39:26', '2017-12-08 19:39:26', NULL, NULL),
(15, 15, 3, '2017-12-08 19:41:59', '2017-12-08 19:41:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_statuses`
--

CREATE TABLE `user_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `long_desc` varbinary(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `user_statuses`
--

INSERT INTO `user_statuses` (`id`, `name`, `short_desc`, `long_desc`, `created`, `modified`) VALUES
(1, 'active', NULL, NULL, NULL, NULL),
(2, 'inactive', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory_statuses`
--
ALTER TABLE `inventory_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_types`
--
ALTER TABLE `location_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_types`
--
ALTER TABLE `menus_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus_users`
--
ALTER TABLE `menus_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_statuses`
--
ALTER TABLE `product_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles_users`
--
ALTER TABLE `roles_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedules`
--
ALTER TABLE `schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trailers`
--
ALTER TABLE `trailers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trailer_statuses`
--
ALTER TABLE `trailer_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_types`
--
ALTER TABLE `users_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_statuses`
--
ALTER TABLE `user_statuses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `inventory_statuses`
--
ALTER TABLE `inventory_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `location_types`
--
ALTER TABLE `location_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `menus_types`
--
ALTER TABLE `menus_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `menus_users`
--
ALTER TABLE `menus_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_statuses`
--
ALTER TABLE `product_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles_users`
--
ALTER TABLE `roles_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `schedules`
--
ALTER TABLE `schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `trailers`
--
ALTER TABLE `trailers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `trailer_statuses`
--
ALTER TABLE `trailer_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users_types`
--
ALTER TABLE `users_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_statuses`
--
ALTER TABLE `user_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
