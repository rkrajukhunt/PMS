-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 31, 2017 at 02:05 AM
-- Server version: 5.6.37
-- PHP Version: 7.0.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `rkanagar`
--

CREATE TABLE `rkanagar` (
  `ID` int(11) NOT NULL,
  `rkAnagarMale` varchar(10) DEFAULT NULL,
  `rkAnagarFemale` varchar(10) DEFAULT NULL,
  `rkAnagarChild` varchar(10) DEFAULT NULL,
  `rkAnagarIPD` varchar(10) DEFAULT NULL,
  `rkAnagarIID` varchar(10) DEFAULT NULL,
  `rkAnagarSOW` varchar(10) DEFAULT NULL,
  `rkAnagarECU` varchar(10) DEFAULT NULL,
  `rkAnagarEYE` varchar(10) NOT NULL,
  `rkAnagarAPT` varchar(10) DEFAULT NULL,
  `rkAnagarPTS` varchar(10) DEFAULT NULL,
  `rkAnagarMonth` varchar(12) DEFAULT NULL,
  `rkAnagarYear` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkcons`
--

CREATE TABLE `rkcons` (
  `ID` int(11) NOT NULL,
  `rkCode` varchar(45) DEFAULT NULL,
  `rkName` varchar(45) DEFAULT NULL,
  `rkMedicine` int(11) DEFAULT NULL,
  `rkPlab` int(11) DEFAULT NULL,
  `rkXray` int(11) DEFAULT NULL,
  `rkTotal` int(11) DEFAULT NULL,
  `rkMonth` int(2) DEFAULT NULL,
  `rkYear` int(4) DEFAULT NULL,
  `rkAmbulance` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkdsps`
--

CREATE TABLE `rkdsps` (
  `ID` int(11) NOT NULL,
  `rkCode` varchar(45) DEFAULT NULL,
  `rkName` varchar(45) DEFAULT NULL,
  `rkMedicine` int(11) DEFAULT NULL,
  `rkPlab` int(11) DEFAULT NULL,
  `rkXray` int(11) DEFAULT NULL,
  `rkTotal` int(11) DEFAULT NULL,
  `rkMonth` int(2) DEFAULT NULL,
  `rkYear` int(4) DEFAULT NULL,
  `rkAmbulance` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkissued`
--

CREATE TABLE `rkissued` (
  `ID` int(11) NOT NULL,
  `rkissuedName` varchar(45) DEFAULT NULL,
  `rkissuedBatchNo` varchar(45) DEFAULT NULL,
  `rkissuedExDate` varchar(45) DEFAULT NULL,
  `rkissuedStock` varchar(45) DEFAULT NULL,
  `rkissuedMonth` int(11) DEFAULT NULL,
  `rkissuedYear` int(11) DEFAULT NULL,
  `rkissuedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rklogin`
--

CREATE TABLE `rklogin` (
  `ID` int(11) NOT NULL,
  `rkUserName` varchar(45) DEFAULT NULL,
  `rkPassWord` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkmedicine`
--

CREATE TABLE `rkmedicine` (
  `ID` int(11) NOT NULL,
  `rkMedicineName` varchar(45) DEFAULT NULL,
  `rkMedicineCompany` varchar(45) DEFAULT NULL,
  `rkMedicineType` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkmts`
--

CREATE TABLE `rkmts` (
  `ID` int(11) NOT NULL,
  `rkCode` varchar(45) DEFAULT NULL,
  `rkName` varchar(45) DEFAULT NULL,
  `rkMedicine` int(11) DEFAULT NULL,
  `rkPlab` int(11) DEFAULT NULL,
  `rkXray` int(11) DEFAULT NULL,
  `rkTotal` int(11) DEFAULT NULL,
  `rkMonth` int(2) DEFAULT NULL,
  `rkYear` int(4) DEFAULT NULL,
  `rkAmbulance` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rkmts`
--

INSERT INTO `rkmts` (`ID`, `rkCode`, `rkName`, `rkMedicine`, `rkPlab`, `rkXray`, `rkTotal`, `rkMonth`, `rkYear`, `rkAmbulance`) VALUES
(1, 'G00016', 'Anup Kumar Gupta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'G00019', 'J N Shah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'G00021', 'R Darbari', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'G00022', 'Y M Vaidya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'G00030', 'N N Radia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'G00032', 'A R Kataliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'G00034', 'N I Parekh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'G00035', 'G S Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'G00037', 'G L Verma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'G00038', 'K K Parekh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'G00040', 'Rakesh Kumar Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'G00042', 'M N Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'G00046', 'S K Dhabai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'G00048', 'K V Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'G00049', 'V R Bhadaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'G00050', 'A J Nimavat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'G00051', 'A J Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'G00052', 'R K Chisty', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'G00053', 'S G Goria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'G00055', 'J P Panchal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'G00056', 'V B Panchal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'G00057', 'A S Bhalerao', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'G00058', 'J K Jadeja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'G00061', 'D L Dhruv', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'G00062', 'H D Mishra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'G00064', 'H K Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'G00066', 'P Murlimohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'G00067', 'U M Mankad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'G00068', 'A B Agrawat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'G00069', 'R K Gawri', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'G00070', 'N R Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'G00075', 'Jayesh P Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(33, 'G00077', 'R A Jethva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(34, 'G00081', 'N B Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'G00091', 'Gopal M Saini', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'G00094', 'G L Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'G00095', 'Vibhuti Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'G00097', 'H N Padhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'G00101', 'M K Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'G00105', 'S L Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'G00108', 'Biren Y Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'G00110', 'J J Jani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'G00113', 'Mayuresh Hede', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'G00114', 'N J Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'G00115', 'V K Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'G00116', 'N M Karadia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'G00118', 'M H Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'G00119', 'A S Ratiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'G00121', 'Shailendra Nigam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'G00125', 'G D Jotva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'G00127', 'James Antony', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'G00136', 'G D Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'G00137', 'Manish D Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'G00138', 'A Prasad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'G00139', 'C B Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'G00140', 'D B Vaishnav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'G00142', 'K V Zankat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'G00157', 'J A Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'G00163', 'Dilip G Dodia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'G00207', 'K Samasindanaiyalan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'G00218', 'Arasibhai D Baku', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'G00224', 'Mukesh Vaidya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'G00225', 'Ravichandran R', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'G00226', 'Shrishail Chougala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'G00247', 'Mansukh Ukabhai Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'G00261', 'M S Suchak', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'G00264', 'K M Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'G00276', 'Sandip Zaveri', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'G00303', 'Naresh L Samani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'G00304', 'P S Vagh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'G00306', 'Manish D Saradva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'G00307', 'Harshad B Kundariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'G00308', 'Ajit N Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'G00309', 'Ramesh R Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'G00310', 'Mahendra S Revar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'G00312', 'B R Bhowmick', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'G00316', 'J P Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'G00318', 'B B Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'G00320', 'Rameshbhai Mensibhai Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'G00323', 'Hitesh R Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(81, 'G00324', 'Karshan G Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'G00328', 'Sanjay L Gaadhe', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'G00331', 'J N Kawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(84, 'G00333', 'Nilesh Raninga', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(85, 'G00337', 'R D Badgujar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'G00340', 'S N Deshpande', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'G00342', 'Gopal B Chavda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'G00343', 'D B Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'G00345', 'Dharmesh J Padia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(90, 'G00349', 'Ashok Ramsibhai Ram ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'G00359', 'Praful Purohit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'G00367', 'Manoj Kumar C R', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'G00369', 'Jignesh N Bamania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(94, 'G00370', 'Madan C Upadhyay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(95, 'G00372', 'Ashfaq M Panchbhaiya ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'G00373', 'Jeetendra Singh B Gosain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'G00380', 'Deepak K Garg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'G00388', 'U C Pandey', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'G00394', 'Devanand Roy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'G00400', 'Jagannath Mishra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'G00401', 'Sanjay Thumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'G00404', 'Jaydeepsinh  V Gohil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'G00406', 'Dina Nath Mishra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'G00418', 'Jayeshkumar R Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(105, 'G00419', 'Dr Jigar A Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'G00433', 'H B Goswami', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'G00441', 'Rajan M Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'G00442', 'Pankaj G Thummar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'G00443', 'Buddha Prakash', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'G00450', 'Bhavesh Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'G00457', 'Sachin M Kachalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(112, 'G00459', 'Ramesh R Baraiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(113, 'G00466', 'Vipul Malaviya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'G00477', 'Braja Gopal Sikdar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(115, 'G00486', 'Ajay Tanna', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(116, 'G00487', 'Dr. Tejas K Zankat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(117, 'G00488', 'P K Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(118, 'G00491', 'Manoj Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(119, 'G00492', 'Ramanand Mishra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(120, 'G00493', 'Jitendra Dave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(121, 'G00502', 'Priyakanchini Pravin Gupta ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'G00503', 'Krunal Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'G00504', 'Mitesh G Makwana', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'G00505', 'Pinak Yogeshbhai Shah ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(125, 'G00506', 'Nilesh Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'G00512', 'Dineshkumar Devjibhai Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(127, 'G00515', 'Amit Kr Pandey', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(128, 'G00516', 'Nitin Pandey', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(129, 'G00517', 'D J Jott', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'G00519', 'Panja Zuber M Hanif', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'G00520', 'Bhaveshgar R Aparnathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'G00521', 'Rajdipsinh G Gohil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(133, 'G00522', 'Babu Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'G00523', 'Amit P Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'G00524', 'Vaju H Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(136, 'G00526', 'Naresh B Dhandhukia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(137, 'G00527', 'Bharat J Dhokiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'G00529', 'Manishkumar D Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'G00530', 'Sunil Kumar N Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(140, 'G00533', 'Rakesh Kanjibhai Borad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'G00535', 'Jivan G Kanzariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'G00540', 'Ramesh B Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(143, 'G00549', 'Rashmi Kant Pathak', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'G00555', 'Jignesh Beria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(145, 'G00556', 'Ramesh Vasiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(146, 'G00562', 'Manoj J Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'G00563', 'Gyan Prakash Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'G00566', 'Jitendra Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'G00571', 'Manish J Siddhpura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'G00573', 'Shashi Kant Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'G00574', 'Rahul Kumar Vanza', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'G00575', 'Mehul B Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'G00579', 'Rajesh Kumar I Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'G00580', 'Sagar R Tandel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'G00588', 'Saumik Dixit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'G00589', 'Neeraj Dubey', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(157, 'G00590', 'Gautam Chaudhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'G00595', 'Manish Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'G00596', 'Manish Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(160, 'G00601', 'H C Ankola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(161, 'G00606', 'Lakhman B Dodia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'G00613', 'Rajesh Tiwari', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(163, 'G00614', 'Rushikesh Vyas', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(164, 'G00629', 'Vijay H Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(165, 'G00630', 'Narendra V Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(166, 'G00635', 'Vijay B Voriya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(167, 'G00637', 'Sarman Gigabhai Ram ', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(168, 'G00638', 'Mayur A Purohit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(169, 'G00639', 'Jatin H Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(170, 'G00644', 'Vinay Kakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(171, 'G00645', 'Vishal Mahajan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(172, 'G00647', 'Suraj Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(173, 'G00653', 'Vinod Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(174, 'G00654', 'Bharat M Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(175, 'G00657', 'Siddhi Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(176, 'G00662', 'Amit J Bheda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(177, 'G00665', 'Jayesh Pitroda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(178, 'G00666', 'Malde Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(179, 'G00667', 'Nimish N Nimavat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(180, 'G00668', 'Amit S Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(181, 'G00676', 'Prathviraj Meena', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(182, 'G00677', 'Vinod Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(183, 'G00684', 'Vijay R Shahani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(184, 'G00685', 'Lalji B Koladiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(185, 'G00687', 'Shubham Garg', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(186, 'G00688', 'Jitendra Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(187, 'G00690', 'Pawan Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'G00701', 'Hemant V Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'G00702', 'Hiteshkumar K Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'G00706', 'Sudhir Kumar Tripathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'G00707', 'Sandeep D. Baskaware', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'G00708', 'Shobhit Ninoria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'G00709', 'Akash Rashmibhai Karia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(194, 'G00711', 'Bhautik Prakashkumar Parekh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(195, 'G00712', 'Dilipsinh D. Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(196, 'G00713', 'Gaurav Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(197, 'G00714', 'Nemish Nilesh Doshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'G00716', 'Nikhil Dileepbhai Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(199, 'G00718', 'Vijaykumar Nanajibhai Vaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(200, 'G00722', 'Ramvilas', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(201, 'G00724', 'Hiren Madhukant Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(202, 'G00731', 'Tushar Ramniklal Jotangia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(203, 'G00732', 'Zamir Jehangir Baloch', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(204, 'G00733', 'Devendra Singh Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(205, 'G00735', 'Vivek Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(206, 'G00737', 'Ashwani Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(207, 'G00749', 'Dilipsinh Kanabhai Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(208, 'G00758', 'Harshendu Mukundrai Vaishnav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(209, 'G00759', 'Manoj Rajput', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(210, 'G00768', 'Sanjay Kumar Jha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(211, 'G00769', 'Nikhil Dilip Moundekar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(212, 'G00771', 'Vijay Bhailalbhai Chomal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(213, 'G00772', 'Ketan Karasan Chhatrodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(214, 'G00778', 'Niraj Jitendrakumar Bhavsar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(215, 'G00781', 'Jadav Rajasibhai Jotva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(216, 'G00783', 'Bhoolok Tuljashanker Dave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(217, 'G00795', 'Divyesh Mahendrabhai Bhogayata', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(218, 'G00798', 'Ravikumar Deviprasadbhai Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(219, 'G00799', 'Hitesh Keshavbhai Suvagiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(220, 'G00808', 'Vishal Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(221, 'G00809', 'Sandeep Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(222, 'G00812', 'Rohankumar Jagendrabhai Ahir', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(223, 'G00813', 'Nirav Rameshkumar Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(224, 'G00817', 'Manas Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(225, 'G00819', 'Ratheesh Gopalan Nair', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(226, 'G00827', 'Pravindan Narayandan Gadhavi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(227, 'G00831', 'Anand Ravjibhai Kanjariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(228, 'G00837', 'Bishan Singh Thenua', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(229, 'G00846', 'Rohit Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(230, 'G00849', 'Panchabhai Khengarbhai Chaudhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(231, 'G00852', 'Sudhesh Badkul Jain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(232, 'G00856', 'Sanjay Kumar Chaudhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(233, 'G00857', 'Pramod Prasad Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(234, 'G00867', 'Jaykrishna Yogeshbhai Raval', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(235, 'G00872', 'Niravkumar Anilkumar Tank', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(236, 'G00880', 'Sushil Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(237, 'G00882', 'Ajaysinh Madhavsinh Mahida', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(238, 'G00887', 'Bhavesh Raghubhai Chomal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(239, 'G00903', 'Vipulkumar Vitthalbhai Boghani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(240, 'G00907', 'Rakesh Virabhai Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(241, 'G00911', 'Manish Sarmanbhai Chandera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(242, 'G00922', 'Ronak Lalitbhai Kamani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(243, 'G00932', 'Jaykumar Rupapara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(244, 'G00933', 'Sanjay Jethava', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(245, 'G00940', 'Hardik Snehalkumar Jayswal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(246, 'G00981', 'Usha Suresh Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(247, 'G00984', 'Chirag Savajiyani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(248, 'G00988', 'Vipul Upasani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(249, 'G00991', 'Durga Prasad Srivastava', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(250, 'G01018', 'Sandeep Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(251, 'G01024', 'Yogesh Visavadiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(252, 'G01073', 'Sushil Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(253, 'G01076', 'Anil Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(254, 'G01077', 'Jaydeep Kachhela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(255, 'G01083', 'Shailesh Chhatbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(256, 'G01103', 'Arjun Hirpara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(257, 'G01104', 'Pratik Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(258, 'G01105', 'Yogesh Pardeshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(259, 'G01113', 'Kaizar Bandukwala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(260, 'G01115', 'Vijay Baraiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(261, 'G01116', 'Kashyap Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(262, 'G01117', 'Dinesh Vaghela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(263, 'G01118', 'Jignesh Gaadhe', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(264, 'G01119', 'Rajendra Kamlaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(265, 'G01120', 'Parth Tanna', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(266, 'G01158', 'Jigar Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(267, 'G01164', 'Yogesh Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(268, 'V00090', 'K V Ravaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(269, 'V00107', 'Mrs N D Dattani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(270, 'V00128', 'C D Jhala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(271, 'V00161', 'H B Thakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(272, 'V00171', 'D K Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(273, 'V00183', 'B H Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(274, 'V00209', 'Ashvin Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(275, 'V00215', 'U B Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(276, 'V00228', 'A Vargese', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(277, 'V00231', 'R B Popat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(278, 'V00240', 'R J Purohit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(279, 'V00241', 'Indravadan L Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(280, 'V00249', 'M R Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(281, 'V00251', 'H J Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(282, 'V00257', 'Agwan Abdulrehman Husain', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(283, 'V00259', 'K R Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(284, 'V00271', 'D R Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(285, 'V00274', 'A N Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(286, 'V00280', 'M R Hariyani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(287, 'V00288', 'J M Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(288, 'V00303', 'Suresh Kumar V', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(289, 'V00319', 'K S Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(290, 'V00325', 'Haroon Malek', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(291, 'V00342', 'S K Kella', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(292, 'V00345', 'D D Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(293, 'V00353', 'A G Nair', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(294, 'V00356', 'J M Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(295, 'V00357', 'K M Chadasaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(296, 'V00373', 'J N Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(297, 'V00375', 'V A Hathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(298, 'V00421', 'C P Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(299, 'V00424', 'M S Vasavada', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(300, 'V00439', 'B K Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(301, 'V00451', 'Dharmendra Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(302, 'V00452', 'A H Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(303, 'V00463', 'N S Pandya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(304, 'V00474', 'Rupsingh Kushwah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(305, 'V00476', 'K K Shah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(306, 'V00523', 'N G Khapandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(307, 'V00530', 'S P Kamaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(308, 'V00531', 'R C Varu', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(309, 'V00533', 'G B Shahani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(310, 'V00538', 'N G Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(311, 'V00539', 'P B Mer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(312, 'V00550', 'K A Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(313, 'V00560', 'K S Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(314, 'V00568', 'Kirit M Gaglani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(315, 'V00573', 'M R Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(316, 'V00616', 'B G Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(317, 'V00617', 'K N Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(318, 'V00618', 'Ranmal Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(319, 'V00619', 'Rafik Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(320, 'V00654', 'H P Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(321, 'V00655', 'A V Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(322, 'V00726', 'H L Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(323, 'V00727', 'M M Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(324, 'V00728', 'V G Vanand', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(325, 'V00742', 'S R Oza', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(326, 'V00743', 'Dilip Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(327, 'V00746', 'Miss Smita L Suchak', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(328, 'V00764', 'Ambika Prasad Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(329, 'V00810', 'S M Vaidya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(330, 'V00844', 'A K Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(331, 'V00845', 'R B Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(332, 'V00846', 'G L Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(333, 'V00899', 'G C Vaghela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(334, 'V00901', 'N H Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(335, 'V00937', 'K V Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(336, 'V00982', 'C A Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(337, 'V00987', 'B P Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(338, 'V01022', 'P K Upadhyay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(339, 'V01057', 'M D Depala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(340, 'V01115', 'K R Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(341, 'V01426', 'Ajitsinh U Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(342, 'V01526', 'Jagdish M Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(343, 'V01527', 'Digijaysinh K Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(344, 'VW0018', 'Rajeshwar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(345, 'VW0031', 'Danabhai K Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(346, 'VW0034', 'R V Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(347, 'VW0035', 'R S Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(348, 'VW0037', 'Bhagwan S Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(349, 'VW0039', 'Yusuf Aba Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(350, 'VW0041', 'Jadav Hamir', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(351, 'VW0044', 'Giga P Mer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(352, 'VW0046', 'Jagdish C Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(353, 'VW0048', 'Ismaile R Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(354, 'VW0050', 'R V Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(355, 'VW0054', 'N R Purohit', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(356, 'VW0057', 'Kanji Mohan Gohel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(357, 'VW0058', 'Gordhan Govind Vanvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(358, 'VW0060', 'Omprakash Verma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(359, 'VW0062', 'Jagmal Patta Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(360, 'VW0064', 'A K Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(361, 'VW0073', 'Bhgwan D Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(362, 'VW0077', 'Amarnath Mahadeo', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(363, 'VW0079', 'G R Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(364, 'VW0080', 'Bhikhubha D Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(365, 'VW0081', 'Sangram Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(366, 'VW0085', 'J V Makwana', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(367, 'VW0087', 'P N Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(368, 'VW0089', 'Jayaprakash B', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(369, 'VW0119', 'C J Mathai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(370, 'VW0122', 'D M Paun', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(371, 'VW0131', 'S N Rajput', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(372, 'VW0135', 'D D Dabhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(373, 'VW0145', 'Om Vijaysingh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(374, 'VW0153', 'K D Koradia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(375, 'VW0161', 'P R Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(376, 'VW0168', 'Harikumar K', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(377, 'VW0173', 'G K Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(378, 'VW0183', 'K B Gondalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(379, 'VW0193', 'B D Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(380, 'VW0195', 'D P Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(381, 'VW0196', 'H B Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(382, 'VW0197', 'A P Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(383, 'VW0199', 'H C Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(384, 'VW0201', 'P B Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(385, 'VW0202', 'K M Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(386, 'VW0203', 'B D Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(387, 'VW0209', 'B P Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(388, 'VW0210', 'H N Mer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(389, 'VW0212', 'Meru Govind', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(390, 'VW0213', 'K D Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(391, 'VW0214', 'K R Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(392, 'VW0218', 'K B Vanvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(393, 'VW0225', 'J K Idicula', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(394, 'VW0230', 'N V Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(395, 'VW0232', 'A B Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(396, 'VW0233', 'D M Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(397, 'VW0238', 'R B Vadia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(398, 'VW0241', 'G K Paun', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(399, 'VW0245', 'S P Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(400, 'VW0250', 'N M Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(401, 'VW0256', 'U B Raval', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(402, 'VW0269', 'Hemaraj Vadi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(403, 'VW0270', 'A C Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(404, 'VW0276', 'S C Meghanathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(405, 'VW0278', 'Govind Merman', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(406, 'VW0280', 'K S Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(407, 'VW0285', 'A S Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(408, 'VW0286', 'Perweze Saharwordi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(409, 'VW0287', 'R U Jadeja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(410, 'VW0293', 'B H Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(411, 'VW0322', 'P K Bhesala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(412, 'VW0326', 'A P Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(413, 'VW0331', 'Prahlad Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(414, 'VW0335', 'L L Odedara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(415, 'VW0339', 'Atul Khopkar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(416, 'VW0341', 'J J Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(417, 'VW0347', 'Kana Mala Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(418, 'VW0350', 'B P Vaza', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(419, 'VW0354', 'R N Khuntad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(420, 'VW0357', 'G C Saradva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(421, 'VW0359', 'D B Ghavadia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(422, 'VW0367', 'B V Reddy', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(423, 'VW0371', 'H V Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(424, 'VW0372', 'Y S Dhayani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(425, 'VW0374', 'M N Jadeja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(426, 'VW0380', 'M G Gohel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(427, 'VW0388', 'J O Modha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(428, 'VW0398', 'G M Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(429, 'VW0399', 'M R Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(430, 'VW0404', 'L S Khunted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(431, 'VW0409', 'P M Nakum', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(432, 'VW0411', 'G J Nandania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(433, 'VW0418', 'R R Goswami', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(434, 'VW0421', 'Tulsidas R', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(435, 'VW0435', 'R M Kachhela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(436, 'VW0438', 'B B Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(437, 'VW0460', 'P M Thanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(438, 'VW0462', 'Massa Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(439, 'VW0480', 'I D Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(440, 'VW0485', 'B J Khunted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(441, 'VW0486', 'R V Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(442, 'VW0497', 'P K Vaghela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(443, 'VW0499', 'B A Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(444, 'VW0500', 'Uka N Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(445, 'VW0502', 'D M Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(446, 'VW0505', 'R P Khunted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(447, 'VW0506', 'P C Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(448, 'VW0510', 'K V Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(449, 'VW0519', 'Jose P O', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(450, 'VW0522', 'M B Goswami', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(451, 'VW0523', 'K J Nakum', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(452, 'VW0527', 'B R Aparnathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(453, 'VW0528', 'S D Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(454, 'VW0529', 'B L Kathad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(455, 'VW0535', 'L K Patat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(456, 'VW0536', 'M N Hadiyal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(457, 'VW0540', 'Chamkaur Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(458, 'VW0543', 'Vasa Kala Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(459, 'VW0544', 'Rambhai Meraman', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(460, 'VW0560', 'H S Upadhyay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(461, 'VW0575', 'D C Sarvaiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(462, 'VW0579', 'A David', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(463, 'VW0580', 'Dinker Tiwari', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(464, 'VW0592', 'H B Naria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(465, 'VW0595', 'M D Vagh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(466, 'VW0597', 'R N Thaker', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(467, 'VW0605', 'J D Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(468, 'VW0608', 'M C Makwana', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(469, 'VW0609', 'P J Shaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(470, 'VW0627', 'R G Thumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(471, 'VW0636', 'N C Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(472, 'VW0639', 'J P Chovatia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(473, 'VW0644', 'N P Hadia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(474, 'VW0657', 'J D Ladani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(475, 'VW0666', 'B K Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(476, 'VW0667', 'M M Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(477, 'VW0672', 'D J Bagathlia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(478, 'VW0675', 'S S Kotecha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(479, 'VW0687', 'R S Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(480, 'VW0688', 'B R Khunted', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(481, 'VW0694', 'V J Chavada', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(482, 'VW0695', 'J M Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(483, 'VW0704', 'Jagdeo Vishwakarma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(484, 'VW0706', 'B V Vans', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(485, 'VW0711', 'O H Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(486, 'VW0713', 'L K Bhattacharya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(487, 'VW0716', 'R N Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(488, 'VW0721', 'S D Bapodra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(489, 'VW0724', 'J K Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(490, 'VW0726', 'Ahmad Aba Malik', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(491, 'VW0742', 'C H Pandya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(492, 'VW0745', 'R H Nathani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(493, 'VW0753', 'H Bind', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(494, 'VW0760', 'L V Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(495, 'VW0761', 'M T Khan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(496, 'VW0766', 'S H Thaker', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(497, 'VW0768', 'R M Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(498, 'VW0770', 'R R Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(499, 'VW0771', 'N K Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(500, 'VW0772', 'P Shantilal', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(501, 'VW0775', 'V K Upadhyay', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(502, 'VW0779', 'G B Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(503, 'VW0784', 'M D Pathan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(504, 'VW0789', 'Singhasan Bhandari', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(505, 'VW0790', 'P R Kotak', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(506, 'VW0791', 'N D Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(507, 'VW0794', 'U K Bhagat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(508, 'VW0795', 'B M Ujania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(509, 'VW0796', 'B S Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(510, 'VW0801', 'A L Gondalia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(511, 'VW0803', 'U D Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(512, 'VW0823', 'N K Sidhpura', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(513, 'VW0834', 'G B Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(514, 'VW0837', 'H M Vadhiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(515, 'VW0839', 'R P Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(516, 'VW0840', 'S D Bhalani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(517, 'VW0843', 'R H Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(518, 'VW0849', 'D J Malam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(519, 'VW0852', 'M B Vaghela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(520, 'VW0863', 'S K Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(521, 'VW0871', 'H A Dave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(522, 'VW0875', 'Sebastian Antony', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(523, 'VW0876', 'V L Vachhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(524, 'VW0879', 'J R Maru', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(525, 'VW0884', 'P S Chavda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(526, 'VW0885', 'R K Poria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(527, 'VW0887', 'B G Thanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(528, 'VW0891', 'A R Keshwala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(529, 'VW0895', 'K K Davda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(530, 'VW0905', 'D J Anandpara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(531, 'VW0906', 'A V Hirpara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(532, 'VW0908', 'C N Dalsania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(533, 'VW0910', 'K R Mendapara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(534, 'VW0911', 'N V Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(535, 'VW0915', 'N J Jakasania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(536, 'VW0918', 'R M Zinia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(537, 'VW0922', 'D V Shira', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(538, 'VW0925', 'H B Trivedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(539, 'VW0929', 'B G Agath', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(540, 'VW0937', 'V P Khatra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(541, 'VW0938', 'J K Soni', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(542, 'VW0941', 'A S Pandya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(543, 'VW0942', 'K R Gohil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(544, 'VW0944', 'A B Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(545, 'VW0945', 'D D Dabhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(546, 'VW0946', 'G S Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(547, 'VW0947', 'N D Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(548, 'VW0948', 'Naja Veera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(549, 'VW0949', 'L G Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(550, 'VW0951', 'K M Godhania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(551, 'VW0952', 'A J Jadeja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(552, 'VW0953', 'B H Madlani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(553, 'VW0954', 'D B Malam', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(554, 'VW0955', 'J G Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(555, 'VW0958', 'B R Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(556, 'VW0962', 'R A Vaghela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(557, 'VW0966', 'M D Thanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(558, 'VW0972', 'P S Pandya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(559, 'VW0973', 'H K Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(560, 'VW0974', 'D N Borad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(561, 'VW0976', 'B K Suvagia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(562, 'VW0983', 'B D Tank', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(563, 'VW0984', 'A A Gadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(564, 'VW0986', 'N B Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(565, 'VW0988', 'N P Thumbar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(566, 'VW0992', 'H U Meghnathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(567, 'VW0998', 'Jitendra Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(568, 'VW1000', 'H A Raval', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(569, 'VW1004', 'B H Dhokiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(570, 'VW1006', 'H B Nakum', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(571, 'VW1010', 'M N Gojia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(572, 'VW1015', 'S M Gorania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(573, 'VW1018', 'V L Tapaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(574, 'VW1019', 'M D Khandhar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(575, 'VW1020', 'K V Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(576, 'VW1024', 'M P Bamania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(577, 'VW1025', 'B S Vithalani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(578, 'VW1026', 'D N Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(579, 'VW1027', 'H G Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(580, 'VW1038', 'Babu Mohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(581, 'VW1050', 'C V Lakhani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(582, 'VW1055', 'R D Usadadia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(583, 'VW1057', 'S S Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(584, 'VW1062', 'Ashok Kumar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(585, 'VW1064', 'Devendra Kumar Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(586, 'VW1066', 'Shivnath Prajapati', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(587, 'VW1067', 'N K Vithlani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(588, 'VW1068', 'H K Takodra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(589, 'VW1069', 'J H Thanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(590, 'VW1072', 'S D Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(591, 'VW1077', 'H V Dhokai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(592, 'VW1079', 'D J Girgilani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(593, 'VW1081', 'B B Katelia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(594, 'VW1082', 'B V Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(595, 'VW1083', 'H V Modha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(596, 'VW1084', 'R V Davda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(597, 'VW1086', 'P L Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(598, 'VW1089', 'R K Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(599, 'VW1090', 'Ranjit P Makvana', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(600, 'VW1091', 'Arjan Naran Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(601, 'VW1092', 'Nathubhai S Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(602, 'VW1093', 'Hira Hamir Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(603, 'VW1095', 'Yogendrasih S Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(604, 'VW1096', 'Mukesh Nathalal Malaviya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(605, 'VW1098', 'B D Chandegara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(606, 'VW1104', 'P U Vagh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(607, 'VW1105', 'B N Chandera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(608, 'VW1106', 'M B Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(609, 'VW1107', 'V H Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(610, 'VW1109', 'Joy Chaturvedi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(611, 'VW1112', 'R H Vara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(612, 'VW1113', 'K J Gohil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(613, 'VW1116', 'R K Jotva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(614, 'VW1117', 'P R Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(615, 'VW1123', 'R B Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(616, 'VW1128', 'D J Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(617, 'VW1130', 'H M Paun', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(618, 'VW1131', 'A L Pipaji', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(619, 'VW1132', 'D P Mandaviya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(620, 'VW1133', 'A R Mahida', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(621, 'VW1139', 'D V Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(622, 'VW1141', 'P L Pandya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(623, 'VW1142', 'H D Visavadiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(624, 'VW1143', 'N L Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(625, 'VW1144', 'H R Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(626, 'VW1145', 'N J Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(627, 'VW1146', 'S V Pillai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(628, 'VW1148', 'B D Kava', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(629, 'VW1150', 'N S Shaikh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(630, 'VW1152', 'Gopal Prasad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(631, 'VW1153', 'Hitesh Masani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(632, 'VW1157', 'N R Buch', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(633, 'VW1158', 'P H Mehta', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(634, 'VW1159', 'D K Vadukar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(635, 'VW1161', 'N G Bhut', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(636, 'VW1163', 'Popat B Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(637, 'VW1165', 'B D Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(638, 'VW1169', 'G P Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(639, 'VW1171', 'R V Kalola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(640, 'VW1173', 'J G Pithia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(641, 'VW1174', 'B V Thanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(642, 'VW1175', 'M G Odedra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(643, 'VW1176', 'H C Dave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(644, 'VW1178', 'J B Barach', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(645, 'VW1179', 'J O Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(646, 'VW1180', 'P K Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(647, 'VW1183', 'M B Gokani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(648, 'VW1185', 'H H Maria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(649, 'VW1187', 'C B Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(650, 'VW1188', 'V K Chetaria', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(651, 'VW1190', 'H V Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(652, 'VW1192', 'A M Chavda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(653, 'VW1193', 'K R Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(654, 'VW1194', 'R K Gohil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(655, 'VW1195', 'B C Shah', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(656, 'VW1199', 'M V Chavda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(657, 'VW1202', 'S J Jarasaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(658, 'VW1203', 'K N Jani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(659, 'VW1204', 'N H Malek', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(660, 'VW1205', 'Vijay Dave', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(661, 'VW1206', 'V P Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(662, 'VW1208', 'N P Chaudhary', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(663, 'VW1209', 'R D Thakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(664, 'VW1210', 'V N Nakum', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(665, 'VW1212', 'H R Katariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(666, 'VW1214', 'A I Yusufji', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(667, 'VW1216', 'N N Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(668, 'VW1217', 'Saji Mathew', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(669, 'VW1218', 'Rajendra Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(670, 'VW1222', 'R A Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(671, 'VW1223', 'M M Ujenia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(672, 'VW1224', 'N B Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(673, 'VW1225', 'P R Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(674, 'VW1226', 'R M Postariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(675, 'VW1227', 'A P Chavda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(676, 'VW1228', 'Ramesh Jha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(677, 'VW1229', 'B G Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(678, 'VW1231', 'P I Dave', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `rkmts` (`ID`, `rkCode`, `rkName`, `rkMedicine`, `rkPlab`, `rkXray`, `rkTotal`, `rkMonth`, `rkYear`, `rkAmbulance`) VALUES
(679, 'VW1233', 'J A Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(680, 'VW1234', 'A M Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(681, 'VW1236', 'R H Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(682, 'VW1240', 'H J Bhadja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(683, 'VW1243', 'J K Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(684, 'VW1244', 'D K Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(685, 'VW1245', 'H B Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(686, 'VW1246', 'N R Metra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(687, 'VW1247', 'A G Jani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(688, 'VW1248', 'M P Sharma', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(689, 'VW1249', 'D A Ashwar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(690, 'VW1250', 'Mahendra Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(691, 'VW1251', 'M K Modhavadia', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(692, 'VW1252', 'P V Kadachha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(693, 'VW1254', 'J N Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(694, 'VW1255', 'B K Kamaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(695, 'VW1256', 'B K Gohil', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(696, 'VW1257', 'K C Chauhan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(697, 'VW1259', 'K V Makadiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(698, 'VW1260', 'K N Singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(699, 'VW1262', 'Smt Minaxi G Kotak', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(700, 'VW1263', 'R A Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(701, 'VW1264', 'A P Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(702, 'VW1265', 'D V Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(703, 'VW1267', 'Sagar B Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(704, 'VW1268', 'Rahul R Thakar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(705, 'VW1269', 'Vipul V Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(706, 'VW1270', 'Haresh K Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(707, 'VW1271', 'Rambhai N Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(708, 'VW1272', 'Mahendra D Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(709, 'VW1273', 'Bhavesh R Pampania', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(710, 'VW1274', 'Aswin R Kachhela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(711, 'VW1275', 'Ketan R Makwana', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(712, 'VW1276', 'Jetha D Pithiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(713, 'VW1277', 'Aswin H Panjari', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(714, 'VW1278', 'Atul K Baraiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(715, 'VW1279', 'Aswin N Sapra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(716, 'VW1280', 'Sabir B Malek', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(717, 'VW1281', 'Arvind J Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(718, 'VW1282', 'Ashish D Vyas', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(719, 'VW1283', 'Alpesh R Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(720, 'VW1284', 'Manu D Kahor', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(721, 'VW1285', 'Kamlesh C Visavadiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(722, 'VW1287', 'Bhavesh H Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(723, 'VW1289', 'Ajay H Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(724, 'VW1293', 'Narendra B Khapandi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(725, 'VW1294', 'Ashok J Thanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(726, 'VW1295', 'Ramesh K Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(727, 'VW1296', 'Hitesh D Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(728, 'VW1297', 'Mensi N Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(729, 'VW1298', 'Punja K Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(730, 'VW1299', 'Vivek D Bhatt', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(731, 'VW1300', 'Ajay D Ravaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(732, 'VW1301', 'Ram J Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(733, 'VW1302', 'Pravin M Dabhi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(734, 'VW1304', 'B P Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(735, 'VW1305', 'B M Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(736, 'VW1306', 'Y J Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(737, 'VW1307', 'S A Chorwada', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(738, 'VW1308', 'J V Vaghela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(739, 'VW1310', 'H R Meghnathi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(740, 'VW1311', 'G B Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(741, 'VW1312', 'V A Pankhaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(742, 'VW1313', 'M B Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(743, 'VW1314', 'V K Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(744, 'VW1315', 'B A Goswami', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(745, 'VW1316', 'P J Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(746, 'VW1317', 'P J Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(747, 'VW1319', 'Kalpesh R Gohel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(748, 'VW1320', 'B D Baraiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(749, 'VW1321', 'D J Gohel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(750, 'VW1322', 'K R Jotva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(751, 'VW1323', 'V M Kachela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(752, 'VW1324', 'G K Kara', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(753, 'VW1325', 'P L Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(754, 'VW1327', 'Bharat M Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(755, 'VW1328', 'Jashu B Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(756, 'VW1329', 'Dilu B Kachhela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(757, 'VW1330', 'Vikram K Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(758, 'VW1332', 'V V Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(759, 'VW1333', 'N B Khuntad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(760, 'VW1334', 'I H Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(761, 'VW1335', 'D B Kachhela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(762, 'VW1336', 'B K Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(763, 'VW1337', 'M A Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(764, 'VW1338', 'M K Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(765, 'VW1339', 'Kishor Masaribhai Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(766, 'VW1340', 'Bharat V Jotva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(767, 'VW1341', 'Navnit L Jotva', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(768, 'VW1342', 'Jaydeep B Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(769, 'VW1344', 'Ajitsinh Rambhai Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(770, 'VW1345', 'Kiran R Patat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(771, 'VW1346', 'Milan S Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(772, 'VW1347', 'Hamir K Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(773, 'VW1348', 'Rambhai P Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(774, 'VW1349', 'Ashok P Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(775, 'VW1350', 'Dilip B Baraiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(776, 'VW1351', 'Haresh M Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(777, 'VW1352', 'Ravi N Kava', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(778, 'VW1353', 'Sunil M Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(779, 'VW1354', 'Narendra B Kudesha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(780, 'VW1355', 'Mahendra R Nayani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(781, 'VW1356', 'Viram L Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(782, 'VW1358', 'Bharat K Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(783, 'VW1359', 'Rajesh K Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(784, 'VW1360', 'Devang P Joshi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(785, 'VW1361', 'Surjitsinh B Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(786, 'VW1363', 'Rahul R Vanvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(787, 'VW1365', 'Ansari Mohammed I', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(788, 'VW1366', 'Govind N Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(789, 'VW1367', 'Bharak K Herbha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(790, 'VW1368', 'Karshan K Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(791, 'VW1369', 'Jayesh N Jethawa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(792, 'VW1370', 'Yashawantsinh B Yadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(793, 'VW1371', 'Kanji Bachubhai Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(794, 'VW1372', 'Rahul K Gadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(795, 'VT0681', 'Pravinkumar Virabhai Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(796, 'VT0682', 'Mayurkumar Jagmal Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(797, 'VT0683', 'Soyeb Sabirhusenbhai Travdi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(798, 'VT0684', 'Piyush R Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(799, 'VT0685', 'Nilesh Lakhubhai Gadhe', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(800, 'VT0686', 'Bipin Vejanandbhai Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(801, 'VT0687', 'Shailesh Arsibhai Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(802, 'VT0688', 'Vijay Bhimshibhai Patat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(803, 'VT0689', 'Rajeshkumar Gangarambhai Mehto', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(804, 'VT0690', 'Vijay Hameerbhai Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(805, 'VT0691', 'Rameshkumar Harsukh Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(806, 'VT0692', 'Pratik Anilbhai Padhiyar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(807, 'VT0693', 'Naresh Uka Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(808, 'VT0694', 'Kanu Lakhamanbhai Chhatrodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(809, 'VT0695', 'Vipul Dipu Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(810, 'VT0696', 'Bhavik Vithal Kava', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(811, 'VT0698', 'Bhavesh L Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(812, 'VT0700', 'Hiteshkumar Kala Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(813, 'VT0701', 'Naran Raja Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(814, 'VT0704', 'Bhavesh Vasaram Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(815, 'VT0705', 'Ravi Hari Kachhela', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(816, 'VT0706', 'Manu Devshi Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(817, 'VT0707', 'Gunjan Karshan Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(818, 'VT0708', 'Vipulkumar China Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(819, 'VT0709', 'Jayesh Kala Kamaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(820, 'VT0711', 'Ram Dana Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(821, 'VT0712', 'Mahesh Kanabhai Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(822, 'VT0713', 'Chandan Surendra Goswami', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(823, 'VT0714', 'Vikash C Hariyani', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(824, 'VT0715', 'Ashish Hira Jakhotra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(825, 'VT0716', 'Ashvin Bhagvan Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(826, 'VT0717', 'Bhavesh China Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(827, 'VT0718', 'Mensi Sarman Bhola', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(828, 'VT0719', 'Kanji M Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(829, 'VT0720', 'Vijay R Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(830, 'VT0721', 'Vipul P Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(831, 'VT0723', 'Devayat H Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(832, 'VT0725', 'Pankaj B Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(833, 'VT0726', 'Maldev V Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(834, 'VT0727', 'Umesh B Jethava', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(835, 'VT0728', 'Rahul P Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(836, 'VT0729', 'Kanji M Nandaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(837, 'VT0730', 'Harmitsinh N Zala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(838, 'VT0731', 'Haresh J Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(839, 'VT0732', 'Karana K Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(840, 'VT0733', 'Jignesh V Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(841, 'VT0734', 'Mahesh S Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(842, 'VT0735', 'Ravisinh R Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(843, 'VT0736', 'Sandip H Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(844, 'VT0737', 'Bharat P Savaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(845, 'VT0738', 'Nilesk K Kamaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(846, 'VT0739', 'Pratik J Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(847, 'VT0740', 'Dixit B Vala', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(848, 'VT0741', 'Ravi M Nimavat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(849, 'VT0742', 'Sanjay A Ramavat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(850, 'VT0743', 'Mukesh L Nakum', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(851, 'VT4000', 'Parag B Rogatiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(852, 'VT4001', 'Vinod J Jarer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(853, 'VT4002', 'Manu B Chudasama', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(854, 'VT4003', 'Aravind M Mer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(855, 'VT4004', 'Kapil K Murabiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(856, 'VT4005', 'Jitendra S Solanki', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(857, 'VT4006', 'Jasmin A Patel', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(858, 'VA1245', 'A H Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(859, 'VA1246', 'M D Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(860, 'VA1248', 'V R Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(861, 'VA1256', 'K H Jethwa', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(862, 'VA1258', 'V V Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(863, 'VA1268', 'J S Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(864, 'VA1284', 'Barad Rajan Vajubhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(865, 'VA1285', 'Vaja Raja Govindbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(866, 'VA1286', 'Ram Bhikhu Vira', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(867, 'VA1287', 'Barad Bipin Haja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(868, 'VA1288', 'Ram Dinesh Ramsi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(869, 'VA1289', 'Kamaliya Mahesh Kana', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(870, 'VA1290', 'Kamaliya Ketan Bhimabhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(871, 'VA1291', 'Naghera Vijay Bhagvan', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(872, 'VA1292', 'Solanki Paresh Lumbha', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(873, 'VA1293', 'Solanki Jayesh Parbat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(874, 'VA1294', 'Jakhotra Kanju Govind', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(875, 'VA1296', 'Jadav Surpalsinh Lalinbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(876, 'VA1300', 'Vaja Ravi Sarmanbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(877, 'VA1303', 'Chhatrodiya Bhavesh P', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(878, 'VA1305', 'Papmaniya Vijay Naran', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(879, 'VA1306', 'Gohil Lakhman Nathabhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(880, 'VA1307', 'Mer Pradip Bhimbhai', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(881, 'VA1310', 'Naghera Bhavesh Vijanand', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(882, 'VA1311', 'Solanki Vignesh Govind', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(883, 'VA1312', 'Barad Jayesh Govind', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(884, 'VA1313', 'Jignesh J Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(885, 'VA1314', 'Jayesh Lakhman Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(886, 'VA1315', 'Dharmesh P Padhariya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(887, 'VA1316', 'Ajay Mansigbhai Chavda', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(888, 'VA1317', 'Bharat Parbat Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(889, 'VA1318', 'Hitesh Ramabhai Barad', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(890, 'VA1319', 'Yogesh Bharatbhai Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(891, 'VA1320', 'Naresh Khimabhai Mer', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(892, 'VA1321', 'Divyesh Dinesh Zankat', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(893, 'VA1322', 'Pradip Kanji Parmar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(894, 'VA1323', 'Umesh Kanjibhai Vanvi', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(895, 'VA1324', 'Ashvin Jetha Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(896, 'VA1325', 'Jignesh Masari Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(897, 'VA1326', 'Shailesh Gopalbhai Mori', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(898, 'VA1327', 'Ram Hirabhai Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(899, 'VA1328', 'Hardik Arsi Ram', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(900, 'VA1329', 'Akshay Dahana Jakhotra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(901, 'VA1330', 'Nakul Devayat Naghera', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(902, 'VA1331', 'Vipul Hajabhai Jakhotra', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(903, 'VA1332', 'Ram Dhaval Jadav', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(904, 'VA1333', 'Sanjay B Gadhiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(905, 'VA1334', 'Jasu Arjanbhai Vadher', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(906, 'VA1335', 'Anil Maganlal Devaliya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(907, 'VA1336', 'Ravi Arsibhai Vaja', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(908, 'VA1337', 'Paresh Lakhman Dodiya', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(909, 'VA1338', 'Haresh Bhikhu Rathod', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(910, 'VA1339', 'Kapil Jaysukhbhai Padhiyar', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(911, 'VA1340', 'N S Pampaniya', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rkparty`
--

CREATE TABLE `rkparty` (
  `ID` int(11) NOT NULL,
  `rkPartyName` varchar(30) DEFAULT NULL,
  `rkPartyContact` varchar(15) DEFAULT NULL,
  `rkPartyCity` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkplant`
--

CREATE TABLE `rkplant` (
  `ID` int(11) NOT NULL,
  `rkPlantOfficer` varchar(10) DEFAULT NULL,
  `rkPlantTechnition` varchar(10) DEFAULT NULL,
  `rkPlantContract` varchar(10) DEFAULT NULL,
  `rkPlantTotal` varchar(10) DEFAULT NULL,
  `rkPlantNewCase` varchar(10) DEFAULT NULL,
  `rkPlantOldCasel` varchar(10) DEFAULT NULL,
  `rkPlantDressing` varchar(10) DEFAULT NULL,
  `rkPlantMale` varchar(10) DEFAULT NULL,
  `rkPlantFemale` varchar(10) DEFAULT NULL,
  `rkPlantLTI` varchar(10) DEFAULT NULL,
  `rkPlantMonth` varchar(10) DEFAULT NULL,
  `rkPlantYear` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkpurchase`
--

CREATE TABLE `rkpurchase` (
  `ID` int(11) NOT NULL,
  `rkPurchasePartyName` varchar(45) DEFAULT NULL,
  `rkPurchaseDate` date DEFAULT NULL,
  `rkPurchaseAmount` varchar(15) DEFAULT NULL,
  `rkPurchaseRemark` varchar(45) DEFAULT NULL,
  `rkPurchasePartyID` int(11) DEFAULT NULL,
  `rkPurchaseBillNo` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkrecs`
--

CREATE TABLE `rkrecs` (
  `ID` int(11) NOT NULL,
  `rkCode` varchar(45) DEFAULT NULL,
  `rkName` varchar(45) DEFAULT NULL,
  `rkMedicine` int(11) DEFAULT NULL,
  `rkPlab` int(11) DEFAULT NULL,
  `rkXray` int(11) DEFAULT NULL,
  `rkTotal` int(11) DEFAULT NULL,
  `rkMonth` int(2) DEFAULT NULL,
  `rkYear` int(4) DEFAULT NULL,
  `rkAmbulance` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rksecs`
--

CREATE TABLE `rksecs` (
  `ID` int(11) NOT NULL,
  `rkCode` varchar(45) DEFAULT NULL,
  `rkName` varchar(45) DEFAULT NULL,
  `rkMedicine` int(11) DEFAULT NULL,
  `rkPlab` int(11) DEFAULT NULL,
  `rkXray` int(11) DEFAULT NULL,
  `rkTotal` int(11) DEFAULT NULL,
  `rkMonth` int(2) DEFAULT NULL,
  `rkYear` int(4) DEFAULT NULL,
  `rkAmbulance` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rkstock`
--

CREATE TABLE `rkstock` (
  `ID` int(11) NOT NULL,
  `rkStockName` varchar(45) DEFAULT NULL,
  `rkStockParticular` varchar(45) DEFAULT NULL,
  `rkStockBatchNo` varchar(45) DEFAULT NULL,
  `rkStockDate` date DEFAULT NULL,
  `rkStockExpDate` date DEFAULT NULL,
  `rkStockAmount` varchar(10) DEFAULT NULL,
  `rkStockQuntities` varchar(10) NOT NULL,
  `rkStockBillNo` int(11) DEFAULT NULL,
  `rkStockMonth` int(11) DEFAULT '0',
  `rkStockYear` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rkanagar`
--
ALTER TABLE `rkanagar`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkcons`
--
ALTER TABLE `rkcons`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkdsps`
--
ALTER TABLE `rkdsps`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkissued`
--
ALTER TABLE `rkissued`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rklogin`
--
ALTER TABLE `rklogin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkmedicine`
--
ALTER TABLE `rkmedicine`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkmts`
--
ALTER TABLE `rkmts`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkparty`
--
ALTER TABLE `rkparty`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkplant`
--
ALTER TABLE `rkplant`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkpurchase`
--
ALTER TABLE `rkpurchase`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_rkPurchasePartyID_idx` (`rkPurchasePartyID`);

--
-- Indexes for table `rkrecs`
--
ALTER TABLE `rkrecs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rksecs`
--
ALTER TABLE `rksecs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rkstock`
--
ALTER TABLE `rkstock`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rkanagar`
--
ALTER TABLE `rkanagar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkcons`
--
ALTER TABLE `rkcons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkdsps`
--
ALTER TABLE `rkdsps`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkissued`
--
ALTER TABLE `rkissued`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rklogin`
--
ALTER TABLE `rklogin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkmedicine`
--
ALTER TABLE `rkmedicine`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkmts`
--
ALTER TABLE `rkmts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1024;
--
-- AUTO_INCREMENT for table `rkparty`
--
ALTER TABLE `rkparty`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rkplant`
--
ALTER TABLE `rkplant`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkpurchase`
--
ALTER TABLE `rkpurchase`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkrecs`
--
ALTER TABLE `rkrecs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rksecs`
--
ALTER TABLE `rksecs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rkstock`
--
ALTER TABLE `rkstock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `rkpurchase`
--
ALTER TABLE `rkpurchase`
  ADD CONSTRAINT `fk_rkPurchasePartyID` FOREIGN KEY (`rkPurchasePartyID`) REFERENCES `rkparty` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
