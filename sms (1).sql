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
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `ca_id` int(11) NOT NULL,
  `ca_name` varchar(50) DEFAULT NULL,
  `cat_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`ca_id`, `ca_name`, `cat_time`) VALUES
(1, 'Diwali', '2018-02-25 06:11:58'),
(2, 'Dasara', '2018-02-25 06:12:10'),
(3, 'Holi', '2018-02-25 06:13:04'),
(4, 'Holi', '2018-02-25 06:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `con_id` int(11) NOT NULL,
  `con_name` varchar(100) DEFAULT NULL,
  `con_email` varchar(100) DEFAULT NULL,
  `con_mobile` varchar(20) DEFAULT NULL,
  `con_group` int(11) DEFAULT NULL,
  `con_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`con_id`, `con_name`, `con_email`, `con_mobile`, `con_group`, `con_time`) VALUES
(1, 'Mohit', 'mohit@gmail.com', '7709547810', 1, '2018-03-11 07:08:55'),
(2, 'Mohit S', 'mohit@gmail.com', '7709547810', 2, '2018-03-11 07:09:33'),
(3, 'Mohit Y', 'mohit@gmail.com', '7709547810', 2, '2018-03-11 07:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `g_id` int(11) NOT NULL,
  `g_name` varchar(50) DEFAULT NULL,
  `g_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`g_id`, `g_name`, `g_time`) VALUES
(1, 'Friends', '2018-02-25 07:33:50'),
(2, 'Collage', '2018-02-25 07:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `mes_id` int(11) NOT NULL,
  `mes_category` int(11) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `mes_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`mes_id`, `mes_category`, `message`, `mes_time`) VALUES
(1, 1, 'Happy Diwali!!', '2018-03-11 08:25:07'),
(2, 2, 'Happy Dasara!!', '2018-03-11 08:25:26');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(200) DEFAULT NULL,
  `user_pass` varchar(50) NOT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `user_pass`, `user_email`, `user_time`) VALUES
(1, 'Ajay', '9199314f8c052df40782f02174faa2ae0d4a13f7', 'shubham@gmail.com', '2018-02-11 08:00:42'),
(2, 'Ajay', 'bbbb', 'shubham@gmail.com', '2018-02-04 09:40:29'),
(3, 'Gmail', '9199314f8c052df40782f02174faa2ae0d4a13f7', 'rohit@gmail.com', '2018-02-11 07:19:12'),
(4, 'mohit', '1c58a446a63e719d7b90156a8998ccc461609ed7', 'roham@gmail.com', '2018-02-11 07:20:06'),
(5, 'Mohan', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'mohan@gmail.com', '2018-02-11 08:02:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`con_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`g_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `ca_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `con_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `g_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
