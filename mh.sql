-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2019 at 10:07 AM
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
-- Database: `mh`
--

-- --------------------------------------------------------

--
-- Table structure for table `dischargedata`
--

CREATE TABLE `dischargedata` (
  `number` varchar(30) NOT NULL,
  `dateofadmission` date NOT NULL,
  `timeofadmission` time NOT NULL,
  `dateofdischarge` date NOT NULL,
  `timeofdischarge` time NOT NULL,
  `n_patient` varchar(100) NOT NULL,
  `ward` varchar(15) NOT NULL,
  `injuryreport` varchar(200) NOT NULL,
  `medicalcategory` varchar(200) NOT NULL,
  `disposal` varchar(200) NOT NULL,
  `disposedas` varchar(200) NOT NULL,
  `documentinitiated` varchar(200) NOT NULL,
  `medicalboardheldon` varchar(200) NOT NULL,
  `medicalboarddueon` varchar(100) NOT NULL,
  `medicalboarddesc` text NOT NULL,
  `diagnosis` text NOT NULL,
  `summary` text NOT NULL,
  `instructiontopatient` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dischargedata`
--

INSERT INTO `dischargedata` (`number`, `dateofadmission`, `timeofadmission`, `dateofdischarge`, `timeofdischarge`, `n_patient`, `ward`, `injuryreport`, `medicalcategory`, `disposal`, `disposedas`, `documentinitiated`, `medicalboardheldon`, `medicalboarddueon`, `medicalboarddesc`, `diagnosis`, `summary`, `instructiontopatient`) VALUES
('9115', '2019-01-08', '08:48:00', '2019-01-08', '08:54:40', 'Amit Kumar Bharti', '', '', '', '', '', '', '', '', '\n', '\n', '\n', '\n'),
('9115', '2019-01-08', '08:48:00', '2019-01-20', '10:33:13', 'Amit Kumar Bharti', '', 'null', 'null', 'null', 'null', 'null', 'null', 'null', 'the man was climbing upon a tree and fell down with a smash.driving long distances is good for health and makes us refresh our mind specially when we go out with friends\n', '\n', '\n', '\n'),
('9115', '2019-02-16', '21:51:00', '2019-02-16', '21:51:43', 'Amit Bharti', 'surg', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a', 'n/a\n', 'n/a\n', 'n/a\nn/a\nn/a\n', 'n/a\n');

-- --------------------------------------------------------

--
-- Table structure for table `officialdata`
--

CREATE TABLE `officialdata` (
  `number` varchar(30) NOT NULL,
  `h_name` varchar(50) NOT NULL,
  `adno` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `unitwaddress` varchar(50) NOT NULL,
  `service` varchar(10) NOT NULL,
  `station` varchar(30) NOT NULL,
  `command` varchar(30) NOT NULL,
  `nkin` varchar(30) NOT NULL,
  `relation` varchar(20) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `cdano` varchar(20) NOT NULL,
  `roffice` varchar(30) NOT NULL,
  `addroffice` varchar(50) NOT NULL,
  `totals` varchar(7) NOT NULL,
  `arms` varchar(30) NOT NULL,
  `area` varchar(30) DEFAULT NULL,
  `post` varchar(40) NOT NULL,
  `city` varchar(15) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `pin` varchar(15) DEFAULT NULL,
  `icd` varchar(20) DEFAULT NULL,
  `ab64` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `officialdata`
--

INSERT INTO `officialdata` (`number`, `h_name`, `adno`, `rank`, `name`, `unitwaddress`, `service`, `station`, `command`, `nkin`, `relation`, `mobile`, `cdano`, `roffice`, `addroffice`, `totals`, `arms`, `area`, `post`, `city`, `state`, `pin`, `icd`, `ab64`) VALUES
('12345', 'Military Hospital,Amritsar', '12345', 'Major', 'Amit Kumar Bharti', 'nwsc', 'Air Force', 'nwsc', 'batallion', 'amit', 'self', '9115859979', '25666', 'asr', 'asr', '1 yrs', 'Arms', '', '', '', '', '', 'N/A', 'N/A'),
('9115', 'Military Hospital,Amritsar', '12345', 'Major', 'Amit Kumar Bharti', 'nwsc', 'Army', 'nwsc', 'fwsc', 'amit', 'self', '9115859979', '12345', 'Asr', 'Asr', '1 yrs', 'arms', 'Bharat nagar', 'kangra', 'Asr', 'punjab', '143001', 'N/A', 'N/A');

-- --------------------------------------------------------

--
-- Table structure for table `patientdata`
--

CREATE TABLE `patientdata` (
  `number` varchar(30) NOT NULL,
  `datetime` datetime NOT NULL,
  `dischargedate` datetime DEFAULT NULL,
  `adddate` date NOT NULL,
  `disdate` date DEFAULT NULL,
  `h_name` varchar(50) NOT NULL,
  `n_patient` varchar(100) NOT NULL,
  `r_patient` varchar(50) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `age` varchar(7) NOT NULL,
  `martial` varchar(10) NOT NULL,
  `religion` varchar(10) NOT NULL,
  `typead` varchar(50) DEFAULT NULL,
  `transfer` varchar(100) NOT NULL,
  `disease` varchar(200) DEFAULT NULL,
  `diet` varchar(50) DEFAULT NULL,
  `received` varchar(20) DEFAULT NULL,
  `diagnosis` varchar(200) DEFAULT NULL,
  `seenby` varchar(50) DEFAULT NULL,
  `ward` varchar(15) DEFAULT NULL,
  `remarks` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patientdata`
--

INSERT INTO `patientdata` (`number`, `datetime`, `dischargedate`, `adddate`, `disdate`, `h_name`, `n_patient`, `r_patient`, `sex`, `age`, `martial`, `religion`, `typead`, `transfer`, `disease`, `diet`, `received`, `diagnosis`, `seenby`, `ward`, `remarks`) VALUES
('9115', '2019-01-08 08:48:00', '2019-01-20 10:33:54', '2019-01-08', '2019-01-20', 'Military Hospital,Amritsar', 'Amit Kumar Bharti', 'self', 'Male', '22', 'Single', 'Hindu', 'Direct', 'N/A', 'cold', '', 'Walking', 'N/A', '', '', 'N/A'),
('9115', '2019-01-08 08:55:00', '2019-01-20 10:33:54', '2019-01-08', '2019-01-20', 'Military Hospital,Amritsar', 'Amit Kumar Bharti', 'self', 'Male', '22', 'Single', 'hindu', '', 'N/A', '', '', '', 'N/A', '', '', 'N/A'),
('9115', '2019-01-08 08:56:00', '2019-01-20 10:33:54', '2019-01-08', '2019-01-20', 'Military Hospital,Amritsar', 'Amit Kumar Bharti', 'self', 'Male', '22', 'Single', 'Hindu', '', 'N/A', '', '', '', 'N/A', '', '', 'N/A'),
('12345', '2019-01-09 20:51:00', NULL, '2019-01-09', NULL, 'Military Hospital,Amritsar', 'Amit', 'self', 'Male', '22', 'Single', 'hindu', 'Direct', 'N/A', 'fever', 'normal', 'Walking', 'N/A', 'maj manjeet', 'surg', 'N/A'),
('9115', '2019-02-16 21:51:00', '2019-02-16 21:52:21', '2019-02-16', '2019-02-16', 'Military Hospital,Amritsar', 'Amit Bharti', 'self', 'Male', '22', 'Single', 'Hindu', 'Direct', 'N/A', 'fever', 'normal', 'Walking', 'N/A', 'lft raju', 'surg', 'N/A'),
('9115', '2019-04-20 13:06:00', NULL, '2019-04-20', NULL, 'Military Hospital,Amritsar', 'rahul', 'bro', 'Male', '20', 'Single', 'hindu', 'Reassessment Medical Board', 'N/A', '', '', '', 'N/A', '', '', 'N/A');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `officialdata`
--
ALTER TABLE `officialdata`
  ADD PRIMARY KEY (`number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
