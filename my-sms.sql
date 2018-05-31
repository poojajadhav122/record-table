-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2018 at 09:26 AM
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
-- Database: `my-sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `sms_category`
--

CREATE TABLE `sms_category` (
  `ca_id` int(11) NOT NULL,
  `ca_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_category`
--

INSERT INTO `sms_category` (`ca_id`, `ca_name`) VALUES
(1, 'Diwali'),
(2, 'New Year'),
(3, 'Holi');

-- --------------------------------------------------------

--
-- Table structure for table `sms_contact`
--

CREATE TABLE `sms_contact` (
  `con_id` int(11) NOT NULL,
  `con_grid` int(11) DEFAULT NULL,
  `con_name` varchar(100) DEFAULT NULL,
  `con_mobile` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_contact`
--

INSERT INTO `sms_contact` (`con_id`, `con_grid`, `con_name`, `con_mobile`) VALUES
(1, 1, 'Tapas', 8108715095),
(2, 1, 'Rajat', 9650813250),
(3, 2, 'Irshad', 7666766021);

-- --------------------------------------------------------

--
-- Table structure for table `sms_group`
--

CREATE TABLE `sms_group` (
  `gr_id` int(11) NOT NULL,
  `gr_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_group`
--

INSERT INTO `sms_group` (`gr_id`, `gr_name`) VALUES
(1, 'School Friends'),
(2, 'College Friends');

-- --------------------------------------------------------

--
-- Table structure for table `sms_login`
--

CREATE TABLE `sms_login` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_mobile` varchar(10) DEFAULT NULL,
  `user_password` varchar(100) DEFAULT NULL,
  `user_otp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_login`
--

INSERT INTO `sms_login` (`user_id`, `user_name`, `user_email`, `user_mobile`, `user_password`, `user_otp`) VALUES
(1, 'Tapas', 'tapas@gmail.com', '8108715095', '7278934df282ee1027073d9eedbfee4735c627a5', 0),
(2, 'Aniket', 'aniket@gmail.com', '9658432104', '70c881d4a26984ddce795f6f71817c9cf4480e79', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sms_message`
--

CREATE TABLE `sms_message` (
  `msg_id` int(11) NOT NULL,
  `msg_caid` int(11) DEFAULT NULL,
  `msg_text` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sms_message`
--

INSERT INTO `sms_message` (`msg_id`, `msg_caid`, `msg_text`) VALUES
(1, 1, 'Wish You Happy Diwali'),
(2, 2, 'Happy New Year'),
(3, 2, 'Wish U A Happy New Year'),
(4, 2, 'Happy New Year hghj');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sms_category`
--
ALTER TABLE `sms_category`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `sms_contact`
--
ALTER TABLE `sms_contact`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `sms_group`
--
ALTER TABLE `sms_group`
  ADD PRIMARY KEY (`gr_id`);

--
-- Indexes for table `sms_login`
--
ALTER TABLE `sms_login`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `sms_message`
--
ALTER TABLE `sms_message`
  ADD PRIMARY KEY (`msg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sms_category`
--
ALTER TABLE `sms_category`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_contact`
--
ALTER TABLE `sms_contact`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sms_group`
--
ALTER TABLE `sms_group`
  MODIFY `gr_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_login`
--
ALTER TABLE `sms_login`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_message`
--
ALTER TABLE `sms_message`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
