-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 04:10 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `mealchooser`
--

CREATE TABLE `mealchooser` (
  `no` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pricelow` int(11) NOT NULL,
  `priceup` int(11) NOT NULL,
  `aircon` tinyint(1) NOT NULL,
  `dateadded` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mealchooser`
--

INSERT INTO `mealchooser` (`no`, `name`, `pricelow`, `priceup`, `aircon`, `dateadded`) VALUES
(1, '美地', 60, 80, 0, '2020-06-09 09:30:46'),
(2, '127咖喱', 110, 130, 1, '2020-06-09 09:30:59'),
(3, 'Mak and May', 70, 90, 1, '2020-06-09 09:29:20'),
(4, '初衷食堂', 150, 200, 1, '2020-06-09 09:31:06'),
(5, '豪客', 60, 80, 1, '2020-06-09 09:31:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mealchooser`
--
ALTER TABLE `mealchooser`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mealchooser`
--
ALTER TABLE `mealchooser`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
