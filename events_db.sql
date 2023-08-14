-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2023 at 09:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `diamondjuniour`
--

CREATE TABLE `diamondjuniour` (
  `album_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `diamondjuniour`
--

INSERT INTO `diamondjuniour` (`album_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `uploaded_at`) VALUES
(1, '20221126_165101_1_.mp4', 'video', './media/64d2376005c35.video', '64d2376005c35', '2023-08-08 12:38:56');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) DEFAULT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `uploaded_at`) VALUES
(29, 'WhatsApp Video 2023-02-19 at 10.11.54.mp4', 'video', './media/64cba36c0a615.video', '64cba36c0a615', '2023-08-03 12:54:04'),
(30, '20230211_135249.mp4', 'video', './media/64cba61506b15.video', '64cba61506b15', '2023-08-03 13:05:25'),
(31, 'pexels-rostislav-uzunov-10458835.jpg', 'image', './media/64cba62598d90.image', '64cba62598d90', '2023-08-03 13:05:41'),
(32, '8249267.jpg', 'image', './media/64cba63a3cf22.image', '64cba63a3cf22', '2023-08-03 13:06:02'),
(33, 'imaaralogo (2).png', 'image', './media/64cba63a4d82b.image', '64cba63a4d82b', '2023-08-03 13:06:02'),
(34, 'imaramall.png', 'image', './media/64cba63a65aa3.image', '64cba63a65aa3', '2023-08-03 13:06:02'),
(35, 'IMG-20221221-WA0040.jpg', 'image', './media/64cba69692946.image', '64cba69692946', '2023-08-03 13:07:34'),
(36, '_BP15767.jpg', 'image', './media/64cbb50c35e55.image', '64cbb50c35e55', '2023-08-03 14:09:16');

-- --------------------------------------------------------

--
-- Table structure for table `greenpeace`
--

