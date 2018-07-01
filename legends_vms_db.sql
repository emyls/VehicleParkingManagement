-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2017 at 06:34 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `legends_vms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `BID` int(4) NOT NULL,
  `Bname` varchar(30) NOT NULL,
  `Baddress` varchar(50) NOT NULL,
  `Bcity` varchar(20) NOT NULL,
  `Bphone` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`BID`, `Bname`, `Baddress`, `Bcity`, `Bphone`) VALUES
(4, 'Kandy', '12A,Kotugodalla str,Kandy', 'Kandy', '0'),
(5, 'Colombo', '21B,1/1,Colombo', 'Colombo', '0'),
(28, 'Galle', 'No60,Colombo Rd,Galle', 'Galle', '0316254165'),
(27, 'Matale', 'No50,Kandy Rd,Matale', 'Matale', '0663265235'),
(26, 'Kurunagela', 'No10,KandyRd,Kurunagela', 'Kurunagala', '0372362165');

-- --------------------------------------------------------

--
-- Table structure for table `branch_model`
--

CREATE TABLE `branch_model` (
  `BID` int(4) NOT NULL,
  `MNO` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch_model`
--

INSERT INTO `branch_model` (`BID`, `MNO`) VALUES
(4, 'benzkomp10'),
(4, 'nis2015Juke'),
(5, 'toy2015Prius'),
(26, 'testx11a12'),
(27, 'hyuelen2016'),
(28, 'toy2015Prius');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `CID` int(6) NOT NULL,
  `Cname` varchar(30) NOT NULL,
  `NIC` char(10) NOT NULL,
  `Caddress` varchar(50) NOT NULL,
  `Cmobile` char(10) NOT NULL,
  `Chome` char(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`CID`, `Cname`, `NIC`, `Caddress`, `Cmobile`, `Chome`) VALUES
(24, 'Sachini Nipunsala', '901254636v', 'No23,Geliyoa Rd,Gampola', '0772365981', '0712569874'),
(4, 'Dilan Mel', '953426789v', '34,Gampola rd,Kuruduwatta', '0714365789', '0812354345'),
(23, 'Chathurika Koswaththa', '801254633v', 'No94A,Badulla Rd,Bandarawela', '0782365985', '0193265456'),
(22, 'Prashan Perera', '802154222v', 'No54,Gampola Rd,Weligalla', '0771258954', '0812369541'),
(21, 'Gihani Gunarathna', '862152635v', 'No20,Peradeniya Rd,Kandy', '0712365984', '0812369545');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EID` int(4) NOT NULL,
  `Ename` varchar(30) NOT NULL,
  `NIC` char(10) NOT NULL,
  `Egender` varchar(5) NOT NULL,
  `Eaddress` varchar(50) NOT NULL,
  `Eposition` varchar(15) NOT NULL,
  `Eusername` varchar(20) NOT NULL,
  `Epassword` varchar(12) CHARACTER SET big5 COLLATE big5_bin NOT NULL,
  `Emobile` char(10) NOT NULL,
  `Ehome` char(10) NOT NULL,
  `BID` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EID`, `Ename`, `NIC`, `Egender`, `Eaddress`, `Eposition`, `Eusername`, `Epassword`, `Emobile`, `Ehome`, `BID`) VALUES
(5, 'E.M.Y.L.Edirisooriya', '941016210v', 'Male', '123B,1/1,Hewaheta rd,Thalwatte', 'Admin', 'lali', 'admin123', '0711236315', '0812240434', 0),
(4, 'Piumal Kothalawala', '954637284v', 'Male', '123/1,Nuwaraeliya rd,Gampola', 'Manager', 'bakkare', 'mankan123', '0712345653', '0812345657', 4),
(13, 'Gayan Pradeep', '941236545v', 'Male', 'No98,Gohagoda Rd,Kurunagala', 'Employee', 'gayya', 'emp123g', '0712369584', '0812369584', 28),
(12, 'L.Ekanayaka', '931215425v', 'Male', 'No 29,Matale Rd,Matale', 'Employee', 'laka', 'emp123', '0712365984', '0812369584', 27),
(11, 'P.R. Liyanaarachchi', '963140351v', 'Male', 'No100,Colombo Rd ,Kandy', 'Manager', 'Riley', 'riley', '0710365232', '0812365944', 26);

-- --------------------------------------------------------

--
-- Table structure for table `manufact`
--

