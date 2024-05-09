-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2024 at 09:11 PM
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
-- Database: `dbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity`
--

CREATE TABLE `activity` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `type` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity`
--

INSERT INTO `activity` (`username`, `email`, `type`, `status`) VALUES
('rafi', 'rafi@gmail.com', 'admin', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `buslist`
--

CREATE TABLE `buslist` (
  `id` char(20) NOT NULL,
  `name` text DEFAULT NULL,
  `type` text DEFAULT NULL,
  `route` text DEFAULT NULL,
  `dept_place` text DEFAULT NULL,
  `dept_time` text DEFAULT NULL,
  `arr_place` text DEFAULT NULL,
  `arr_time` text DEFAULT NULL,
  `seat` int(11) DEFAULT NULL,
  `fare` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buslist`
--

INSERT INTO `buslist` (`id`, `name`, `type`, `route`, `dept_place`, `dept_time`, `arr_place`, `arr_time`, `seat`, `fare`) VALUES
('Dhaka-12-0001', 'S.R Travels (Pvt) Ltd', 'Hino, AK1J Super Plus, Non AC', 'Dhaka - Bogura - Mokamtola - Gobindaganj - Palashbari - Rangpur - Dinajpur', 'Dhaka', '06:45 AM', 'Dinajpur', '02:45 PM', 28, 900),
('Dhaka-12-0002', 'Hanif Enterprise', '1, Hino 1J Pluss, Non AC', 'Dhaka - Bogura - Gobindaganj - Ghoraghat - Dinajpur', 'Dhaka', '07:00 AM', 'Dinajpur', '03:00 PM', 28, 900),
('Dhaka-12-0003', 'Nabil Paribahan', 'Hino, AK1J Super Plus', 'Dhaka - Dinajpur- Setabganj', 'Dhaka', '07:30 AM', 'Dinajpur', '02:30 PM', 28, 900),
('Dhaka-12-0004', 'Euro Coach', '12, Business cum Sleeper Bus-AL/12M, AC', 'Dhaka - Bogura - Mokamtola - Gobindaganj - Raiganj - Dinajpur', 'Dhaka', '08:30 AM', 'Dinajpur', '04:30 PM', 28, 1200),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', '1, Hino, Non AC', 'Dhaka - Bogura - Mokamtola - Gobindaganj - Ghoraghat - Dinajpur', 'Dhaka', '09:00 AM', 'Dinajpur', '05:00 PM', 28, 900),
('Dhaka-12-0006', 'Times Travels', '12, Sleeper Premium AC, AC', 'Ranisankail - Pirganj - Setabganj - Dinajpur - Bogura - Dhaka', 'Dinajpur', '01:00 AM', 'Dhaka', '05:00 AM', 28, 2500),
('Dhaka-12-0007', 'S.R Travels (Pvt) Ltd', '8, ISUZU, Non AC', 'Dinajpur - Ambari - Fulbari - Birampur - Bhaduria - Raniganj...', 'Dinajpur', '08:00 AM', 'Dhaka', '04:00 PM', 28, 900),
('Dhaka-12-0008', 'Nabil Paribahan', 'Hino, AK1J Super Plus Deluxe Sleeping Chair', 'Dinajpur - Ambari - Fulbari - Birampur - Bhaduria - Raniganj...', 'Dinajpur', '08:30 PM', 'Dhaka', '07:30 AM', 28, 900),
('Dhaka-12-0009', 'Euro Coach', '12, Business cum Sleeper Bus-AL/12M, AC', 'Dinajpur - Ambari - Fulbari - Birampur - Bhaduria - Raniganj...', 'Dinajpur', '08:30 PM', 'Dhaka', '06:00 AM', 28, 1800),
('Dhaka-12-0010', 'Heritage Travels', '28, Sleeper Premium AC, AC', 'Dinajpur - Dhaka ', 'Dinajpur', '09:45 PM', 'Dhaka', '06:00 AM', 28, 1600),
('Dhaka-12-0011', 'Soudia Coach Service', '1, Hino 1J Pluss, Non AC', ' Coxs Bazar - Chakaria - Lohagara - Chittagong - Dhaka', 'Coxs bazar', '09:00 AM', 'Dhaka', '07:00 PM', 28, 1000),
('Dhaka-12-0012', 'SHOHAGH PARIBAHAN', '1, Hino 1J Pluss, AC', ' Coxs Bazar - Chakaria - Lohagara - Chittagong - Dhaka', 'Coxs bazar', '11:30 AM', 'Dhaka', '07:30 PM	', 28, 2000),
('Dhaka-12-0013', 'Saintmartin Hyundai (Robi Express)', '6, Hyundai Universe, AC', 'Coxs Bazar - Chittagong - Dhaka', 'Coxs bazar', '10:30 AM', 'Dhaka', '09:00 PM', 28, 2000),
('Dhaka-12-0014', 'Ena Transport (Pvt) Ltd', '1, Hino 1J Pluss, AC', ' Coxs Bazar - Chakaria - Lohagara - Chittagong - Dhaka', 'Coxs bazar', '11:30 AM', 'Dhaka', '06:00 AM', 28, 2100),
('Dhaka-12-0015', 'M R Paribahan', '28, Sleeper Premium AC, AC', ' Coxs Bazar - Chakaria - Lohagara - Chittagong - Dhaka', 'Coxs bazar', '06:00 PM', 'Dhaka', '05:00 AM', 28, 2000),
('Dhaka-12-0016', 'Shanto Travels', '28, Sleeper Premium AC, AC', 'Rangpur - Pirganj - Palashbari - Gobindaganj - Mokamtola', 'Dhaka', '3:00 PM', 'Coxs bazar', '08:30 AM', 28, 2000),
('Dhaka-12-0017', 'Tuba Line', '28, Sleeper Premium AC, AC', 'ur-Kalabag Dhaka(Gabtali-Kallayanpan-Fokirapool-Arambag)', 'Dhaka', '09:00 PM', 'Coxs bazar', '07:00 AM', 28, 2500),
('Dhaka-12-0018', 'Ena Transport (Pvt) Ltd', '6, Hyundai Universe, AC', ' Dhaka - Feni - Noorjahan - Chittagong - Keranihat - Amiraba', 'Dhaka', '09:20 PM', 'Coxs bazar', '07:00 AM', 28, 2500),
('Dhaka-12-0019', 'Hanif Enterprise', 'Hino, AK1J Super Plus Non AC', ' Coxs Bazar - Chakaria - Lohagara - Chittagong - Dhaka', 'Dhaka', '10:00 PM', 'Coxs bazar', '08:00 AM', 28, 2000),
('Dhaka-12-0020', 'SHOHAGH PARIBAHAN', 'Hino, AK1J Super Plus Non AC', 'Dhaka - Bogura - Mokamtola - Gobindaganj - Palashbari - Rangpur - Dinajpur', 'Dhaka', '10:15 PM', 'Coxs bazar', '08:15 AM	', 28, 2000),
('Dhaka-12-0021', 'Ena Transport (Pvt) Ltd', '33, Mitsubishi-FUSO (Japan), Non AC', ' Gulistan(Fulbaria) - Tekerhat - Mostofapur - Bhurghata', 'Dhaka', '10:15 PM', 'Barishal', '02:00 AM', 28, 500),
('Dhaka-12-0022', 'LABIBA Classic Ltd', '26, Hino 1j pulas, Non AC', ' Dhaka(Gazipur) - Abdullahpur- Saydabad- Barisal - Swarupkati', 'Dhaka', '12:00 AM', 'Barishal', '04:45 AM', 28, 650),
('Dhaka-12-0023', 'Hanif Enterprise', 'Hino, AK1J Super Salon Chair Coach Non AC', ' Dhaka - Rajoir - Mostapur - Vurghata - Torky - Gauronodi', 'Dhaka', '11:30 AM', 'Barishal', '06:00 AM', 28, 600),
('Dhaka-12-0024', 'SHOHAGH PARIBAHAN', '33, Mitsubishi-FUSO (Japan), Non AC', 'Gulistan(Fulbaria) - Tekerhat - Mostofapur - Bhurghata', 'Dhaka', '09:15 AM', 'Barishal', '01:00 PM', 28, 500),
('Dhaka-12-0025', 'LABIBA Classic Ltd', '34, AK1J, Non AC', ' Dhaka(Gazipur) - Dhaka (Abdullahpur) - Dhaka (Saydabad)', 'Dhaka', '11:30 AM', 'Barishal', '07:00 PM', 28, 700),
('Dhaka-12-0026', 'Ena Transport (Pvt) Ltd', '33, Mitsubishi-FUSO (Japan), Non AC', 'Barisal - Tekerhat - Gulistan(Fulbaria)', 'Barisal', '05:30 AM', 'Dhaka', '10:00 AM', 28, 900),
('Dhaka-12-0027', 'Seven Star Deluxe Paribahan', '12, Ashok leyland, Non AC', ' Amtoli - Patuakhali - Barisal - Dhaka', 'Barisal', '07:30 AM', 'Dhaka', '01:10 PM', 28, 500),
('Dhaka-12-0028', 'SHOHAGH PARIBAHAN', '26, Hino 1J Pluss, Non AC', 'Barisal - Dhaka', 'Barisal', '7:45 AM', 'Dhaka', '03:45 PM', 28, 1200),
('Dhaka-12-0029', 'LABIBA Classic Ltd', '26, Hino 1J Pluss, Non AC', 'Swarupkati - Barisal - Dhaka (Saydabad) - Dhaka', 'Barisal', '09:15 AM', 'Dhaka', '03:30 PM', 28, 500),
('Dhaka-12-0030', 'Ena Transport (Pvt) Ltd', '33, Mitsubishi-FUSO (Japan), Non AC', 'Barisal - Tekerhat - Dhaka - Gazipur', 'Barisal', '10:00 PM', 'Dhaka', '02:30 AM', 28, 600),
('Dhaka-12-0031', 'Tungipara Express', '1, Hino 1J Pluss, AC', 'Dhaka - Vatiapara - Gopalganj - Khulna', 'Dhaka', '09:15 PM', 'Khulna', '09:45 PM', 28, 750),
('Dhaka-12-0032', 'Ena Transport (Pvt) Ltd', '33, Mitsubishi-FUSO (Japan), Non AC', 'Gulistan(Fulbaria) -Gopalganj - Khulna', 'Dhaka', '09:30 PM', 'Khulna', '02:30 AM', 28, 650),
('Dhaka-12-0033', 'Dola Paribahan Ltd', '34, HINO 1J NON AC, Non AC', 'Gulistan(Fulbaria) -Gopalganj - Khulna', 'Dhaka', '09:30 PM', 'Khulna', '02:50AM', 28, 650),
('Dhaka-12-0034', 'Emad Paribahan(Pvt.)Ltd', '12, Ashok leyland, Non AC', 'Dhaka - Khulna', 'Dhaka', '09:30PM', 'Khulna', '01:00 AM', 28, 650),
('Dhaka-12-0035', 'Emad Paribahan(Pvt.)Ltd', '12, Ashok leyland, Non AC', 'Dhaka - Gopalganj - Mollahat - Mollarhat - Joydihi - Madrasa...', 'Dhaka', '09:40 PM', ' Khulna', '02:00AM', 28, 650),
('DHAKA-12-0036', 'SHOHAGH PARIBAHAN', '1, Hino-1J, Non AC', 'Phultala (Khulna) - Khulna - Fakirhat - Ghonapara - Gopalgan...', 'khulna', '10:15 PM', 'Dhaka', '04:45 AM', 28, 700),
('Dhaka-12-0037', 'Emad Paribahan(Pvt.)Ltd', '12, Ashok leyland, Non AC', 'Satkhira - Patkelghata - Atharomile - Chuknagar - Keshabpur...', ' Khulna', '10:30 PM', 'Dhaka', '03:30 PM', 28, 650),
('Dhaka-12-0038', 'Hanif Enterprise', '1, Hino-1J, Non AC', 'Nowapara (Khulna) - Phultola- Katakhali - Ghonapara - Gopalg...', 'Khulna', '10:45 PM', 'Dhaka', '03:00 AM', 28, 750),
('Dhaka-12-0039', 'SHOHAGH PARIBAHAN', '26, Hino 1j pulas, Non AC', 'Khulna - Gopalganj - Dhaka', 'Khulna', '11:00 PM', 'Dhaka', '07:00 AM', 28, 1200),
('Dhaka-12-0040', 'Emad Paribahan(Pvt.)Ltd.', '12, Ashok leyland, Non AC', ' Khulna (Phultala) - Khulna - Joydihi - Gopalganj - Vatiapara...', 'Khulna', '08:30 PM', 'Dhaka', '02:30 AM', 28, 850),
('Dhaka-12-0041', 'Ena Transport (Pvt) Ltd', '6, Hyundai Universe, AC', 'Dhaka - Sylhet', 'Dhaka', '11:00 AM', 'Sylhet', '05:00 PM', 28, 1500),
('Dhaka-12-0042', 'Hanif Enterprise', 'Hino, AK1J Super Salon Chair Coach', ' Dhaka - Ashuganj - Sayestagong - Sherpur - Syhlet', 'Dhaka', '01:00 PM', 'Sylhe', '07:00 PM', 28, 700),
('Dhaka-12-0043', 'Ena paribahan', '6, Hyundai Universe, AC', 'Dhaka -Shaistaganj -Sylhet', 'Dhaka', '02:00 PM', 'Sylhet', '08:00 PM', 28, 1500),
('Dhaka-12-0044', 'Ena Transport (Pvt) Ltd', '6, Hyundai Universe, AC', 'Dhaka - Sylhet', 'Dhaka', '11:55 PM', ' Sylhet', '06:20 AM', 28, 1500),
('Dhaka-12-0045', 'Royal Express', 'Hino, 1J Pluss', 'Dhaka - Ashuganj - Sayestagong - Sherpur - Syhlet', 'Dhaka', '11:50 PM', 'Sylhet', '06:00 AM', 28, 700),
('Dhaka-12-0046', 'Ena Transport (Pvt) Ltd', '6, Hyundai Universe, AC', 'Sylhet - Dhaka', ' Sylhet', '05:10 PM', 'Dhaka', '11:55 PM', 28, 1500),
('Dhaka-12-0047', 'Hanif Enterprise', 'Hino, AK1J Super Salon Chair Coach', ' Sylhet - Bhairab - Narsingdi - Dhaka', ' Sylhet', '05:30 PM', 'Dhaka', '11:00 PM', 28, 700),
('Dhaka-12-0049', 'Rimi Travels', '1, Hino 1J Pluss, Non AC', 'Sylhet -Shaistaganj - Madhabpur - Dhaka', 'Sylhet', '11:45 PM', 'Dhaka', '06:00 AM', 28, 670),
('Dhaka-12-0050', 'M R Paribahan', '2, Hyundai Universe, AC', 'Sylhet - Dhaka', 'Sylhet', '11:35 PM', 'Dhaka', '05:35 AM', 28, 1800);