CREATE TABLE `greenpeace` (
  `album_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `greenpeace`
--

INSERT INTO `greenpeace` (`album_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `uploaded_at`) VALUES
(1, 'IMG_2129.jpg', 'image', './media/64d24487be88e.image', '64d24487be88e', '2023-08-08 13:35:03'),
(2, 'IMG_2130.jpg', 'image', './media/64d24487d56c4.image', '64d24487d56c4', '2023-08-08 13:35:03'),
(3, 'IMG_2134.jpg', 'image', './media/64d24487e11c0.image', '64d24487e11c0', '2023-08-08 13:35:03'),
(4, 'IMG_2135.jpg', 'image', './media/64d24487e8ea4.image', '64d24487e8ea4', '2023-08-08 13:35:03'),
(5, 'IMG_2136.jpg', 'image', './media/64d24487f1164.image', '64d24487f1164', '2023-08-08 13:35:03'),
(6, 'IMG_2137.jpg', 'image', './media/64d2448800f46.image', '64d2448800f46', '2023-08-08 13:35:04'),
(7, 'IMG_2138.jpg', 'image', './media/64d24488056ea.image', '64d24488056ea', '2023-08-08 13:35:04'),
(8, 'IMG_2139.jpg', 'image', './media/64d244b723d49.image', '64d244b723d49', '2023-08-08 13:35:51'),
(9, 'IMG_2140.jpg', 'image', './media/64d244b72f8cf.image', '64d244b72f8cf', '2023-08-08 13:35:51'),
(10, 'IMG_2141.jpg', 'image', './media/64d244b735c00.image', '64d244b735c00', '2023-08-08 13:35:51'),
(11, 'IMG_2142.jpg', 'image', './media/64d244b73e9b4.image', '64d244b73e9b4', '2023-08-08 13:35:51'),
(12, 'IMG_2143.jpg', 'image', './media/64d244b746c48.image', '64d244b746c48', '2023-08-08 13:35:51'),
(13, 'IMG_2144.jpg', 'image', './media/64d244b74afd3.image', '64d244b74afd3', '2023-08-08 13:35:51'),
(14, 'IMG_2145.jpg', 'image', './media/64d244b751592.image', '64d244b751592', '2023-08-08 13:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `mall_opening`
--

CREATE TABLE `mall_opening` (
  `album_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mall_opening`
--

INSERT INTO `mall_opening` (`album_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `created_at`) VALUES
(1, '_BP15733.jpg', 'image', './media/64cbb685d2477.image', '64cbb685d2477', '2023-08-03 14:15:33'),
(2, '_BP15736.jpg', 'image', './media/64cbb685ec5f7.image', '64cbb685ec5f7', '2023-08-03 14:15:33'),
(3, '_BP15746.jpg', 'image', './media/64cbb6860873c.image', '64cbb6860873c', '2023-08-03 14:15:34'),
(4, '_BP15747.jpg', 'image', './media/64cbb68614a60.image', '64cbb68614a60', '2023-08-03 14:15:34'),
(5, '_BP15753.jpg', 'image', './media/64cbb68624960.image', '64cbb68624960', '2023-08-03 14:15:34'),
(6, '_BP15760.jpg', 'image', './media/64cbb6862ecad.image', '64cbb6862ecad', '2023-08-03 14:15:34'),
(7, '_BP15767.jpg', 'image', './media/64cbb68634ddf.image', '64cbb68634ddf', '2023-08-03 14:15:34'),
(8, '_BP15771.jpg', 'image', './media/64cbb6864117d.image', '64cbb6864117d', '2023-08-03 14:15:34'),
(9, '_BP15782.jpg', 'image', './media/64cbb68645007.image', '64cbb68645007', '2023-08-03 14:15:34'),
(10, '_BP15783.jpg', 'image', './media/64cbb686492a2.image', '64cbb686492a2', '2023-08-03 14:15:34'),
(11, '_BP15789.jpg', 'image', './media/64cbb6864f5d9.image', '64cbb6864f5d9', '2023-08-03 14:15:34'),
(12, '_BP15794.jpg', 'image', './media/64cbb686558e0.image', '64cbb686558e0', '2023-08-03 14:15:34'),
(13, '_BP15804.jpg', 'image', './media/64cbb6865983f.image', '64cbb6865983f', '2023-08-03 14:15:34'),
(14, '_BP15810.jpg', 'image', './media/64cbb6865db67.image', '64cbb6865db67', '2023-08-03 14:15:34'),
(15, '_BP15830.jpg', 'image', './media/64cbb68661b17.image', '64cbb68661b17', '2023-08-03 14:15:34'),
(16, '_BP15833.jpg', 'image', './media/64cbb68667e69.image', '64cbb68667e69', '2023-08-03 14:15:34'),
(17, '_BP15837.jpg', 'image', './media/64cbb6866be18.image', '64cbb6866be18', '2023-08-03 14:15:34'),
(18, '_BP15845.jpg', 'image', './media/64cbb68672258.image', '64cbb68672258', '2023-08-03 14:15:34'),
(19, '_BP15851.jpg', 'image', './media/64cbb68678277.image', '64cbb68678277', '2023-08-03 14:15:34'),
(20, '_BP15870.jpg', 'image', './media/64cbb6867e18d.image', '64cbb6867e18d', '2023-08-03 14:15:34'),
(21, '_BP15877.jpg', 'image', './media/64cbb6868421f.image', '64cbb6868421f', '2023-08-03 14:15:34'),
(22, '_BP15878.jpg', 'image', './media/64cbb6fba5f76.image', '64cbb6fba5f76', '2023-08-03 14:17:31'),
(23, '_BP15907.jpg', 'image', './media/64cbb6fbb74ca.image', '64cbb6fbb74ca', '2023-08-03 14:17:31'),
(24, '_BP15929.jpg', 'image', './media/64cbb6fbbd8da.image', '64cbb6fbbd8da', '2023-08-03 14:17:31'),
(25, 'IMG-20221220-WA0055.jpg', 'image', './media/64cbb6fbc3aa6.image', '64cbb6fbc3aa6', '2023-08-03 14:17:31'),
(26, 'IMG-20221220-WA0056.jpg', 'image', './media/64cbb6fbd39d4.image', '64cbb6fbd39d4', '2023-08-03 14:17:31'),
(27, 'IMG-20221220-WA0057.jpg', 'image', './media/64cbb6fbf22ec.image', '64cbb6fbf22ec', '2023-08-03 14:17:31'),
(28, 'IMG-20221221-WA0016.jpg', 'image', './media/64cbb6fc05fee.image', '64cbb6fc05fee', '2023-08-03 14:17:32'),
(29, 'IMG-20221221-WA0026.jpg', 'image', './media/64cbb6fc0a2a2.image', '64cbb6fc0a2a2', '2023-08-03 14:17:32'),
(30, 'IMG-20221221-WA0029.jpg', 'image', './media/64cbb6fc1030c.image', '64cbb6fc1030c', '2023-08-03 14:17:32'),
(31, 'IMG-20221221-WA0034.jpg', 'image', './media/64cbb6fc16661.image', '64cbb6fc16661', '2023-08-03 14:17:32'),
(32, 'IMG-20221221-WA0040.jpg', 'image', './media/64cbb6fc1aa0f.image', '64cbb6fc1aa0f', '2023-08-03 14:17:32'),
(33, 'IMG-20221221-WA0046.jpg', 'image', './media/64cbb6fc1ee9b.image', '64cbb6fc1ee9b', '2023-08-03 14:17:32'),
(34, 'IMG-20221221-WA0048.jpg', 'image', './media/64cbb6fc25191.image', '64cbb6fc25191', '2023-08-03 14:17:32'),
(35, 'IMG-20221221-WA0050.jpg', 'image', './media/64cbb6fc31472.image', '64cbb6fc31472', '2023-08-03 14:17:32'),
(36, 'IMG-20221221-WA0064.jpg', 'image', './media/64cbb6fc3725b.image', '64cbb6fc3725b', '2023-08-03 14:17:32'),
(37, 'IMG-20221221-WA0067.jpg', 'image', './media/64cbb6fc3b768.image', '64cbb6fc3b768', '2023-08-03 14:17:32'),
(38, 'IMG-20221221-WA0101.jpg', 'image', './media/64cbb6fc410f7.image', '64cbb6fc410f7', '2023-08-03 14:17:32'),
(39, 'IMG-20221221-WA0105.jpg', 'image', './media/64cbb6fc45361.image', '64cbb6fc45361', '2023-08-03 14:17:32'),
(40, 'IMG-20221221-WA0107.jpg', 'image', './media/64cbb6fc4b85a.image', '64cbb6fc4b85a', '2023-08-03 14:17:32'),
(41, 'IMG-20221221-WA0110.jpg', 'image', './media/64cbb6fc4fbe2.image', '64cbb6fc4fbe2', '2023-08-03 14:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `newyear2023`
--

CREATE TABLE `newyear2023` (
  `album_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `newyear2023`
--

INSERT INTO `newyear2023` (`album_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `uploaded_at`) VALUES
(1, '20221231_121629.jpg', 'image', './media/64d23bdb4e130.image', '64d23bdb4e130', '2023-08-08 12:58:03'),
(2, '20221231_121639.jpg', 'image', './media/64d23bdb5f7bf.image', '64d23bdb5f7bf', '2023-08-08 12:58:03'),
(3, '20221231_125517.jpg', 'image', './media/64d23bdb699e7.image', '64d23bdb699e7', '2023-08-08 12:58:03'),
(4, '20221231_155812.jpg', 'image', './media/64d23bdb77e4f.image', '64d23bdb77e4f', '2023-08-08 12:58:03'),
(5, '20221231_155820.jpg', 'image', './media/64d23bdb881e0.image', '64d23bdb881e0', '2023-08-08 12:58:03'),
(6, '20221231_155832.jpg', 'image', './media/64d23bdb90065.image', '64d23bdb90065', '2023-08-08 12:58:03'),
(7, '20221231_155908.jpg', 'image', './media/64d23bdb942a8.image', '64d23bdb942a8', '2023-08-08 12:58:03'),
(8, '20221231_175346.jpg', 'image', './media/64d23bdb983ba.image', '64d23bdb983ba', '2023-08-08 12:58:03'),
(9, '20221231_175400.jpg', 'image', './media/64d23bdba4e43.image', '64d23bdba4e43', '2023-08-08 12:58:03'),
(10, '20221231_175410.jpg', 'image', './media/64d23bdba8ccd.image', '64d23bdba8ccd', '2023-08-08 12:58:03'),
(11, '20221231_175609.jpg', 'image', './media/64d23bdbacec4.image', '64d23bdbacec4', '2023-08-08 12:58:03'),
(12, '20221231_180140.jpg', 'image', './media/64d23bdbb501a.image', '64d23bdbb501a', '2023-08-08 12:58:03'),
(13, '20221231_180559.jpg', 'image', './media/64d23bdbb99ae.image', '64d23bdbb99ae', '2023-08-08 12:58:03'),
(14, '20221231_182207.jpg', 'image', './media/64d23bdbbf87c.image', '64d23bdbbf87c', '2023-08-08 12:58:03'),
(15, '20221231_182728.mp4', 'video', './media/64d23d1f9f847.video', '64d23d1f9f847', '2023-08-08 13:03:27'),
(16, '20221231_182728.mp4', 'video', './media/64d23d3f17a51.video', '64d23d3f17a51', '2023-08-08 13:03:59'),
(17, '20221231_182818.mp4', 'video', './media/64d23d4c0e6e8.video', '64d23d4c0e6e8', '2023-08-08 13:04:12'),
(18, '20221231_182212.jpg', 'image', './media/64d23d6a50e3e.image', '64d23d6a50e3e', '2023-08-08 13:04:42'),
(19, '20221231_182215.jpg', 'image', './media/64d23d6a6d41f.image', '64d23d6a6d41f', '2023-08-08 13:04:42'),
(20, '20221231_182824.jpg', 'image', './media/64d23d6a7438d.image', '64d23d6a7438d', '2023-08-08 13:04:42'),
(21, '20221231_182829.jpg', 'image', './media/64d23d6a77fd0.image', '64d23d6a77fd0', '2023-08-08 13:04:42'),
(22, '20221231_182832.jpg', 'image', './media/64d23d6a7c21d.image', '64d23d6a7c21d', '2023-08-08 13:04:42'),
(23, '20221231_182853.jpg', 'image', './media/64d23d6a8c4e7.image', '64d23d6a8c4e7', '2023-08-08 13:04:42'),
(24, '20221231_182855.jpg', 'image', './media/64d23d6ac1713.image', '64d23d6ac1713', '2023-08-08 13:04:42'),
(25, '20221231_182908.jpg', 'image', './media/64d23d6ad5e64.image', '64d23d6ad5e64', '2023-08-08 13:04:42'),
(26, '20221231_182911.jpg', 'image', './media/64d23d6ad9860.image', '64d23d6ad9860', '2023-08-08 13:04:42'),
(27, '20221231_183225.jpg', 'image', './media/64d23d6ae5f4c.image', '64d23d6ae5f4c', '2023-08-08 13:04:42'),
(28, '20221231_183228.jpg', 'image', './media/64d23d6aeb071.image', '64d23d6aeb071', '2023-08-08 13:04:42'),
(29, '20221231_183231.jpg', 'image', './media/64d23d6aefeee.image', '64d23d6aefeee', '2023-08-08 13:04:42');

-- --------------------------------------------------------

--
-- Table structure for table `transformer`
--

CREATE TABLE `transformer` (
  `album_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transformer`
--

INSERT INTO `transformer` (`album_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `uploaded_at`) VALUES
(1, '00001.mp4', 'video', './media/64d24a3c02672.video', '64d24a3c02672', '2023-08-08 13:59:24');

-- --------------------------------------------------------

--
-- Table structure for table `valentines`
--

CREATE TABLE `valentines` (
  `album_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_type` enum('image','video') NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `unique_identifier` varchar(255) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `valentines`
--

INSERT INTO `valentines` (`album_id`, `file_name`, `file_type`, `file_path`, `unique_identifier`, `uploaded_at`) VALUES
(1, '20230211_130508.jpg', 'image', './media/64d0e8621805b.image', '64d0e8621805b', '2023-08-07 12:49:38'),
(2, '20230211_131945.jpg', 'image', './media/64d0e8622fa95.image', '64d0e8622fa95', '2023-08-07 12:49:38'),
(3, '20230211_131954.jpg', 'image', './media/64d0e86237c91.image', '64d0e86237c91', '2023-08-07 12:49:38'),
(4, '20230211_135234.jpg', 'image', './media/64d0e86243de9.image', '64d0e86243de9', '2023-08-07 12:49:38'),
(5, '20230211_135236.jpg', 'image', './media/64d0e8624dbd9.image', '64d0e8624dbd9', '2023-08-07 12:49:38'),
(6, '20230211_135239.jpg', 'image', './media/64d0e862580c7.image', '64d0e862580c7', '2023-08-07 12:49:38'),
(7, '20230211_135249.mp4', 'video', './media/64d0e9dfc75bc.video', '64d0e9dfc75bc', '2023-08-07 12:55:59'),
(8, '20230211_140111.mp4', 'video', './media/64d0e9f73f5e7.video', '64d0e9f73f5e7', '2023-08-07 12:56:23'),
(9, '20230211_140305.jpg', 'image', './media/64d0ea312bd14.image', '64d0ea312bd14', '2023-08-07 12:57:21'),
(10, '20230211_160620_01.jpg', 'image', './media/64d0ea31378c6.image', '64d0ea31378c6', '2023-08-07 12:57:21'),
(11, '20230211_160626.jpg', 'image', './media/64d0ea31412d5.image', '64d0ea31412d5', '2023-08-07 12:57:21'),
(12, '20230211_160628.jpg', 'image', './media/64d0ea31495bc.image', '64d0ea31495bc', '2023-08-07 12:57:21'),
(13, '20230211_160640.jpg', 'image', './media/64d0ea31515cf.image', '64d0ea31515cf', '2023-08-07 12:57:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diamondjuniour`
--
ALTER TABLE `diamondjuniour`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `greenpeace`
--
ALTER TABLE `greenpeace`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `mall_opening`
--
ALTER TABLE `mall_opening`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `newyear2023`
--
ALTER TABLE `newyear2023`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `transformer`
--
ALTER TABLE `transformer`
  ADD PRIMARY KEY (`album_id`);

--
-- Indexes for table `valentines`
--
ALTER TABLE `valentines`
  ADD PRIMARY KEY (`album_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diamondjuniour`
--
ALTER TABLE `diamondjuniour`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `greenpeace`
--
ALTER TABLE `greenpeace`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mall_opening`
--
ALTER TABLE `mall_opening`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `newyear2023`
--
ALTER TABLE `newyear2023`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `transformer`
--
ALTER TABLE `transformer`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `valentines`
--
ALTER TABLE `valentines`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