CREATE TABLE `manufact` (
  `MID` int(4) NOT NULL,
  `MAname` varchar(20) NOT NULL,
  `MAaddress` varchar(50) NOT NULL,
  `MAphone1` varchar(20) NOT NULL,
  `MAphone2` varchar(20) NOT NULL,
  `MAemail` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufact`
--

INSERT INTO `manufact` (`MID`, `MAname`, `MAaddress`, `MAphone1`, `MAphone2`, `MAemail`) VALUES
(4, 'Toyota', 'No45,Osaka,Japan', '+254625544', '+256942121', 'info@toyota.com'),
(3, 'Nissan', 'jfheijhe japan', '63575347243234', '2324232234ss', 'ghjui@gmail.coms'),
(5, 'Tesla', 'No97,Califoniya,USA', '+125464945121212', '+212121554445452', 'Info@tesla.com'),
(6, 'Mercedeze Benz', 'No20,Dons Street,Germany', '+29212212', '+29313113', 'Info@Benz.com'),
(7, 'Hyundai', 'No45,Chokohoma Str,South Korea', '+897855555', '+895652555', 'Info@hyundai.com');

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `MNO` varchar(20) NOT NULL,
  `MOname` varchar(20) NOT NULL,
  `MOyear` varchar(4) NOT NULL,
  `purchasedPrice` double NOT NULL,
  `sellingPrice` double NOT NULL,
  `MID` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`MNO`, `MOname`, `MOyear`, `purchasedPrice`, `sellingPrice`, `MID`) VALUES
('nis2015Juke', 'Juke', '2015', 310000, 490000, 2),
('toy2015Prius', 'Prius', '2014', 330000, 550000, 1),
('testx11a12', 'Tx11A', '2012', 7000000, 9000000, 5),
('benzkomp10', 'Kompossor', '2010', 9000000, 12000000, 6),
('hyuelen2016', 'Elentra', '2016', 6000000, 7700000, 7);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `PID` int(10) NOT NULL,
  `invoiceNO` int(6) NOT NULL,
  `Pdate_time` varchar(20) NOT NULL,
  `Ptype` varchar(5) NOT NULL DEFAULT 'cash',
  `PcardNO` varchar(20) DEFAULT NULL,
  `Pamount` double NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`PID`, `invoiceNO`, `Pdate_time`, `Ptype`, `PcardNO`, `Pamount`) VALUES
(2, 4, '2010/04/13 12:30', 'cash', NULL, 9000000),
(3, 21, '2015/10/23 04:55', 'cash', NULL, 9000000),
(4, 22, '2014/01/02 02:23', 'cash', NULL, 550000),
(5, 23, '2015/02/24 10:56', 'cash', NULL, 9000000),
(6, 24, '2016/01/01 09:55', 'cash', NULL, 490000);

-- --------------------------------------------------------

--
-- Table structure for table `sold`
--

CREATE TABLE `sold` (
  `invoiceNO` int(6) NOT NULL,
  `VID` int(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sold`
--

INSERT INTO `sold` (`invoiceNO`, `VID`) VALUES
(4, 6),
(21, 10),
(22, 11),
(23, 12),
(24, 13);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `VID` int(6) NOT NULL,
  `EngineNO` varchar(12) NOT NULL,
  `ChassyNO` varchar(12) NOT NULL,
  `colour` varchar(12) NOT NULL,
  `MNO` varchar(15) NOT NULL,
  `CID` int(6) DEFAULT NULL,
  `Vbringdate` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`VID`, `EngineNO`, `ChassyNO`, `colour`, `MNO`, `CID`, `Vbringdate`) VALUES
(1, 'toyer34562', '23423423', 'Black', 'toy2015Prius', NULL, '14/5/2017'),
(2, 'toyer34562', '23423423', 'White', 'toy2015Prius', NULL, '14/5/2017'),
(7, 'hn251p', 'w12351k', 'White', 'benzkomp10', NULL, ''),
(6, 'uv46t', '1254vi', 'Black', 'testx11a12', NULL, ''),
(8, 'v845k', 'v82221', 'Blue', 'hyuelen2016', NULL, ''),
(9, 'k10', 'k26552', 'Gold', 'benzkomp10', 21, '2015/10/23'),
(10, 'y45', 'y54642', 'Black', 'toy2015Prius', 22, '2014/01/02'),
(11, 'v8', 'v55665', 'Red', 'testx11a12', 23, '2010/10/12'),
(12, 'v8', 'v12541', 'Green', 'nis2015Juke', 24, '2013/03/21'),
(13, 'v82', 'v1211', 'Black', 'benzkomp10', 4, '2010/04/13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`BID`);

--
-- Indexes for table `branch_model`
--
ALTER TABLE `branch_model`
  ADD PRIMARY KEY (`BID`,`MNO`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EID`),
  ADD UNIQUE KEY `Epassword` (`Epassword`),
  ADD UNIQUE KEY `Eusername` (`Eusername`);

--
-- Indexes for table `manufact`
--
ALTER TABLE `manufact`
  ADD PRIMARY KEY (`MID`),
  ADD UNIQUE KEY `MAemail` (`MAemail`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`MNO`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `sold`
--
ALTER TABLE `sold`
  ADD PRIMARY KEY (`invoiceNO`,`VID`),
  ADD KEY `VID` (`VID`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`VID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `BID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `CID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `EID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `manufact`
--
ALTER TABLE `manufact`
  MODIFY `MID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `PID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `VID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