-- --------------------------------------------------------

--
-- Table structure for table `contractus`
--

CREATE TABLE `contractus` (
  `id` int(11) NOT NULL,
  `FirstName` char(30) DEFAULT NULL,
  `LastName` char(30) DEFAULT NULL,
  `Email` char(100) DEFAULT NULL,
  `Mobile` int(20) DEFAULT NULL,
  `Message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contractus`
--

INSERT INTO `contractus` (`id`, `FirstName`, `LastName`, `Email`, `Mobile`, `Message`) VALUES
(1, 'Ebrahim', 'Islam', 'ebrahim@gmail.com', 1648438489, 'hello'),
(2, 'niloy', 'hasan', 'nh@gmail.com', 37476327, 'djkfhmvgb'),
(3, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'adfdsf'),
(4, 'niloy', 'hasan', 'nh@gmail.com', 1236547896, 'jifdghshfg'),
(5, 'sawel', 'Mahmud', 'sh@gmail.com', 154566, 'asdnb fyt'),
(6, 'rayhan', 'hawlader', 'rh@gmail.com', 465646882, 'mjhnbgnf'),
(7, 'MD. Ebrahim Islam', 'Shuvo', 'ebrahimislam2003@gmail.com', 1623794244, 'sad'),
(8, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'dsfsdf'),
(9, 'MD.Ebrahima', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'sdasd'),
(10, 'MD.Ebrahima', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'sdasd'),
(11, 'MD. Ebrahim Islam', 'Shuvo', 'ebrahimislam2003@gmail.com', 1623794244, 'asdasd'),
(13, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'tyu'),
(14, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'tyusrt'),
(15, 'MD. Ebrahim Islam', 'Shuvo', 'ebrahimislam2003@gmail.com', 1623794244, 's'),
(16, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'assd'),
(17, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'hfdg'),
(18, 'MD.Ebrahim', 'Shuvo', 'ebrahimislam2003@gmail.com', 2147483647, 'hfdg');

-- --------------------------------------------------------

--
-- Table structure for table `operatorlist`
--

CREATE TABLE `operatorlist` (
  `serial` int(11) NOT NULL,
  `operator_name` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operatorlist`
--

INSERT INTO `operatorlist` (`serial`, `operator_name`) VALUES
(1, 'Ena Transport (Pvt) Ltd'),
(10, 'S.R Travels (Pvt) Ltd'),
(11, 'Hanif Enterprise'),
(12, 'Nabil Paribahan'),
(13, 'Euro Coach'),
(14, 'Times Travels'),
(15, 'Heritage Travels'),
(16, 'Soudia Coach Service'),
(17, 'SHOHAGH PARIBAHAN'),
(18, 'Saintmartin Hyundai (Robi Express)'),
(19, 'M R Paribahan'),
(20, 'Shanto Travels'),
(21, 'Tuba Line'),
(22, 'LABIBA Classic Ltd'),
(23, 'Seven Star Deluxe Paribahan'),
(24, '	 Tungipara Express'),
(25, 'Dola Paribahan Ltd'),
(26, 'Emad Paribahan(Pvt.)Ltd'),
(27, 'Emad Paribahan(Pvt.)Ltd.'),
(28, 'Ena paribahan'),
(29, 'Royal Express'),
(30, 'Rimi Travels');

-- --------------------------------------------------------

--
-- Table structure for table `route`
--

CREATE TABLE `route` (
  `From` text NOT NULL,
  `To` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `route`
--

INSERT INTO `route` (`From`, `To`) VALUES
('Dhaka', 'Dinajpur'),
('Dhaka', 'Khulna'),
('Dhaka', 'Barishal'),
('Dhaka', 'Sylhet'),
('Dhaka', 'Coxs bazar');

-- --------------------------------------------------------

--
-- Table structure for table `selected`
--

CREATE TABLE `selected` (
  `seat` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selected`
--

INSERT INTO `selected` (`seat`) VALUES
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3'),
('A3');

-- --------------------------------------------------------

--
-- Table structure for table `selectseat`
--

CREATE TABLE `selectseat` (
  `seat` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `selectseat`
--

INSERT INTO `selectseat` (`seat`) VALUES
('A1');

-- --------------------------------------------------------

--
-- Table structure for table `sellticket`
--

CREATE TABLE `sellticket` (
  `busid` text DEFAULT NULL,
  `busname` text DEFAULT NULL,
  `cus_email` text DEFAULT NULL,
  `journey_date` date DEFAULT NULL,
  `seat` char(2) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sellticket`
--

INSERT INTO `sellticket` (`busid`, `busname`, `cus_email`, `journey_date`, `seat`, `id`) VALUES
('Dhaka-12-0001', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'A1', 1),
('Dhaka-12-0002', 'Hanif Enterprise', 'c@gmail.com', '2024-04-29', 'A2', 2),
('Dhaka-12-0025', 'LABIBA Classic Ltd', 'c@gmail.com', '2024-04-30', 'C3', 3),
('Dhaka-12-0025', 'LABIBA Classic Ltd', 'c@gmail.com', '2024-04-30', 'B3', 4),
('Dhaka-12-0025', 'LABIBA Classic Ltd', 'c@gmail.com', '2024-04-30', 'B3', 5),
('Dhaka-12-0025', 'LABIBA Classic Ltd', 'c@gmail.com', '2024-04-30', 'E3', 6),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-05-07', 'C3', 7),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'B3', 8),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'A4', 9),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'A3', 10),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'B4', 11),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'A1', 12),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'B2', 13),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'D3', 14),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'E2', 15),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'C1', 16),
('Dhaka-12-0005', 'S.R Travels (Pvt) Ltd', 'c@gmail.com', '2024-04-24', 'C3', 17),
('Dhaka-12-0022', 'LABIBA Classic Ltd', 'ebrahimislam2003@gmail.com', '2024-04-24', 'A3', 18),
('Dhaka-12-0022', 'LABIBA Classic Ltd', 'ebrahimislam2003@gmail.com', '2024-04-24', 'B3', 19),
('Dhaka-12-0002', 'Hanif Enterprise', 'rafi@gmail.com', '2024-04-28', 'A3', 20),
('Dhaka-12-0002', 'Hanif Enterprise', 'rafi@gmail.com', '2024-04-28', 'A3', 21),
('Dhaka-12-0002', 'Hanif Enterprise', 'rafi@gmail.com', '2024-04-28', 'A4', 22),
('Dhaka-12-0002', 'Hanif Enterprise', 'rafi@gmail.com', '2024-04-26', 'A3', 23);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_name` text DEFAULT NULL,
  `user_email` char(90) NOT NULL,
  `user_password` text DEFAULT NULL,
  `user_type` char(30) DEFAULT NULL,
  `user_role` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_name`, `user_email`, `user_password`, `user_type`, `user_role`) VALUES
('customer', 'c@gmail.com', '234', 'customer', 'customer'),
('Mr', 'm@gmail.com', '123', 'operator', 'Ena Transport (Pvt) Ltd'),
('rafi', 'rafi@gmail.com', '123', 'admin', 'admin'),
('shuvo', 's@gmail.com', '123', 'customer', 'customer'),
('z', 'z@gmail.com', '123', 'operator', 'S.R Travels (Pvt) Ltd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buslist`
--
ALTER TABLE `buslist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contractus`
--
ALTER TABLE `contractus`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `operatorlist`
--
ALTER TABLE `operatorlist`
  ADD PRIMARY KEY (`operator_name`),
  ADD UNIQUE KEY `serial` (`serial`);

--
-- Indexes for table `sellticket`
--
ALTER TABLE `sellticket`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contractus`
--
ALTER TABLE `contractus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `operatorlist`
--
ALTER TABLE `operatorlist`
  MODIFY `serial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `sellticket`
--
ALTER TABLE `sellticket`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
