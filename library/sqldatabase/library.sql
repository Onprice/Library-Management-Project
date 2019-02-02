-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2019 at 06:56 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'rashmi', 'rashmi111995@gmail.com', 'admin', 'rashmi', '2019-01-26 06:59:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'P K Sinha', '2017-07-08 12:49:09', '2019-01-26 09:50:18'),
(2, 'Millman, Halkias', '2017-07-08 14:30:23', '2019-01-26 09:51:35'),
(3, 'B.S.Manke', '2017-07-08 14:35:08', NULL),
(4, 'A.M NEVILLE', '2017-07-08 14:35:21', NULL),
(5, 'P.K. Nag’s', '2017-07-08 14:35:36', NULL),
(9, 'Ross Malaga', '2017-07-08 15:22:03', NULL),
(10, 'Simon Haykins', '2019-01-26 10:35:28', NULL),
(11, 'Robert Sedgewick', '2019-01-26 10:40:09', NULL),
(12, 'Yashavant P. Kanetkar', '2019-01-26 10:40:25', NULL),
(14, 'Benjamin C. Pierce', '2019-01-26 10:41:17', NULL),
(15, ' Ram Badri', '2019-01-26 10:52:41', NULL),
(16, 'R. K. Bansal', '2019-01-26 10:54:49', NULL),
(17, 'K. Subarmanya', '2019-01-26 10:55:23', NULL),
(18, 'P.S Bhimbra', '2019-01-26 11:01:15', NULL),
(19, 'Adel S. Sedra', '2019-01-26 11:02:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(4, 'Network Analysis ', 5, 2, 2147483647, 330, '2019-01-26 10:12:49', NULL),
(5, 'Communication System', 5, 10, 2147483647, 250, '2019-01-26 10:37:22', NULL),
(6, 'Algorithms', 4, 11, 2147483647, 250, '2019-01-26 10:42:38', NULL),
(7, 'Let Us C', 4, 12, 2147483647, 550, '2019-01-26 10:45:16', NULL),
(8, 'Computer Networks', 4, 14, 2147483647, 550, '2019-01-26 10:46:32', NULL),
(9, 'Advanced Microprocessor and Interfacing', 5, 15, 70434484, 394, '2019-01-26 10:53:29', NULL),
(10, 'Fluid Mechanics and Fluid Machines', 11, 16, 2147483647, 400, '2019-01-26 10:57:43', NULL),
(11, 'Engineering Hydrology', 11, 17, 2147483647, 425, '2019-01-26 10:59:32', NULL),
(12, 'Electrical Machinery', 6, 18, 2147483647, 400, '2019-01-26 11:03:10', NULL),
(13, 'Microelectronic Circuits', 11, 19, 130132012, 250, '2019-01-26 11:04:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Computer Science', 1, '2017-07-04 18:35:25', '2019-01-26 09:44:22'),
(5, 'Electronics And Communication', 1, '2017-07-04 18:35:39', '2019-01-26 09:44:56'),
(6, 'Electrical', 1, '2017-07-04 18:35:55', '2019-01-26 09:45:34'),
(8, 'Mechanical Engineering', 1, '2019-01-26 09:59:13', '2019-01-26 09:59:41'),
(9, 'Information Technology', 1, '2019-01-26 10:02:21', '2019-01-26 10:02:33'),
(11, 'Civil Engineering', 1, '2019-01-26 10:56:43', '0000-00-00 00:00:00'),
(12, 'SCIENCE', 1, '2019-02-01 10:24:32', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL),
(7, 4, 'SID002', '2019-01-26 11:09:57', NULL, NULL, NULL),
(8, 4, 'SID013', '2019-01-31 09:26:20', '2019-01-31 09:27:24', 1, 0),
(9, 4, 'SID014', '2019-02-01 05:57:07', NULL, NULL, NULL),
(10, 4, 'SID015', '2019-02-01 10:16:18', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(11, 'SID012', 'rashmi', 'rashmi111995@gmail.com', '9752091498', '0ce4ff80e8a029c19abaa08a2019a980', 0, '2019-01-26 06:35:04', '2019-01-26 11:06:24'),
(12, 'SID013', 'suraj', 'suraj@gmail.com', '9752091497', '4dd49f4f84e4d6945e3bc6d14812004e', 1, '2019-01-28 11:20:38', NULL),
(13, 'SID014', 'rashmi', 'rashmi@gmail.com', '9752091499', '4641999a7679fcaef2df0e26d11e3c72', 1, '2019-01-29 06:55:52', NULL),
(14, 'SID015', 'udaysingh chauhan', 'imudaysinghchauhan@gmail.com', '8269084532', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2019-02-01 10:13:25', NULL),
(67, 'STD025', 'POOJA CHAUHAN', 'POOJA.CHAUHAN@GMAIL.COM', '9691421759', '1234', 12, '2019-02-01 10:22:55', '2019-01-31 18:30:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
