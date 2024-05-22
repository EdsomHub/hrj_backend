-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2024 at 08:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ipaisa`
--

-- --------------------------------------------------------

--
-- Table structure for table `aeps_history`
--

CREATE TABLE `aeps_history` (
  `id` int(11) NOT NULL,
  `TransactionID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `TransactionType` text DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `TransactionDate` text DEFAULT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aeps_history`
--

INSERT INTO `aeps_history` (`id`, `TransactionID`, `UserID`, `TransactionType`, `Amount`, `TransactionDate`, `Status`) VALUES
(1, 1, 101, 'Withdrawal', 500, '2024-03-09 12:30:00', 'Success'),
(2, 2, 103, 'Balance Inquiry', 0, '2024-03-09 14:45:00', 'Failed');

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int(11) NOT NULL,
  `BankName` text DEFAULT NULL,
  `AccountName` text DEFAULT NULL,
  `AccountNumber` bigint(20) DEFAULT NULL,
  `IFSC` text DEFAULT NULL,
  `BranchName` text DEFAULT NULL,
  `Timestamp` text DEFAULT NULL,
  `IsDMR` text DEFAULT NULL,
  `IsMain` text DEFAULT NULL,
  `IsVisible` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `BankName`, `AccountName`, `AccountNumber`, `IFSC`, `BranchName`, `Timestamp`, `IsDMR`, `IsMain`, `IsVisible`) VALUES
(1, 'Yes Bank', 'Edsom Fintech', 123456789012, 'YESBOUNTY74', 'Pashan', '2024-02-29 09:58:26', '1', '0', '1');

-- --------------------------------------------------------

--
-- Table structure for table `broadband_provider`
--

CREATE TABLE `broadband_provider` (
  `id` int(11) NOT NULL,
  `BRAODBAND PROVIDERS` text DEFAULT NULL,
  `field` text DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `broadband_provider`
--

INSERT INTO `broadband_provider` (`id`, `BRAODBAND PROVIDERS`, `field`, `MyUnknownColumn`) VALUES
(1, 'BSNL Broadband/Landline- Individual', 'telephone number', ''),
(2, 'Airtel Broadband', 'telephone number', ''),
(3, 'Airtel Landline', 'telephone number', ''),
(4, 'Alliance Broadband Services Pvt.Ltd', 'Customer id', ''),
(5, 'Asianet Broadband', 'sub code', ''),
(6, 'Connect Broadband', 'directory number', ''),
(7, 'Excell Broadband', 'customer id / mobile number', ''),
(8, 'Hathway Broadband', 'Customer id', ''),
(9, 'ION', 'Customer id', ''),
(10, 'MTNL Mumbai (Multiple Bills)- Landline', 'telephone number/Account Number', ''),
(11, 'MTNL Mumbai- Broadband', 'telephone number/Account Number', ''),
(12, 'Netplus Broadband', 'Billing Account Number', ''),
(13, 'TATA PLAY FIBER', 'Customer ID', ''),
(14, 'ACNS Pvt Ltd', 'User Name/ Phone Number', ''),
(15, 'ACT Fibernet', 'Account noo./ Username', ''),
(16, 'ANI Network Pvt Ltd', 'User Id', ''),
(17, 'ANONET Partner', 'User Id', ''),
(18, 'ANU Broadband', 'Username name/phone number', ''),
(19, 'AT Broadband', 'User id', ''),
(20, 'Activline', 'Username', ''),
(21, 'Adaptive Networks', 'Consumer Number', ''),
(22, 'Adigital', 'Customer Id', ''),
(23, 'Aeronet Online Services Private Limited', 'User Id', ''),
(24, 'Air Internet', 'user id', ''),
(25, 'Air Services', 'user id', ''),
(26, 'AirConnect', 'user name / year month (yyyy-mm)', ''),
(27, 'Air Jladi- Rural Broadband', 'userid', ''),
(28, 'Airgenie Communications', 'user name /phone number', ''),
(29, 'Airnet Networks', 'username', ''),
(30, 'Airnetz', 'user name /phone number', ''),
(31, 'Aitspl', 'user name /phone number', ''),
(32, 'Amber Online Services', 'user name', ''),
(33, 'Anonet Communications Private Limited', 'customer id', ''),
(34, 'Anthaeiksha Fiber', 'user name /phone number', ''),
(35, 'Aparna Star TV Network', 'user name /phone number', ''),
(36, 'Apex', 'user name /phone number', ''),
(37, 'Apple Fibernet', 'customer id', ''),
(38, 'Arihant Network', 'user id', ''),
(39, 'Arjun Telecom', 'user id', ''),
(40, 'Auriga', 'user id\'', ''),
(41, 'Ayman Internet', 'user id', ''),
(42, 'B FI Networks', 'user id', ''),
(43, 'B Fibernet', 'user name /phone number', ''),
(44, 'BCTN Broadband', 'user name /phone number', ''),
(45, 'BSNL Landline- Corporate', 'acc number', ''),
(46, 'Balaji Broadband', 'user name', ''),
(47, 'Baroda Broadband', 'acc number', ''),
(48, 'Bhima Riddhi Broadband Private Limited', 'user id', ''),
(49, 'Bijis Internet Private Limited', 'userid', ''),
(50, 'Blue Lotus Support Services Pvt ltd', 'customer id', ''),
(51, 'Broadband 24x7', 'user name /phone number', ''),
(52, 'Bsb Networks', 'user name /phone number', ''),
(53, 'COMWAY BROADBAND', 'customer id', ''),
(54, 'Chakdaha Cable and Broadband', 'user name /phone number', ''),
(55, 'Charotar Broadband', 'customer id', ''),
(56, 'Cherrinet', 'mobile number', ''),
(57, 'Cloud ISP', 'customer no', ''),
(58, 'Cloudlasers Broadband', 'user name /phone number', ''),
(59, 'Cloudsky Superfast Broadband and Services Pvt ltd', 'user name /phone number', ''),
(60, 'Comcast Broadband Services', 'user name', ''),
(61, 'Compliance Broadband (CBPL)', 'user name ', ''),
(62, 'Confiar Broadband', 'user id', ''),
(63, 'Correl Internet', 'user name', ''),
(64, 'Crystal Broadband', 'user name /phone number', ''),
(65, 'Crystalclear Network', 'user name /phone number', ''),
(66, 'Cyber Broadband Pvt Ltd', 'user name /phone number', ''),
(67, 'Den Broadband', 'user id', ''),
(68, 'DHL Broadband', 'user id', ''),
(69, 'Djio net\'', 'customer id', ''),
(70, 'DSCN', 'user id', ''),
(71, 'DVPL', 'user name /phone number', ''),
(72, 'DVPL BB', 'user name /phone number', ''),
(73, 'DVR Broadband Services', 'username', ''),
(74, 'Dwan Supports Private Ltd', 'username', ''),
(75, 'Dainik Savera net', 'userid', ''),
(76, 'Daksh Telecom', 'user name /phone number', ''),
(77, 'Deco Broadband', 'user id', ''),
(78, 'Deenet Services Private Limited', 'user name /phone number', ''),
(79, 'Digital World', 'user id', ''),
(80, 'Digiway Net', 'username', ''),
(81, 'Dreamnet Gigafiber', 'username', ''),
(82, 'Easy Net', 'user id', ''),
(83, 'Eknath', 'user name /phone number', ''),
(84, 'Esto Broadband Private Ltd', 'username', ''),
(85, 'Esto Media', 'customer number', ''),
(86, 'Ethernet Xpress', 'user id', ''),
(87, 'Eway Fibernet', 'userid', ''),
(88, 'Express Wire', 'user name /phone number', ''),
(89, 'Extreme Broadband', 'phone number', ''),
(90, 'FABNET', 'user id', ''),
(91, 'Feathers', 'user names', ''),
(92, 'Fiber Power Connects Private Limited', 'username', ''),
(93, 'FiberX', 'user name /phone number', ''),
(94, 'Ficus Telecom Pvt ltd', 'user name /phone number', ''),
(95, 'Flash Fibernet', 'customer number', ''),
(96, 'Foxtel Broadband', 'user name', ''),
(97, 'Frontline Internet Services', 'username', ''),
(98, 'Fusion Internet Services', 'customer id', ''),
(99, 'Fusion Net Broadband', 'customerid', ''),
(100, 'Future Connect Broadband', 'username', ''),
(101, 'GBPL', 'user name /phone number', ''),
(102, 'GBPS Networks Pvt Ltd', 'user name /phone number/ email id', ''),
(103, 'GTPL KCBPL Broadband Pvt ltd', 'user id', ''),
(104, 'Galaxynet', 'user name /phone number', ''),
(105, 'Gangotri Telenet Pvt ltd', 'unique registration no', ''),
(106, 'Gateway Networks', 'user name /phone number', ''),
(107, 'Gigantic Broadband', 'user id', ''),
(108, 'GlobalFibertel', 'user name /phone number', ''),
(109, 'Globnet Broadband', 'user name /phone number', ''),
(110, 'Gtech Broadband', 'user name /phone number', ''),
(111, 'Gtech Partner', 'user name /phone number', ''),
(112, 'Gulbarga Mega Speed', 'userid', ''),
(113, 'Hasten', 'user name /phone number', ''),
(114, 'Hi Reach Broadband', 'user name /phone number', ''),
(115, 'Hightech Broadband Services Pvt ltd', 'usersname/caf no/phone no', ''),
(116, 'Hybrid Network', 'user name /phone number', ''),
(117, 'I Net Broadband', 'user id', ''),
(118, 'IGEN Networks private limited', 'user name /phone number', ''),
(119, 'INRI Communications Pvt ltd', 'user name /phone number', ''),
(120, 'IRRA Internet Service Private Limited', 'user name /phone number', ''),
(121, 'Imperium Digital Network Private Limited', 'customer id', ''),
(122, 'Inet Fiber', 'user name', ''),
(123, 'Infinet', 'user name /phone number', ''),
(124, 'Infinity Fibernet', 'customer id', ''),
(125, 'Infonet Comm Enterprises Pvt Ltd', 'customer id', ''),
(126, 'INSTALINKS BROADBAND', 'customer id /username', ''),
(127, 'Ishan Netsol Private Ltd', 'unique id', ''),
(128, 'Island Broadband', 'chip id', ''),
(129, 'Jabbar Communications', 'user name /phone number', ''),
(130, 'Jtel', 'acc number', ''),
(131, 'Kerala Vision Broadband', 'username', ''),
(132, 'Khatore It Solutions Private Limited', 'user name /phone number', ''),
(133, 'Khetan Telecommunications Pvt Ltd', 'user name /phone number', ''),
(134, 'Kingnet', 'user name /phone number', ''),
(135, 'Kings Broadband ', 'username', ''),
(136, 'Kord Broadband Services Pvt Ltd', 'username', ''),
(137, 'Krishiinet Infocom Pvt Ltd', 'customer number', ''),
(138, 'Krp Fibernet', 'user name /phone number', ''),
(139, 'Linkio Fibernet', 'mobile number', ''),
(140, 'Logon Broadband', 'username', ''),
(141, 'Lotus Broadband', 'user id', ''),
(142, 'M-Net Fiber Fast', 'user id /phone number', ''),
(143, 'MB Net', 'user name ', ''),
(144, 'MM Networks', 'user name /phone number', ''),
(145, 'MS Broadband', 'user name /phone number', ''),
(146, 'MS Networks ', 'user name /phone number', ''),
(147, 'MTNL Delhi- Broadband', 'telephone number witout std code', 'acc no'),
(148, 'MTNL Mumbai Lease Circuit', 'Ilcid', ''),
(149, 'Manas Broadband', 'user name', ''),
(150, 'Manojava Broadband Private Ltd', 'unique registration no', ''),
(151, 'Maya Electronics and Internet Service', 'unique registration no', ''),
(152, 'Megasoft Broadband', 'user name /phone number', ''),
(153, 'Meghlink', 'user id', ''),
(154, 'Metanet', 'user id', ''),
(155, 'Microscan Infocommtech pvt. Ltd', 'user name', ''),
(156, 'More Wifi', 'user name /phone number', ''),
(157, 'Multicraft Digital Technologies Priavte Limited', 'user id', ''),
(158, 'NPR Broadband Services', 'user name /phone number', ''),
(159, 'NS Broadband ', 'user name', ''),
(160, 'NSPL', 'user id', ''),
(161, 'Nageshwar Broadband', 'user name /phone number', ''),
(162, 'Net 9 Fibernet Priavet Limited', 'user id', ''),
(163, 'Ne Line ', 'user name /phone number', ''),
(164, 'National Broadband Network', 'unique subscriber no', ''),
(165, 'Netplus Fiber Broadband Palakollu', 'user name', ''),
(166, 'Netstra', 'customer id', ''),
(167, 'Netway Infotech Private Limited', 'username', ''),
(168, 'Nexen Broadband', 'username', ''),
(169, 'Nextra Broadband', 'consumer id', ''),
(170, 'Nikki Internet Services', 'user name /phone number', ''),
(171, 'Niss Fibernet', 'user name /phone number', ''),
(172, 'Nitro Broadband', 'user name /phone number', ''),
(173, 'OXYNET', 'client id', ''),
(174, 'One Broadband', 'user id', ''),
(175, 'One Click Internet Services', 'user name /phone number', ''),
(176, 'Onetouch Express', 'customer number', ''),
(177, 'Orange Broadband', 'username', ''),
(178, 'Orange Fibernet And Tv', 'user name /phone number', ''),
(179, 'Orange Infocom Pvt ltd', 'username', ''),
(180, 'Padmesh Broadband Pvt ltd', 'username', ''),
(181, 'PeerCast', 'username', ''),
(182, 'Pegasuswave Pvt Ltd', 'username', ''),
(183, 'Pink Broadband', 'customer id', ''),
(184, 'Plex Broadband', 'user id', ''),
(185, 'Pioneer Elabd Limited', 'user name /phone number/ customer id', ''),
(186, 'Qnet', 'user id', ''),
(187, 'Quadplay', 'user name /phone number', ''),
(188, 'Quest Consultancy Pvt ltd', 'username', ''),
(189, 'Quicknet', 'user name /phone number', ''),
(190, 'RCOM Networks', 'user name /phone number', ''),
(191, 'RDS Net', 'username', ''),
(192, 'REALTEL', 'user id', ''),
(193, 'RK Internet', 'user name /phone number', ''),
(194, 'RVR Digital', 'customer id', ''),
(195, 'Railwaire Broadband', 'user id /phone number', ''),
(196, 'Rajesh Digital And Datacom Priavte Limited', 'username', ''),
(197, 'Rapidnet', 'user name /phone number', ''),
(198, 'Raze Networks', 'user name /phone number', ''),
(199, 'Reach Broadband', 'user name /phone number', ''),
(200, 'Reisnet Broadband', 'user name /customer id', ''),
(201, 'Renu Broadband', 'user name', ''),
(202, 'Rida Online', 'user name /phone number', ''),
(203, 'Roarnet Broadband Private Limited', 'client id', ''),
(204, 'Royal Fibernet', 'user name /phone number', ''),
(205, 'Royal Nteworks', 'user name /phone number', ''),
(206, 'SBR Telecom', 'customer id', ''),
(207, 'SCCNET', 'user name /phone number', ''),
(208, 'SG Broadband', 'user name /phone number', ''),
(209, 'SR Broadband', 'user id', ''),
(210, 'SR NET KAVALI', 'user name /phone number', ''),
(211, 'SS INTERNET', 'user name /phone number', ''),
(212, 'ST Broadband Cable Services', 'username ', 'nicknaem'),
(213, 'Samaira Infotech Pvt. Ltd', 'username', ''),
(214, 'Samiksha Network Solutions', 'user name /phone number', ''),
(215, 'Seyon Teleinfra', 'user name /phone number', ''),
(216, 'Shark Broadband', 'user name', ''),
(217, 'Shine Broadband', 'user name /phone number', ''),
(218, 'Shiv Shakti Computers', 'user name /phone number', ''),
(219, 'Siliguri Internet and Cable Tv pvt ltd', 'unique subscriber number', ''),
(220, 'Singh Televentures', 'username', ''),
(221, 'Skyair Internet', 'user name /phone number', ''),
(222, 'Skynet', 'User Name/ Phone Number', ''),
(223, 'Skynet Fiber Broadband', 'user name /phone number', ''),
(224, 'Skynet Internet Broadband Pvt ltd', 'username', ''),
(225, 'Skynet Wireless', 'username', ''),
(226, 'Skyway Telecom', 'user name /phone number', ''),
(227, 'Skyworld Infotech', 'user name /phone number', ''),
(228, 'Smart Net India Pvt ltd', 'username', ''),
(229, 'Sndc Communications Private Limited', 'customer id', ''),
(230, 'Softnet Digital', 'userid', ''),
(231, 'Spectra', 'CAN/Account Id', ''),
(232, 'Speed Hex Tele Communications Pvt Ltd', 'User Name/ Phone Number', ''),
(233, 'Speed net Broadband', 'user name /phone number', ''),
(234, 'Speednet Unique Network', 'user id', ''),
(235, 'Spiderlink Networks Pvt ltd', 'username', ''),
(236, 'Spidernet Broadband', 'user id', ''),
(237, 'Sri Lakshmi Networks Private Limited', 'user name /phone number', ''),
(238, 'Sri Sai Communications and internet private limited', 'user name /phone number', ''),
(239, 'Ss Cablenet', 'user name /phone number', ''),
(240, 'Ssky Connect Private Limited', 'user id', ''),
(241, 'Starnetworks', 'user name /phone number', ''),
(242, 'Stromnet Broadband', 'username', ''),
(243, 'Super Sonic Broadband Private Limited', 'username', ''),
(244, 'SuperNetplus', 'username', ''),
(245, 'Suraj Networks', 'user name /phone number', ''),
(246, 'Swiftele Enterprises Private Limited', 'landline number', ''),
(247, 'T-way', 'user name /phone number', ''),
(248, 'TIC FIBER', 'customer id', ''),
(249, 'TJ Broadband Networks Pvt Ltd', 'username', ''),
(250, 'TSK Giga Fibber', 'user id', ''),
(251, 'TTN Broadband', 'account id', ''),
(252, 'Tata Teleservices Broadband- CDMA', 'telephone number', ''),
(253, 'Telosy Broadband', 'username', ''),
(254, 'Threesa', 'username', ''),
(255, 'Tikona Infinet Pvt.ltd (TIPL)', 'service id', ''),
(256, 'Timbl Broadband', 'customerid/rmn', ''),
(257, 'Treelink Broadband', 'user name /phone number', ''),
(258, 'UCN Broadband', 'user id', ''),
(259, 'Udupi Fastnet Pvt ltd', 'account number', ''),
(260, 'Ufibernet', 'user id', ''),
(261, 'VCC Broadband', 'user name /phone number', ''),
(262, 'VDV Digital', 'vc number/ customer id', ''),
(263, 'Vayu Online Pvt ltd', 'customer number', ''),
(264, 'Vfibernet Broadband', 'acc no', ''),
(265, 'Vision Fibernet', 'user id', ''),
(266, 'WANDOOR MULTIVERSE PVT LTD', 'consumer number', ''),
(267, 'Wave Fiber', 'user name /phone number', 'andra pradesh'),
(268, 'Way2Net IT Services Pvt Ltd', 'userid', ''),
(269, 'Weebo Networks Pvt ltd', 'uuser name /phone number', ''),
(270, 'Weone Broadband', 'user name /phone number/customer id', ''),
(271, 'Wibro Broadband', 'user id', ''),
(272, 'Willaegis', 'username/ email id', ''),
(273, 'Win Communications', 'user name /phone number', ''),
(274, 'Winux Communications', 'user name /phone number', ''),
(275, 'Wish Net Pvt Ltd', 'customer number', ''),
(276, 'World Phone Internet Services Pvt Ltd', 'user id', ''),
(277, 'Worldnet Broadband', 'user name /phone number', ''),
(278, 'Xpress Fiber', 'user name /phone number', ''),
(279, 'You Broadband', 'user name /acc no', ''),
(280, 'Zapbytes Fibernet', 'user name /phone number', ''),
(281, 'Zita Telecom', 'user name /phone number', ''),
(282, 'Zyetek Stream', 'user name /phone number', ''),
(283, 'cNc Broadband', 'user name /phone number', '');

-- --------------------------------------------------------

--
-- Table structure for table `channel_partner`
--

CREATE TABLE `channel_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `outlet_name` varchar(255) DEFAULT NULL,
  `aadharcard_number` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `bank_account_number` varchar(20) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pin_code` varchar(10) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `alternate_number` varchar(15) DEFAULT NULL,
  `pancard_number` varchar(20) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `updatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `channel_partner`
--

