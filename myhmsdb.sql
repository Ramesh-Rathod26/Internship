-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2022 at 07:55 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myhmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admintb`
--

CREATE TABLE `admintb` (
  `username` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admintb`
--

INSERT INTO `admintb` (`username`, `password`) VALUES
('admin', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `ambulance`
--

CREATE TABLE `ambulance` (
  `name` varchar(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(10) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ambulance`
--

INSERT INTO `ambulance` (`name`, `email`, `phone`, `address`) VALUES
('preetraj', 'xy@gmail.com', 2147483647, 'bangalore'),
('kk', 'bb@gmail.com', 2147483647, 'bangalore'),
('kk', 'xy@gmail.com', 2147483647, 'my'),
('bb', 'bb@gmail.com', 2147483647, 'bangalore'),
('raj', 'bb@gmail.com', 2147483647, 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `appointmenttb`
--

CREATE TABLE `appointmenttb` (
  `pid` int(11) NOT NULL,
  `ID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `doctor` varchar(30) NOT NULL,
  `docFees` int(5) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `userStatus` int(5) NOT NULL,
  `doctorStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointmenttb`
--

INSERT INTO `appointmenttb` (`pid`, `ID`, `fname`, `lname`, `gender`, `email`, `contact`, `doctor`, `docFees`, `appdate`, `apptime`, `userStatus`, `doctorStatus`) VALUES
(4, 1, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-14', '10:00:00', 1, 0),
(11, 4, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', '9768946252', 'ashok', 500, '2020-02-29', '20:00:00', 1, 0),
(4, 5, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-02-28', '12:00:00', 1, 1),
(4, 6, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '2020-02-26', '15:00:00', 0, 1),
(2, 8, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', '8976897689', 'Ganesh', 550, '2020-03-21', '10:00:00', 1, 1),
(5, 9, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', '9070897653', 'Ganesh', 550, '2020-03-19', '20:00:00', 1, 0),
(4, 10, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Ganesh', 550, '0000-00-00', '14:00:00', 1, 0),
(4, 11, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', '8838489464', 'Dinesh', 700, '2020-03-27', '15:00:00', 1, 1),
(9, 12, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Kumar', 800, '2020-03-26', '12:00:00', 1, 1),
(9, 13, 'William', 'Blake', 'Male', 'william@gmail.com', '8683619153', 'Tiwary', 450, '2020-03-26', '14:00:00', 1, 1),
(12, 14, 'preet', 'raj', 'Male', 'xy@gmail.com', '4335656589', 'ashok', 500, '2022-03-01', '10:00:00', 1, 0),
(23, 15, 'kriti', 'san', 'Female', 'kriti@gmail.com', '2147483647', 'Abbis', 1500, '2022-02-12', '10:00:00', 1, 0),
(25, 16, 'preetham', 'G R', 'Male', 'pree@gmail.com', '2147483647', 'raju', 450, '2022-02-03', '12:00:00', 1, 0),
(25, 17, 'preetham', 'G R', 'Male', 'pree@gmail.com', '2147483647', 'raju', 450, '2022-01-28', '16:00:00', 1, 1),
(25, 18, 'preetham', 'G R', 'Male', 'pree@gmail.com', '2147483647', 'ashok', 500, '2022-01-31', '10:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `name` varchar(30) NOT NULL,
  `email` text NOT NULL,
  `contact` varchar(10) NOT NULL,
  `message` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`name`, `email`, `contact`, `message`) VALUES
('Anu', 'anu@gmail.com', '7896677554', 'Hey Admin'),
(' Viki', 'viki@gmail.com', '9899778865', 'Good Job, Pal'),
('Ananya', 'ananya@gmail.com', '9997888879', 'How can I reach you?'),
('Aakash', 'aakash@gmail.com', '8788979967', 'Love your site'),
('Mani', 'mani@gmail.com', '8977768978', 'Want some coffee?'),
('Karthick', 'karthi@gmail.com', '9898989898', 'Good service'),
('Abbis', 'abbis@gmail.com', '8979776868', 'Love your service'),
('Asiq', 'asiq@gmail.com', '9087897564', 'Love your service. Thank you!'),
('Jane', 'jane@gmail.com', '7869869757', 'I love your service!'),
('preetraj', 'xy@gmail.com', '3454566756', 'hey bro'),
('preetraj', 'xy@gmail.com', '3454566756', 'hiii jiii'),
('preetraj', 'bb@gmail.com', '3454566756', 'ffffffffffffffffffffff');

-- --------------------------------------------------------

--
-- Table structure for table `doctb`
--

CREATE TABLE `doctb` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(20) NOT NULL,
  `age` int(3) NOT NULL,
  `phone` int(10) NOT NULL,
  `spec` varchar(50) NOT NULL,
  `docFees` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctb`
--

INSERT INTO `doctb` (`id`, `username`, `password`, `email`, `address`, `age`, `phone`, `spec`, `docFees`) VALUES
(1, 'ashok', 'ashok123', 'ashok@gmail.com', '', 0, 0, 'General', 500),
(3, 'Dinesh', 'dinesh123', 'dinesh@gmail.com', '', 0, 0, 'General', 700),
(4, 'Ganesh', 'ganesh123', 'ganesh@gmail.com', '', 0, 0, 'Pediatrician', 550),
(5, 'Kumar', 'kumar123', 'kumar@gmail.com', '', 0, 0, 'Pediatrician', 800),
(7, 'Abbis', 'abbis123', 'abbis@gmail.com', '', 0, 0, 'Neurologist', 1500),
(8, 'Tiwary', 'tiwary123', 'tiwary@gmail.com', '', 0, 0, 'Pediatrician', 450),
(9, 'rahul', '123456', 'rahul@gmail.com', 'bangalore', 0, 0, 'Pediatrician', 1000),
(10, 'rahul', '123456', 'rahul@gmail.com', 'bangalore', 0, 0, 'Pediatrician', 1000),
(11, 'rahul', '123456', 'rahul@gmail.com', 'bangalore', 0, 0, 'Pediatrician', 1000),
(12, 'kohli', '123456', 'admink@gmail.com', 'bangalore', 0, 0, 'Neurologist', 550),
(22, 'virat', '123456', 'v@gmail.com', 'bangalore', 20, 11111111, 'General', 600),
(23, 'raju', '123456', 'raju@gmail.com', 'bangalore', 20, 11111111, 'Cardiologist', 450);

-- --------------------------------------------------------

--
-- Table structure for table `insurance`
--

CREATE TABLE `insurance` (
  `pid` int(10) NOT NULL,
  `policy_no` int(20) NOT NULL,
  `ins_type` varchar(20) NOT NULL,
  `company` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `insurance`
--

INSERT INTO `insurance` (`pid`, `policy_no`, `ins_type`, `company`) VALUES
(3, 5555566, 'Individual', 'Floating'),
(4, 11111111, 'Individual', 'Floating'),
(3, 5555566, 'Individual', 'Apollo Munich Health Insurance'),
(23, 555556622, 'Individual', 'Star Health & Allied Insurance');

-- --------------------------------------------------------

--
-- Table structure for table `nurse`
--

CREATE TABLE `nurse` (
  `nid` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `shift` varchar(10) NOT NULL,
  `salary` float NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nurse`
--

INSERT INTO `nurse` (`nid`, `name`, `email`, `shift`, `salary`, `age`) VALUES
(1, 'nur', 'xy@gmail.com', 'Day', 2333, 20),
(2, 'hem', 'xy@gmail.com', 'Day', 2333, 20);

-- --------------------------------------------------------

--
-- Table structure for table `patreg`
--

CREATE TABLE `patreg` (
  `pid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` int(10) NOT NULL,
  `password` varchar(30) NOT NULL,
  `cpassword` varchar(30) NOT NULL,
  `blood` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patreg`
--

INSERT INTO `patreg` (`pid`, `fname`, `lname`, `gender`, `email`, `contact`, `password`, `cpassword`, `blood`, `address`) VALUES
(1, 'Ram', 'Kumar', 'Male', 'ram@gmail.com', 2147483647, 'ram123', 'ram123', '', ''),
(2, 'Alia', 'Bhatt', 'Female', 'alia@gmail.com', 2147483647, 'alia123', 'alia123', '', ''),
(3, 'Shahrukh', 'khan', 'Male', 'shahrukh@gmail.com', 2147483647, 'shahrukh123', 'shahrukh123', '', ''),
(4, 'Kishan', 'Lal', 'Male', 'kishansmart0@gmail.com', 2147483647, 'kishan123', 'kishan123', 'B+ve', 'Mangalore'),
(5, 'Gautam', 'Shankararam', 'Male', 'gautam@gmail.com', 2147483647, 'gautam123', 'gautam123', '', ''),
(7, 'Nancy', 'Deborah', 'Female', 'nancy@gmail.com', 2147483647, 'nancy123', 'nancy123', '', ''),
(8, 'Kenny', 'Sebastian', 'Male', 'kenny@gmail.com', 2147483647, 'kenny123', 'kenny123', '', ''),
(9, 'William', 'Blake', 'Male', 'william@gmail.com', 2147483647, 'william123', 'william123', '', ''),
(10, 'Peter', 'Norvig', 'Male', 'peter@gmail.com', 2147483647, 'peter123', 'peter123', '', ''),
(11, 'Shraddha', 'Kapoor', 'Female', 'shraddha@gmail.com', 2147483647, 'shraddha123', 'shraddha123', '', ''),
(12, 'preet', 'raj', 'Male', 'xy@gmail.com', 2147483647, '123456', '123456', '', ''),
(13, 'prAT', 'raj', 'Male', 'xz@gmail.com', 2147483647, '1234', '1234', '', ''),
(14, 'ra', 'j', 'Male', 'xx@gmail.com', 2147483647, '123456', '123456', '', ''),
(15, 'yash', 'raj', 'Male', 'yash@gmail.com', 1242545454, '123456', '123456', '', ''),
(16, 'ww', 'yy', 'Male', 'wwyy@gmail.com', 1242545454, '123456', '123456', '', ''),
(17, 'ras', 'h', 'Male', 'ra@gmail.com', 1242545454, '123456', '123456', 'A+ve', ''),
(18, 'qq', 'raj', 'Male', 'qq@gmail.com', 2147483647, '123456', '123456', 'A+ve', ''),
(19, 'wd', 'qww', 'Male', 'aa@gmail.com', 2147483647, '123456', '123456', 'A+ve', ''),
(20, 'xc', 'er', 'Male', 'xc@gmail.com', 2147483647, '123456', '123456', 'A+ve', ''),
(21, 'vv', 'we', 'Male', 'vv@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'bangalore'),
(22, 'prateek', 'raj', 'Male', 'pp@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'bangalore'),
(23, 'kriti', 'san', 'Female', 'kriti@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'bangalore'),
(24, 'hemanth', 'kumar', 'Male', 'hm@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'bangalore'),
(25, 'preetham', 'G R', 'Male', 'pree@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'bangalore'),
(26, 'prattek', 'yy', 'Male', 'pra@gmail.com', 1234567891, '123456', '123456', 'A+ve', 'bangalore'),
(27, 'pavan', 'raj', 'Male', 'prar@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'man'),
(28, 'nag', 'esh', 'Male', 'nag@gmail.com', 1234567891, '123456', '123456', 'A+ve', 'man'),
(29, 'rak', 'esh', 'Male', 'nagg@gmail.com', 987654321, '123456', '123456', 'A+ve', 'bangalore'),
(30, 'madev', 'raj', 'Male', 'pp@gmail.com', 2147483647, '123456', '123456', 'A+ve', 'bangalore');

-- --------------------------------------------------------

--
-- Table structure for table `prestb`
--

CREATE TABLE `prestb` (
  `doctor` varchar(50) NOT NULL,
  `pid` int(11) NOT NULL,
  `AppID` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `appdate` date NOT NULL,
  `apptime` time NOT NULL,
  `disease` varchar(250) NOT NULL,
  `allergy` varchar(250) NOT NULL,
  `prescription` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prestb`
--

INSERT INTO `prestb` (`doctor`, `pid`, `AppID`, `fname`, `lname`, `appdate`, `apptime`, `disease`, `allergy`, `prescription`) VALUES
('Dinesh', 4, 11, 'Kishan', 'Lal', '2020-03-27', '15:00:00', 'Cough', 'Nothing', 'Just take a teaspoon of Benadryl every night'),
('Ganesh', 2, 8, 'Alia', 'Bhatt', '2020-03-21', '10:00:00', 'Severe Fever', 'Nothing', 'Take bed rest'),
('Kumar', 9, 12, 'William', 'Blake', '2020-03-26', '12:00:00', 'Sever fever', 'nothing', 'Paracetamol -> 1 every morning and night'),
('Tiwary', 9, 13, 'William', 'Blake', '2020-03-26', '14:00:00', 'Cough', 'Skin dryness', 'Intake fruits with more water content'),
('ashok', 12, 14, 'preet', 'raj', '2022-03-01', '10:00:00', 'cxasdadc', 'wqqef', 'tabletsdqef'),
('ashok', 12, 14, 'preet', 'raj', '2022-03-01', '10:00:00', 'wdwd', 'w', 'w'),
('ashok', 11, 4, 'Shraddha', 'Kapoor', '2020-02-29', '20:00:00', 'sas', 'qsq', 'sqs'),
('raju', 25, 17, 'preetham', 'G R', '2022-01-28', '16:00:00', 'qdq', 'dqqqd', 'ddqqdd'),
('raju', 25, 17, 'preetham', 'G R', '2022-01-28', '16:00:00', 'iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii', 'dqq', 'q'),
('raju', 25, 17, 'preetham', 'G R', '2022-01-28', '16:00:00', 'set4', 'w3y', '5y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doctb`
--
ALTER TABLE `doctb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `insurance`
--
ALTER TABLE `insurance`
  ADD KEY `nid_fk` (`pid`);

--
-- Indexes for table `nurse`
--
ALTER TABLE `nurse`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `patreg`
--
ALTER TABLE `patreg`
  ADD PRIMARY KEY (`pid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmenttb`
--
ALTER TABLE `appointmenttb`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `doctb`
--
ALTER TABLE `doctb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `nurse`
--
ALTER TABLE `nurse`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patreg`
--
ALTER TABLE `patreg`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `insurance`
--
ALTER TABLE `insurance`
  ADD CONSTRAINT `insurance_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `patreg` (`pid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
