-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 07, 2020 at 11:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `account_details`
--

CREATE TABLE `account_details` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(10) NOT NULL,
  `pin` int(4) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `SecondName` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account_details`
--

INSERT INTO `account_details` (`id`, `accountNo`, `pin`, `FirstName`, `SecondName`, `phone`) VALUES
(1, '11111', 1111, 'evans', 'mbithi', '+254 710 631 370'),
(2, '22222', 2222, 'mary', 'kilonzi', '0721761002');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `loginID` int(11) NOT NULL,
  `accountNo` varchar(10) NOT NULL,
  `pin` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`loginID`, `accountNo`, `pin`) VALUES
(1, '11111', 1111);

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE `transfer` (
  `id` int(11) NOT NULL,
  `f_account` int(11) NOT NULL,
  `to_account` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`id`, `f_account`, `to_account`, `amount`, `date`) VALUES
(10, 11111, 22222, 10, '2019-12-27 10:24:26'),
(11, 11111, 22222, 100, '2019-12-27 10:24:26'),
(12, 11111, 22222, 100, '2019-12-27 10:24:26'),
(13, 11111, 22222, 100, '2019-12-28 07:21:42'),
(14, 11111, 22222, 10, '2019-12-28 08:29:10'),
(15, 11111, 22222, 100, '2019-12-28 08:43:51'),
(16, 22222, 11111, 500, '2019-12-28 09:00:49'),
(17, 22222, 11111, 10, '2020-03-25 14:30:40'),
(18, 11111, 22222, 900, '2020-05-18 11:23:56'),
(19, 11111, 3333, 40, '2020-05-18 11:26:33'),
(20, 11111, 22222, 50, '2020-06-09 15:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal`
--

CREATE TABLE `withdrawal` (
  `id` int(11) NOT NULL,
  `balance` int(11) NOT NULL,
  `withdrawn` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `accID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `withdrawal`
--

INSERT INTO `withdrawal` (`id`, `balance`, `withdrawn`, `date`, `accID`) VALUES
(1, 8670, 0, '2019-11-26 12:57:49', 1),
(8, 8650, 20, '2019-11-26 12:57:49', 1),
(9, 8600, 50, '2019-11-26 12:59:12', 1),
(10, 8570, 30, '2019-11-26 14:05:12', 1),
(11, 8470, 100, '2019-11-26 20:57:11', 1),
(12, 8370, 100, '2019-12-02 17:52:18', 1),
(13, 8359, 11, '2019-12-27 11:52:28', 1),
(14, 1100, 0, '2019-12-27 13:04:09', 2),
(15, 8259, 100, '2019-12-28 10:22:19', 1),
(16, 8159, 100, '2020-02-16 15:16:51', 1),
(17, 1000, 100, '2020-02-16 15:18:02', 2),
(18, 990, 10, '2020-03-25 17:30:12', 2),
(19, 8159, 0, '2020-03-25 17:31:17', 1),
(20, 8110, 49, '2020-05-18 13:53:07', 1),
(21, 8010, 100, '2020-05-18 13:54:01', 1),
(22, 7910, 100, '2020-05-18 14:22:46', 1),
(23, 6910, 1000, '2020-06-09 18:27:51', 1),
(24, 90, 900, '2020-06-09 18:31:23', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account_details`
--
ALTER TABLE `account_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accountNo` (`accountNo`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`loginID`),
  ADD KEY `accountNo` (`accountNo`);

--
-- Indexes for table `transfer`
--
ALTER TABLE `transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `foreign` (`accID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account_details`
--
ALTER TABLE `account_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `loginID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transfer`
--
ALTER TABLE `transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `withdrawal`
--
ALTER TABLE `withdrawal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`accountNo`) REFERENCES `account_details` (`accountNo`);

--
-- Constraints for table `withdrawal`
--
ALTER TABLE `withdrawal`
  ADD CONSTRAINT `withdrawal_ibfk_1` FOREIGN KEY (`accID`) REFERENCES `account_details` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