INSERT INTO `channel_partner` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `bank_account_number`, `ifsc`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `isActive`, `userType`, `createdDate`, `updateDate`, `createdBy`, `updatedBy`) VALUES
(1, 'Channel', 'Null', 'Partner', '1234567890', 'cpartner@example.com', 'ABC Retail', '1234 5678 9012', 'GSTIN12345678', '1990-01-01', '1234567890123456', 'ABCD0123456', '123 Main Street', '123456', 'XYZ', 'ABC', 'PQR', '0987654321', 'ABCDE1234F', 0, '', NULL, NULL, '', ''),
(2, 'Ben', 'Jamin', 'Tennyson', '9874561230', 'ben@gmail.com', 'XYZ Retail', '2456 7895 3245', 'GSTIN98745612', '1995-05-09', '7897897897895515', 'VFTE7845879', '345 Miain Street', '456123', 'YZX', 'BCT', 'POU', '7894561235', 'CVFKJ78955O', 0, '', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `circles`
--

CREATE TABLE `circles` (
  `id` int(11) NOT NULL,
  `sname` text DEFAULT NULL,
  `mappings` text DEFAULT NULL,
  `name` text DEFAULT NULL,
  `code` text DEFAULT NULL,
  `zone` text DEFAULT NULL,
  `mappings[0]` text DEFAULT NULL,
  `mappings[1]` text DEFAULT NULL,
  `mappings[2]` text DEFAULT NULL,
  `mappings[3]` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `circles`
--

INSERT INTO `circles` (`id`, `sname`, `mappings`, `name`, `code`, `zone`, `mappings[0]`, `mappings[1]`, `mappings[2]`, `mappings[3]`) VALUES
(1, 'Circle 1', 'America', 'The Rock', 'ABC', 'Zone 1', '', '', '', ''),
(2, 'All', '', 'Customer Care (All Over India).', 'ZZ', 'EAST', 'all', 'zz', 'na', NULL),
(3, 'Andhra Pradesh', '', 'Andhra Pradesh Telecom Circle.', 'AP', 'EAST', 'andhrapradesh', 'zte_andhrapradesh', 'ap', ''),
(4, 'Assam', '', 'Assam Telecom Circle.', 'AS', 'EAST', 'assam', 'zte_assam', 'as', '');

-- --------------------------------------------------------

--
-- Table structure for table `commission_distribution_repo`
--

CREATE TABLE `commission_distribution_repo` (
  `id` int(11) NOT NULL,
  `SNo` int(11) DEFAULT NULL,
  `Date` text DEFAULT NULL,
  `MobileNumber` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Tranid` text DEFAULT NULL,
  `Reqid` text DEFAULT NULL,
  `ProviderType` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `API` text DEFAULT NULL,
  `Source` text DEFAULT NULL,
  `CommissionAmount` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `commission_distribution_repo`
--

INSERT INTO `commission_distribution_repo` (`id`, `SNo`, `Date`, `MobileNumber`, `UserID`, `Tranid`, `Reqid`, `ProviderType`, `Provider`, `API`, `Source`, `CommissionAmount`) VALUES
(1, 1, '2024-03-09', 1234567890, 101, 'TRN123', 'REQ456', 'Select', 'Provider1', 'ALL', 'Source1', 50);

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` int(11) NOT NULL,
  `Req_ID` text DEFAULT NULL,
  `Date` text DEFAULT NULL,
  `Mobile_Number` int(11) DEFAULT NULL,
  `UserID` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `Req_ID`, `Date`, `Mobile_Number`, `UserID`, `Provider`, `Action`, `Status`, `Amount`) VALUES
(1, 'REQ001', '2024-03-10', 1234567890, 'user123', 'Provider A', 'Refund', 'Pending', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `complaint_hist`
--

CREATE TABLE `complaint_hist` (
  `id` int(11) NOT NULL,
  `Req_ID` text DEFAULT NULL,
  `Req_Date` text DEFAULT NULL,
  `Mobile_Number` int(11) DEFAULT NULL,
  `User_ID` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `complaint_hist`
--

INSERT INTO `complaint_hist` (`id`, `Req_ID`, `Req_Date`, `Mobile_Number`, `User_ID`, `Provider`, `Action`, `Status`, `Amount`) VALUES
(1, 'REQ001', '2024-03-10', 1234567890, 'user123', 'Provider A', 'Refund', 'Pending', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `distributor`
--

CREATE TABLE `distributor` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `outlet_name` text DEFAULT NULL,
  `aadharcard_number` text DEFAULT NULL,
  `gstin` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `bank_account_number` bigint(20) DEFAULT NULL,
  `ifsc` text DEFAULT NULL,
  `main_min_balance` int(11) DEFAULT NULL,
  `low_balance_alert_limit` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `district` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `alternate_number` bigint(20) DEFAULT NULL,
  `pancard_number` text DEFAULT NULL,
  `voter_id_number` text DEFAULT NULL,
  `aeps_unsettled_fund` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `updatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `distributor`
--

INSERT INTO `distributor` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `remark`, `bank_account_number`, `ifsc`, `main_min_balance`, `low_balance_alert_limit`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `voter_id_number`, `aeps_unsettled_fund`, `isActive`, `userType`, `createdDate`, `updateDate`, `createdBy`, `updatedBy`) VALUES
(1, 'Emily', 'Grace', 'Taylor', 9999999999, 'emily@example.com', 'PQR Retail', '9999 9999 9999', 'GSTIN99999999', '1992-07-08', 'Prompt service', 9999999999999999, 'IJKL9999999', 12000, 6000, '123 Oak Lane', 123456, 'RST', 'JKL', 'XYZ', 2222222222, 'QRSTU5678I', 'V8765432', 25000, 0, '', NULL, NULL, '', ''),
(2, 'John', 'D.', 'Smith', 9876543210, 'john.smith@example.com', 'Smith Stores', '123456789012', 'GSTIN123456', '1988-07-15', 'Good', 1234567890123456, 'ABCD0123456', 15000, 7500, '123 Main Street', 400001, 'Mumbai', 'Maharashtra', 'Mumbai', 9998887776, 'ABCDE1234F', 'VOTER1234', 30000, 0, '', NULL, NULL, '', ''),
(3, 'Alice', '', 'Johnson', 8765432109, 'alice.johnson@example.com', 'Johnson Mart', '210987654321', 'GSTIN987654', '1992-03-22', 'Average', 6543210987654321, 'EFGH0987654', 18000, 9000, '456 Oak Street', 500001, 'Hyderabad', 'Telangana', 'Hyderabad', 7776665554, 'XYZW3210K', 'VOTER5678', 25000, 0, '', NULL, NULL, '', ''),
(4, 'Michael', 'A.', 'Miller', 7654321098, 'michael.miller@example.com', 'Miller Retail', '987654321098', 'GSTIN987654', '1975-12-03', 'Satisfactory', 9876543210987654, 'IJKL9876543', 20000, 10000, '789 Elm Avenue', 600001, 'Chennai', 'Tamil Nadu', 'Chennai', 8887776665, 'PQRS5678L', 'VOTER9012', 28000, 0, '', NULL, NULL, '', ''),
(5, 'Emily', 'G.', 'Brown', 6543210987, 'emily.brown@example.com', 'Brown Superstore', '210987654321', 'GSTIN210987', '1982-08-17', 'Excellent', 2109876543210987, 'MNOP8765432', 22000, 11000, '890 Maple Drive', 700001, 'Kolkata', 'West Bengal', 'Kolkata', 6665554443, 'MNOZ1234P', 'VOTER3456', 32000, 0, '', NULL, NULL, '', ''),
(6, 'Sophia', 'L.', 'Taylor', 5432109876, 'sophia.taylor@example.com', 'Taylor Market', '876543210987', 'GSTIN876543', '1995-03-28', 'Good', 8765432109876543, 'QRST7654321', 17000, 8500, '567 Pine Lane', 800001, 'Bangalore', 'Karnataka', 'Bangalore', 5554443332, 'ABCD5678Q', 'VOTER7890', 26000, 0, '', NULL, NULL, '', ''),
(7, 'Robert', 'James', 'Johnson', 9876543210, 'robert@example.com', 'Robert Distributors', '123456789012', 'GSTIN1234', '1980-07-20', 'Remark 1', 1234567890, 'ABCD0123456', 5000, 2000, '123 Main Street', 12345, 'Anytown', 'Some State', 'Some City', 9876543211, 'ABCDE1234F', 'VOT1234567', 500, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(8, 'Jennifer', '', 'Smith', 1234567890, 'jennifer@example.com', 'Jennifer Distributors', '987654321098', 'GSTIN5678', '1982-05-15', 'Remark 2', 987654321, 'EFGH9876543', 7000, 3000, '456 Oak Avenue', 54321, 'Othertown', 'Another State', 'Another City', 1234567890, 'FGHIJ6789K', 'VOT7654321', 800, 1, 'Type B', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(9, 'Michael', '', 'Brown', 9998887776, 'michael@example.com', 'Mike Distributors', '456789012345', 'GSTIN9012', '1975-11-10', 'Remark 3', 5678901234, 'IJKL3456789', 6000, 2500, '789 Elm Street', 67890, 'Anothertown', 'Some Other State', 'Some Other City', 9998887776, 'HIJKL9012M', 'VOT9876543', 600, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(10, 'Emily', 'Anne', 'Wilson', 1112223334, 'emily@example.com', 'Emily Distributors', '345678901234', 'GSTIN3456', '1988-04-25', 'Remark 4', 2345678901, 'MNOP4567890', 8000, 4000, '890 Pine Street', 98765, 'Yetanothertown', 'Yet Another State', 'Yet Another City', 1112223334, 'LMNOP2345N', 'VOT6543210', 700, 1, 'Type B', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(11, 'David', '', 'Taylor', 5556667778, 'david@example.com', 'David Distributors', '567890123456', 'GSTIN7890', '1992-03-08', 'Remark 5', 3456789012, 'OPQR5678901', 5500, 2250, '678 Maple Street', 56789, 'YetAnotherTown', 'Yet Another State', 'Yet Another City', 5556667778, 'OPQRS3456O', 'VOT5432109', 900, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(12, 'Robert', 'James', 'Johnson', 9876543210, 'robert@example.com', 'Robert Distributors', '123456789012', 'GSTIN1234', '1980-07-20', 'Remark 1', 1234567890, 'ABCD0123456', 5000, 2000, '123 Main Street', 12345, 'Anytown', 'Some State', 'Some City', 9876543211, 'ABCDE1234F', 'VOT1234567', 500, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(13, 'Jennifer', '', 'Smith', 1234567890, 'jennifer@example.com', 'Jennifer Distributors', '987654321098', 'GSTIN5678', '1982-05-15', 'Remark 2', 987654321, 'EFGH9876543', 7000, 3000, '456 Oak Avenue', 54321, 'Othertown', 'Another State', 'Another City', 1234567890, 'FGHIJ6789K', 'VOT7654321', 800, 1, 'Type B', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(14, 'Michael', '', 'Brown', 9998887776, 'michael@example.com', 'Mike Distributors', '456789012345', 'GSTIN9012', '1975-11-10', 'Remark 3', 5678901234, 'IJKL3456789', 6000, 2500, '789 Elm Street', 67890, 'Anothertown', 'Some Other State', 'Some Other City', 9998887776, 'HIJKL9012M', 'VOT9876543', 600, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(15, 'Emily', 'Anne', 'Wilson', 1112223334, 'emily@example.com', 'Emily Distributors', '345678901234', 'GSTIN3456', '1988-04-25', 'Remark 4', 2345678901, 'MNOP4567890', 8000, 4000, '890 Pine Street', 98765, 'Yetanothertown', 'Yet Another State', 'Yet Another City', 1112223334, 'LMNOP2345N', 'VOT6543210', 700, 1, 'Type B', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(16, 'David', '', 'Taylor', 5556667778, 'david@example.com', 'David Distributors', '567890123456', 'GSTIN7890', '1992-03-08', 'Remark 5', 3456789012, 'OPQR5678901', 5500, 2250, '678 Maple Street', 56789, 'YetAnotherTown', 'Yet Another State', 'Yet Another City', 5556667778, 'OPQRS3456O', 'VOT5432109', 900, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(17, 'Robert', 'James', 'Johnson', 9876543210, 'robert@example.com', 'Robert Distributors', '123456789012', 'GSTIN1234', '1980-07-20', 'Remark 1', 1234567890, 'ABCD0123456', 5000, 2000, '123 Main Street', 12345, 'Anytown', 'Some State', 'Some City', 9876543211, 'ABCDE1234F', 'VOT1234567', 500, 1, 'Type A', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin'),
(18, 'Jennifer', '', 'Smith', 1234567890, 'jennifer@example.com', 'Jennifer Distributors', '987654321098', 'GSTIN5678', '1982-05-15', 'Remark 2', 987654321, 'EFGH9876543', 7000, 3000, '456 Oak Avenue', 54321, 'Othertown', 'Another State', 'Another City', 1234567890, 'FGHIJ6789K', 'VOT7654321', 800, 1, 'Type B', '2024-04-06 00:00:00', '2024-04-06 00:00:00', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `dth`
--

CREATE TABLE `dth` (
  `id` int(11) NOT NULL,
  `Provider` text DEFAULT NULL,
  `FLD 1` text DEFAULT NULL,
  `FLD 1 Length Type` text DEFAULT NULL,
  `FLD 2` text DEFAULT NULL,
  `FLD 2 Length Type` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dth`
--

INSERT INTO `dth` (`id`, `Provider`, `FLD 1`, `FLD 1 Length Type`, `FLD 2`, `FLD 2 Length Type`) VALUES
(1, 'Airtel Digital TV', 'Subscriber ID/Registered Mobile Number', '', '', ''),
(2, 'Dish TV', 'Registered Mobile Number/Viewing Card Number', '', '', ''),
(3, 'Sun Direct', 'Subscriber Number', '', 'Amount', ''),
(4, 'Tata Play(Formerly Tatasky)', 'Subscriber Number/Mobile Number', '', '', ''),
(5, 'D2H', 'Customer ID/VC Number/Registered Mobile Number', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `ebinitiatepayment`
--

CREATE TABLE `ebinitiatepayment` (
  `id` int(11) NOT NULL,
  `key` varchar(50) DEFAULT NULL,
  `txnid` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `productinfo` varchar(255) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `surl` varchar(255) DEFAULT NULL,
  `furl` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `udf1` varchar(255) DEFAULT NULL,
  `udf2` varchar(255) DEFAULT NULL,
  `udf3` varchar(255) DEFAULT NULL,
  `udf4` varchar(255) DEFAULT NULL,
  `udf5` varchar(255) DEFAULT NULL,
  `udf6` varchar(255) DEFAULT NULL,
  `udf7` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `show_payment_mode` tinyint(1) DEFAULT NULL,
  `split_payments` tinyint(1) DEFAULT NULL,
  `request_flow` varchar(50) DEFAULT NULL,
  `sub_merchant_id` varchar(50) DEFAULT NULL,
  `payment_category` varchar(50) DEFAULT NULL,
  `account_no` varchar(50) DEFAULT NULL,
  `ifsc` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ebinitiatepayment`
--

INSERT INTO `ebinitiatepayment` (`id`, `key`, `txnid`, `amount`, `productinfo`, `firstname`, `phone`, `email`, `surl`, `furl`, `hash`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `udf6`, `udf7`, `address1`, `address2`, `city`, `state`, `country`, `zipcode`, `show_payment_mode`, `split_payments`, `request_flow`, `sub_merchant_id`, `payment_category`, `account_no`, `ifsc`) VALUES
(1, '123456', 'TXN123', 100.50, 'Product Description', 'John', '123-456-7890', 'john@example.com', 'http://example.com/success', 'http://example.com/failure', 'hashvalue', 'value1', 'value2', 'value3', 'value4', 'value5', 'value6', 'value7', '123 Main St', 'Apt 101', 'New York', 'NY', 'USA', '10001', 1, 0, 'flow', 'sub123', 'category', '123456789', 'IFSC123');

-- --------------------------------------------------------

--
-- Table structure for table `electricity1`
--

CREATE TABLE `electricity1` (
  `id` int(11) NOT NULL,
  `Biller` text DEFAULT NULL,
  `Region` text DEFAULT NULL,
  `FLD 1` text DEFAULT NULL,
  `FLD 1 Length Type` text DEFAULT NULL,
  `FLD 2` text DEFAULT NULL,
  `FLD 2 Length Type` text DEFAULT NULL,
  `FLD 3` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `electricity1`
--

INSERT INTO `electricity1` (`id`, `Biller`, `Region`, `FLD 1`, `FLD 1 Length Type`, `FLD 2`, `FLD 2 Length Type`, `FLD 3`) VALUES
(1, 'Adani Electricity Mumbai Limited', '', 'Account No', '9 digit ', '', '', ''),
(2, 'Ajmer Vidyut Vitran Nigam Ltd', '', 'K Number', '12 digit ', '', '', ''),
(3, 'Assam Power Distribution Company Ltd (Rural)', '', 'Consumer Id', '12 digit *', '', '', ''),
(4, 'Assam Power Distribution Company Ltd - Smart Prepaid Recharge', '', 'Consumer Number', '12 digit *', '', '', ''),
(5, 'BESCOM Bangalore', '', 'Customer id/Account id', '7 digit/10 digit', '', '', ''),
(6, 'BESL Bharatpur Electricity Services Ltd', '', 'K Number', '12 digit (on website) (\"confirm\"\" not accepting on phone pe) \"', '', '', ''),
(7, 'BEST Mumbai', '', 'Consumer Number ', '10 digit / if 9 digit inclued comma (,) at the end', '', '', ''),
(8, 'BSES Rajdhani Delhi', '', 'CA Number', '9 digit ', '', '', ''),
(9, 'BSES Rajdhani Prepaid Meter Recharge', '', 'CA Number', '9 digit ', 'Amount', '', ''),
(10, 'BSES Yamuna Delhi', '', 'CA Number', '9 digit ', '', '', ''),
(11, 'BSES Yamuna Prepaid Meter Recharge', '', 'CA Number', '9 digit ', 'Amount', '', ''),
(12, 'Bikaner Electricity Supply Limited (BKSEL)', '', 'K Number', '', '', '', ''),
(13, 'CESC Limited', '', 'Consumer Id', '11 digit', '', '', ''),
(14, 'CSPDCL (Chattisgarh State Power Distribution Company Limited)', '', 'Business Partner Number', '', '', '', ''),
(15, 'Central Power Distribution Company Ltd. of Andhra Pradesh ', '', 'Service Number', '13 digit', '', '', ''),
(16, 'Chamundeshwari Electricity Supply Corp Ltd (CESCOM)', '', 'Account Id (RAPDRP)/Consumer Number/Connection ID(Non-RAPDRP)', '', '', '', ''),
(17, 'DGVCL Dakshin Gujrat Vij', '', 'Consumer Number', '11 digit', '', '', ''),
(18, 'Dadra and Nagar Haveli and Daman and Diu Power Distribution Corporation Limited', '', 'CA Number', '', '', '', ''),
(19, 'Dakshin Haryana Bijli Vitran Nigam (DHBVN)', '', 'Account Number', '', 'Phone Number', '10 digit', ''),
(20, 'Dakshinanchal Vidyut Vitran Nigam Limited (DVVNL)(Postpaid and Smart Prepaid Meter ', '', 'Consumer Number', '', '', '', ''),
(21, 'Department of Power Nagaland ', '', 'Consumer Number', '', '', '', ''),
(22, 'Department of Power, Government of Arunachal Pradesh', '', 'Consumer Number', '', '', '', ''),
(23, 'Department of Power, Government of Arunachal Pradesh - Prepaid', '', 'Consumer Number', '', '', '', ''),
(24, 'EPDCL Eastern Power Distribution Company of Andhra Pradesh Limited', '', 'Service Number', '', '', '', ''),
(25, 'Electricity Department Chandigarh', '', 'Account No without(/)', '', '', '', ''),
(26, 'Gift Power Company Limited', '', 'Consumer No.', '', '', '', ''),
(27, 'Goa Electricity Department ', '', 'Contract Account No', '', '', '', ''),
(28, 'Government of Puducherry Electricity Department', '', 'Consumer Number', '', 'Consumer Type ', 'dropdown (LT/HT)', ''),
(29, 'Gulbarga Electricity Supply Corp Ltd', '', 'Consumer Number', '', '', '', ''),
(30, 'Himachal Pradesh State Electricity Board', '', 'Consumer ID', '', '', '', ''),
(31, 'Hubli Electricity Supply Company Ltd. (HESCOM)', '', 'Account Id (RAPDRP)/Consumer Number/Connection ID(Non-RAPDRP) ', '', '', '', ''),
(32, 'Hukkeri Rural Electric Cooperative Society Ltd', '', 'Connection Number', '', '', '', ''),
(33, 'India Power', '', 'Consumer Number', '', '', '', ''),
(34, 'JUSCO Jamshedpur ', '', 'Business Partner Number', '', '', '', ''),
(35, 'Jaipur Vidyut Vitaran Nigam Ltd.', '', 'K Number', '12 digit', '', '', ''),
(36, 'Jammu and Kashmir Power Development Department', '', 'Consumer Code', '', '', '', ''),
(37, 'Jharkhand Bijli Vitran Nigam Limited (JBVNL)', '', 'Consumer Number', '', 'Subdivision Name', 'dropdown ', ''),
(38, 'Jharkhand Bijli Vitran Nigam Limited - Prepaid Meter Recharge', '', 'Meter Number/Account Number', '', '', '', ''),
(39, '(JDVVNL) Jodhpur Vidyut Vitran Nigam Ltd', '', 'K Number', '', '', '', ''),
(40, 'KEDL Kota Electricity Distribution Ltd', '', 'K Number', '', '', '', ''),
(41, 'KESCO Kanpur Electricity Supply Company Ltd', '', 'Account Number', '', '', '', ''),
(42, 'Kannan Devan Hills Plantations Company Private Limited', '', 'Consumer Number', '', '', '', ''),
(43, 'Kerala State Electricity Board Ltd. (KSEBL)', '', 'Consumer Number', '', '', '', ''),
(44, 'Lakshadweep Electricity Department', '', 'Consumer Number', '', '', '', ''),
(45, 'MGVCL Madhya Gujarat Vij', '', 'Consumer Number', '', '', '', ''),
(46, 'MP Madhya Kshetra Vidyut Vitaran Company Limited, Bhopal - Urban', '', 'Consumer Number/IVRS ID', '', '', '', ''),
(47, 'MP Madhya Kshetra Vidyut Vitaran Company Limited - Rural', '', 'IVRS', '', '', '', ''),
(48, 'MP Paschim Kshetra - Indore', '', 'IVRS Number', '', '', '', ''),
(49, 'MP Poorv Kshetra - Jabalpur NGB (New Generation Billing)', '', 'Consumer Number/IVRS (if IVRS No. is N1234567890 then enter 123456789)', '', '', '', ''),
(50, 'MP Poorv Kshetra - Jabalpur (Rural)', '', 'Consumer Number/IVRS Number', '', '', '', ''),
(51, 'MSEDC Mahavitaran', '', 'Consumer Number', '', 'Sub Division Code', '4 digit', ''),
(52, 'Madhyanchal Vidyut Vitran Nigam Limited (MVVNL) (Postpaid and Smart Prepaid Meter Reading)', '', 'Consumer Number', '', '', '', ''),
(53, 'Mangalore Electricity Supply Company LTD (Non RAPDR) (MESCOM)', '', 'RR Number', '5-25 digit alphanumeric RR Number', '', '', ''),
(54, 'Mangalore Electricity Supply Company LTD (RAPDRP Towns) (MESCOM)', '', 'Account ID', '10 digit', '', '', ''),
(55, 'MePDCL Meghalaya', '', 'Consumer Id', '', '', '', ''),
(56, 'MePDCL Smart Prepaid Meter Recharge', '', 'ACCOUNT_NO', '', '', '', ''),
(57, 'NPCL Noida', '', 'Consumer Number', '10 digit', '', '', ''),
(58, 'New Delhi Municipal Council (NDMC)', '', 'Consumer Number', '', '', '', ''),
(59, 'North Bihar Power Distribution Company Ltd', '', 'CA Number', '', '', '', ''),
(60, 'Northern Power Distribution Company of Telangana Ltd', '', 'USC Number', '', '', '', ''),
(61, 'PGVCL Paschim Gujarat Vij', '', 'Consumer Number', '', '', '', ''),
(62, 'Paschimanchal Vidyut Vitran Nigam Limited (PVVNL) ', '', 'Consumer Number', '', '', '', ''),
(63, 'Power & Electricity Department, Govt of Mizoram', '', 'Business Partner', '', '', '', ''),
(64, 'Punjab State Power Corporation Ltd (PSPCL)', '', 'Account Number', '', '', '', ''),
(65, 'Purvanchal Vidyut Vitran Nigam Limited (PUVVNL)', '', 'Consumer Number', '', '', '', ''),
(66, 'Sikkim Power NON-RAPDRP', '', 'Contract Acc Number', '', '', '', ''),
(67, 'South Bihar Power Distribution Company Ltd', '', 'CA Number', '', '', '', ''),
(68, 'Southern Power Distribution company of Andhra Pradesh', '', 'Service Number', '13 digit', '', '', ''),
(69, 'Southern Power Distribution Co Ltd of Telangana Ltd', '', 'Unique Service Number', '', '', '', ''),
(70, 'TP Ajmer Distribution Ltd', '', 'K Number', '12 digit', '', '', ''),
(71, 'TP Central Odisha Distribution Ltd', '', 'Consumer Id', '', '', '', ''),
(72, 'TP Northern Odisha Distribution Ltd', '', 'Consumer Number', '', '', '', ''),
(73, 'TP Renewables Microgrid Ltd.', '', 'Registered Mobile Number', '10 digit', '', '', ''),
(74, 'TP Southern Odisha Distribution Ltd-Smart Prepaid Meter Recharge', '', 'Consumer Number', '', '', '', ''),
(75, 'TP Southern Odisha Distribution Limited', '', 'Consumer Number', '', '', '', ''),
(76, 'TP Western Odisha Distribution Limited', '', 'Consumer Number', '', '', '', ''),
(77, 'TP Western Odisha Distribution Ltd-Smart Prepaid Meter Recharge', '', 'Consumer Number', '', '', '', ''),
(78, 'TSECL Tripura', '', 'Customer Account Number ', '', '', '', ''),
(79, 'Tamil Nadu Electricity Board (TNEB)', '', 'Consumer Number (Region code for reference given)', '', '', '', ''),
(80, 'Tata Power - DDL ', '', 'Contract Account Number', '11/12 digit ', '', '', ''),
(81, 'Thrissur Corporation Electricity Department', '', 'Consumer Number', '', 'Bill Number', '', 'Select Bill Type (Monthly/Bimonthly)'),
(82, 'Torrent Power', '', 'Service Number', '', 'Select City (Agra, Ahmedabad, Bhiwandi, Surat, Shilmumbrakalwa)', '', ''),
(83, 'UGVCL Uttar Gujarat Vij', '', 'Consumer Number', '', '', '', ''),
(84, 'UHBVN Prepaid/Advance Payment', '', 'Account Number', '', 'Mobile Number', '10 digit', ''),
(85, 'Uttar Haryana bijli Vitran Nigam', '', 'Account Number', '', 'Mobile Number', '10 digit', ''),
(86, 'Uttarakhand Power Corporation Limited', '', 'Electricity Account No', '', '', '', ''),
(87, 'Vaghani Energy Limited', '', 'Consumer Number', '', '', '', ''),
(88, 'West Bengal Electricity - Monthly', '', 'Consumer Id', '', 'Mobile Number ', '10 digit', ''),
(89, 'West Bengal Electricity - Quarterly', '', 'Consumer Id', '', 'Mobile Number ', '10 digit', '');

-- --------------------------------------------------------

--
-- Table structure for table `fastag`
--

CREATE TABLE `fastag` (
  `id` int(11) NOT NULL,
  `Provider` text DEFAULT NULL,
  `FLD 1` text DEFAULT NULL,
  `FLD 1 Length` text DEFAULT NULL,
  `FLD 2` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fastag`
--

INSERT INTO `fastag` (`id`, `Provider`, `FLD 1`, `FLD 1 Length`, `FLD 2`) VALUES
(1, 'IDFC FIRST Bank - FasTag', 'Vehicle Number', '', ''),
(2, 'Airtel Payments Bank NETC FasTag', 'Vehicle Registration Number', '', ''),
(3, 'Axis Bank FasTag', 'Vehicle Registration Number / Wallet Number', '', ''),
(4, 'Bank of Baroda - Fastag', 'Vehicle Number', '', ''),
(5, 'HDFC Bank - Fastag', 'Vehicle Registration Number / Wallet ID', '', ''),
(6, 'ICICI Bank Fastag', 'Vehicle Number', '', ''),
(7, 'IDBI Bank Fastag', 'Vehicle Number / Wallet Number', '', ''),
(8, 'Paytm Payments Bank FASTag', 'Vehicle Registration Number', '', ''),
(9, 'State Bank of India (SBI) - NETC FASTag', 'Vehicle Number', '', ''),
(10, 'AU Bank Fastag', 'Vehicle Registration Number or Wallet ID', '', ''),
(11, 'Bandhan Bank Fastag', 'Vehicle Registration Number (VRN)', '', ''),
(12, 'Bank of Maharashtra FASTag', 'Vehicle Registration Number ', '', ''),
(13, 'Canara Bank Fastag', 'Vehicle Number', '', ''),
(14, 'City Union Bank Ltd FASTag', 'Vehicle Registered Number', '', ''),
(15, 'Equitas FASTag Recharge', 'Vehicle Registration Number', '', ''),
(16, 'Federal Bank - FASTag', 'Vehicle Registration Number ID', '', ''),
(17, 'IOB Fastag', 'Vehicle Registration Number (VRN)', '', ''),
(18, 'Indian Bank Fastag Recharge', 'VRN', '', ''),
(19, 'Indian Highways Management Company Ltd FASTag', 'Vehicle Registration Number', '', ''),
(20, 'IndusInd Bank FASTag', 'Vehicle Registration Number', '', ''),
(21, 'Jammu and Kashmir Bank Fastag', 'Vehicle Registration Number / Wallet Number', '', ''),
(22, 'Karnataka Bank FASTag', 'Vehicle Registration Number / Wallet Number', '', ''),
(23, 'Karur Vysya Bank Fastag', 'Vehicle Registered Number', '', ''),
(24, 'Kotak Mahindra Bank - Fastag', 'Vehicle Registered Number', '', ''),
(25, 'LivQuik Technology India Private Limited', 'Vehicle Number', '', ''),
(26, 'Punjab National Bank FASTag', 'Vehicle Registered Number', '', ''),
(27, 'South Indian Bank Fastag', 'Vehicle Registration Number ID', '', ''),
(28, 'UCO Bank Fastag ', 'Vehicle Registration Number / Wallet Number', '', ''),
(29, 'Union Bank of India FASTag', 'Vehicle Registration Number', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `fundtransactions`
--

CREATE TABLE `fundtransactions` (
  `transaction_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `transaction_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fundtransactions`
--

INSERT INTO `fundtransactions` (`transaction_id`, `sender_id`, `receiver_id`, `amount`, `transaction_date`) VALUES
(1, 1, 2, 100.00, '2024-04-11 10:35:47'),
(2, 1, 2, 100.00, '2024-04-11 10:51:33'),
(3, 2, 3, 100.00, '2024-04-11 10:52:31'),
(4, 1, 2, 900.00, '2024-04-11 10:59:04'),
(5, 2, 3, 700.00, '2024-04-11 11:00:30'),
(6, 3, 4, 500.00, '2024-04-11 11:03:18'),
(7, 4, 5, 121.00, '2024-04-11 11:04:11'),
(8, 5, 6, 51.00, '2024-04-11 11:04:55'),
(9, 1, 2, 5.00, '2024-04-11 12:28:59'),
(10, 1, 3, 200.00, '2024-04-11 12:40:48'),
(11, 1, 2, 1000.00, '2024-04-12 10:34:31'),
(12, 1, 3, 1000.00, '2024-04-12 10:37:58'),
(13, 1, 3, 1.00, '2024-04-12 10:41:55'),
(14, 2, 3, 123.00, '2024-04-12 10:43:22'),
(15, 3, 4, 1000.00, '2024-04-12 10:45:27'),
(16, 1, 2, 17.00, '2024-04-12 13:07:46'),
(17, 1, 4, 300.00, '2024-04-12 13:13:28'),
(18, 1, 4, 1.00, '2024-04-14 13:07:51'),
(19, 1, 4, 4.00, '2024-04-14 13:08:11'),
(20, 1, 2, 150.00, '2024-04-14 13:10:01'),
(21, 1, 2, 5.00, '2024-04-14 13:37:24'),
(22, 1, 2, 2.00, '2024-04-16 07:09:25'),
(23, 1, 2, 12.00, '2024-04-16 07:14:03'),
(24, 1, 2, 3.00, '2024-04-16 07:27:50');

-- --------------------------------------------------------

--
-- Table structure for table `fundusers`
--

CREATE TABLE `fundusers` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fundusers`
--

INSERT INTO `fundusers` (`id`, `type`) VALUES
(1, 'Admin'),
(2, 'Channel Partner'),
(3, 'Super Distributor'),
(4, 'Master Distributor'),
(5, 'Distributor'),
(6, 'Retailer');

-- --------------------------------------------------------

--
-- Table structure for table `kyc`
--

CREATE TABLE `kyc` (
  `id` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Username` text DEFAULT NULL,
  `KYC_Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kyc`
--

INSERT INTO `kyc` (`id`, `UserID`, `Username`, `KYC_Status`) VALUES
(1, 1, 'user1', 'Verified'),
(2, 2, 'user2', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `kyc_verify`
--

CREATE TABLE `kyc_verify` (
  `id` int(11) NOT NULL,
  `Sr_no` int(11) DEFAULT NULL,
  `user` text DEFAULT NULL,
  `aadhar` text DEFAULT NULL,
  `pan` text DEFAULT NULL,
  `gst` text DEFAULT NULL,
  `bank` text DEFAULT NULL,
  `voter_id` text DEFAULT NULL,
  `files[0]` text DEFAULT NULL,
  `files[1]` text DEFAULT NULL,
  `API_KYC_Status` text DEFAULT NULL,
  `Business_Name_&_Address_Proof` text DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `Reason` text DEFAULT NULL,
  `KYC status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kyc_verify`
--

INSERT INTO `kyc_verify` (`id`, `Sr_no`, `user`, `aadhar`, `pan`, `gst`, `bank`, `voter_id`, `files[0]`, `files[1]`, `API_KYC_Status`, `Business_Name_&_Address_Proof`, `Action`, `Reason`, `KYC status`) VALUES
(1, 1, 'John Doe', '1234 5678 9012', 'ABCDE1234F', 'GST123456789', '1234567890', 'VOTERID123', 'file1.jpg', 'file2.pdf', 'Verified', 'Valid', 'Approved', '', 'Complete'),
(2, 2, 'Jane Doe', '9876 5432 1098', 'XYZAB5678G', 'GST987654321', '0987654321', 'VOTERID456', 'file3.jpg', 'file4.pdf', 'Pending', 'Pending', 'Review', 'Incomplete documents', 'Incomplete');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `Date` text DEFAULT NULL,
  `Thread` int(11) DEFAULT NULL,
  `Level` text DEFAULT NULL,
  `Logger` text DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Exception` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `Date`, `Thread`, `Level`, `Logger`, `Message`, `Exception`) VALUES
(1, '09-03-2024 16:55:28', 555, 'INFO', 'APIDataAccessLayer.Registration', 'Select A.ProviderName, A.isbbps, A.ProviderTypeId...', ''),
(2, '09-03-2024 16:55:28', 555, 'INFO', 'APIDataAccessLayer.Registration', 'Select A.ProviderName, A.isbbps, A.ProviderTypeId...', '');

-- --------------------------------------------------------

--
-- Table structure for table `longcode_sms_log`
--

CREATE TABLE `longcode_sms_log` (
  `id` int(11) NOT NULL,
  `Date` text DEFAULT NULL,
  `SenderNumber` bigint(20) DEFAULT NULL,
  `RecipientNumber` int(11) DEFAULT NULL,
  `Message` text DEFAULT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `longcode_sms_log`
--

INSERT INTO `longcode_sms_log` (`id`, `Date`, `SenderNumber`, `RecipientNumber`, `Message`, `Status`) VALUES
(1, '09-03-2024 10:30:45', 9876543210, 1234567890, 'This is a sample SMS log message.', 'Delivered');

-- --------------------------------------------------------

--
-- Table structure for table `m1`
--

CREATE TABLE `m1` (
  `id` int(11) NOT NULL,
  `mobile_number` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `m1`
--

INSERT INTO `m1` (`id`, `mobile_number`) VALUES
(1, 8234567890),
(2, 8765432109),
(3, 7865432109),
(4, 9876543210),
(5, 9123456789),
(6, 8345678901),
(7, 8176543210),
(8, 8901234567),
(9, 8054321098),
(10, 7987654321),
(11, 999999999),
(12, 1231231235);

-- --------------------------------------------------------

--
-- Table structure for table `main_ac_trans`
--

CREATE TABLE `main_ac_trans` (
  `id` int(11) NOT NULL,
  `userID` varchar(50) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Payment_mode` text DEFAULT NULL,
  `UTR/Ref_Number` text DEFAULT NULL,
  `auto_Calculate_Flat` text DEFAULT NULL,
  `user Id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_ac_trans`
--

INSERT INTO `main_ac_trans` (`id`, `userID`, `Amount`, `Payment_mode`, `UTR/Ref_Number`, `auto_Calculate_Flat`, `user Id`) VALUES
(1, '', 5000, '', 'REVUTR123456', '', 'user123'),
(2, 'user123', 1000, 'Credit Card', 'UTR123456789', 'true', ''),
(3, 'user456', 2500, 'Bank Transfer', 'REF987654321', 'false', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_gateway_aeps_matm`
--

CREATE TABLE `main_gateway_aeps_matm` (
  `id` int(11) NOT NULL,
  `Bal_Req` int(11) DEFAULT NULL,
  `Bal_Req_Gateway/AEPS` int(11) DEFAULT NULL,
  `Bal_Req_His` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `main_gateway_aeps_matm`
--

INSERT INTO `main_gateway_aeps_matm` (`id`, `Bal_Req`, `Bal_Req_Gateway/AEPS`, `Bal_Req_His`) VALUES
(1, 5000, 3000, 2000),
(2, 7000, 4000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `main_payment_summary`
--

CREATE TABLE `main_payment_summary` (
  `id` int(11) NOT NULL,
  `Bank` text DEFAULT NULL,
  `Admin_Remark` text DEFAULT NULL,
  `User` text DEFAULT NULL,
  `Role` text DEFAULT NULL,
  `Payment_Mode` text DEFAULT NULL,
  `Remark` text DEFAULT NULL,
  `Flat_Commission` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Credit_Amount` int(11) DEFAULT NULL,
  `Debit_Amount` int(11) DEFAULT NULL,
  `timeStamp` text DEFAULT NULL,
  `Payment_By` text DEFAULT NULL,
  `Distributor` text DEFAULT NULL,
  `Master_Distributor` text DEFAULT NULL,
  `Super_Distributor` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_payment_summary`
--

INSERT INTO `main_payment_summary` (`id`, `Bank`, `Admin_Remark`, `User`, `Role`, `Payment_Mode`, `Remark`, `Flat_Commission`, `Amount`, `Credit_Amount`, `Debit_Amount`, `timeStamp`, `Payment_By`, `Distributor`, `Master_Distributor`, `Super_Distributor`) VALUES
(1, 'Bank A', 'Approved', 'user123', 'Admin', 'Bank Transfer', 'Payment completed', 100, 5000, 5000, 0, '2024-03-10T12:00:00Z', 'Admin', 'Distributor A', 'Master Distributor A', 'Super Distributor A'),
(2, 'Bank B', 'Pending', 'user456', 'User', 'Credit Card', 'Awaiting approval', 50, 2500, 0, 2500, '2024-03-11T12:00:00Z', 'User', 'Distributor B', 'Master Distributor B', 'Super Distributor B');

-- --------------------------------------------------------

--
-- Table structure for table `main_rev_bal`
--

CREATE TABLE `main_rev_bal` (
  `id` int(11) NOT NULL,
  `user Id` text DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `UTR/Ref_Number` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_rev_bal`
--

INSERT INTO `main_rev_bal` (`id`, `user Id`, `Amount`, `UTR/Ref_Number`) VALUES
(1, 'user123', 5000, 'REVUTR123456');

-- --------------------------------------------------------

--
-- Table structure for table `master_distributor`
--

CREATE TABLE `master_distributor` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `outlet_name` text DEFAULT NULL,
  `aadharcard_number` text DEFAULT NULL,
  `gstin` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `bank_account_number` bigint(20) DEFAULT NULL,
  `ifsc` text DEFAULT NULL,
  `main_min_balance` int(11) DEFAULT NULL,
  `low_balance_alert_limit` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `district` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `alternate_number` bigint(20) DEFAULT NULL,
  `pancard_number` text DEFAULT NULL,
  `voter_id_number` text DEFAULT NULL,
  `aeps_unsettled_fund` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `updatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `master_distributor`
--

INSERT INTO `master_distributor` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `remark`, `bank_account_number`, `ifsc`, `main_min_balance`, `low_balance_alert_limit`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `voter_id_number`, `aeps_unsettled_fund`, `isActive`, `userType`, `createdDate`, `updateDate`, `createdBy`, `updatedBy`) VALUES
(1, 'John', 'Doe', 'Smith', 9876543210, 'john.doe@example.com', 'Doe Enterprises', '123456789012', 'GSTIN123456', '1990-01-01', 'Some remark', 9876543210, 'ABCD0123456', 10000, 5000, '123 Main Street', 123456, 'Example District', 'Example State', 'Example City', 9876543211, 'ABCDE1234F', 'VoterID123456', 1000, 1, 'admin', '2024-04-08 18:32:21', '2024-04-08 18:32:21', 'admin', 'admin'),
(2, 'Emily', 'Grace', 'Taylor', 9999999999, 'emily@example.com', 'PQR Retail', '9999 9999 9999', 'GSTIN99999999', '1992-07-08', 'Prompt service', 9999999999999999, 'IJKL9999999', 12000, 6000, '123 Oak Lane', 123456, 'RST', 'JKL', 'XYZ', 2222222222, 'QRSTU5678I', 'V8765432', 25000, 0, '', NULL, NULL, '', ''),
(3, 'Dashrath', 'Suryavanshi', '9090908989', 0, 'retailer', '12345678989829', 'sdv2134', '2024-01-23', 'Good', '1234567890123', 0, '12000', 6000, 456, '123123', 0, 'Maharashtra', 'Pune', '7777777777', 0, 'ABC234', '22000', 0, 0, '', NULL, NULL, '', ''),
(4, 'Smith', 'Doe', '9876543210', 0, 'Doe Stores', '654321098765', 'GSTIN123456', '1990-05-15', 'Excellent', '987654321012', 0, '15000', 7500, 123, '400001', 0, 'Maharashtra', 'Mumbai', '9998887776', 0, 'VOTER1234', '30000', 0, 0, '', NULL, NULL, '', ''),
(5, 'Marie', 'Johnson', '8765432109', 0, 'Johnson Retail', '543210987654', 'GSTIN654321', '1985-10-22', 'Good', '543210987654', 0, '18000', 9000, 456, '500001', 0, 'Telangana', 'Hyderabad', '7776665554', 0, 'VOTER5678', '25000', 0, 0, '', NULL, NULL, '', ''),
(6, 'Anthony', 'Miller', '7654321098', 0, 'Miller Mart', '321098765432', 'GSTIN321098', '1978-12-03', 'Satisfactory', '321098765432', 0, '20000', 10000, 789, '600001', 0, 'Tamil Nadu', 'Chennai', '8887776665', 0, 'VOTER9012', '28000', 0, 0, '', NULL, NULL, '', ''),
(7, 'Grace', 'Brown', '6543210987', 0, 'Brown Shop', '210987654321', 'GSTIN210987', '1982-08-17', 'Excellent', '210987654321', 0, '22000', 11000, 890, '700001', 0, 'West Bengal', 'Kolkata', '6665554443', 0, 'VOTER3456', '32000', 0, 0, '', NULL, NULL, '', ''),
(8, 'Lily', 'Taylor', '5432109876', 0, 'Taylor Store', '876543210987', 'GSTIN876543', '1995-03-28', 'Good', '876543210987', 0, '17000', 8500, 567, '800001', 0, 'Karnataka', 'Bangalore', '5554443332', 0, 'VOTER7890', '26000', 0, 0, '', NULL, NULL, '', ''),
(9, 'John', 'Doe', 'Smith', 9876543210, 'john.doe@example.com', 'Doe Enterprises', '123456789012', 'GSTIN123456', '1990-01-01', 'Some remark', 9876543210, 'ABCD0123456', 10000, 5000, '123 Main Street', 123456, 'Example District', 'Example State', 'Example City', 9876543211, 'ABCDE1234F', 'VoterID123456', 1000, 1, 'admin', '2024-04-08 18:33:31', '2024-04-08 18:33:31', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `matm`
--

CREATE TABLE `matm` (
  `id` int(11) NOT NULL,
  `Bal_Req` int(11) DEFAULT NULL,
  `Bal_Req_Gateway/AEPS` int(11) DEFAULT NULL,
  `Bal_Req_His` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matm`
--

INSERT INTO `matm` (`id`, `Bal_Req`, `Bal_Req_Gateway/AEPS`, `Bal_Req_His`) VALUES
(1, 5000, 3000, 2000),
(2, 7000, 4000, 3000);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Username` text DEFAULT NULL,
  `Outlet_Name` text DEFAULT NULL,
  `Pan_Card` text DEFAULT NULL,
  `Aadhar` text DEFAULT NULL,
  `Location_ID` text DEFAULT NULL,
  `Created_By` text DEFAULT NULL,
  `Location_Name` text DEFAULT NULL,
  `Search_ID` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `UserID`, `Username`, `Outlet_Name`, `Pan_Card`, `Aadhar`, `Location_ID`, `Created_By`, `Location_Name`, `Search_ID`) VALUES
(1, 1, 'user1', 'Outlet A', 'ABCDE1234F', '1234 5678 9012', 'LOC001', 'admin', 'Location X', 'SEARCH001'),
(2, 2, 'user2', 'Outlet B', 'FGHIJ5678K', '9876 5432 1098', 'LOC002', 'admin', 'Location Y', 'SEARCH002');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `Menu_Id` int(11) NOT NULL,
  `Menu_Name` varchar(50) NOT NULL,
  `URL` varchar(255) NOT NULL,
  `Level` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `Menu_Id`, `Menu_Name`, `URL`, `Level`, `isActive`) VALUES
(1, 1, 'dashboard', 'No URL', 0, 0),
(2, 2, 'commission', 'No URL', 0, 0),
(3, 4, 'users', 'No URL', 0, 0),
(4, 5, 'balance', 'No URL', 0, 0),
(5, 6, 'report', 'No URL', 0, 0),
(6, 7, 'other reports', 'No URL', 0, 0),
(7, 8, 'admin', 'No URL', 0, 0),
(8, 21, 'Create package', 'createpack', 1, 0),
(9, 22, 'Commission packs', 'commissionpacks', 1, 0),
(10, 41, 'Retailers', 'No URL', 1, 0),
(11, 42, 'Distributors', 'No URL', 1, 0),
(12, 43, 'Master distributors', 'No URL', 1, 0),
(13, 44, 'Super distributors', 'No URL', 1, 0),
(14, 45, 'Channal Partner', 'No URL', 1, 0),
(15, 46, 'Members', 'No URL', 1, 0),
(16, 47, 'Change parent', 'assignparentuserr', 1, 0),
(17, 48, 'Change mobile number in KYC', 'changemobilenumber', 1, 0),
(18, 49, 'KYC verification', 'kycverificationn', 1, 0),
(19, 50, 'KYC verified', 'comingsoon', 1, 0),
(20, 411, 'Retailer list', 'retailers', 2, 1),
(21, 412, 'Add retailer', 'addretailer', 2, 1),
(22, 421, 'Distributor list', 'distributorlist', 2, 1),
(23, 422, 'Add distributor', 'adddistributor', 2, 1),
(24, 431, 'Master distributor list', 'masterdistributor', 2, 1),
(25, 432, 'Add master distributor', 'addmasterdistributor', 2, 1),
(26, 441, 'Super distributor list', 'superdistrilist', 2, 1),
(27, 442, 'Add super distributor', 'addsuperdistributor', 2, 1),
(28, 451, 'Channal Partner List', 'channalpartnerlist', 2, 1),
(29, 452, 'Add Channal Partner', 'addchannalpartner', 2, 1),
(30, 461, 'Members list', 'comingsoon', 2, 1),
(31, 51, 'Add MAIN balance', 'addmainbalance', 1, 1),
(32, 52, 'Reverse MAIN balance', 'addmainbalance_2', 1, 1),
(33, 53, 'Add Balance', 'easebuzpayment', 1, 1),
(34, 62, 'Transaction history', 'transactionhistory', 1, 1),
(35, 63, 'Transaction history with parent', 'transactionhistwithparent', 1, 1),
(36, 66, 'Complaints', 'refund_2', 1, 1),
(37, 67, 'Complaints history', 'retailers', 1, 1),
(38, 68, 'Refunds', 'refund', 1, 1),
(39, 69, 'MAIN Payment Summary', 'mainpaymentsummary', 1, 1),
(40, 70, 'MAIN payment summary gateway', 'refund', 1, 1),
(41, 71, 'MAIN payment summery AEPS/MATM', 'mainpaymentsummaryaepsmatm', 1, 1),
(42, 72, 'MAIN Gateway/AEPS/MATM commission distribution rep', 'maingatewaycommidistribution', 1, 1),
(43, 73, 'Balance requests', 'refund', 1, 1),
(44, 74, 'Balance requests gateway / AEPS', 'balancereqgateway', 1, 1),
(45, 75, 'Balance request history', 'balancereqhist', 1, 1),
(46, 76, 'Distributor primary report', 'distriprimaryreport', 1, 1),
(47, 77, 'Activation report', 'activationreport', 1, 1),
(48, 78, 'User cashback report', 'usercashback', 1, 1),
(49, 71, 'Money transfer reports', 'moneytransferreport', 1, 1),
(50, 72, 'AEPS report', 'aepsreport', 1, 1),
(51, 73, 'Operator wise report', 'comingsoon', 1, 1),
(52, 74, 'User wise report', 'userwisereport', 1, 1),
(53, 78, 'Individual report', 'individualreport', 1, 1),
(54, 79, 'Opening closing report MAIN', 'openingclosingreportmain', 1, 1),
(55, 80, 'Operatorwise commission report', 'operatorwcreport', 1, 1),
(56, 81, 'Commission distribution report', 'comissiondistribreport', 1, 1),
(57, 82, 'Refund success report', 'refundsucessstory', 1, 1),
(58, 83, 'Status change report', 'statuschangereport', 1, 1),
(59, 84, 'Last 3 days secondary report', 'lastdaysecondaryreport', 1, 1),
(60, 85, 'Retailers stock not taken', 'retailerstocknottaken', 1, 1),
(61, 86, 'Retailers sale not done', 'retailersalenotdone', 1, 1),
(62, 87, 'Users sale done', 'usersaledone', 1, 1),
(63, 89, 'Add admin MAIN balance', 'addadmin', 1, 1),
(64, 90, 'Notice', 'notice', 1, 1),
(65, 91, 'USER KYC', 'userkyc', 1, 1),
(66, 92, 'Send sms', 'sendsms', 1, 1),
(67, 93, 'Send whatsapp', 'sendwhatsapp', 1, 1),
(68, 94, 'Send email', 'comingsoon', 1, 1),
(69, 95, 'Send notification', 'sendnotification', 1, 1),
(70, 96, 'Banks', 'banks', 1, 1),
(71, 97, 'Settings', 'setting', 1, 1),
(72, 98, 'Circle master', 'circlemasterscreenn', 1, 1),
(73, 99, 'Website logs', 'websitelogsscreen', 1, 1),
(74, 100, 'Website logs archive', 'weblogsarchive', 1, 1),
(75, 101, 'SMS logs', 'smslogs', 1, 1),
(76, 102, 'IP whitelist', 'ipwhitelistss', 1, 1),
(77, 103, 'Provider types', 'providertypescreen', 1, 1),
(78, 104, 'Circles', 'circlesscreen', 1, 1),
(79, 94, 'Send email', 'comingsoon', 1, 1),
(80, 94, 'Send email', 'comingsoon', 1, 1),
(81, 94, 'Send email', 'comingsoon', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `outlet_name` varchar(255) DEFAULT NULL,
  `aadharcard_number` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `bank_account_number` varchar(20) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `main_min_balance` int(11) DEFAULT NULL,
  `low_balance_alert_limit` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pin_code` varchar(10) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `alternate_number` varchar(15) DEFAULT NULL,
  `pancard_number` varchar(20) DEFAULT NULL,
  `voter_id_number` varchar(20) DEFAULT NULL,
  `aeps_unsettled_fund` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `remark`, `bank_account_number`, `ifsc`, `main_min_balance`, `low_balance_alert_limit`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `voter_id_number`, `aeps_unsettled_fund`) VALUES
(1, 'Merchant', 'Doe', 'Smith', '1234567890', 'Merchant@example.com', 'ABC Retail', '1234 5678 9012', 'GSTIN12345678', '1990-01-01', 'Good customer service', '1234567890123456', 'ABCD0123456', 5000, 1000, '123 Main Street', '123456', 'XYZ', 'ABC', 'PQR', '0987654321', 'ABCDE1234F', 'V1234567', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `money_trans_hist`
--

CREATE TABLE `money_trans_hist` (
  `id` int(11) NOT NULL,
  `TransactionID` int(11) DEFAULT NULL,
  `SenderUserID` int(11) DEFAULT NULL,
  `ReceiverUserID` int(11) DEFAULT NULL,
  `Amount` double DEFAULT NULL,
  `TransferDate` text DEFAULT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `money_trans_hist`
--

INSERT INTO `money_trans_hist` (`id`, `TransactionID`, `SenderUserID`, `ReceiverUserID`, `Amount`, `TransferDate`, `Status`) VALUES
(1, 1, 101, 102, 500, '2024-03-09T12:30:00', 'Completed'),
(2, 2, 103, 104, 300.5, '2024-03-09T14:45:00', 'Failed'),
(3, 3, 105, 106, 1000, '2024-03-09T18:20:00', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `muncipal_tax`
--

CREATE TABLE `muncipal_tax` (
  `id` int(11) NOT NULL,
  `muncipal tax provider` text DEFAULT NULL,
  `field` text DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL,
  `MyUnknownColumn_[0]` text DEFAULT NULL,
  `MyUnknownColumn_[1]` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `muncipal_tax`
--

INSERT INTO `muncipal_tax` (`id`, `muncipal tax provider`, `field`, `MyUnknownColumn`, `MyUnknownColumn_[0]`, `MyUnknownColumn_[1]`) VALUES
(1, 'muncipal tax provider', 'field', '', '', ''),
(2, 'agartala muncipal corporation', 'house number', '', '', ''),
(3, 'ajmer nagar nigam', 'consumer id', '', '', ''),
(4, 'bicholim muncipal council', 'house number', '', '', ''),
(5, 'canacona muncipal council', 'house number', '', '', ''),
(6, 'corporation of city panji', 'house number', '', '', ''),
(7, 'cuncolim muncipal council', 'house number', '', '', ''),
(8, 'curchorem cacora muncipal council', 'house number', '', '', ''),
(9, 'directorate of land revenue and settlement dept- mizoram', 'family id', '', '', ''),
(10, 'directorate of muncipal administration karnataka', 'challan number', '', '', ''),
(11, 'gram panchayat wangi', 'property tax number', '', '', ''),
(12, 'grampanchayat nevari', 'customer id', 'customer mobile', '', ''),
(13, 'gram panchayat dhamner', 'property tax number', '', '', ''),
(14, 'grampanchayat ambegaon', 'customer id', 'customer mobile', '', ''),
(15, 'grampanchayat halondi gram nidhi', 'customer number', '', '', ''),
(16, 'grampanchayat hingangaon budruk', 'customer id', 'customer mobile', '', ''),
(17, 'grampanchayat kheradewangi', 'customer id', 'customer mobile', '', ''),
(18, 'greater chennai corporation', 'new propety id', '', '', ''),
(19, 'greater hyderabad muncipal corporation', 'ptin', '', '', ''),
(20, 'gulbarga city corporation', 'property id', '', '', ''),
(21, 'hubli-dharwad muncipal corporation', 'property id', '', '', ''),
(22, 'jejuri nagarparishad', 'property number', '', '', ''),
(23, 'kolhapur muncipal corporation property tax', 'assessment no', '', '', ''),
(24, 'kolkata muncipal corporation', 'assesse no', 'mobile no', '', ''),
(25, 'kolkata muncipal corporation-market regular demand', 'stall id', 'mobile no', '', ''),
(26, 'kolkata muncipal corporation-trade license', 'ce number', 'mobile no', '', ''),
(27, 'mcgm property tax', 'property account number', 'property tax', '', ''),
(28, 'madhya pradesh urban (e-nagarpalika)-property tax', 'enter valid ulbcode', 'property id', '', ''),
(29, 'margao muncipal council', 'house number', '', '', ''),
(30, 'mhapsa muncipal council', 'house number', '', '', ''),
(31, 'mira bhayandar muncipal corporation', 'property code', '', '', ''),
(32, 'mormugao muncipal council', 'house number', '', '', ''),
(33, 'muncipal corporation - meerut', 'consumer number', '', '', ''),
(34, 'muncipal corporation bhopal', 'property id', '', '', ''),
(35, 'muncipal corporation of the city of chandrapur', 'property number', 'ward number', 'partition number', ''),
(36, 'muncipal corporation rohtak', 'property id', '', '', ''),
(37, 'muncipal corporation shimla', 'property/ id customer id', 'bill number', 'mobile number', ''),
(38, 'nagar nigam agra', 'property id', '', '', ''),
(39, 'nagar nigam aligarh', 'property/pti number', '', '', ''),
(40, 'nagar nigam mathura-vrindavan', 'consumer id', '', '', ''),
(41, 'nagar palika jaitaran', 'consumer reg no', '', '', ''),
(42, 'nagar palika palia kalan', 'unique id code', '', '', ''),
(43, 'nagar palika parishad lalitpur', 'property tax id', 'house number', '', ''),
(44, 'nagar palika parishad muzaffarnagar', 'ptin', '', '', ''),
(45, 'nagar parishad beawar', 'consumer reg no', '', '', ''),
(46, 'nagarpalika parisad khoda ghaziabad', 'pin identification no', '', '', ''),
(47, 'odisha muncipal payments property tax', 'pt (property id)', 'ulb name', '', ''),
(48, 'patna muncipal corporation', 'property name', '', '', ''),
(49, 'pernem muncipal council', 'house number', '', '', ''),
(50, 'pimpri chinchwad muncipal corporation (pcmc)', 'ponda muncipal council', 'house number', '', ''),
(51, 'port blair muncipal council', 'shop id', '', '', ''),
(52, 'prayagraj nagar nigam', 'computer code', '', '', ''),
(53, 'puducherry ut (local bodies)- property tax', 'service unique number', 'local body', '', ''),
(54, 'pune muncipal corporation- property tax', 'property id', 'mobile no', 'email id', ''),
(55, 'quepem muncipal council', 'house number', '', '', ''),
(56, 'rdpr-karnataka-bapuji seva kendra', 'property no', '', '', ''),
(57, 'raha muncipal coporation', 'unique ref no', '', '', ''),
(58, 'raipur muncipal corporation', 'property id', 'ward no', '', ''),
(59, 'rajkot muncipal corporation', 'property number', '', '', ''),
(60, 'sanguem muncipal council', 'house number', '', '', ''),
(61, 'sankhalu muncipal council', 'house number', '', '', ''),
(62, 'siliguri jalpaiguri development authority', 'property id', '', '', ''),
(63, 'talegaon dabhade nagar parishad-muncipal taxes and services payments', 'property number', '', '', ''),
(64, 'tamil nadu civil supplies and customer protection dept', 'registration number', '', '', ''),
(65, 'tarapith rampurhat development authority(trda)', 'consumer id', '', '', ''),
(66, 'telangana muncipalties', 'assement number', 'mobile number', '', ''),
(67, 'thane muncipal corporation property tax', 'consumer number', 'mobile number', '', ''),
(68, 'ulhasnagar muncipal corporation', 'property number', '', '', ''),
(69, 'umred muncipal council', 'property number', 'name of property holder', 'email id', 'mobile number'),
(70, 'uttarakhand property tax', 'porperty id', '', '', ''),
(71, 'vadiyeraibag grampanchayat', 'property tax number', '', '', ''),
(72, 'valpoi muncipal council', 'house number', '', '', ''),
(73, 'varanasi nagar nigam property tax', 'property id', '', '', ''),
(74, 'vasai virar muncipal corporation-property', 'property no', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `operator_wise_commission`
--

CREATE TABLE `operator_wise_commission` (
  `id` int(11) NOT NULL,
  `SNo` int(11) DEFAULT NULL,
  `OperatorName` text DEFAULT NULL,
  `TotalCommission` double DEFAULT NULL,
  `Date` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operator_wise_commission`
--

INSERT INTO `operator_wise_commission` (`id`, `SNo`, `OperatorName`, `TotalCommission`, `Date`) VALUES
(1, 1, 'Operator1', 1500, '2024-03-09'),
(2, 2, 'Operator2', 2000.5, '2024-03-09'),
(3, 3, 'Operator3', 1800, '2024-03-09');

-- --------------------------------------------------------

--
-- Table structure for table `operator_wise_repo_data`
--

CREATE TABLE `operator_wise_repo_data` (
  `id` int(11) NOT NULL,
  `SNo` int(11) DEFAULT NULL,
  `ProviderName` text DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `TotalSuccess` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operator_wise_repo_data`
--

INSERT INTO `operator_wise_repo_data` (`id`, `SNo`, `ProviderName`, `Count`, `TotalSuccess`) VALUES
(1, 1, 'Operator1', 50, 45),
(2, 2, 'Operator2', 75, 70),
(3, 3, 'Operator3', 60, 55);

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(11) NOT NULL,
  `packageID` int(11) DEFAULT NULL,
  `packageName` text DEFAULT NULL,
  `Commission` int(11) DEFAULT NULL,
  `Is_Percent` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `packageID`, `packageName`, `Commission`, `Is_Percent`) VALUES
(1, 1, 'Package A', 100, 0.75);

-- --------------------------------------------------------

--
-- Table structure for table `package_oc_info`
--

CREATE TABLE `package_oc_info` (
  `id` int(11) NOT NULL,
  `Operator_ID` int(11) DEFAULT NULL,
  `Provider_type` text DEFAULT NULL,
  `Commission_Percentage` double DEFAULT NULL,
  `Timestamp` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_oc_info`
--

INSERT INTO `package_oc_info` (`id`, `Operator_ID`, `Provider_type`, `Commission_Percentage`, `Timestamp`) VALUES
(1, 1, 'Type A', 0.15, '2024-03-09T12:00:00Z');

-- --------------------------------------------------------

--
-- Table structure for table `page`
--

CREATE TABLE `page` (
  `id` int(11) NOT NULL,
  `page_id` varchar(50) DEFAULT NULL,
  `page_url` varchar(50) DEFAULT NULL,
  `menu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `page`
--

INSERT INTO `page` (`id`, `page_id`, `page_url`, `menu`) VALUES
(1, '123', 'abc_xyz', 'menu');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `txnid` varchar(255) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `productinfo` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `surl` varchar(255) NOT NULL,
  `furl` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `udf1` varchar(255) DEFAULT NULL,
  `udf2` varchar(255) DEFAULT NULL,
  `udf3` varchar(255) DEFAULT NULL,
  `udf4` varchar(255) DEFAULT NULL,
  `udf5` varchar(255) DEFAULT NULL,
  `udf6` varchar(255) DEFAULT NULL,
  `udf7` varchar(255) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(20) DEFAULT NULL,
  `show_payment_mode` varchar(255) DEFAULT NULL,
  `split_payments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`split_payments`)),
  `request_flow` varchar(255) DEFAULT NULL,
  `sub_merchant_id` varchar(255) DEFAULT NULL,
  `payment_category` varchar(255) DEFAULT NULL,
  `account_no` varchar(255) DEFAULT NULL,
  `ifsc` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `key`, `txnid`, `amount`, `productinfo`, `firstname`, `phone`, `email`, `surl`, `furl`, `hash`, `udf1`, `udf2`, `udf3`, `udf4`, `udf5`, `udf6`, `udf7`, `address1`, `address2`, `city`, `state`, `country`, `zipcode`, `show_payment_mode`, `split_payments`, `request_flow`, `sub_merchant_id`, `payment_category`, `account_no`, `ifsc`) VALUES
(1, 'dummy_key_1', 'txn_001', 100.00, 'Product 1', 'John Doe', 1234567890, 'john@example.com', 'success_url', 'failure_url', 'dummy_hash_1', 'udf1_data', 'udf2_data', 'udf3_data', 'udf4_data', 'udf5_data', 'udf6_data', 'udf7_data', 'Address 1', 'Address 2', 'City', 'State', 'Country', '12345', 'card', '{\"amount\": 50, \"method\": \"paypal\"}', 'request_flow_data', 'sub_merchant_id_data', 'payment_category_data', 'account_number_data', 'ifsc_data'),
(2, 'dummy_key_2', 'txn_002', 200.00, 'Product 2', 'Jane Smith', 9876543210, 'jane@example.com', 'success_url', 'failure_url', 'dummy_hash_2', 'udf1_data', 'udf2_data', 'udf3_data', 'udf4_data', 'udf5_data', 'udf6_data', 'udf7_data', 'Address 3', 'Address 4', 'City', 'State', 'Country', '54321', 'netbanking', '{\"amount\": 100, \"method\": \"credit_card\"}', 'request_flow_data', 'sub_merchant_id_data', 'payment_category_data', 'account_number_data', 'ifsc_data');

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

CREATE TABLE `payment_transactions` (
  `id` int(11) NOT NULL,
  `pg_type` varchar(255) DEFAULT NULL,
  `addedon` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_ref_num` varchar(255) DEFAULT NULL,
  `bankcode` varchar(255) DEFAULT NULL,
  `cancellation_reason` varchar(255) DEFAULT NULL,
  `cardCategory` varchar(255) DEFAULT NULL,
  `card_type` varchar(255) DEFAULT NULL,
  `cardnum` varchar(255) DEFAULT NULL,
  `cash_back_percentage` decimal(5,2) DEFAULT NULL,
  `deduction_percentage` decimal(5,2) DEFAULT NULL,
  `easepayid` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `error` varchar(255) DEFAULT NULL,
  `error_message` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `furl` varchar(255) DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `issuing_bank` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `merchant_logo` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `name_on_card` varchar(255) DEFAULT NULL,
  `net_amount_debit` decimal(10,2) DEFAULT NULL,
  `payment_source` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `productinfo` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `surl` varchar(255) DEFAULT NULL,
  `txnid` varchar(255) DEFAULT NULL,
  `udf1` varchar(255) DEFAULT NULL,
  `udf10` varchar(255) DEFAULT NULL,
  `udf2` varchar(255) DEFAULT NULL,
  `udf3` varchar(255) DEFAULT NULL,
  `udf4` varchar(255) DEFAULT NULL,
  `udf5` varchar(255) DEFAULT NULL,
  `udf6` varchar(255) DEFAULT NULL,
  `udf7` varchar(255) DEFAULT NULL,
  `udf8` varchar(255) DEFAULT NULL,
  `udf9` varchar(255) DEFAULT NULL,
  `unmappedstatus` varchar(255) DEFAULT NULL,
  `upi_va` varchar(255) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_transactions`
--

INSERT INTO `payment_transactions` (`id`, `pg_type`, `addedon`, `amount`, `bank_name`, `bank_ref_num`, `bankcode`, `cancellation_reason`, `cardCategory`, `card_type`, `cardnum`, `cash_back_percentage`, `deduction_percentage`, `easepayid`, `email`, `error`, `error_message`, `firstname`, `furl`, `hash`, `issuing_bank`, `key`, `merchant_logo`, `mode`, `name_on_card`, `net_amount_debit`, `payment_source`, `phone`, `productinfo`, `status`, `surl`, `txnid`, `udf1`, `udf10`, `udf2`, `udf3`, `udf4`, `udf5`, `udf6`, `udf7`, `udf8`, `udf9`, `unmappedstatus`, `upi_va`, `result`) VALUES
(1, 'NA', '2024-04-11 05:45:02', 2.00, 'NA', '410237095962', 'NA', 'NA', 'NA', 'UPI', 'NA', 50.00, 0.30, 'E24041143R7M2A', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '87a1d9d07df31bb83f32326aba28c0b6ddd0be63532f7d335eba84462a1a1961f0c3a66855c640d30a3dc86f66613a9efde763d022dfc7c90b0e764e4c98de48', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 2.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712814299447', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar-1@oksbi', 'payment_successfull'),
(2, 'NA', '2024-04-11 05:46:20', 2.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240411JYZRI0C', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', '6e955878950fb69b5ac2b5558dcfb46300f4bffebdaebef82400529103ef525cf95c6f8efc7865a6432e34e1784844ff19707479037d71c7ea7383ef3676900d', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 2.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712814299447', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(9, 'NA', '2024-04-12 14:58:43', 2.00, 'NA', '446949690595', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E2404124SAROUW', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '96c36bde0fc209648867680a33e229a7e07d5dbf614cf8a765e900eb48306945e0d1ee39581c36f5d245ebf8325b2d648a6f47e7af942d7174b521d5dce8b30b', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 2.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712933918879', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar@okicici', 'payment_successfull'),
(10, 'NA', '2024-04-12 14:58:43', 2.00, 'NA', '446949690595', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E2404124SAROUW', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '96c36bde0fc209648867680a33e229a7e07d5dbf614cf8a765e900eb48306945e0d1ee39581c36f5d245ebf8325b2d648a6f47e7af942d7174b521d5dce8b30b', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 2.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712933918879', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar@okicici', 'payment_successfull'),
(11, 'NA', '2024-04-12 15:00:30', 5.00, 'NA', '410349725165', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E240412DX9BG2O', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '0c250e1e7a9c15977abdd35df096b53922f292576a6099c8db3d7e5591752bb39c6e25cf165a5bf544c395301558a660b2665bc84b267f88f0892051c2705827', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 5.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712933918879', '', '', '', '', '', '', '', '', '', '', 'NA', '6386853730@ybl', 'payment_successfull'),
(12, 'NA', '2024-04-12 15:00:30', 5.00, 'NA', '410349725165', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E240412DX9BG2O', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '0c250e1e7a9c15977abdd35df096b53922f292576a6099c8db3d7e5591752bb39c6e25cf165a5bf544c395301558a660b2665bc84b267f88f0892051c2705827', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 5.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712933918879', '', '', '', '', '', '', '', '', '', '', 'NA', '6386853730@ybl', 'payment_successfull'),
(13, 'NA', '2024-04-12 15:06:10', 10.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240412IIONV61', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', '8fa5032ad0a6e32dda01e768512a13603ad8a2c61b5f9daa2d0e2b9c454a59fd6c008b15d6f7abf811391daf30f801a47c35962775ad236d2f4ebd26b0b995ce', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 10.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934361930', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(14, 'NA', '2024-04-12 15:06:10', 10.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240412IIONV61', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', '8fa5032ad0a6e32dda01e768512a13603ad8a2c61b5f9daa2d0e2b9c454a59fd6c008b15d6f7abf811391daf30f801a47c35962775ad236d2f4ebd26b0b995ce', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 10.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934361930', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(15, 'NA', '2024-04-12 15:06:49', 5.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E2404123MJJS2R', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'b0723d8d7de360eabcae6d8f6edbf8f7de6200b85c1f5971d7fa5b657240093e48df91150698a5680d81dbb4c7b5da2d63b57fbca171f9920479243fdc69c6b3', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 5.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934405015', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(16, 'NA', '2024-04-12 15:06:49', 5.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E2404123MJJS2R', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'b0723d8d7de360eabcae6d8f6edbf8f7de6200b85c1f5971d7fa5b657240093e48df91150698a5680d81dbb4c7b5da2d63b57fbca171f9920479243fdc69c6b3', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 5.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934405015', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(17, 'NA', '2024-04-12 15:07:16', 9.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240412I3R58II', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'eeea78ad7e5d2f9904e45e460c7dab6e55d07205d9e7c5fe8470d0c1631c26edb36cf2a126ae7db352369fe1188969feec996ad92138c9fd34dc85434fd31058', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 9.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934430853', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(18, 'NA', '2024-04-12 15:07:16', 9.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240412I3R58II', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'eeea78ad7e5d2f9904e45e460c7dab6e55d07205d9e7c5fe8470d0c1631c26edb36cf2a126ae7db352369fe1188969feec996ad92138c9fd34dc85434fd31058', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 9.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934430853', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(19, 'NA', '2024-04-12 15:08:10', 5.00, 'NA', '446950001822', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E240412SGK72I0', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', 'bdf72b6f05dee2d62566e654610ad95159b4bf9e87ffb5a9124c859d1dcb27c9b279b10bbf23511043f421c44257fa7c9388dbbf23511043f421c44257fa7c9388db768629aa6b5dc21a5f70e19b85', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 5.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712934487762', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar@okicici', 'payment_successfull'),
(20, 'NA', '2024-04-12 15:10:29', 4.00, 'NA', '410357398397', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E240412B146BMW', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '222128158d1b6cc70677c3cf8a5c2b01db34d90aa93b34e4bc9f38bc728ddb527536447f379e9e754f5303723e75d01a7d6455fefb4db523da55b1f6ae732f6d', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 4.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712934624109', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar@okicici', 'payment_successfull'),
(21, 'NA', '2024-04-12 15:11:09', 2.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E2404128VDW3MH', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', '39b89f4d7fa978a37082c97d2986c9d233e1692d9f3441e5ff1c09ef217db356af33eab52d0538a583039c2c66ccfb4eda392dd05f1e3000f07f65c372acb4ba', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 2.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934665595', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(22, 'NA', '2024-04-12 15:11:34', 1.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240412SQ1RFHU', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'eef08012b808d14b227e36d3e467f6efadf5de9aa4d730da1945ca6a37219026fbbaa2ef1d97d3529cac177e0af88125f5dca8b4156791ee34f129a69f470246', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 1.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934691649', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(23, 'NA', '2024-04-12 15:12:30', 0.10, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E24041273K872I', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'd16c23f36973b7873ac48831e4e63ce821bbc4b8d365bde37dbde484d697226adf880d6209c6e1e22c4a84fb06fdb8347e919fba2efcf7d3837fe94dc969497c', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 0.10, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934721259', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(24, 'NA', '2024-04-12 15:13:00', 3.00, 'NA', 'NA', 'NA', '', 'NA', 'NA', 'NA', 50.00, 0.00, 'E240412021O1W4', 'edsomfintech@gmail.com', 'NA', 'NA', 'Edsom', 'https://edsomfintech.com', 'e667d00a6b42ee1fb526aa6bcaaa2da10cb04d672abfbe85568fd7e8b5edc8d7ac515621a0c26b4a04c10b40b25fed83a93d01f8460858b14dd672fb8fe874b3', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'NA', 'NA', 3.00, 'Easebuzz', '9999999999', 'Rockkpay', 'userCancelled', 'https://edsomfintech.com', 'IPAISA1712934777719', '', '', '', '', '', '', '', '', '', '', 'NA', 'NA', 'user_cancelled'),
(25, 'NA', '2024-04-12 15:13:27', 6.00, 'NA', '410345396422', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E240412T79F1P1', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', '66c64e5a962e0cc42e5377376f0ff69ee2857dd32f6bcf3f3de29a078e1077ca55213f57bfb20a9cc528e9e9d37078dbb1e4fa0f670acff5baa07d0897d59edd', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 6.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712934804809', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar@okicici', 'payment_successfull'),
(26, 'NA', '2024-04-12 15:14:05', 13.00, 'NA', '410338699647', 'NA', NULL, 'NA', 'UPI', 'NA', 50.00, 0.30, 'E2404128F42RC1', 'edsomfintech@gmail.com', 'APPROVED OR COMPLETED SUCCESSFULLY', 'APPROVED OR COMPLETED SUCCESSFULLY', 'Edsom', 'https://edsomfintech.com', 'c55bc2c7eb6d1a44ef7b78a5c89a7923b5181c90d99112a347b3d5e06f0a856c146626229ae26fa1e7e1e27ed1eaa5c78d7b29af589f1d4c6128d94a4ccc07db', 'NA', 'SFUO1PXTNT', 'https://s3.ap-southeast-1.amazonaws.com/easebuzz/pay.easebuzz.in/logo/124317/8allw0mz.png', 'UPI', 'NA', 13.00, 'Easebuzz', '9999999999', 'Rockkpay', 'success', 'https://edsomfintech.com', 'IPAISA1712934838961', '', '', '', '', '', '', '', '', '', '', 'NA', 'singhpoojaomkar@okicici', 'payment_successfull');

-- --------------------------------------------------------

--
-- Table structure for table `piped_gas`
--

CREATE TABLE `piped_gas` (
  `id` int(11) NOT NULL,
  `piped gas` text DEFAULT NULL,
  `fields` text DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `piped_gas`
--

INSERT INTO `piped_gas` (`id`, `piped gas`, `fields`, `MyUnknownColumn`) VALUES
(1, 'AGP CGD INDIA PVT LTD', 'CA number', ''),
(2, 'agp city gas pvt ltd', 'ca number', ''),
(3, 'bhagyanagar gas limited', 'crn no', ''),
(4, 'gail gas limited', 'bp no', ''),
(5, 'gail india', 'bp no', ''),
(6, 'mahanagar gas', 'CA number', ''),
(7, 'maharashtra natural gas limited', 'bp no', ''),
(8, 'megha gas', 'crn no', ''),
(9, 'unique central piped gases pvt ltd (UCPGPL)', 'Customer no', ''),
(10, 'adani gas', 'customer id', ''),
(11, 'avantika gas ltd', 'customer no', ''),
(12, 'assam gas company limited', 'customer id', ''),
(13, 'central up gas', 'customer code/crn number', ''),
(14, 'charotas gas sahakari manadali limited', 'customer number', ''),
(15, 'goa natural ga sprivate limited', 'customer id', ''),
(16, 'godavari gas pvt ltd', 'crn no', 'invoice type'),
(17, 'green gas limited', 'select crn/cid number', ''),
(18, 'gujrat gas', 'customer id', ''),
(19, 'gujrat state petronet limited', 'customer id', ''),
(20, 'hcg disribution pvt ltd', 'crn number', ''),
(21, 'hp oil gas private limited', 'consumer code', ''),
(22, 'hindustan petroleun corporation ltd piped gas', 'bp number', ''),
(23, 'irm energy private limited', 'customer id', ''),
(24, 'indian oil corporation ltd-piped gas', 'customer number', ''),
(25, 'indraprastha gas', 'bp number', ''),
(26, 'naveriya gas pvt ltd', 'consumer number', ''),
(27, 'purba bharati gas pvt ltd', 'customer id ', ''),
(28, 'rajasthan state gas limited', 'customer id', ''),
(29, 'sabarmati gas limited (sgl)', 'customer id', ''),
(30, 'sanwariya gas limited', 'customer code', ''),
(31, 'torrent gas', 'custnum', ''),
(32, 'tripura natural gas companu ltd', 'consumer no', ''),
(33, 'vadodara gas limited', 'consumer number', '');

-- --------------------------------------------------------

--
-- Table structure for table `provider`
--

CREATE TABLE `provider` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `outlet_name` text DEFAULT NULL,
  `aadharcard_number` text DEFAULT NULL,
  `gstin` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `bank_account_number` bigint(20) DEFAULT NULL,
  `ifsc` text DEFAULT NULL,
  `main_min_balance` int(11) DEFAULT NULL,
  `low_balance_alert_limit` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `district` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `alternate_number` bigint(20) DEFAULT NULL,
  `pancard_number` text DEFAULT NULL,
  `voter_id_number` text DEFAULT NULL,
  `aeps_unsettled_fund` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provider`
--

INSERT INTO `provider` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `remark`, `bank_account_number`, `ifsc`, `main_min_balance`, `low_balance_alert_limit`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `voter_id_number`, `aeps_unsettled_fund`) VALUES
(1, 'Emily', 'Anne', 'Johnson', 7777777777, 'emily@example.com', 'ABC Retail', '7777 7777 7777', 'GSTIN77777777', '1985-12-08', 'Valued customer', 7777777777777777, 'PQRS7777777', 12000, 6000, '456 Oak Street', 654321, 'LMN', 'OPQ', 'RST', 3333333333, 'LMNOP4567G', 'V8765432', 18000);

-- --------------------------------------------------------

--
-- Table structure for table `refund`
--

CREATE TABLE `refund` (
  `id` int(11) NOT NULL,
  `Log_ID` text DEFAULT NULL,
  `Log_Date` text DEFAULT NULL,
  `Mobile_Number` int(11) DEFAULT NULL,
  `Trans_ID` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `Refund_Mode` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `refund`
--

INSERT INTO `refund` (`id`, `Log_ID`, `Log_Date`, `Mobile_Number`, `Trans_ID`, `Provider`, `Action`, `Refund_Mode`) VALUES
(1, 'LOG001', '2024-03-10', 1234567890, 'TRANS001', 'Provider A', 'Initiated', 'Partial'),
(2, 'LOG002', '2024-03-11', 1234567890, 'TRANS002', 'Provider B', 'Completed', 'Full'),
(3, 'LOG003', '2024-03-12', 1234567890, 'TRANS003', 'Provider C', 'Initiated', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `reports_trans_hist`
--

CREATE TABLE `reports_trans_hist` (
  `id` int(11) NOT NULL,
  `Date` text DEFAULT NULL,
  `Mobile_Number` int(11) DEFAULT NULL,
  `User_ID` text DEFAULT NULL,
  `Trans_ID` text DEFAULT NULL,
  `Req_ID` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Provider_Type` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `Source` text DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `OpTxnStatus` text DEFAULT NULL,
  `Response_Status` text DEFAULT NULL,
  `Complaint` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reports_trans_hist`
--

INSERT INTO `reports_trans_hist` (`id`, `Date`, `Mobile_Number`, `User_ID`, `Trans_ID`, `Req_ID`, `Status`, `Provider_Type`, `Provider`, `Source`, `Amount`, `OpTxnStatus`, `Response_Status`, `Complaint`) VALUES
(1, '2024-03-10', 1234567890, 'user123', 'TRANS001', 'REQ001', 'Success', 'Payment Gateway', 'Provider A', 'Web', 1000, 'Completed', 'Approved', ''),
(2, '2024-03-10', 1234567890, 'user456', 'TRANS002', 'REQ002', 'Failed', 'Bank Transfer', 'Bank X', 'Mobile App', 2500, 'Failed', 'Declined', 'Transaction amount incorrect');

-- --------------------------------------------------------

--
-- Table structure for table `retailer`
--

CREATE TABLE `retailer` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `outlet_name` text DEFAULT NULL,
  `aadharcard_number` text DEFAULT NULL,
  `gstin` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `bank_account_number` bigint(20) DEFAULT NULL,
  `ifsc` text DEFAULT NULL,
  `main_min_balance` int(11) DEFAULT NULL,
  `low_balance_alert_limit` int(11) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `district` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `alternate_number` text DEFAULT NULL,
  `pancard_number` text DEFAULT NULL,
  `voter_id_number` text DEFAULT NULL,
  `aeps_unsettled_fund` int(11) DEFAULT NULL,
  `__v` text DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `updatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `retailer`
--

INSERT INTO `retailer` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `remark`, `bank_account_number`, `ifsc`, `main_min_balance`, `low_balance_alert_limit`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `voter_id_number`, `aeps_unsettled_fund`, `__v`, `isActive`, `userType`, `createdDate`, `updateDate`, `createdBy`, `updatedBy`) VALUES
(8, 'Mohsin', 'bnbjnb', 'singh', 8788286618, 'pankajsspati8@gmail.com', 'reubin ', '754847875615', ' njhggg', '2024-04-11', '', 9876543210987688, 'IKFN01341', 0, 0, 'jkk', 425110, 'Akola', 'punjab', 'Akola', '9699246328', 'DKSDKAD', '', 0, NULL, 0, '', NULL, NULL, '', ''),
(9, ' patil', 'omkar', 'patil', 8788286618, 'harsh.jarare.it@edsomfintech.com', 'sacascac', '754847875615', 'ggg67657', '2024-04-25', '', 9876543210987688, 'EFGH9876543', 0, 0, 'jjjjjj', 425110, 'jalgaon', 'punjab', 'Jammu', '9699246328', 'gf457g7', '', 0, NULL, 0, '', NULL, NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sidebar`
--

CREATE TABLE `sidebar` (
  `id` int(11) NOT NULL,
  `idold` bigint(20) DEFAULT NULL,
  `userType` varchar(1024) DEFAULT NULL,
  `bgColorOne` varchar(1024) DEFAULT NULL,
  `bgColorTwo` varchar(1024) DEFAULT NULL,
  `mainArr` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`mainArr`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sidebar`
--

INSERT INTO `sidebar` (`id`, `idold`, `userType`, `bgColorOne`, `bgColorTwo`, `mainArr`) VALUES
(1, 900, 'Admin', '#a0a7e2', '#343f97', '[{\"id\":1,\"title\":\"dashboard\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"path\":\"./admin-dashboard\"},{\"id\":2,\"title\":\"commission\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":21,\"subTitle\":\"Create package\",\"path\":\"./createpack\"},{\"id\":22,\"subTitle\":\"Commission packs\",\"path\":\"./commissionpacks\"}]},{\"id\":4,\"title\":\"users\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":41,\"subTitle\":\"Channal Partner\",\"ultraSubMenu\":[{\"id\":411,\"subTitle\":\"Channal Partner List\",\"path\":\"./channalpartnerlist\"},{\"id\":412,\"subTitle\":\"Add Channal Partner\",\"path\":\"./addchannalpartner\"}]},{\"id\":42,\"subTitle\":\"Super distributors\",\"ultraSubMenu\":[{\"id\":421,\"subTitle\":\"Super distributor list\",\"path\":\"./superdistrilist\"},{\"id\":422,\"subTitle\":\"Add super distributor\",\"path\":\"./addsuperdistributor\"}]},{\"id\":43,\"subTitle\":\"Master distributors\",\"ultraSubMenu\":[{\"id\":431,\"subTitle\":\"Master distributor list\",\"path\":\"./masterdistributor\"},{\"id\":432,\"subTitle\":\"Add master distributor\",\"path\":\"./addmasterdistributor\"}]},{\"id\":44,\"subTitle\":\"Distributors\",\"ultraSubMenu\":[{\"id\":441,\"subTitle\":\"Distributor list\",\"path\":\"./distributorlist\"},{\"id\":442,\"subTitle\":\"Add distributor\",\"path\":\"./adddistributor\"}]},{\"id\":45,\"subTitle\":\"Retailers\",\"ultraSubMenu\":[{\"id\":451,\"subTitle\":\"Retailer list\",\"path\":\"./retailers\"},{\"id\":452,\"subTitle\":\"Add retailer\",\"path\":\"./addretailer\"}]},{\"id\":46,\"subTitle\":\"Members\",\"ultraSubMenu\":[{\"id\":461,\"subTitle\":\"Members list\",\"path\":\"./comingsoon\"}]},{\"id\":47,\"subTitle\":\"Change parent\",\"path\":\"./assignparentuserr\"},{\"id\":48,\"subTitle\":\"Change mobile number in KYC\",\"path\":\"./changemobilenumber\"},{\"id\":49,\"subTitle\":\"KYC verification\",\"path\":\"./kycverificationn\"},{\"id\":50,\"subTitle\":\"KYC verified\",\"path\":\"./comingsoon\"}]},{\"id\":5,\"title\":\"balance\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":51,\"subTitle\":\"Add MAIN balance\",\"path\":\"./addmainbalance\"},{\"id\":52,\"subTitle\":\"Reverse MAIN balance\",\"path\":\"./addmainbalance_2\"},{\"id\":53,\"subTitle\":\"Add Balance\",\"path\":\"./easebuzpayment\"}]},{\"id\":6,\"title\":\"report\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":62,\"subTitle\":\"Transaction history\",\"path\":\"./transactionhistory\"},{\"id\":63,\"subTitle\":\"Transaction history with parent\",\"path\":\"./transactionhistwithparent\"},{\"id\":66,\"subTitle\":\"Complaints\",\"path\":\"./refund_2\"},{\"id\":67,\"subTitle\":\"Complaints history\",\"path\":\"./complainthistory\"},{\"id\":68,\"subTitle\":\"Refunds\",\"path\":\"./refund\"},{\"id\":73,\"subTitle\":\"Balance requests\",\"path\":\"./balancerequests\"},{\"id\":75,\"subTitle\":\"Balance request history\",\"path\":\"./balancereqhist\"},{\"id\":77,\"subTitle\":\"Activation report\",\"path\":\"./activationreport\"},{\"id\":78,\"subTitle\":\"User cashback report\",\"path\":\"./usercashback\"}]},{\"id\":7,\"title\":\"other reports\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":71,\"subTitle\":\"Money transfer reports\",\"path\":\"./moneytransferreport\"},{\"id\":72,\"subTitle\":\"AEPS report\",\"path\":\"./aepsreport\"},{\"id\":73,\"subTitle\":\"Operator wise report\",\"path\":\"./comingsoon\"},{\"id\":74,\"subTitle\":\"User wise report\",\"path\":\"./userwisereport\"},{\"id\":78,\"subTitle\":\"Individual report\",\"path\":\"./individualreport\"},{\"id\":79,\"subTitle\":\"Opening closing report MAIN\",\"path\":\"./openingclosingreportmain\"},{\"id\":80,\"subTitle\":\"Operatorwise commission report\",\"path\":\"./operatorwcreport\"},{\"id\":81,\"subTitle\":\"Commission distribution report\",\"path\":\"./comissiondistribreport\"},{\"id\":82,\"subTitle\":\"Refund success report\",\"path\":\"./refundsucessstory\"},{\"id\":83,\"subTitle\":\"Status change report\",\"path\":\"./statuschangereport\"},{\"id\":84,\"subTitle\":\"Last 3 days secondary report\",\"path\":\"./lastdaysecondaryreport\"},{\"id\":85,\"subTitle\":\"Retailers stock not taken\",\"path\":\"./retailerstocknottaken\"},{\"id\":86,\"subTitle\":\"Retailers sale not done\",\"path\":\"./retailersalenotdone\"},{\"id\":87,\"subTitle\":\"Users sale done\",\"path\":\"./usersaledone\"}]},{\"id\":8,\"title\":\"admin\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":89,\"subTitle\":\"Add admin MAIN balance\",\"path\":\"./addadmin\"},{\"id\":90,\"subTitle\":\"Notice\",\"path\":\"./notice\"},{\"id\":91,\"subTitle\":\"USER KYC\",\"path\":\"./userkyc\"},{\"id\":92,\"subTitle\":\"Send sms\",\"path\":\"./sendsms\"},{\"id\":93,\"subTitle\":\"Send whatsapp\",\"path\":\"./sendwhatsapp\"},{\"id\":94,\"subTitle\":\"Send email\",\"path\":\"./comingsoon\"},{\"id\":95,\"subTitle\":\"Send notification\",\"path\":\"./sendnotification\"},{\"id\":96,\"subTitle\":\"Banks\",\"path\":\"./banks\"},{\"id\":97,\"subTitle\":\"Settings\",\"path\":\"./setting\"},{\"id\":98,\"subTitle\":\"Circle master\",\"path\":\"./circlemasterscreenn\"},{\"id\":99,\"subTitle\":\"Website logs\",\"path\":\"./websitelogsscreen\"},{\"id\":100,\"subTitle\":\"Website logs archive\",\"path\":\"./weblogsarchive\"},{\"id\":101,\"subTitle\":\"SMS logs\",\"path\":\"./smslogs\"},{\"id\":102,\"subTitle\":\"IP whitelist\",\"path\":\"./ipwhitelistss\"},{\"id\":103,\"subTitle\":\"Provider types\",\"path\":\"./providertypescreen\"},{\"id\":104,\"subTitle\":\"Circles\",\"path\":\"./circlesscreen\"}]}]'),
(2, 901, 'channel_partner', '#81cda9', '#054426', '[{\"id\":1,\"title\":\"dashboard\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"path\":\"./admin-dashboard\"},{\"id\":2,\"title\":\"commission\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":21,\"subTitle\":\"Create package\",\"path\":\"./createpack\"},{\"id\":22,\"subTitle\":\"Commission packs\",\"path\":\"./commissionpacks\"}]},{\"id\":4,\"title\":\"users\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":41,\"subTitle\":\"Super distributors\",\"ultraSubMenu\":[{\"id\":411,\"subTitle\":\"Super distributor list\",\"path\":\"./superdistrilist\"},{\"id\":412,\"subTitle\":\"Add super distributor\",\"path\":\"./addsuperdistributor\"}]},{\"id\":42,\"subTitle\":\"Master distributors\",\"ultraSubMenu\":[{\"id\":421,\"subTitle\":\"Master distributor list\",\"path\":\"./masterdistributor\"},{\"id\":422,\"subTitle\":\"Add master distributor\",\"path\":\"./addmasterdistributor\"}]},{\"id\":43,\"subTitle\":\"Distributors\",\"ultraSubMenu\":[{\"id\":431,\"subTitle\":\"Distributor list\",\"path\":\"./distributorlist\"},{\"id\":432,\"subTitle\":\"Add distributor\",\"path\":\"./adddistributor\"}]},{\"id\":44,\"subTitle\":\"Retailers\",\"ultraSubMenu\":[{\"id\":441,\"subTitle\":\"Retailer list\",\"path\":\"./retailers\"},{\"id\":442,\"subTitle\":\"Add retailer\",\"path\":\"./addretailer\"}]},{\"id\":46,\"subTitle\":\"Members\",\"ultraSubMenu\":[{\"id\":461,\"subTitle\":\"Members list\",\"path\":\"./comingsoon\"}]},{\"id\":47,\"subTitle\":\"Change parent\",\"path\":\"./assignparentuserr\"},{\"id\":48,\"subTitle\":\"Change mobile number in KYC\",\"path\":\"./changemobilenumber\"},{\"id\":49,\"subTitle\":\"KYC verification\",\"path\":\"./kycverificationn\"},{\"id\":50,\"subTitle\":\"KYC verified\",\"path\":\"./comingsoon\"}]},{\"id\":5,\"title\":\"balance\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":51,\"subTitle\":\"Add MAIN balance\",\"path\":\"./addmainbalance\"},{\"id\":52,\"subTitle\":\"Reverse MAIN balance\",\"path\":\"./addmainbalance_2\"},{\"id\":53,\"subTitle\":\"Add Balance\",\"path\":\"./easebuzpayment\"}]},{\"id\":6,\"title\":\"report\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":62,\"subTitle\":\"Transaction history\",\"path\":\"./transactionhistory\"},{\"id\":63,\"subTitle\":\"Transaction history with parent\",\"path\":\"./transactionhistwithparent\"},{\"id\":66,\"subTitle\":\"Complaints\",\"path\":\"./refund_2\"},{\"id\":67,\"subTitle\":\"Complaints history\",\"path\":\"./complainthistory\"},{\"id\":68,\"subTitle\":\"Refunds\",\"path\":\"./refund\"},{\"id\":73,\"subTitle\":\"Balance requests\",\"path\":\"./balancerequests\"},{\"id\":75,\"subTitle\":\"Balance request history\",\"path\":\"./balancereqhist\"},{\"id\":77,\"subTitle\":\"Activation report\",\"path\":\"./activationreport\"},{\"id\":78,\"subTitle\":\"User cashback report\",\"path\":\"./usercashback\"}]},{\"id\":7,\"title\":\"other reports\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":71,\"subTitle\":\"Money transfer reports\",\"path\":\"./moneytransferreport\"},{\"id\":72,\"subTitle\":\"AEPS report\",\"path\":\"./aepsreport\"},{\"id\":73,\"subTitle\":\"Operator wise report\",\"path\":\"./comingsoon\"},{\"id\":74,\"subTitle\":\"User wise report\",\"path\":\"./userwisereport\"},{\"id\":78,\"subTitle\":\"Individual report\",\"path\":\"./individualreport\"},{\"id\":79,\"subTitle\":\"Opening closing report MAIN\",\"path\":\"./openingclosingreportmain\"},{\"id\":80,\"subTitle\":\"Operatorwise commission report\",\"path\":\"./operatorwcreport\"},{\"id\":81,\"subTitle\":\"Commission distribution report\",\"path\":\"./comissiondistribreport\"},{\"id\":82,\"subTitle\":\"Refund success report\",\"path\":\"./refundsucessstory\"},{\"id\":83,\"subTitle\":\"Status change report\",\"path\":\"./statuschangereport\"},{\"id\":84,\"subTitle\":\"Last 3 days secondary report\",\"path\":\"./lastdaysecondaryreport\"},{\"id\":85,\"subTitle\":\"Retailers stock not taken\",\"path\":\"./retailerstocknottaken\"},{\"id\":86,\"subTitle\":\"Retailers sale not done\",\"path\":\"./retailersalenotdone\"},{\"id\":87,\"subTitle\":\"Users sale done\",\"path\":\"./usersaledone\"}]},{\"id\":8,\"title\":\"admin\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":89,\"subTitle\":\"Add admin MAIN balance\",\"path\":\"./addadmin\"},{\"id\":90,\"subTitle\":\"Notice\",\"path\":\"./notice\"},{\"id\":91,\"subTitle\":\"USER KYC\",\"path\":\"./userkyc\"},{\"id\":92,\"subTitle\":\"Send sms\",\"path\":\"./sendsms\"},{\"id\":93,\"subTitle\":\"Send whatsapp\",\"path\":\"./sendwhatsapp\"},{\"id\":94,\"subTitle\":\"Send email\",\"path\":\"./comingsoon\"},{\"id\":95,\"subTitle\":\"Send notification\",\"path\":\"./sendnotification\"},{\"id\":96,\"subTitle\":\"Banks\",\"path\":\"./banks\"},{\"id\":97,\"subTitle\":\"Settings\",\"path\":\"./setting\"},{\"id\":98,\"subTitle\":\"Circle master\",\"path\":\"./circlemasterscreenn\"},{\"id\":99,\"subTitle\":\"Website logs\",\"path\":\"./websitelogsscreen\"},{\"id\":100,\"subTitle\":\"Website logs archive\",\"path\":\"./weblogsarchive\"},{\"id\":101,\"subTitle\":\"SMS logs\",\"path\":\"./smslogs\"},{\"id\":102,\"subTitle\":\"IP whitelist\",\"path\":\"./ipwhitelistss\"},{\"id\":103,\"subTitle\":\"Provider types\",\"path\":\"./providertypescreen\"},{\"id\":104,\"subTitle\":\"Circles\",\"path\":\"./circlesscreen\"}]}]'),
(3, 902, 'super_distributor', '#fae9dd', '#ff8831', '[{\"id\":1,\"title\":\"dashboard\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"path\":\"./admin-dashboard\"},{\"id\":2,\"title\":\"commission\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":21,\"subTitle\":\"Create package\",\"path\":\"./createpack\"},{\"id\":22,\"subTitle\":\"Commission packs\",\"path\":\"./commissionpacks\"}]},{\"id\":4,\"title\":\"users\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":41,\"subTitle\":\"Master distributors\",\"ultraSubMenu\":[{\"id\":411,\"subTitle\":\"Master distributor list\",\"path\":\"./masterdistributor\"},{\"id\":412,\"subTitle\":\"Add master distributor\",\"path\":\"./addretailer\"}]},{\"id\":42,\"subTitle\":\"Distributors\",\"ultraSubMenu\":[{\"id\":421,\"subTitle\":\"Distributor list\",\"path\":\"./distributorlist\"},{\"id\":422,\"subTitle\":\"Add distributor\",\"path\":\"./adddistributor\"}]},{\"id\":43,\"subTitle\":\"Retailers\",\"ultraSubMenu\":[{\"id\":431,\"subTitle\":\"Retailer list\",\"path\":\"./retailers\"},{\"id\":432,\"subTitle\":\"Add retailer\",\"path\":\"./addretailer\"}]},{\"id\":46,\"subTitle\":\"Members\",\"ultraSubMenu\":[{\"id\":461,\"subTitle\":\"Members list\",\"path\":\"./comingsoon\"}]},{\"id\":47,\"subTitle\":\"Change parent\",\"path\":\"./assignparentuserr\"},{\"id\":48,\"subTitle\":\"Change mobile number in KYC\",\"path\":\"./changemobilenumber\"},{\"id\":49,\"subTitle\":\"KYC verification\",\"path\":\"./kycverificationn\"},{\"id\":50,\"subTitle\":\"KYC verified\",\"path\":\"./comingsoon\"}]},{\"id\":5,\"title\":\"balance\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":51,\"subTitle\":\"Add MAIN balance\",\"path\":\"./addmainbalance\"},{\"id\":52,\"subTitle\":\"Reverse MAIN balance\",\"path\":\"./addmainbalance_2\"},{\"id\":53,\"subTitle\":\"Add Balance\",\"path\":\"./easebuzpayment\"}]},{\"id\":6,\"title\":\"report\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":62,\"subTitle\":\"Transaction history\",\"path\":\"./transactionhistory\"},{\"id\":63,\"subTitle\":\"Transaction history with parent\",\"path\":\"./transactionhistwithparent\"},{\"id\":66,\"subTitle\":\"Complaints\",\"path\":\"./refund_2\"},{\"id\":67,\"subTitle\":\"Complaints history\",\"path\":\"./complainthistory\"},{\"id\":68,\"subTitle\":\"Refunds\",\"path\":\"./refund\"},{\"id\":73,\"subTitle\":\"Balance requests\",\"path\":\"./balancerequests\"},{\"id\":75,\"subTitle\":\"Balance request history\",\"path\":\"./balancereqhist\"},{\"id\":77,\"subTitle\":\"Activation report\",\"path\":\"./activationreport\"},{\"id\":78,\"subTitle\":\"User cashback report\",\"path\":\"./usercashback\"}]},{\"id\":7,\"title\":\"other reports\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":71,\"subTitle\":\"Money transfer reports\",\"path\":\"./moneytransferreport\"},{\"id\":72,\"subTitle\":\"AEPS report\",\"path\":\"./aepsreport\"},{\"id\":73,\"subTitle\":\"Operator wise report\",\"path\":\"./comingsoon\"},{\"id\":74,\"subTitle\":\"User wise report\",\"path\":\"./userwisereport\"},{\"id\":78,\"subTitle\":\"Individual report\",\"path\":\"./individualreport\"},{\"id\":79,\"subTitle\":\"Opening closing report MAIN\",\"path\":\"./openingclosingreportmain\"},{\"id\":80,\"subTitle\":\"Operatorwise commission report\",\"path\":\"./operatorwcreport\"},{\"id\":81,\"subTitle\":\"Commission distribution report\",\"path\":\"./comissiondistribreport\"},{\"id\":82,\"subTitle\":\"Refund success report\",\"path\":\"./refundsucessstory\"},{\"id\":83,\"subTitle\":\"Status change report\",\"path\":\"./statuschangereport\"},{\"id\":84,\"subTitle\":\"Last 3 days secondary report\",\"path\":\"./lastdaysecondaryreport\"},{\"id\":85,\"subTitle\":\"Retailers stock not taken\",\"path\":\"./retailerstocknottaken\"},{\"id\":86,\"subTitle\":\"Retailers sale not done\",\"path\":\"./retailersalenotdone\"},{\"id\":87,\"subTitle\":\"Users sale done\",\"path\":\"./usersaledone\"}]},{\"id\":8,\"title\":\"admin\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":89,\"subTitle\":\"Add admin MAIN balance\",\"path\":\"./addadmin\"},{\"id\":90,\"subTitle\":\"Notice\",\"path\":\"./notice\"},{\"id\":91,\"subTitle\":\"USER KYC\",\"path\":\"./userkyc\"},{\"id\":92,\"subTitle\":\"Send sms\",\"path\":\"./sendsms\"},{\"id\":93,\"subTitle\":\"Send whatsapp\",\"path\":\"./sendwhatsapp\"},{\"id\":94,\"subTitle\":\"Send email\",\"path\":\"./comingsoon\"},{\"id\":95,\"subTitle\":\"Send notification\",\"path\":\"./sendnotification\"},{\"id\":96,\"subTitle\":\"Banks\",\"path\":\"./banks\"},{\"id\":97,\"subTitle\":\"Settings\",\"path\":\"./setting\"},{\"id\":98,\"subTitle\":\"Circle master\",\"path\":\"./circlemasterscreenn\"},{\"id\":99,\"subTitle\":\"Website logs\",\"path\":\"./websitelogsscreen\"},{\"id\":100,\"subTitle\":\"Website logs archive\",\"path\":\"./weblogsarchive\"},{\"id\":101,\"subTitle\":\"SMS logs\",\"path\":\"./smslogs\"},{\"id\":102,\"subTitle\":\"IP whitelist\",\"path\":\"./ipwhitelistss\"},{\"id\":103,\"subTitle\":\"Provider types\",\"path\":\"./providertypescreen\"},{\"id\":104,\"subTitle\":\"Circles\",\"path\":\"./circlesscreen\"}]}]'),
(4, 903, 'master_distributor', '#c2a8f5', '#5e17eb', '[{\"id\":1,\"title\":\"dashboard\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"path\":\"./admin-dashboard\"},{\"id\":2,\"title\":\"commission\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":21,\"subTitle\":\"Create package\",\"path\":\"./createpack\"},{\"id\":22,\"subTitle\":\"Commission packs\",\"path\":\"./commissionpacks\"}]},{\"id\":4,\"title\":\"users\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":41,\"subTitle\":\"Distributors\",\"ultraSubMenu\":[{\"id\":411,\"subTitle\":\"Distributor list\",\"path\":\"./distributorlist\"},{\"id\":412,\"subTitle\":\"Add distributor\",\"path\":\"./adddistributor\"}]},{\"id\":42,\"subTitle\":\"Retailers\",\"ultraSubMenu\":[{\"id\":421,\"subTitle\":\"Retailer list\",\"path\":\"./retailers\"},{\"id\":422,\"subTitle\":\"Add retailer\",\"path\":\"./addretailer\"}]},{\"id\":46,\"subTitle\":\"Members\",\"ultraSubMenu\":[{\"id\":461,\"subTitle\":\"Members list\",\"path\":\"./comingsoon\"}]},{\"id\":47,\"subTitle\":\"Change parent\",\"path\":\"./assignparentuserr\"},{\"id\":48,\"subTitle\":\"Change mobile number in KYC\",\"path\":\"./changemobilenumber\"},{\"id\":49,\"subTitle\":\"KYC verification\",\"path\":\"./kycverificationn\"},{\"id\":50,\"subTitle\":\"KYC verified\",\"path\":\"./comingsoon\"}]},{\"id\":5,\"title\":\"balance\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":51,\"subTitle\":\"Add MAIN balance\",\"path\":\"./addmainbalance\"},{\"id\":52,\"subTitle\":\"Reverse MAIN balance\",\"path\":\"./addmainbalance_2\"},{\"id\":53,\"subTitle\":\"Add Balance\",\"path\":\"./easebuzpayment\"}]},{\"id\":6,\"title\":\"report\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":62,\"subTitle\":\"Transaction history\",\"path\":\"./transactionhistory\"},{\"id\":63,\"subTitle\":\"Transaction history with parent\",\"path\":\"./transactionhistwithparent\"},{\"id\":66,\"subTitle\":\"Complaints\",\"path\":\"./refund_2\"},{\"id\":67,\"subTitle\":\"Complaints history\",\"path\":\"./complainthistory\"},{\"id\":68,\"subTitle\":\"Refunds\",\"path\":\"./refund\"},{\"id\":73,\"subTitle\":\"Balance requests\",\"path\":\"./balancerequests\"},{\"id\":75,\"subTitle\":\"Balance request history\",\"path\":\"./balancereqhist\"},{\"id\":77,\"subTitle\":\"Activation report\",\"path\":\"./activationreport\"},{\"id\":78,\"subTitle\":\"User cashback report\",\"path\":\"./usercashback\"}]},{\"id\":7,\"title\":\"other reports\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":71,\"subTitle\":\"Money transfer reports\",\"path\":\"./moneytransferreport\"},{\"id\":72,\"subTitle\":\"AEPS report\",\"path\":\"./aepsreport\"},{\"id\":73,\"subTitle\":\"Operator wise report\",\"path\":\"./comingsoon\"},{\"id\":74,\"subTitle\":\"User wise report\",\"path\":\"./userwisereport\"},{\"id\":78,\"subTitle\":\"Individual report\",\"path\":\"./individualreport\"},{\"id\":79,\"subTitle\":\"Opening closing report MAIN\",\"path\":\"./openingclosingreportmain\"},{\"id\":80,\"subTitle\":\"Operatorwise commission report\",\"path\":\"./operatorwcreport\"},{\"id\":81,\"subTitle\":\"Commission distribution report\",\"path\":\"./comissiondistribreport\"},{\"id\":82,\"subTitle\":\"Refund success report\",\"path\":\"./refundsucessstory\"},{\"id\":83,\"subTitle\":\"Status change report\",\"path\":\"./statuschangereport\"},{\"id\":84,\"subTitle\":\"Last 3 days secondary report\",\"path\":\"./lastdaysecondaryreport\"},{\"id\":85,\"subTitle\":\"Retailers stock not taken\",\"path\":\"./retailerstocknottaken\"},{\"id\":86,\"subTitle\":\"Retailers sale not done\",\"path\":\"./retailersalenotdone\"},{\"id\":87,\"subTitle\":\"Users sale done\",\"path\":\"./usersaledone\"}]},{\"id\":8,\"title\":\"admin\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":89,\"subTitle\":\"Add admin MAIN balance\",\"path\":\"./addadmin\"},{\"id\":90,\"subTitle\":\"Notice\",\"path\":\"./notice\"},{\"id\":91,\"subTitle\":\"USER KYC\",\"path\":\"./userkyc\"},{\"id\":92,\"subTitle\":\"Send sms\",\"path\":\"./sendsms\"},{\"id\":93,\"subTitle\":\"Send whatsapp\",\"path\":\"./sendwhatsapp\"},{\"id\":94,\"subTitle\":\"Send email\",\"path\":\"./comingsoon\"},{\"id\":95,\"subTitle\":\"Send notification\",\"path\":\"./sendnotification\"},{\"id\":96,\"subTitle\":\"Banks\",\"path\":\"./banks\"},{\"id\":97,\"subTitle\":\"Settings\",\"path\":\"./setting\"},{\"id\":98,\"subTitle\":\"Circle master\",\"path\":\"./circlemasterscreenn\"},{\"id\":99,\"subTitle\":\"Website logs\",\"path\":\"./websitelogsscreen\"},{\"id\":100,\"subTitle\":\"Website logs archive\",\"path\":\"./weblogsarchive\"},{\"id\":101,\"subTitle\":\"SMS logs\",\"path\":\"./smslogs\"},{\"id\":102,\"subTitle\":\"IP whitelist\",\"path\":\"./ipwhitelistss\"},{\"id\":103,\"subTitle\":\"Provider types\",\"path\":\"./providertypescreen\"},{\"id\":104,\"subTitle\":\"Circles\",\"path\":\"./circlesscreen\"}]}]'),
(5, 904, 'distributor', '#c0cafa', '#5271ff', '[{\"id\":1,\"title\":\"dashboard\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"path\":\"./admin-dashboard\"},{\"id\":2,\"title\":\"commission\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":21,\"subTitle\":\"Create package\",\"path\":\"./createpack\"},{\"id\":22,\"subTitle\":\"Commission packs\",\"path\":\"./commissionpacks\"}]},{\"id\":4,\"title\":\"users\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":41,\"subTitle\":\"Retailers\",\"ultraSubMenu\":[{\"id\":411,\"subTitle\":\"Retailer list\",\"path\":\"./retailers\"},{\"id\":412,\"subTitle\":\"Add retailer\",\"path\":\"./addretailer\"}]},{\"id\":46,\"subTitle\":\"Members\",\"ultraSubMenu\":[{\"id\":461,\"subTitle\":\"Members list\",\"path\":\"./comingsoon\"}]},{\"id\":47,\"subTitle\":\"Change parent\",\"path\":\"./assignparentuserr\"},{\"id\":48,\"subTitle\":\"Change mobile number in KYC\",\"path\":\"./changemobilenumber\"},{\"id\":49,\"subTitle\":\"KYC verification\",\"path\":\"./kycverificationn\"},{\"id\":50,\"subTitle\":\"KYC verified\",\"path\":\"./comingsoon\"}]},{\"id\":5,\"title\":\"balance\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":51,\"subTitle\":\"Add MAIN balance\",\"path\":\"./addmainbalance\"},{\"id\":52,\"subTitle\":\"Reverse MAIN balance\",\"path\":\"./addmainbalance_2\"},{\"id\":53,\"subTitle\":\"Add Balance\",\"path\":\"./easebuzpayment\"}]},{\"id\":6,\"title\":\"report\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":62,\"subTitle\":\"Transaction history\",\"path\":\"./transactionhistory\"},{\"id\":63,\"subTitle\":\"Transaction history with parent\",\"path\":\"./transactionhistwithparent\"},{\"id\":66,\"subTitle\":\"Complaints\",\"path\":\"./refund_2\"},{\"id\":67,\"subTitle\":\"Complaints history\",\"path\":\"./complainthistory\"},{\"id\":68,\"subTitle\":\"Refunds\",\"path\":\"./refund\"},{\"id\":73,\"subTitle\":\"Balance requests\",\"path\":\"./balancerequests\"},{\"id\":75,\"subTitle\":\"Balance request history\",\"path\":\"./balancereqhist\"},{\"id\":77,\"subTitle\":\"Activation report\",\"path\":\"./activationreport\"},{\"id\":78,\"subTitle\":\"User cashback report\",\"path\":\"./usercashback\"}]},{\"id\":7,\"title\":\"other reports\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":71,\"subTitle\":\"Money transfer reports\",\"path\":\"./moneytransferreport\"},{\"id\":72,\"subTitle\":\"AEPS report\",\"path\":\"./aepsreport\"},{\"id\":73,\"subTitle\":\"Operator wise report\",\"path\":\"./comingsoon\"},{\"id\":74,\"subTitle\":\"User wise report\",\"path\":\"./userwisereport\"},{\"id\":78,\"subTitle\":\"Individual report\",\"path\":\"./individualreport\"},{\"id\":79,\"subTitle\":\"Opening closing report MAIN\",\"path\":\"./openingclosingreportmain\"},{\"id\":80,\"subTitle\":\"Operatorwise commission report\",\"path\":\"./operatorwcreport\"},{\"id\":81,\"subTitle\":\"Commission distribution report\",\"path\":\"./comissiondistribreport\"},{\"id\":82,\"subTitle\":\"Refund success report\",\"path\":\"./refundsucessstory\"},{\"id\":83,\"subTitle\":\"Status change report\",\"path\":\"./statuschangereport\"},{\"id\":84,\"subTitle\":\"Last 3 days secondary report\",\"path\":\"./lastdaysecondaryreport\"},{\"id\":85,\"subTitle\":\"Retailers stock not taken\",\"path\":\"./retailerstocknottaken\"},{\"id\":86,\"subTitle\":\"Retailers sale not done\",\"path\":\"./retailersalenotdone\"},{\"id\":87,\"subTitle\":\"Users sale done\",\"path\":\"./usersaledone\"}]},{\"id\":8,\"title\":\"admin\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":89,\"subTitle\":\"Add admin MAIN balance\",\"path\":\"./addadmin\"},{\"id\":90,\"subTitle\":\"Notice\",\"path\":\"./notice\"},{\"id\":91,\"subTitle\":\"USER KYC\",\"path\":\"./userkyc\"},{\"id\":92,\"subTitle\":\"Send sms\",\"path\":\"./sendsms\"},{\"id\":93,\"subTitle\":\"Send whatsapp\",\"path\":\"./sendwhatsapp\"},{\"id\":94,\"subTitle\":\"Send email\",\"path\":\"./comingsoon\"},{\"id\":95,\"subTitle\":\"Send notification\",\"path\":\"./sendnotification\"},{\"id\":96,\"subTitle\":\"Banks\",\"path\":\"./banks\"},{\"id\":97,\"subTitle\":\"Settings\",\"path\":\"./setting\"},{\"id\":98,\"subTitle\":\"Circle master\",\"path\":\"./circlemasterscreenn\"},{\"id\":99,\"subTitle\":\"Website logs\",\"path\":\"./websitelogsscreen\"},{\"id\":100,\"subTitle\":\"Website logs archive\",\"path\":\"./weblogsarchive\"},{\"id\":101,\"subTitle\":\"SMS logs\",\"path\":\"./smslogs\"},{\"id\":102,\"subTitle\":\"IP whitelist\",\"path\":\"./ipwhitelistss\"},{\"id\":103,\"subTitle\":\"Provider types\",\"path\":\"./providertypescreen\"},{\"id\":104,\"subTitle\":\"Circles\",\"path\":\"./circlesscreen\"}]}]'),
(6, 905, 'user', '#cef7fa', '#55f5ff', '[{\"id\":1,\"title\":\"dashboard\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"path\":\"./admin-dashboard\"},{\"id\":2,\"title\":\"commission\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":21,\"subTitle\":\"Create package\",\"path\":\"./createpack\"},{\"id\":22,\"subTitle\":\"Commission packs\",\"path\":\"./commissionpacks\"}]},{\"id\":4,\"title\":\"users\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":46,\"subTitle\":\"Members\",\"ultraSubMenu\":[{\"id\":461,\"subTitle\":\"Members list\",\"path\":\"./comingsoon\"}]},{\"id\":47,\"subTitle\":\"Change parent\",\"path\":\"./assignparentuserr\"},{\"id\":48,\"subTitle\":\"Change mobile number in KYC\",\"path\":\"./changemobilenumber\"},{\"id\":49,\"subTitle\":\"KYC verification\",\"path\":\"./kycverificationn\"},{\"id\":50,\"subTitle\":\"KYC verified\",\"path\":\"./comingsoon\"}]},{\"id\":5,\"title\":\"balance\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":51,\"subTitle\":\"Add MAIN balance\",\"path\":\"./addmainbalance\"},{\"id\":52,\"subTitle\":\"Reverse MAIN balance\",\"path\":\"./addmainbalance_2\"},{\"id\":53,\"subTitle\":\"Add Balance\",\"path\":\"./easebuzpayment\"}]},{\"id\":6,\"title\":\"report\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":62,\"subTitle\":\"Transaction history\",\"path\":\"./transactionhistory\"},{\"id\":63,\"subTitle\":\"Transaction history with parent\",\"path\":\"./transactionhistwithparent\"},{\"id\":66,\"subTitle\":\"Complaints\",\"path\":\"./refund_2\"},{\"id\":67,\"subTitle\":\"Complaints history\",\"path\":\"./complainthistory\"},{\"id\":68,\"subTitle\":\"Refunds\",\"path\":\"./refund\"},{\"id\":73,\"subTitle\":\"Balance requests\",\"path\":\"./balancerequests\"},{\"id\":75,\"subTitle\":\"Balance request history\",\"path\":\"./balancereqhist\"},{\"id\":76,\"subTitle\":\"Distributor primary report\",\"path\":\"./distriprimaryreport\"},{\"id\":77,\"subTitle\":\"Activation report\",\"path\":\"./activationreport\"},{\"id\":78,\"subTitle\":\"User cashback report\",\"path\":\"./usercashback\"}]},{\"id\":7,\"title\":\"other reports\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":71,\"subTitle\":\"Money transfer reports\",\"path\":\"./moneytransferreport\"},{\"id\":72,\"subTitle\":\"AEPS report\",\"path\":\"./aepsreport\"},{\"id\":73,\"subTitle\":\"Operator wise report\",\"path\":\"./comingsoon\"},{\"id\":74,\"subTitle\":\"User wise report\",\"path\":\"./userwisereport\"},{\"id\":78,\"subTitle\":\"Individual report\",\"path\":\"./individualreport\"},{\"id\":79,\"subTitle\":\"Opening closing report MAIN\",\"path\":\"./openingclosingreportmain\"},{\"id\":80,\"subTitle\":\"Operatorwise commission report\",\"path\":\"./operatorwcreport\"},{\"id\":81,\"subTitle\":\"Commission distribution report\",\"path\":\"./comissiondistribreport\"},{\"id\":82,\"subTitle\":\"Refund success report\",\"path\":\"./refundsucessstory\"},{\"id\":83,\"subTitle\":\"Status change report\",\"path\":\"./statuschangereport\"},{\"id\":84,\"subTitle\":\"Last 3 days secondary report\",\"path\":\"./lastdaysecondaryreport\"},{\"id\":85,\"subTitle\":\"Retailers stock not taken\",\"path\":\"./retailerstocknottaken\"},{\"id\":86,\"subTitle\":\"Retailers sale not done\",\"path\":\"./retailersalenotdone\"},{\"id\":87,\"subTitle\":\"Users sale done\",\"path\":\"./usersaledone\"}]},{\"id\":8,\"title\":\"admin\",\"icon\":{\"type\":{\"type\":{},\"compare\":null},\"key\":null,\"ref\":null,\"props\":{\"className\":\"!text-white\"},\"_owner\":null,\"_store\":{}},\"subMenu\":[{\"id\":89,\"subTitle\":\"Add admin MAIN balance\",\"path\":\"./addadmin\"},{\"id\":90,\"subTitle\":\"Notice\",\"path\":\"./notice\"},{\"id\":91,\"subTitle\":\"USER KYC\",\"path\":\"./userkyc\"},{\"id\":92,\"subTitle\":\"Send sms\",\"path\":\"./sendsms\"},{\"id\":93,\"subTitle\":\"Send whatsapp\",\"path\":\"./sendwhatsapp\"},{\"id\":94,\"subTitle\":\"Send email\",\"path\":\"./comingsoon\"},{\"id\":95,\"subTitle\":\"Send notification\",\"path\":\"./sendnotification\"},{\"id\":96,\"subTitle\":\"Banks\",\"path\":\"./banks\"},{\"id\":97,\"subTitle\":\"Settings\",\"path\":\"./setting\"},{\"id\":98,\"subTitle\":\"Circle master\",\"path\":\"./circlemasterscreenn\"},{\"id\":99,\"subTitle\":\"Website logs\",\"path\":\"./websitelogsscreen\"},{\"id\":100,\"subTitle\":\"Website logs archive\",\"path\":\"./weblogsarchive\"},{\"id\":101,\"subTitle\":\"SMS logs\",\"path\":\"./smslogs\"},{\"id\":102,\"subTitle\":\"IP whitelist\",\"path\":\"./ipwhitelistss\"},{\"id\":103,\"subTitle\":\"Provider types\",\"path\":\"./providertypescreen\"},{\"id\":104,\"subTitle\":\"Circles\",\"path\":\"./circlesscreen\"}]}]');

-- --------------------------------------------------------

--
-- Table structure for table `super_distributor`
--

CREATE TABLE `super_distributor` (
  `id` int(11) NOT NULL,
  `name` text DEFAULT NULL,
  `middle_name` text DEFAULT NULL,
  `last_name` text DEFAULT NULL,
  `mobile_number` bigint(20) DEFAULT NULL,
  `email` text DEFAULT NULL,
  `outlet_name` text DEFAULT NULL,
  `aadharcard_number` text DEFAULT NULL,
  `gstin` text DEFAULT NULL,
  `date_of_birth` text DEFAULT NULL,
  `bank_account_number` bigint(20) DEFAULT NULL,
  `ifsc` text DEFAULT NULL,
  `address` text DEFAULT NULL,
  `pin_code` int(11) DEFAULT NULL,
  `district` text DEFAULT NULL,
  `state` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `alternate_number` bigint(20) DEFAULT NULL,
  `pancard_number` text DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `createdBy` varchar(50) NOT NULL,
  `updatedBy` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `super_distributor`
--

INSERT INTO `super_distributor` (`id`, `name`, `middle_name`, `last_name`, `mobile_number`, `email`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `bank_account_number`, `ifsc`, `address`, `pin_code`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `isActive`, `userType`, `createdDate`, `updateDate`, `createdBy`, `updatedBy`) VALUES
(13, 'John', 'Doe', '', 9876543210, 'john@example.com', 'John\'s Outlet', '123456789012', 'ABCD12345678', '1990-01-01', 1234567890, 'ABCD0123456', '123 Main St', 123456, 'Example District', 'Example State', 'Example City', 9876543210, 'ABCDE1234F', 1, 'super_distributor', '2024-04-13 06:54:13', '2024-04-13 06:54:13', 'Admin', 'Admin'),
(14, 'Jane', '', 'Smith', 1234567890, 'jane@example.com', 'Jane\'s Outlet', '987654321098', 'EFGH98765432', '1985-05-15', 987654321, 'EFGH9876543', '456 Elm St', 654321, 'Sample District', 'Sample State', 'Sample City', 1234567890, 'FGHIJ5432G', 1, 'super_distributor', '2024-04-13 06:54:13', '2024-04-13 06:54:13', 'Admin', 'Admin'),
(15, 'Bob', '', 'Johnson', 5556667777, 'bob@example.com', 'Bob\'s Outlet', '456789012345', 'IJKL45678901', '1988-09-30', 5678901234, 'IJKL4567890', '789 Oak St', 789012, 'Test District', 'Test State', 'Test City', 5554443333, 'KLMNO6789H', 1, 'super_distributor', '2024-04-13 06:54:13', '2024-04-13 06:54:13', 'Admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `tbal_transf`
--

CREATE TABLE `tbal_transf` (
  `id` int(11) NOT NULL,
  `Sr_no` int(11) DEFAULT NULL,
  `From` varchar(50) DEFAULT NULL,
  `To` varchar(50) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `Status` int(11) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `Created_By` varchar(50) DEFAULT NULL,
  `Created_date` timestamp NULL DEFAULT NULL,
  `Updated_By` varchar(50) DEFAULT NULL,
  `Updated_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `tbal_transf`
--

INSERT INTO `tbal_transf` (`id`, `Sr_no`, `From`, `To`, `Amount`, `Status`, `IsActive`, `Created_By`, `Created_date`, `Updated_By`, `Updated_date`) VALUES
(1, 1, 'John', 'Alice', 100.00, 0, 1, 'Admin', '2024-03-14 10:00:00', 'Admin', '2024-03-14 10:00:00'),
(2, 2, 'Alice', 'Bob', 50.00, 1, 1, 'User1', '2024-03-14 10:00:00', 'Admin', '2024-03-14 10:00:00'),
(3, 3, 'Bob', 'John', 75.00, 2, 1, 'User2', '2024-03-14 10:00:00', 'Admin', '2024-03-14 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) NOT NULL,
  `txnid` varchar(20) DEFAULT NULL,
  `key` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `txnid`, `key`, `amount`, `email`, `phone`) VALUES
(1, 'TXN001', 'KEY001', 100.50, 'example1@example.com', '1234567890'),
(2, 'TXN002', 'KEY002', 200.75, 'example2@example.com', '2345678901'),
(3, 'TXN003', 'KEY003', 300.25, 'example3@example.com', '3456789012');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `transaction_id` int(11) NOT NULL,
  `sender_id` varchar(20) NOT NULL,
  `sender_name` varchar(255) NOT NULL,
  `sender_type` enum('Admin','Channel Partner','Super Distributor','Master Distributor','Distributor','Retailer') NOT NULL,
  `receiver_id` varchar(20) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `receiver_type` enum('Admin','Channel Partner','Super Distributor','Master Distributor','Distributor','Retailer') NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trans_hist`
--

CREATE TABLE `trans_hist` (
  `id` int(11) NOT NULL,
  `SNo` int(11) DEFAULT NULL,
  `Date` text DEFAULT NULL,
  `MobileNumber` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Tranid` text DEFAULT NULL,
  `Reqid` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `API` text DEFAULT NULL,
  `Source` text DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `SendToAPI` text DEFAULT NULL,
  `AmountS` int(11) DEFAULT NULL,
  `AmountF` double DEFAULT NULL,
  `AmountP` int(11) DEFAULT NULL,
  `AmountR` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_hist`
--

INSERT INTO `trans_hist` (`id`, `SNo`, `Date`, `MobileNumber`, `UserID`, `Tranid`, `Reqid`, `Status`, `Provider`, `API`, `Source`, `Action`, `SendToAPI`, `AmountS`, `AmountF`, `AmountP`, `AmountR`) VALUES
(1, 1, '2024-03-09', 1234567890, 101, 'TRN123', 'REQ456', 'Success', 'Provider1', 'API1', 'Source1', 'Select Action', 'Select', 50, 0, 0, 0),
(2, 3, '2024-03-09', 1234567890, 103, 'TRN789', 'REQ101', 'Pending', 'Provider3', 'API3', 'Source3', 'Select Action', 'Select', 0, 0, 60, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trans_his_par`
--

CREATE TABLE `trans_his_par` (
  `id` int(11) NOT NULL,
  `Date` text DEFAULT NULL,
  `Mobile_Number` int(11) DEFAULT NULL,
  `User_ID` text DEFAULT NULL,
  `Trans_ID` text DEFAULT NULL,
  `Req_ID` text DEFAULT NULL,
  `Status` text DEFAULT NULL,
  `Provider_Type` text DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `Source` text DEFAULT NULL,
  `Parent` text DEFAULT NULL,
  `Action` text DEFAULT NULL,
  `OpTxn_Status` text DEFAULT NULL,
  `Response_Status` text DEFAULT NULL,
  `Complaint` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trans_his_par`
--

INSERT INTO `trans_his_par` (`id`, `Date`, `Mobile_Number`, `User_ID`, `Trans_ID`, `Req_ID`, `Status`, `Provider_Type`, `Provider`, `Source`, `Parent`, `Action`, `OpTxn_Status`, `Response_Status`, `Complaint`) VALUES
(1, '2024-03-10', 1234567890, 'user123', 'TRANS001', 'REQ001', 'Success', 'Payment Gateway', 'Provider A', 'Web', '', 'Approved', 'Completed', 'Approved', ''),
(2, '2024-03-10', 1234567890, 'user456', 'TRANS002', 'REQ002', 'Failed', 'Bank Transfer', 'Bank X', 'Mobile App', 'TRANS001', 'Declined', 'Failed', 'Declined', 'Transaction amount incorrect');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `parent_id` varchar(20) DEFAULT NULL,
  `balance` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` enum('Fixed','Variable','Both') NOT NULL DEFAULT 'Fixed',
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(15) DEFAULT NULL,
  `outlet_name` varchar(255) DEFAULT NULL,
  `aadharcard_number` varchar(20) DEFAULT NULL,
  `gstin` varchar(20) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `bank_account_number` varchar(30) DEFAULT NULL,
  `ifsc` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `pincode` varchar(10) DEFAULT NULL,
  `district` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `alternate_number` varchar(15) DEFAULT NULL,
  `pancard_number` varchar(20) DEFAULT NULL,
  `status` enum('Active','Not Active') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `user_type`, `parent_id`, `balance`, `created_at`, `category`, `middle_name`, `last_name`, `mobile_number`, `outlet_name`, `aadharcard_number`, `gstin`, `date_of_birth`, `bank_account_number`, `ifsc`, `address`, `pincode`, `district`, `state`, `city`, `alternate_number`, `pancard_number`, `status`) VALUES
('', 'Monty', 'monty@123.com', 'Monty@123', 'Admin', NULL, 0.00, '2024-04-16 07:32:24', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RA1713094582000', 'Ram', 'ram@123.com', '$2b$10$XhTIPpPWL8bZRcZnDM7xqO8XtY2578m0plIeEwGzll9jtSkx5.1Ma', 'Admin', NULL, 0.00, '2024-04-14 11:36:22', 'Both', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RCP1713100084533', 'Harsh', 'harsh@123.com', '$2b$10$W4r3Q7bLeVQXeBAeY0zkj.olrstjCOBI50rg2t/834psv6Hylmfky', 'Channel Partner', 'RA1713094582000', 0.00, '2024-04-14 13:08:04', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RCP1713261096081', 'Ajinkya', 'ajinkya@gmail.com', '$2b$10$jKPPbr947eKyzc57ayRwcektoh5qJKadcoaWAktoJsCqh.CHuOTZW', 'Channel Partner', 'RA1713094582000', 0.00, '2024-04-16 09:51:36', 'Fixed', 'sanjay', 'pankaj', '8788286618', 'ipaisa', '1222221', '1111111', '2024-04-18', '111111', '23565466', 'Pune', '425110', 'Jammu', 'J&K', 'Pune', '87777777', '46429', 'Active'),
('RCP1713263127172', 'Umesh', 'umesh@gmail.com', '$2b$10$3iD0ua82ZjP.rr22svt8R.9qXjnKVjz3fJa1PK.H7MaAgRpQtm6mS', 'Channel Partner', 'RA1713094582000', 0.00, '2024-04-16 10:25:27', 'Fixed', 'sanjay', 'pankaj', '8788286618', 'ipaisa', '123456', '1444', '2024-04-18', '123456', '11111', 'Pune', '425110', 'jalgaon', 'fff', 'Pune', '5646', '4646', 'Active'),
('RCP1713266400968', 'Ashish', 'ashish@gmail.com', '$2b$10$RalW2EVzDgMKGO7ReA/MhuX2zE4eWZLJjsoaRAuX76.B2xJ.aOmQ2', 'Channel Partner', 'RA1713094582000', 0.00, '2024-04-16 11:20:01', 'Fixed', 'ashish', 'ashish', '8788286618', 'ipaisa', '785555555', '55555555', '2024-04-11', '122222222', '1236554', 'mumbai', '425110', 'jalgaon', 'J&K', 'Jammu', '88888', '8888888', 'Active'),
('RCP1713266920985', 'Aalakh', 'aalakh@123', '$2b$10$dtkCgzaLxQgoTODKsAb0ReDhwhOD.DrF.KWJm79afLrUuRyU.8m0i', 'Channel Partner', 'RCP1713266400968', 0.00, '2024-04-16 11:28:41', 'Fixed', 'sanjay', 'pankaj', '8788286618', 'ipaisa', '1111111', '555555', '2024-04-18', '5444464', 'jhvjhhj', 'bjhvhjvhjv', '425110', 'Jammu', 'Maharashtra', 'Jammu', '54464', '454646', 'Active'),
('RCP1713268296903', 'Arun', 'arun@gmail.com', '$2b$10$5IPtJgX9VEWnxEdkMJIHSedzEq55.gNemYnmXa1rV.o84PoshHTsq', 'Channel Partner', 'RCP1713266400968', 0.00, '2024-04-16 11:51:37', 'Fixed', 'sanjay', '', '', '', '', '', '2024-04-19', '', '', '', '425110', '', '', 'Pune', '', '', 'Active'),
('RCP1713280716209', 'Anjali', 'anjali8@gmail.com', '$2b$10$OB9YD6yEgRJRIZmuS4Zjoe/5wdXFD7fCcADmDz5VgDxVPJOqFD7fC', 'Channel Partner', 'RA1713094582000', 0.00, '2024-04-16 15:18:36', 'Fixed', 'sanjay', 'Bansod', '8788286618', 'ipaisa', '97979797', 'sxsdcq', '2024-04-25', '899888988', 'EFGH9876543', 'Punebbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb', '425110', 'Pune', '7777', 'Jammu', '89999999', '547979', 'Active'),
('RCP1713281194397', 'Chaya', 'chayya@gmail.com', '$2b$10$mWAMyqua.IswYzCL1xM68.SFdp4qMMMKdEOBQkx2ddDbrfSR9oaPm', 'Channel Partner', 'RA1713094582000', 0.00, '2024-04-16 15:26:34', 'Fixed', 'bhae', 'Bhadane', '8788286618', 'banana', '979797', '1554hhjh', '2024-04-04', '7877', 'EFGH9876543', 'mumbai', '425110', 'jalgaon', 'Maharashtra', 'Pune', '44644', '9446', 'Active'),
('RD1713100216627', 'Malay', 'malay@123.com', '$2b$10$Mlg0iuLPi.u4Zs53TFFcPOfl3wSe8Ip1ovwKEX0ZS.DXSXikRQCua', 'Distributor', 'RA1713094582000', 0.00, '2024-04-14 13:10:16', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RD1713100575183', 'Tejas', 'tejas@123.com', '$2b$10$7JbXAbvXXirkUAQDTYaEeOzK/sgnkBu8wctY2mSWFsBBoalzRFNO2', 'Distributor', 'RCP1713100084533', 0.00, '2024-04-14 13:16:15', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RD1713100794756', 'Shree', 'shree@123.com', '$2b$10$.SeV5KkSo2n7RCP8jB56ZuTj4tOiLCrG34JFh3JJoSJGrXadXlelq', 'Distributor', 'RSD1713100136670', 0.00, '2024-04-14 13:19:54', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RD1713166538657', 'Soumya', 'soumya@123.com', '$2b$10$u9IoZSglqZ8UgN/cfgbSeecjvrzvR3gYCjR0XjAWVo1gvu.lgTW3K', 'Distributor', 'RA1713094582000', 0.00, '2024-04-15 07:35:38', 'Both', 'Hello', 'Bhai', '9999900000', 'Apple', '1234567890123', '567567567', '2012-09-09', '12345678901', 'SBIIN8908', 'Pune', '400909', 'Pune', 'Maharashtra', 'Pune', '9090909090', 'ABC34545', 'Active'),
('RD1713253718575', 'Harry', 'harry@123.com', '$2b$10$UZwHcsdfB2STtnsVis5BwOMdwJ4wzQU7k6hx7f3L/5VdhA9jyQ7vW', 'Distributor', 'RA1713094582000', 0.00, '2024-04-16 07:48:38', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RD1713253919801', 'Harry', 'har@123.com', '$2b$10$fNnxMM6Yv8kRO56J9ijRneYWYgxL1hTD63fzbRtf5MoNtMJ2MsHE.', 'Distributor', 'RA1713094582000', 0.00, '2024-04-16 07:51:59', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RD1713259430519', 'mangesh', 'mangesh@123', '$2b$10$4ZbONOPP6StNM/KdjQevjO/CZ2ADmx.SM7pil3LvyKyCA4uDJ1lb6', 'Distributor', 'RA1713094582000', 0.00, '2024-04-16 09:23:50', 'Fixed', 'sanjay', 'pankaj', '8788286618', 'ipaisa', '754847875615', '111111', '2024-04-10', '755555', '23565466', 'Pune', '425110', 'Pune', 'MH', 'vhgfg', '969999', '789999', 'Active'),
('RMD1713100177289', 'Smruti', 'smruti@123.com', '$2b$10$BO6X/xZF0Mb3328YlyfXXeeV6kIoxgxgA0FjUz2.Zmv1W5Xd6cWva', 'Master Distributor', 'RA1713094582000', 0.00, '2024-04-14 13:09:37', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RMD1713100537303', 'Akshata', 'akshata@123.com', '$2b$10$xYwzlQk/8/aZTU4s7cNEBuzZtU4BEhiK7AkG75xcm0qdij4q.x2Ua', 'Master Distributor', 'RCP1713100084533', 0.00, '2024-04-14 13:15:37', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RMD1713100732840', 'Tanmay', 'tanmay@123.com', '$2b$10$JoGlYxgClkjPj.3p.x4rROZigWzz2pbWskd.AzU.GFQ7gKzs5egr6', 'Master Distributor', 'RSD1713100136670', 0.00, '2024-04-14 13:18:52', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RR1713100247702', 'Pooja', 'pooja@123.com', '$2b$10$B3oh9sa5a4z7ECwyEDjCp.5XKapYyjjKHCJaA/pJ17Xx9LwUc5qR.', 'Retailer', 'RA1713094582000', 0.00, '2024-04-14 13:10:47', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RR1713100607971', 'Deep', 'deep@123.com', '$2b$10$8CbysgT0crQGJWbVB2k8cOWTueOJEofRHloszsiF.QCFz0W07sK5m', 'Retailer', 'RCP1713100084533', 0.00, '2024-04-14 13:16:48', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RR1713100837517', 'Hari', 'hari@123.com', '$2b$10$iCey0R1/OiaqJPhcVUGxkOkORS.j/655GyggB3coTsoYAKMZDdy2.', 'Retailer', 'RSD1713100136670', 0.00, '2024-04-14 13:20:37', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RSD1713100136670', 'Pankaj', 'pankaj@123.com', '$2b$10$EoO5iOdYuFb.IcqLyEKSb.q5Em2LjiMlt0XYOO9Pam5DveGkMJqWW', 'Super Distributor', 'RA1713094582000', 0.00, '2024-04-14 13:08:56', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RSD1713100480081', 'Ankush', 'ankush@123.com', '$2b$10$2gx/6ze3pM8Zf4rHjKbTeOGkQAuLipo6a70qBBSftJD68U9M/Ogwq', 'Super Distributor', 'RCP1713100084533', 0.00, '2024-04-14 13:14:40', 'Fixed', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Active'),
('RSD1713256508810', 'Sunny', 'sunny@123.com', '$2b$10$9l8qu0.dtn4h/6c9walT/.qkcX8o6GL2VPzUgH9btAnzq8PfmqFJG', 'Super Distributor', 'RA1713094582000', 0.00, '2024-04-16 08:35:08', 'Fixed', 'Raju', 'Bansod', '9898565620', 'Apple', '121245457878120', '456789', '2024-04-01', '12411452584', '56545878', 'Pune', '4440000', 'Pune', 'Maharashtra', 'Pune', '7894561230', '4568520', 'Active'),
('RSD1713259688964', 'Pooja ', 'pankajsspati8@gmail.com', '$2b$10$julaf2q4yOzzZ7SixiTjGONm3rYh.3eq50H8QsAjFvj9kmAMpDsN2', 'Super Distributor', 'RA1713094582000', 0.00, '2024-04-16 09:28:09', 'Fixed', 'Raju', 'pankaj', '8788286618', 'ipaisa', '7889994949', '115511', '2024-04-10', '123456', 'ff265', 'Pune', '425110', 'Jammu', 'J&K', 'Pune', '8999999', '888888', 'Active'),
('RSD1713260862288', 'Atharva', 'edsomfintech@gmail.com', '$2b$10$GvFpHfc.wrlIUhvZ4rF/W.YQHpXy7myTKhfZLUibBcx2GRB5Au0QG', 'Super Distributor', 'RA1713094582000', 0.00, '2024-04-16 09:47:42', 'Fixed', 'Raju', 'Bansod', '8788286618', 'ipaisa', '4444444444', '1222222', '2024-04-12', '96666666', 'EFGH9876543', 'Pune', '425110', 'fulera', 'MH', 'vhgfg', '88888888', '87777', 'Active'),
('RSD1713266576861', 'Shailesh', 'shailesh@123gmail.com', '$2b$10$6jj18YIK7chx2gB0iXlnbu9.yc4CoM35/fizJkJ3WRa7UxLR71kRm', 'Super Distributor', 'RCP1713266400968', 0.00, '2024-04-16 11:22:56', 'Fixed', 'Raju', 'Shailesh', '8788286618', 'ipaisa', '8888888887', '1111111', '2024-04-11', '11111111', '122222', 'Pune', '425110', 'fulera', 'Maharashtra', 'Pune', '899999999', '88888889', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `user_kyc`
--

CREATE TABLE `user_kyc` (
  `id` int(11) NOT NULL,
  `User` varchar(50) DEFAULT NULL,
  `Aadhaar` varchar(20) DEFAULT NULL,
  `PanCard` varchar(20) DEFAULT NULL,
  `GST` varchar(20) DEFAULT NULL,
  `Bank` varchar(20) DEFAULT NULL,
  `VoterID` varchar(20) DEFAULT NULL,
  `Files` text DEFAULT NULL,
  `API_KYC_Status` varchar(20) DEFAULT NULL,
  `Business_Name_Address_Proof` varchar(50) DEFAULT NULL,
  `Action` varchar(20) DEFAULT NULL,
  `Reason` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `user_kyc`
--

INSERT INTO `user_kyc` (`id`, `User`, `Aadhaar`, `PanCard`, `GST`, `Bank`, `VoterID`, `Files`, `API_KYC_Status`, `Business_Name_Address_Proof`, `Action`, `Reason`) VALUES
(1, 'JohnDoe123', '1234 5678 9012', 'ABCDE1234F', 'GST123456789', '9876 5432 1098', 'VOT1234567', '[\"Proof1\"]', 'SCREENING', 'Proof1', 'Review', ''),
(2, 'JaneSmith456', '5678 9012 3456', 'FGHIJ5678K', 'GST987654321', '5432 1098 7654', 'VOT7654321', '[\"Proof2\"]', 'SCREENING', 'Proof2', 'Review', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `isActive` tinyint(1) NOT NULL,
  `userType` varchar(255) NOT NULL,
  `createdBy` varchar(255) NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedBy` varchar(255) NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT current_timestamp(),
  `vmbalance` decimal(10,2) NOT NULL,
  `vwbalance` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `password`, `isActive`, `userType`, `createdBy`, `createdDate`, `updatedBy`, `updatedDate`, `vmbalance`, `vwbalance`) VALUES
(1, 'Ram', '$2b$10$YvCRg/1np2EeipxLkcW3DOXldn5B4Fp9A4t.WFc4CJURTNB1.9MYm', 1, 'Admin', 'Admin', '2024-02-02 00:00:00', 'Admin', '2024-02-02 00:00:00', 96200.00, 100000.00),
(2, 'Harsh', '$2b$10$Bq1DUWasqDpSELZbyRyV5O.TXlwg8f55986mYv6Wo9VQCgCHZOoIC', 1, 'channel_partner', 'Admin', '2024-02-02 00:00:00', 'channel_partner', '2024-02-02 00:00:00', 1371.00, 0.00),
(3, 'Pankaj', '$2b$10$yclnExvVZCWyxy/qKKwgfONBpiY/nrfktU8sxTdcgRZUo9XE3E6jy', 1, 'super_distributor', 'channel_partner', '2024-02-02 00:00:00', 'super_distributor', '2024-02-02 00:00:00', 624.00, 0.00),
(4, 'Smruti', '$2b$10$21xfglUaaXcdzPUWl6fz4.HYwlNWxEUJAA7O7Rs5UT.Mytl9x407K', 1, 'master_distributor', 'super_distributor', '2024-02-02 00:00:00', 'master_distributor', '2024-02-02 00:00:00', 1684.00, 0.00),
(5, 'Malay', '$2b$10$PJgOoKn33Cjm9G2uOdZ34.xsd.WuNRbGiBOMa.WEAShGZyzkLDa3G', 1, 'distributor', 'master_distributor', '2024-02-02 00:00:00', 'distributor', '2024-02-02 00:00:00', 70.00, 0.00),
(6, 'Pooja', '$2b$10$CkOHb8Gu7VKZI67LVJ1FeOD2nHkPmp0MIoBjfMLy4D.QLz9jFF1Si', 1, 'user', 'distributor', '2024-02-02 00:00:00', 'retailer', '2024-02-02 00:00:00', 51.00, 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `user_wise_recharge`
--

CREATE TABLE `user_wise_recharge` (
  `id` int(11) NOT NULL,
  `S#` int(11) DEFAULT NULL,
  `OutletName` text DEFAULT NULL,
  `TotalRecharge` double DEFAULT NULL,
  `TotalDeduction` int(11) DEFAULT NULL,
  `TotalCommission` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_wise_recharge`
--

INSERT INTO `user_wise_recharge` (`id`, `S#`, `OutletName`, `TotalRecharge`, `TotalDeduction`, `TotalCommission`) VALUES
(1, 1, 'Outlet1', 5000, 200, 300),
(2, 2, 'Outlet2', 7500.5, 300, 400.5),
(3, 3, 'Outlet3', 6000, 250, 350);

-- --------------------------------------------------------

--
-- Table structure for table `user_wise_report`
--

CREATE TABLE `user_wise_report` (
  `id` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Date` text DEFAULT NULL,
  `MobileNumber` int(11) DEFAULT NULL,
  `Provider` text DEFAULT NULL,
  `Status` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_wise_report`
--

INSERT INTO `user_wise_report` (`id`, `UserID`, `Date`, `MobileNumber`, `Provider`, `Status`) VALUES
(1, 1, '2024-03-09', 1234567890, 'Provider1', 'Success'),
(2, 2, '2024-03-09', 1234567890, 'Provider2', 'Failed'),
(3, 3, '2024-03-09', 1234567890, 'Provider3', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `water_provider`
--

CREATE TABLE `water_provider` (
  `id` int(11) NOT NULL,
  `Water provider` text DEFAULT NULL,
  `fields` text DEFAULT NULL,
  `MyUnknownColumn` text DEFAULT NULL,
  `MyUnknownColumn_[0]` text DEFAULT NULL,
  `MyUnknownColumn_[1]` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `water_provider`
--

INSERT INTO `water_provider` (`id`, `Water provider`, `fields`, `MyUnknownColumn`, `MyUnknownColumn_[0]`, `MyUnknownColumn_[1]`) VALUES
(1, 'Water provider', 'fields', '', '', ''),
(2, 'Gram Panchayat Wangi-water', 'water tax number', '', '', ''),
(3, 'grampanchayat nevari', 'customer id', 'customer mobile', '', ''),
(4, 'grampanchayat ambegaon', 'customer id', 'customer mobile', '', ''),
(5, 'grampanchayat hingangaon budruk', 'customer id', 'customer mobile', '', ''),
(6, 'grampanchayat kheradewangi', 'customer id', 'customer mobile', '', ''),
(7, 'kolhapur muncipal corporation- water tax', 'connection no', '', '', ''),
(8, 'mcgm water department', 'water connection number', '', '', ''),
(9, 'pimpri chinchwad muncipal corporation (pcmc)', 'consumer id', '', '', ''),
(10, 'pune muncipal corporation- water', 'consumer number', '', '', ''),
(11, 'talegaon dabhade nagar parishad-water payments', 'water bill id', '', '', ''),
(12, 'vadiyeraibag gp water tax', 'water tax number', '', '', ''),
(13, 'vasai virar muncipal corporation-water', 'zone id and ward id', 'connection no', '', ''),
(14, 'banglore water supply and sewerage board', 'rr number', '', '', ''),
(15, 'chandrapur muncipal corporation', 'account number', '', '', ''),
(16, 'chennai metropolitan water supply and sewrage board', 'bill number ', 'mobile number', '', ''),
(17, 'city muncipal council-iikal ', 'sequence number', '', '', ''),
(18, 'delhi dvelopment authority (dda)-water', 'customer id', '', '', ''),
(19, 'delhi jal board', 'k no', '', '', ''),
(20, 'department of public health engineering-water, mizoram', 'consumerno', '', '', ''),
(21, 'greater warangal muncipal corporation-water', 'connection id', '', '', ''),
(22, 'gwalior muncipal corporation-water', 'connection id', '', '', ''),
(23, 'haryana metropolitian water supply and sewerage board', 'consumer no', 'ambala-151835', '', ''),
(24, 'hyderabad metropolitan water supplu and sewerage board', 'can number', '', '', ''),
(25, 'indore muncipal corporation -water', 'service number', '', '', ''),
(26, 'jabalpur muncipal corporation-water', 'service number', '', '', ''),
(27, 'jammu kashmir water billing-jkphe jammu', 'consumer number', '', '', ''),
(28, 'jejuri nagarparishad', 'connection number', '', '', ''),
(29, 'kerala water authority (kwa)', 'consumer id', '', '', ''),
(30, 'ludhiana muncipal corporation', 'consumer no', 'mobile number', 'email id', ''),
(31, 'madhya pradesh urban(e-nagarpalika)-water', 'karhi and pandiya khurd nagar parishad-0194', 'conn no', 'mobile no', 'email id'),
(32, 'maharashtra jeevan pradhikaran 105vrr amravati', 'consumer number', '', '', ''),
(33, 'maharashtra jeevan pradhikaran 156vrr daryapur', 'consumer number', '', '', ''),
(34, 'maharashtra jeevan pradhikaran amravati urban', 'consumer number', '', '', ''),
(35, 'maharashatra jeevan pradhikaran anjangaon', 'consumer number', '', '', ''),
(36, 'maharshtra jeevan pradikaran daryapur', 'consumer number', '', '', ''),
(37, 'muncipal corporation chandigarh', 'account number without (/)', '', '', ''),
(38, 'muncipal corporation jalandhar', 'w/s ID no', 'consumer mobile no', 'consumer email id', ''),
(39, 'muncipal corporation of amritsar', 'water and severage id', 'consumer mobile no', 'UID', ''),
(40, 'muncipal corporation of gurugram', 'consumer no', 'GURGAON_II 121316', '', ''),
(41, 'mysuruvani vilas water works 24x7', 'tap no', '', '', ''),
(42, 'nagar nigam aligarh', 'connection/consumer number', '', '', ''),
(43, 'Nagar nigam aligarh(NDMC)-water', 'consumer number', '', '', ''),
(44, 'odisha muncipal payments water tax', 'wns (water services)', 'anandapur', '', ''),
(45, 'PHED- Rajasthan', 'emitra cid code', '', '', ''),
(46, 'port blair muncipal council-water', 'citizen id', '', '', ''),
(47, 'public health engineering department, haryana', 'consumer id', '', '', ''),
(48, 'public works department (pwd), goa', 'consumer number', '', '', ''),
(49, 'punjab muncipal corporations/councils', 'consumer number', '', '', ''),
(50, 'shimla jal prabandhan', 'consumer id', '', '', ''),
(51, 'shivamoga city corporation-water tax', 'consumer id', '', '', ''),
(52, 'silvasa muncipal council', 'Form no', '', '', ''),
(53, 'thane muncipal coporation water tax', 'consumernumber', 'mobile number', '', ''),
(54, 'tirumala tirupati devasthanams (ttd)-water', 'connection number', '', '', ''),
(55, 'UIT bhiwadi', 'consumer id', '', '', ''),
(56, 'uttarakhand jal sansthan', 'consumer number (last 7 digits)', '', '', ''),
(57, 'vatva industrial estate infrastructure development ltd', 'connection no', '', '', ''),
(58, 'vijayapura water', 'board', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist_user_login`
--

CREATE TABLE `whitelist_user_login` (
  `id` int(11) NOT NULL,
  `User` text DEFAULT NULL,
  `IPAddress` text DEFAULT NULL,
  `DateAdded` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `whitelist_user_login`
--

INSERT INTO `whitelist_user_login` (`id`, `User`, `IPAddress`, `DateAdded`) VALUES
(1, 'john_doe', '192.168.1.100', '09-03-2024 12:45:30'),
(2, 'alice_smith', '192.168.1.101', '2024-03-09 14:20:15');

-- --------------------------------------------------------

--
-- Table structure for table `whitelist_user_login_ip`
--

CREATE TABLE `whitelist_user_login_ip` (
  `id` int(11) NOT NULL,
  `User` text DEFAULT NULL,
  `IPAddress` text DEFAULT NULL,
  `DateAdded` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `whitelist_user_login_ip`
--

INSERT INTO `whitelist_user_login_ip` (`id`, `User`, `IPAddress`, `DateAdded`) VALUES
(1, 'john_doe', '192.168.1.100', '09-03-2024 12:45:30'),
(2, 'alice_smith', '192.168.1.101', '09-03-2024 14:20:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aeps_history`
--
ALTER TABLE `aeps_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `broadband_provider`
--
ALTER TABLE `broadband_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `channel_partner`
--
ALTER TABLE `channel_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `circles`
--
ALTER TABLE `circles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission_distribution_repo`
--
ALTER TABLE `commission_distribution_repo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_hist`
--
ALTER TABLE `complaint_hist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `distributor`
--
ALTER TABLE `distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dth`
--
ALTER TABLE `dth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ebinitiatepayment`
--
ALTER TABLE `ebinitiatepayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `electricity1`
--
ALTER TABLE `electricity1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fastag`
--
ALTER TABLE `fastag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fundtransactions`
--
ALTER TABLE `fundtransactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `fundusers`
--
ALTER TABLE `fundusers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc`
--
ALTER TABLE `kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kyc_verify`
--
ALTER TABLE `kyc_verify`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `longcode_sms_log`
--
ALTER TABLE `longcode_sms_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m1`
--
ALTER TABLE `m1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_ac_trans`
--
ALTER TABLE `main_ac_trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_gateway_aeps_matm`
--
ALTER TABLE `main_gateway_aeps_matm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_payment_summary`
--
ALTER TABLE `main_payment_summary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_rev_bal`
--
ALTER TABLE `main_rev_bal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_distributor`
--
ALTER TABLE `master_distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matm`
--
ALTER TABLE `matm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money_trans_hist`
--
ALTER TABLE `money_trans_hist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `muncipal_tax`
--
ALTER TABLE `muncipal_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator_wise_commission`
--
ALTER TABLE `operator_wise_commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `operator_wise_repo_data`
--
ALTER TABLE `operator_wise_repo_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_oc_info`
--
ALTER TABLE `package_oc_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `piped_gas`
--
ALTER TABLE `piped_gas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provider`
--
ALTER TABLE `provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `refund`
--
ALTER TABLE `refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reports_trans_hist`
--
ALTER TABLE `reports_trans_hist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retailer`
--
ALTER TABLE `retailer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sidebar`
--
ALTER TABLE `sidebar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `super_distributor`
--
ALTER TABLE `super_distributor`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbal_transf`
--
ALTER TABLE `tbal_transf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `trans_hist`
--
ALTER TABLE `trans_hist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trans_his_par`
--
ALTER TABLE `trans_his_par`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `user_kyc`
--
ALTER TABLE `user_kyc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wise_recharge`
--
ALTER TABLE `user_wise_recharge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_wise_report`
--
ALTER TABLE `user_wise_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `water_provider`
--
ALTER TABLE `water_provider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelist_user_login`
--
ALTER TABLE `whitelist_user_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whitelist_user_login_ip`
--
ALTER TABLE `whitelist_user_login_ip`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aeps_history`
--
ALTER TABLE `aeps_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `broadband_provider`
--
ALTER TABLE `broadband_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT for table `channel_partner`
--
ALTER TABLE `channel_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `circles`
--
ALTER TABLE `circles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `commission_distribution_repo`
--
ALTER TABLE `commission_distribution_repo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `complaint_hist`
--
ALTER TABLE `complaint_hist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `distributor`
--
ALTER TABLE `distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dth`
--
ALTER TABLE `dth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ebinitiatepayment`
--
ALTER TABLE `ebinitiatepayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `electricity1`
--
ALTER TABLE `electricity1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `fastag`
--
ALTER TABLE `fastag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `fundtransactions`
--
ALTER TABLE `fundtransactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fundusers`
--
ALTER TABLE `fundusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `kyc`
--
ALTER TABLE `kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kyc_verify`
--
ALTER TABLE `kyc_verify`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `longcode_sms_log`
--
ALTER TABLE `longcode_sms_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `m1`
--
ALTER TABLE `m1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `main_ac_trans`
--
ALTER TABLE `main_ac_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_gateway_aeps_matm`
--
ALTER TABLE `main_gateway_aeps_matm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_payment_summary`
--
ALTER TABLE `main_payment_summary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_rev_bal`
--
ALTER TABLE `main_rev_bal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `master_distributor`
--
ALTER TABLE `master_distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `matm`
--
ALTER TABLE `matm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `money_trans_hist`
--
ALTER TABLE `money_trans_hist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `muncipal_tax`
--
ALTER TABLE `muncipal_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `operator_wise_commission`
--
ALTER TABLE `operator_wise_commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `operator_wise_repo_data`
--
ALTER TABLE `operator_wise_repo_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_oc_info`
--
ALTER TABLE `package_oc_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page`
--
ALTER TABLE `page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `piped_gas`
--
ALTER TABLE `piped_gas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `provider`
--
ALTER TABLE `provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `refund`
--
ALTER TABLE `refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reports_trans_hist`
--
ALTER TABLE `reports_trans_hist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `retailer`
--
ALTER TABLE `retailer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sidebar`
--
ALTER TABLE `sidebar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `super_distributor`
--
ALTER TABLE `super_distributor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbal_transf`
--
ALTER TABLE `tbal_transf`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans_hist`
--
ALTER TABLE `trans_hist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `trans_his_par`
--
ALTER TABLE `trans_his_par`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_kyc`
--
ALTER TABLE `user_kyc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_wise_recharge`
--
ALTER TABLE `user_wise_recharge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_wise_report`
--
ALTER TABLE `user_wise_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `water_provider`
--
ALTER TABLE `water_provider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `whitelist_user_login`
--
ALTER TABLE `whitelist_user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `whitelist_user_login_ip`
--
ALTER TABLE `whitelist_user_login_ip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `fundtransactions`
--
ALTER TABLE `fundtransactions`
  ADD CONSTRAINT `fundtransactions_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user_table` (`id`),
  ADD CONSTRAINT `fundtransactions_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user_table` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`parent_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
