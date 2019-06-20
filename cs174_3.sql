-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2019 at 08:01 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs174_3`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `file_name` varchar(500) NOT NULL,
  `file_contents` varchar(500) NOT NULL,
  `username` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `file_name`, `file_contents`, `username`) VALUES
(1, 'file1', 'asdf\n', 'sid'),
(2, 'sid', 'asdf\n', 'sid'),
(3, 'sid', 'asdf\n', 'sid'),
(4, 'sid', 'asdf\n', 'sid'),
(5, 'sid', 'asdf\n', 'sid'),
(6, 'sid', 'asdf\n', 'sid'),
(7, 'sid2', 'asdf\n', 'sid'),
(8, 'sid2', 'asdf\n', 'sid'),
(9, 'sid2', 'asdf\n', 'sid'),
(10, 'sid2', 'asdf\n', 'sid'),
(11, 'sid2', 'asdf\n', 'sid'),
(12, 'sid3', 'asdf\n', 'sid'),
(13, 'sid3', 'asdf\n', 'sid'),
(14, 'sid', 'asdf\n', 'sid'),
(15, 'sid', 'asdf\n', 'sid'),
(16, 'sid4', 'asdf\n', 'sid'),
(17, 'sid4', 'asdf\n', 'sid'),
(18, 'sid4', 'asdf\n', 'sid'),
(19, 'sid4', 'asdf\n', 'sid'),
(20, '2_sid', 'asdf\n', 'sid2'),
(21, '2_sid', 'asdf\n', 'sid2'),
(22, '2_sid', 'asdf\n', 'sid2'),
(23, '2_sid_1', 'asdf\n', 'sid2'),
(24, '2_sid_1', 'asdf\n', 'sid2'),
(25, 'rev', 'asdf\n', 'sid'),
(26, 'rev', 'asdf\n', 'sid'),
(27, 'rev', 'asdf\n', 'sid');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` int(11) NOT NULL,
  `input` varchar(500) NOT NULL,
  `cipher` varchar(500) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `input`, `cipher`, `timestamp`, `username`) VALUES
