-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2018 at 03:36 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moneybag`
--

-- --------------------------------------------------------

--
-- Table structure for table `balance`
--

CREATE TABLE `balance` (
  `currentMoney` double NOT NULL,
  `balance_id` int(3) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `balance`
--

INSERT INTO `balance` (`currentMoney`, `balance_id`, `userID`) VALUES
(1500, 1, 0),
(1500, 2, 0),
(1, 3, 0),
(123, 4, 0),
(123, 5, 0),
(345, 6, 0),
(321, 7, 0),
(345, 8, 0),
(123, 9, 0),
(56, 10, 0),
(67, 11, 0),
(34, 12, 0),
(87, 13, 0),
(54, 14, 20),
(321, 15, 21),
(321, 16, 21),
(1500, 17, 23),
(45, 18, 24),
(234, 19, 25),
(28000.67, 20, 26);

-- --------------------------------------------------------

--
-- Table structure for table `income`
--

CREATE TABLE `income` (
  `incomeMoney` double NOT NULL,
  `increase` double NOT NULL,
  `frequency` varchar(11) NOT NULL,
  `income_id` int(3) NOT NULL,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `income`
--

INSERT INTO `income` (`incomeMoney`, `increase`, `frequency`, `income_id`, `userID`) VALUES
(0, 1232, 'Month', 6, 0),
(0, 1232, 'Month', 7, 0),
(0, 1232, 'Month', 8, 0),
(0, 123, 'Month', 9, 0),
(0, 123, 'Month', 10, 0),
(0, 345, 'Month', 11, 0),
(0, 321, 'Month', 12, 0),
(0, 345, 'Month', 13, 0),
(0, 123, 'Month', 14, 0),
(0, 56, 'Month', 15, 0),
(0, 67, 'Month', 16, 0),
(0, 34, 'Month', 17, 0),
(0, 87, 'Month', 18, 0),
(0, 54, 'Month', 19, 20),
(0, 321, 'Month', 20, 21),
(0, 321, 'Month', 21, 21),
(0, 67, 'Month', 22, 23),
(0, 45, 'Month', 23, 24),
(0, 54, 'Month', 24, 25),
(0, 15500, 'Month', 25, 26);

-- --------------------------------------------------------

--
-- Table structure for table `single_costing`
--

CREATE TABLE `single_costing` (
  `Sc_id` int(3) NOT NULL,
  `moneySpent` double NOT NULL,
  `expenseType` varchar(32) NOT NULL,
  `timeHistory` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userID` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `single_costing`
--

INSERT INTO `single_costing` (`Sc_id`, `moneySpent`, `expenseType`, `timeHistory`, `userID`) VALUES
(1, 50, 'School', '2018-07-07 23:19:09', 0),
(2, 100, 'School', '2018-07-07 23:38:55', 0),
(3, 1500, 'Miscellainous Expenses', '2018-07-08 00:27:10', 0),
(4, 1500, 'Miscellainous Expenses', '2018-07-08 00:27:11', 0),
(5, 1500, 'Miscellainous Expenses', '2018-07-08 00:27:11', 0),
(6, 1500, 'Miscellainous Expenses', '2018-07-08 00:27:11', 0),
(7, 7, 'Miscellainous Expenses', '2018-07-08 00:28:34', 0),
(8, 12, 'Miscellainous Expenses', '2018-07-08 00:28:43', 0),
(9, 1, 'Work Expense', '2018-07-08 00:29:03', 0),
(10, 500, 'Work Expense', '2018-07-08 00:34:57', 0),
(11, 123, 'Work/School  Expense', '2018-07-08 03:50:15', 0),
(12, 12332, 'Work/School  Expense', '2018-07-08 04:20:25', 0),
(13, 12.75, 'Work/School  Expense', '2018-07-08 12:50:46', 23),
(14, 12.75, 'Work/School  Expense', '2018-07-08 12:51:07', 23),
(15, 23, 'Work/School  Expense', '2018-07-08 12:52:46', 23),
(16, 12.34, 'Work/School  Expense', '2018-07-08 12:54:29', 23),
(17, 1544, 'Work/School  Expense', '2018-07-08 13:13:26', 23),
(18, 4500, 'Work/School  Expense', '2018-07-08 13:22:17', 23);

-- --------------------------------------------------------

--
-- Table structure for table `useraccount`
--

CREATE TABLE `useraccount` (
  `id` int(3) NOT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `age` int(3) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `useraccount`
--

INSERT INTO `useraccount` (`id`, `fname`, `lname`, `gender`, `age`, `username`, `password`) VALUES
(3, 'Jm', 'Herrera', 'Male', 21, 'herrerajm8', 'herrera'),
(4, 'wdasd', 'asd', 'Female', 12, 'qwe', 'qweqwd'),
(5, 'Joe', 'Joseph', 'Female', 21, 'joeseph', 'joe'),
(6, 'Joe', 'Joseph', 'Female', 21, 'joeseph', 'joe'),
(7, 'Eldin', 'Arnejo', 'Male', 21, 'eldin21', 'eldin'),
(8, 'Francis', 'Herrera', 'Male', 17, 'fx', 'fx'),
(9, 'Francis', 'Herrera', 'Male', 17, 'fx', 'fx'),
(23, 'ej', 'ej', 'Male', 19, 'ej', 'ej'),
(25, 'ej', 'ej', 'Male', 45, 'tj', 'ej'),
(26, 'Joseph', 'Joe', 'Male', 16, 'joe', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `balance`
--
ALTER TABLE `balance`
  ADD PRIMARY KEY (`balance_id`);

--
-- Indexes for table `income`
--
ALTER TABLE `income`
  ADD PRIMARY KEY (`income_id`);

--
-- Indexes for table `single_costing`
--
ALTER TABLE `single_costing`
  ADD PRIMARY KEY (`Sc_id`);

--
-- Indexes for table `useraccount`
--
ALTER TABLE `useraccount`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `balance`
--
ALTER TABLE `balance`
  MODIFY `balance_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `income`
--
ALTER TABLE `income`
  MODIFY `income_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `single_costing`
--
ALTER TABLE `single_costing`
  MODIFY `Sc_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `useraccount`
--
ALTER TABLE `useraccount`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
