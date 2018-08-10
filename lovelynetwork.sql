-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2018 at 11:25 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lovelynetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE IF NOT EXISTS `members` (
`id` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `fname` varchar(10) NOT NULL,
  `lname` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `contact` int(11) NOT NULL,
  `bday` varchar(10) NOT NULL,
  `gender` tinytext,
  `hometown` varchar(10) DEFAULT NULL,
  `city` varchar(10) DEFAULT NULL,
  `work` varchar(20) DEFAULT NULL,
  `education` varchar(20) DEFAULT NULL,
  `website` varchar(20) DEFAULT NULL,
  `relationship` varchar(10) DEFAULT NULL,
  `other` varchar(50) DEFAULT NULL,
  `activestatus` bit(1) NOT NULL DEFAULT b'1',
  `sq1` varchar(20) NOT NULL,
  `sq2` varchar(20) NOT NULL,
  `profile` varchar(20) NOT NULL,
  `DateTime` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `password`, `username`, `fname`, `lname`, `email`, `contact`, `bday`, `gender`, `hometown`, `city`, `work`, `education`, `website`, `relationship`, `other`, `activestatus`, `sq1`, `sq2`, `profile`, `DateTime`) VALUES
(12, '1234', 'er.dhruvmishra', 'Dhruv', 'Mishra', 'er.dhruvmishra@gmail', 0, 'Male', '1-1-1996', NULL, NULL, NULL, NULL, NULL, NULL, NULL, b'1', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `online`
--

CREATE TABLE IF NOT EXISTS `online` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