(9, 'asdf', 'ss', '2019-05-05 20:52:26', 'sid'),
(10, 'asdf', 'ss', '2019-05-05 21:36:35', 'sid'),
(11, 'asdf', 'ss', '2019-05-06 02:02:32', 'sid'),
(12, 'asdf', 'ss', '2019-05-06 02:02:41', 'sid'),
(13, 'asdf', 'ss', '2019-05-06 02:21:52', 'sid'),
(14, 'asdf', 'ss', '2019-05-06 02:28:21', 'sid'),
(15, 'asdf', 'ss', '2019-05-06 02:28:28', 'sid'),
(16, 'asdf', 'ss', '2019-05-06 02:28:32', 'sid'),
(17, 'asdf', 'ss', '2019-05-06 02:32:30', 'sid'),
(18, 'asdf', 'ss', '2019-05-06 02:32:45', 'sid'),
(19, 'asdf', 'ss', '2019-05-06 02:33:34', 'sid'),
(20, 'asdf', 'ss', '2019-05-06 02:33:40', 'sid'),
(21, 'asdf', 'ss', '2019-05-06 02:34:09', 'sid'),
(22, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:34:31', 'sid'),
(23, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:35:08', 'sid'),
(24, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:35:09', 'sid'),
(25, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:35:21', 'sid'),
(26, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:35:22', 'sid'),
(27, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:35:52', 'sid'),
(28, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:35:58', 'sid'),
(29, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:36:04', 'sid'),
(30, 'The quick brown fox jumps over the lazy dog', 'ss', '2019-05-06 02:36:49', 'sid'),
(31, 'The quick brown fox jumps over the lazy dog', 'ss', '2019-05-06 02:37:42', 'sid'),
(32, 'The quick brown fox jumps over the lazy dog', 'ss', '2019-05-06 02:37:56', 'sid'),
(33, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:38:03', 'sid'),
(34, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:38:21', 'sid'),
(35, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:38:37', 'sid'),
(36, 'The quick brown fox jumps over the lazy dog', 'ss', '2019-05-06 02:38:53', NULL),
(37, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:39:19', NULL),
(38, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:39:51', NULL),
(39, 'Lvx iqmud fgpcs bpw aqtjk phxg lvx yroe zpn', 'ss', '2019-05-06 02:39:58', NULL),
(40, 'The quick brown fox jumps over the lazy dog', 'ss', '2019-05-06 02:40:45', NULL),
(41, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:40:59', NULL),
(42, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:42:38', NULL),
(43, '\r\nThe quick brown fox jumps over the lazy dog', 'ss', '2019-05-06 02:42:46', NULL),
(44, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:42:51', NULL),
(45, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:43:15', NULL),
(46, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:44:17', NULL),
(47, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:44:37', NULL),
(48, 'Jfg zdoku hemsw vmn ldptc mbge jfg ayir qmx', 'ss', '2019-05-06 02:45:40', NULL),
(49, 'asdf', 'ss', '2019-05-06 02:45:47', NULL),
(50, 'asdf', 'ss', '2019-05-06 02:45:57', NULL),
(51, 'asdf', 'ss', '2019-05-06 02:46:36', NULL),
(52, 'asdf', 'ss', '2019-05-06 02:46:56', NULL),
(53, 'asdf', 'ss', '2019-05-06 02:47:10', NULL),
(54, 'asdf', 'ss', '2019-05-06 02:47:32', NULL),
(55, 'asdf', 'rc4', '2019-05-06 03:24:12', 'sid'),
(56, 'asdf', 'rc4', '2019-05-06 03:44:46', 'sid'),
(57, 'asdf', 'rc4', '2019-05-06 03:45:15', 'sid'),
(58, 'hello world', 'rc4', '2019-05-06 03:45:23', 'sid'),
(59, 'hello world', 'rc4', '2019-05-06 03:45:50', 'sid'),
(60, 'hello world', 'rc4', '2019-05-06 03:47:04', 'sid'),
(61, 'asdf asdf', 'ss', '2019-05-06 03:47:10', 'sid'),
(62, 'asdf asdf', 'ss', '2019-05-06 03:48:21', 'sid'),
(63, 'asdf asdf', 'rc4', '2019-05-06 03:48:26', 'sid'),
(64, 'asdf asdf', 'rc4', '2019-05-06 03:49:15', 'sid'),
(65, 'asdf asdf', 'rc4', '2019-05-06 03:49:19', 'sid'),
(66, 'asdf asdf', 'rc4', '2019-05-06 03:49:27', 'sid'),
(67, 'asdf asdf', 'rc4', '2019-05-06 03:50:09', 'sid'),
(68, 'asdf asdf', 'rc4', '2019-05-06 03:50:16', 'sid'),
(69, 'asdf asdf', 'rc4', '2019-05-06 03:50:22', 'sid'),
(70, 'asdf asdf', 'rc4', '2019-05-06 03:50:44', 'sid'),
(71, 'asdf asdf', 'rc4', '2019-05-06 04:02:38', 'sid'),
(72, 'asdf asdf', 'rc4', '2019-05-06 04:03:06', 'sid'),
(73, 'asdf asdf', 'rc4', '2019-05-06 04:03:13', 'sid'),
(74, 'asdf asdf', 'rc4', '2019-05-06 04:03:49', 'sid'),
(75, 'asdf asdf ', 'rc4', '2019-05-06 04:03:55', 'sid'),
(76, 'asdf asdf', 'ss', '2019-05-06 04:03:59', 'sid'),
(77, 'ycqv ycqv', 'ss', '2019-05-06 04:04:05', 'sid'),
(78, 'asdf asdf', 'rc4', '2019-05-06 04:04:13', 'sid'),
(79, 'asdf asdf', 'rc4', '2019-05-06 04:16:03', 'sid'),
(80, 'asdf asdf', 'rc4', '2019-05-06 04:21:15', 'sid'),
(81, 'asdf asdf', 'rc4', '2019-05-06 04:21:33', 'sid'),
(82, 'asdf asdf', 'rc4', '2019-05-06 04:23:10', 'sid'),
(83, '5RskP90v0/xv', 'rc4', '2019-05-06 04:23:17', 'sid'),
(84, 'hello', 'rc4', '2019-05-06 04:23:27', 'sid'),
(85, '7A0sNZI=', 'rc4', '2019-05-06 04:23:34', 'sid'),
(86, '7A0sNZI=', 'rc4', '2019-05-06 04:25:29', 'sid'),
(87, 'hello', 'rc4', '2019-05-06 04:25:36', 'sid'),
(88, 'hello', 'rc4', '2019-05-06 04:28:57', 'sid'),
(89, 'asdf', 'rc4', '2019-05-06 04:29:02', 'sid'),
(90, 'asdf', 'rc4', '2019-05-06 05:01:18', 'sid'),
(91, 'asdf', 'rc4', '2019-05-06 05:01:46', 'sid'),
(92, 'hello', 'rc4', '2019-05-06 05:01:53', 'sid'),
(93, 'hello', 'rc4', '2019-05-06 05:02:10', 'sid'),
(94, 'hello', 'rc4', '2019-05-06 05:22:00', 'sid'),
(95, 'hello', 'rc4', '2019-05-06 05:48:50', 'sid'),
(96, 'The quick brown fox jumps over the lazy dog', 'dt', '2019-05-06 05:49:00', 'sid'),
(97, 'The quick brown fox jumps over the lazy dog', 'dt', '2019-05-06 05:49:12', 'sid'),
(98, 'The quick brown fox jumps over the lazy dog', 'dt', '2019-05-06 05:49:28', 'sid'),
(99, 'hk mra-uo oed- bosty-iwjv o-e fp z-Tcnuelgqrx h -', 'dt', '2019-05-06 05:49:33', 'sid');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'sid', 'sid@email.com', 'b8c1a3069167247e3503f0daba6c5723'),
(2, 'sid2', 'sid2@gmail.com', '14bf4cddb79bb5e7d7a6a33c91202144'),
(3, 'sid3', 'sid3@gmail.com', 'f80b0eb2e6167a030c4207ea8f954540'),
(4, 'sid', 'sid@sid.com', '6a204bd89f3c8348afd5c77c717a097a'),
(5, 'sid1995_hello', 'sid@gmail.com', '912ec803b2ce49e4a541068d495ab570'),
(6, 'sid', 'sid@gmail.com', '8998a1ce9a379a474a99b6b4fd3a124c');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
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
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
