-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2019 at 06:02 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `footballdb`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getteams` ()  SELECT * FROM teams$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `coach`
--

CREATE TABLE `coach` (
  `coachid` varchar(100) NOT NULL,
  `cname` varchar(100) NOT NULL,
  `teamid` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `coach`
--

INSERT INTO `coach` (`coachid`, `cname`, `teamid`, `team`) VALUES
('C0001', 'SHANKAR', 'K0001', 'FC GOA'),
('C0002', 'GURURAJ', 'K0002', 'BENGALURU FC'),
('C0003', 'KARAIYAPPA', 'K0003', 'CHENNAI FC'),
('C0004', 'YOGESHWARA', 'K0004', 'KERALA FC'),
('C0005', 'GANGA', 'K0005', 'MUMBAI FC'),
('C0006', 'SRINIVAS', 'K0006', 'NORTHEAST FC');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `managerid` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `teamid` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`managerid`, `mname`, `teamid`) VALUES
('M0001', 'ANADA', 'K0001'),
('M0002', 'SHANKAR', 'K0002'),
('M0003', 'OMKAR', 'K0003'),
('M0004', 'SUBHAS', 'K0004'),
('M0005', 'GURURAJ', 'K0005'),
('M0006', 'ARVIND', 'K0006');

-- --------------------------------------------------------

--
-- Table structure for table `matches`
--

CREATE TABLE `matches` (
  `matchid` varchar(100) NOT NULL,
  `hteamid` varchar(100) NOT NULL,
  `oteamid` varchar(100) NOT NULL,
  `won` varchar(100) NOT NULL,
  `points` varchar(100) NOT NULL,
  `stdname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matches`
--

INSERT INTO `matches` (`matchid`, `hteamid`, `oteamid`, `won`, `points`, `stdname`) VALUES
('M0001', 'K0001', 'K0002', 'BENGALURU FC', '2', 'CHIDAMBARAM'),
('M0002', 'K0003', 'K0005', 'CHENNAI FC', '2', 'LAL BHADUR'),
('M0003', 'K0003', 'K0005', 'MUMBAI FC', '2', 'KANTHIRAVA'),
('M0004', 'K0001', 'K0004', 'KERALA FC', '2', 'JAWARHARLAL'),
('M0005', 'K0004', 'K0003', 'MUMBAI FC', '2', 'JAWRHARLAL'),
('M0006', 'K0002', 'K0004', 'BENGALURU FC', '2', 'KANTIRAVA'),
('M0007', 'K0001', 'K0003', 'FC GOA', '2', 'RAJIV GANDHI'),
('M0008', 'K0005', 'K0001', 'CHENNAI FC', '2', 'CHIDAMBARAM'),
('M0009', 'K0006', 'K0001', 'NORTHEAST FC', '2', 'RAJIV GANDHI'),
('M0010', 'K0002', 'K0006', 'BENGALURU FC', '2', 'RAJIV GANDHI'),
('M0011', 'K0005', 'K0002', 'BENGALURU FC', '2', 'JAWARHARLAL'),
('M0012', 'K0004', 'K0005', 'KERALA FC', '2', 'CHIDAMBARAM'),
('M0013', 'K0006', 'K0004', 'NORTHEAST FC', '2', 'KANTIRAVA'),
('M0014', 'K0005', 'K0006', 'CHENNAI FC', '2', 'JAWAHARLAL'),
('M0015', 'K0003', 'K0006', 'KERELA FC', '2', 'RAJIV GANDHI');

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE `players` (
  `playerid` varchar(100) NOT NULL,
  `teamid` varchar(100) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `age` varchar(100) NOT NULL,
  `team` varchar(100) NOT NULL,
  `position` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`playerid`, `teamid`, `pname`, `age`, `team`, `position`) VALUES
('P0001', 'K0001', 'AKASH', '23', 'FC GOA', 'CF'),
('P0002', 'K0002', 'ANADA', '23', 'BENGALURU FC', 'GK'),
('P0003', 'K0003', 'YOGI', '24', 'MUMBAI FC', 'LC'),
('P0004', 'K0002', 'ARJUN', '21', 'BENGALURU FC', 'CB'),
('P0005', 'K0001', 'ARVIND', '23', 'FC GOA', 'RC'),
('P0006', 'K0002', 'YOGESHWARA', '24', 'BENGALURU FC', 'GK'),
('P0007', 'K0005', 'CHANDHRA', '23', 'CHENNAI FC', 'CF'),
('P0008', 'K0006', 'VIRAT', '24', 'NORTEAST FC', 'CF'),
('P0009', 'K0004', 'OMKAR', '21', 'KERALA FC', 'RCF'),
('P0010', 'K0002', 'RAMESH', '25', 'BENGALURU FC', 'MF'),
('P0011', 'K0006', 'KANTHRAJ', '25', 'NORTHEAST FC', 'CF'),
('P0012', 'K0004', 'RAMU', '25', 'KERALA FC', 'LC'),
('P0013', 'K0002', 'SUMANTH', '25', 'BENGALURU FC', 'GK');

-- --------------------------------------------------------

--
-- Table structure for table `standiings`
--

CREATE TABLE `standiings` (
  `teamid` varchar(100) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `ranking` int(11) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `standing`
--

CREATE TABLE `standing` (
  `teamid` varchar(100) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standing`
