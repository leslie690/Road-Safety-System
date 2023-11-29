-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 07:02 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project 2023`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoint`
--

CREATE TABLE `appoint` (
  `idno` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time` time(6) NOT NULL,
  `date` date NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appoint`
--

INSERT INTO `appoint` (`idno`, `name`, `time`, `date`, `doctor`, `phone`, `address`) VALUES
(45, 'leslie', '00:00:00.000000', '2023-11-23', 'Wephuliugt', 125487963, 'juba'),
(125, 'brinton', '00:00:00.000000', '2023-11-16', 'Wephuliu', 754879541, 'Nairobi'),
(525, 'Raphel Kimani', '08:00:00.000000', '2023-11-30', 'Wephuliugtgrruy', 125472563, 'Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `idno` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `doctor` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`idno`, `name`, `email`, `doctor`, `phone`, `address`) VALUES
(1, 'Brinton', 'brintonotieno45@gmail.com', 'Wephuliu', 791743572, 'Nairobi');

-- --------------------------------------------------------

--
-- Table structure for table `doctorreg`
--

CREATE TABLE `doctorreg` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pnumber` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctorreg`
--

INSERT INTO `doctorreg` (`id`, `fname`, `mname`, `lname`, `username`, `pnumber`, `gender`, `password`, `cpassword`) VALUES
(1, 'gfhfgh', 'gfhfgh', 'fghfgh', 'Patel', 2147483647, 'male', '12345678', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `pnumber` int(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `cpassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `fname`, `mname`, `lname`, `username`, `pnumber`, `gender`, `password`, `cpassword`) VALUES
(1, 'Patel', 'Patel', 'Brinton', 'Patel', 0, 'male', '12345678', '12345678'),
(12, 'gfhfgh', 'gfhfgh', 'fghfgh', 'Patel', 1245455444, 'female', '12345', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `incidentdate` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `vehicletype` varchar(255) NOT NULL,
  `licenseplate` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `injuries` varchar(255) NOT NULL,
  `fatalities` varchar(255) NOT NULL,
  `weather` varchar(255) NOT NULL,
  `trafficdensity` varchar(255) NOT NULL,
  `roadclosures` varchar(255) NOT NULL,
  `witnessname` varchar(255) NOT NULL,
  `witnesscontact` int(255) NOT NULL,
  `comments` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`incidentdate`, `location`, `vehicletype`, `licenseplate`, `color`, `injuries`, `fatalities`, `weather`, `trafficdensity`, `roadclosures`, `witnessname`, `witnesscontact`, `comments`) VALUES
('0000-00-00', 'fgfhgfgh', '', '', 'gfhgfu', '141', '7575', 'esrfwerw', '', '', '', 0, '453648'),
('2023-11-17', 'bvnvnvbn', '', 'nbmbm', 'nbmbm', '354356', '63365', '35ghhfg', 'tfyfthg', 'ghfghf', 'fghgf', 0, 'hghfghf'),
('2023-11-17', 'hhjghj', 'jghjghjg', 'hgjghjg', 'hjghjghjg', '34534', '434534', 'fsrwerwr', 'werewrew', 'werewrwe', 'ewrwre', 0, 'werewrewrw');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoint`
--
ALTER TABLE `appoint`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`idno`);

--
-- Indexes for table `doctorreg`
--
ALTER TABLE `doctorreg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoint`
--
ALTER TABLE `appoint`
  MODIFY `idno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
  MODIFY `idno` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctorreg`
--
ALTER TABLE `doctorreg`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
