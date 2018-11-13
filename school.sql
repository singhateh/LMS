-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 13, 2018 at 02:08 PM
-- Server version: 5.7.21
-- PHP Version: 7.0.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `AID` int(11) NOT NULL AUTO_INCREMENT,
  `ANAME` varchar(150) NOT NULL,
  `APASS` varchar(150) NOT NULL,
  PRIMARY KEY (`AID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AID`, `ANAME`, `APASS`) VALUES
(1, 'admin', '1234'),
(2, 'alagie Singhateh', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

DROP TABLE IF EXISTS `class`;
CREATE TABLE IF NOT EXISTS `class` (
  `CID` int(11) NOT NULL AUTO_INCREMENT,
  `CNAME` varchar(150) NOT NULL,
  `CSEC` varchar(150) NOT NULL,
  PRIMARY KEY (`CID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`CID`, `CNAME`, `CSEC`) VALUES
(1, 'VIII', 'B'),
(2, 'III', 'C'),
(5, 'V', 'A'),
(6, 'III', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
CREATE TABLE IF NOT EXISTS `exam` (
  `EID` int(11) NOT NULL AUTO_INCREMENT,
  `ENAME` varchar(150) NOT NULL,
  `ETYPE` varchar(150) NOT NULL,
  `EDATE` varchar(150) NOT NULL,
  `SESSION` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`EID`, `ENAME`, `ETYPE`, `EDATE`, `SESSION`, `CLASS`, `SUB`) VALUES
(1, 'Term Exam', 'II-Term', '14-08-2018', 'FN', 'VIII', 'Tamil'),
(3, 'Term Exam', 'II-Term', '10-09-2018', 'FN', 'III', 'English'),
(4, 'Term Exam', 'II-Term', '18-09-2018', 'AN', 'V', 'Maths'),
(5, 'Term Exam', 'III-Term', '19-11-2018', 'FN', 'VIII', 'Tamil'),
(6, 'English', 'II-Term', '10-07-2018', 'FN', 'VIII', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `hclass`
--

DROP TABLE IF EXISTS `hclass`;
CREATE TABLE IF NOT EXISTS `hclass` (
  `HID` int(11) NOT NULL AUTO_INCREMENT,
  `TID` int(11) NOT NULL,
  `CLA` varchar(150) NOT NULL,
  `SEC` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  PRIMARY KEY (`HID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hclass`
--

INSERT INTO `hclass` (`HID`, `TID`, `CLA`, `SEC`, `SUB`) VALUES
(1, 1, 'VIII', 'A', 'English'),
(4, 4, 'III', 'B', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `mark`
--

DROP TABLE IF EXISTS `mark`;
CREATE TABLE IF NOT EXISTS `mark` (
  `MID` int(11) NOT NULL AUTO_INCREMENT,
  `REGNO` varchar(150) NOT NULL,
  `SUB` varchar(150) NOT NULL,
  `MARK` varchar(150) NOT NULL,
  `TERM` varchar(150) NOT NULL,
  `CLASS` varchar(150) NOT NULL,
  PRIMARY KEY (`MID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mark`
--

INSERT INTO `mark` (`MID`, `REGNO`, `SUB`, `MARK`, `TERM`, `CLASS`) VALUES
(1, 'S101', 'Tamil', '95', 'I-Term', 'III'),
(2, 'S101', 'English', '65', 'II-Term', 'III'),
(3, 's101', 'English', '100', 'II-Term', 'III');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
CREATE TABLE IF NOT EXISTS `staff` (
  `TID` int(11) NOT NULL AUTO_INCREMENT,
  `TNAME` varchar(150) NOT NULL,
  `TPASS` varchar(150) NOT NULL,
  `QUAL` varchar(150) NOT NULL,
  `SAL` varchar(150) NOT NULL,
  `PNO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `PADDR` text NOT NULL,
  `IMG` varchar(150) NOT NULL,
  PRIMARY KEY (`TID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`TID`, `TNAME`, `TPASS`, `QUAL`, `SAL`, `PNO`, `MAIL`, `PADDR`, `IMG`) VALUES
(4, 'ala', '123', 'MBA', '15000', '9874561230', 'ala@gmail.com', 'salem', 'staff/3.jpg'),
(5, 'Omar', '1234', 'MCA', '20000', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE IF NOT EXISTS `student` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `RNO` varchar(150) NOT NULL,
  `NAME` varchar(150) NOT NULL,
  `FNAME` varchar(150) NOT NULL,
  `DOB` varchar(150) NOT NULL,
  `GEN` varchar(150) NOT NULL,
  `PHO` varchar(150) NOT NULL,
  `MAIL` varchar(150) NOT NULL,
  `ADDR` text NOT NULL,
  `SCLASS` varchar(150) NOT NULL,
  `SSEC` varchar(150) NOT NULL,
  `SIMG` varchar(150) NOT NULL,
  `TID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `RNO`, `NAME`, `FNAME`, `DOB`, `GEN`, `PHO`, `MAIL`, `ADDR`, `SCLASS`, `SSEC`, `SIMG`, `TID`) VALUES
(1, 'S101', 'Anitha', 'Ram', '17-10-2003', 'Female', '9874561230', 'ram@gmail.com', 'Salem', 'III', 'C', 'student/4.jpg', 1),
(3, 'S102', 'Kavya', 'Ram', '19-11-2002', 'Female', '8529634710', 'ram@gmail.com', 'Salem', 'VIII', 'A', 'student/3.jpg', 4),
(4, 'S103', 'Kishor', 'Ravi', '17-03-2005', 'Male', '8794561230', 'ravi@gmail.com', 'Salem', 'V', 'C', 'student/3.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

DROP TABLE IF EXISTS `sub`;
CREATE TABLE IF NOT EXISTS `sub` (
  `SID` int(11) NOT NULL AUTO_INCREMENT,
  `SNAME` varchar(150) NOT NULL,
  PRIMARY KEY (`SID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`SID`, `SNAME`) VALUES
(2, 'English'),
(3, 'Maths'),
(5, 'Social Science');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
