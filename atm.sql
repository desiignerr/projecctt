-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 17, 2018 at 06:48 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atm`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `card_request`
--

CREATE TABLE `card_request` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `card_type` varchar(250) NOT NULL,
  `reason` varchar(250) NOT NULL,
  `tracking_code` varchar(8) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Unprocessed',
  `requested_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_request`
--

INSERT INTO `card_request` (`id`, `customer_id`, `card_type`, `reason`, `tracking_code`, `status`, `requested_on`) VALUES
(3, 3, 'Verve Card', 'Expired', 'TK8637', 'Being Processed', '2018-07-13'),
(4, 5, 'USD Mastercard', 'Stolen', 'TK7502', 'Being Processed', '2018-07-13'),
(5, 6, 'Naira Mastercard', 'Expired', 'TK8135', 'Unprocessed', '2018-07-16'),
(6, 3, 'Verve Card', 'Stolen', 'TK2773', 'Being Shipped', '2018-07-16');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `date_of_birth` date NOT NULL,
  `email` varchar(150) NOT NULL,
  `occupation` varchar(75) NOT NULL,
  `mobile1` varchar(15) NOT NULL,
  `mobile2` varchar(15) NOT NULL,
  `address` varchar(150) NOT NULL,
  `address_landmark` varchar(150) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `identification_type` varchar(25) NOT NULL,
  `id_number` int(11) NOT NULL,
  `date_issued` date NOT NULL,
  `expiry_date` date NOT NULL,
  `question1` varchar(250) NOT NULL,
  `answer1` varchar(50) NOT NULL,
  `question2` varchar(250) NOT NULL,
  `answer2` varchar(50) NOT NULL,
  `opening_balance` int(11) NOT NULL,
  `passport_file` varchar(100) NOT NULL,
  `account_no` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `middle_name`, `gender`, `date_of_birth`, `email`, `occupation`, `mobile1`, `mobile2`, `address`, `address_landmark`, `city`, `state`, `identification_type`, `id_number`, `date_issued`, `expiry_date`, `question1`, `answer1`, `question2`, `answer2`, `opening_balance`, `passport_file`, `account_no`) VALUES
(3, 'Aniefon', 'Umanah', 'Bassey', 'Male', '1987-06-16', 'anietex@gmail.com', 'Web Developer', '09031823507', '', '69 Abak road', 'A school', 'Uyo', 'Akwa Ibom State', 'National ID Card', 2147483647, '2018-01-17', '2018-12-14', 'Question 1', 'Answer 1', 'Question 2', 'Answer 2', 200000, '74613082ceb359144f30119436e8a88bb01718aa.jpg', '1268085232'),
(5, 'John', 'Doe', 'Paper', 'Male', '1989-03-16', 'doe@yahoo.com', 'Farmer', '080977474646', '', '34 Ikpa road', 'a church', 'Alaska', 'Alaska', 'Voters Card', 2147483647, '2017-06-15', '2018-12-21', 'What is your favourite food', 'food', 'Where were you born', 'somewhere', 50000, '1843f193b8e0bf836c8accedcfe5c0d413bd208d.jpg', '8549962721'),
(6, 'Jane', 'Duke', 'Doe', 'Female', '1986-07-30', 'janedoe@mail.com', 'Accountant', '07095575656', '', '45 Jane Street Uyo', 'Frank\'s High school', 'Uyo', 'Abia State', 'Voters Card', 2147483647, '2017-11-15', '2019-03-21', 'What Is your favorite book?', 'Hardy Boys', 'What is your favorite food?', 'food', 25000, '15047705167b1291dad4828b98559848594121db.jpg', '5577840039');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `card_request`
--
ALTER TABLE `card_request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `card_request`
--
ALTER TABLE `card_request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
