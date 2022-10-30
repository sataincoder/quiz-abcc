-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2022 at 05:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('635d466d29035', '635d466d29fe1'),
('635d466d308aa', '635d466d31780'),
('635d466d368ab', '635d466d37492'),
('635d466d3baf7', '635d466d3c676'),
('635d466d4171e', '635d466d42265');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('635d466d29035', 'Aman Choudhary ', '635d466d29fdb'),
('635d466d29035', 'Technical Aman', '635d466d29fe1'),
('635d466d29035', 'Amar Kumar', '635d466d29fe3'),
('635d466d29035', 'Amit Kumar', '635d466d29fe4'),
('635d466d308aa', 'Technical Aman ', '635d466d31780'),
('635d466d308aa', 'Ashish Choudhary', '635d466d31786'),
('635d466d308aa', 'Salman Khan', '635d466d31787'),
('635d466d308aa', 'Aman Bhatiya', '635d466d31789'),
('635d466d368ab', 'Offline ', '635d466d37488'),
('635d466d368ab', 'Road line', '635d466d37490'),
('635d466d368ab', 'Group Line', '635d466d37491'),
('635d466d368ab', 'Online', '635d466d37492'),
('635d466d3baf7', 'Online', '635d466d3c676'),
('635d466d3baf7', 'On Call', '635d466d3c67d'),
('635d466d3baf7', 'Offline', '635d466d3c67e'),
('635d466d3baf7', 'Notice Board', '635d466d3c67f'),
('635d466d4171e', 'Menha', '635d466d4225b'),
('635d466d4171e', 'Sattar Kataiya', '635d466d42263'),
('635d466d4171e', 'Saharsa', '635d466d42264'),
('635d466d4171e', 'Khonha Chowck', '635d466d42265');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('635d44bee5503', '635d466d29035', 'Website Design By :', 4, 1),
('635d44bee5503', '635d466d308aa', 'Approch by website design : ', 4, 2),
('635d44bee5503', '635d466d368ab', 'Quiz Join By :', 4, 3),
('635d44bee5503', '635d466d3baf7', 'Quiz Result By : ', 4, 4),
('635d44bee5503', '635d466d4171e', 'Amit Bhabha Coaching Center Location :', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('635d44bee5503', 'Test For Abcc (quiz System)', 2, 10, 5, '2022-10-29 15:20:30');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('technical', 'ABBC', 'technicalaman@gmail.com', '1111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