--

INSERT INTO `standing` (`teamid`, `tname`, `ranking`) VALUES
('K0001', 'FC GOA', '2'),
('K0002', 'BENGALURU FC', '1'),
('K0004', 'KERALA FC', '6'),
('K0003', 'MUMBAI FC', '4');

-- --------------------------------------------------------

--
-- Table structure for table `standings`
--

CREATE TABLE `standings` (
  `teamid` varchar(100) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `tot_ points` varchar(100) NOT NULL,
  `ranking` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standings`
--

INSERT INTO `standings` (`teamid`, `tname`, `tot_ points`, `ranking`) VALUES
('K0001', 'FC GOA', '2', '6');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `teamid` varchar(100) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `no_of_players` varchar(100) NOT NULL,
  `captain` varchar(100) NOT NULL,
  `coachid` varchar(100) NOT NULL,
  `manager_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`teamid`, `tname`, `no_of_players`, `captain`, `coachid`, `manager_name`) VALUES
('K0001', 'FC GOA', '23', 'FCG01', 'C0001', 'AKASH'),
('K0002', 'BENGALURU FC', '24', 'BFC01', 'C0002', 'SHANKAR'),
('K0003', 'MUMBAI FC', '23', 'MFC01', 'C0003', 'OMKAR'),
('K0004', 'KERALA FC', '23', 'KFC01', 'C0004', 'SUBHAS'),
('K0005', 'CHENNAI FC', '24', 'CFC01', 'C0005', 'GURURAJ'),
('K0006', 'NORTEAST FC', '23', 'NFC01', 'C0006', 'ARVIND'),
('K0007', 'PUNE FC', '24', 'PFC01', 'C0007', 'GURURAJR');

--
-- Triggers `teams`
--
DELIMITER $$
CREATE TRIGGER `after_teams_deleted` AFTER DELETE ON `teams` FOR EACH ROW BEGIN
DELETE FROM teams_backup where teamid=OLD.teamid;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `after_teams_insert` AFTER INSERT ON `teams` FOR EACH ROW INSERT into teams_backup VALUES(NEW.teamid,NEW.tname,NEW.no_of_players,NEW.captain,NEW.coachid,NEW.manager_name)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `teams_backup`
--

CREATE TABLE `teams_backup` (
  `teamid` varchar(100) NOT NULL,
  `tname` varchar(100) NOT NULL,
  `no_of_ players` varchar(100) NOT NULL,
  `captain` varchar(100) NOT NULL,
  `coachid` varchar(100) NOT NULL,
  `manager_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teams_backup`
--

INSERT INTO `teams_backup` (`teamid`, `tname`, `no_of_ players`, `captain`, `coachid`, `manager_name`) VALUES
('K0007', 'PUNE FC', '24', 'PFC01', 'C0007', 'GURURAJR');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coach`
--
ALTER TABLE `coach`
  ADD PRIMARY KEY (`coachid`),
  ADD KEY `coach_ibfk_1` (`teamid`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`managerid`),
  ADD KEY `manager_ibfk_1` (`teamid`);

--
-- Indexes for table `matches`
--
ALTER TABLE `matches`
  ADD PRIMARY KEY (`matchid`),
  ADD KEY `hteamid` (`hteamid`),
  ADD KEY `oteamid` (`oteamid`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`playerid`),
  ADD KEY `players_ibfk_1` (`teamid`);

--
-- Indexes for table `standiings`
--
ALTER TABLE `standiings`
  ADD KEY `teamid` (`teamid`);

--
-- Indexes for table `standing`
--
ALTER TABLE `standing`
  ADD KEY `teamid` (`teamid`);

--
-- Indexes for table `standings`
--
ALTER TABLE `standings`
  ADD KEY `teamid` (`teamid`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`teamid`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `coach`
--
ALTER TABLE `coach`
  ADD CONSTRAINT `coach_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE CASCADE;

--
-- Constraints for table `manager`
--
ALTER TABLE `manager`
  ADD CONSTRAINT `manager_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE CASCADE;

--
-- Constraints for table `matches`
--
ALTER TABLE `matches`
  ADD CONSTRAINT `matches_ibfk_1` FOREIGN KEY (`hteamid`) REFERENCES `teams` (`teamid`) ON DELETE CASCADE,
  ADD CONSTRAINT `matches_ibfk_2` FOREIGN KEY (`oteamid`) REFERENCES `teams` (`teamid`) ON DELETE CASCADE;

--
-- Constraints for table `players`
--
ALTER TABLE `players`
  ADD CONSTRAINT `players_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`) ON DELETE CASCADE;

--
-- Constraints for table `standiings`
--
ALTER TABLE `standiings`
  ADD CONSTRAINT `standiings_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`);

--
-- Constraints for table `standing`
--
ALTER TABLE `standing`
  ADD CONSTRAINT `standing_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`);

--
-- Constraints for table `standings`
--
ALTER TABLE `standings`
  ADD CONSTRAINT `standings_ibfk_1` FOREIGN KEY (`teamid`) REFERENCES `teams` (`teamid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
