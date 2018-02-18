-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2018 at 07:47 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `locker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `firstname`, `lastname`, `username`, `password`) VALUES
(1, 'EJ', 'POTOT', 'ej', 'potot');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dept`
--

CREATE TABLE `tbl_dept` (
  `dept_id` int(11) NOT NULL,
  `dept_code` varchar(6) NOT NULL,
  `dept_description` varchar(255) NOT NULL,
  `office_location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dept`
--

INSERT INTO `tbl_dept` (`dept_id`, `dept_code`, `dept_description`, `office_location`) VALUES
(1, '', 'BSIT', '5th Floor'),
(2, '', 'BSBA', '3rd Floor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_forms`
--

CREATE TABLE `tbl_forms` (
  `form_id` int(11) NOT NULL,
  `stud_id` int(11) NOT NULL,
  `locker_num` int(11) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `date_submitted` date NOT NULL,
  `date_expiration` date NOT NULL,
  `form_status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forms`
--

INSERT INTO `tbl_forms` (`form_id`, `stud_id`, `locker_num`, `form_type`, `date_submitted`, `date_expiration`, `form_status`) VALUES
(1, 5, 1, 'Reserve', '2018-01-31', '2018-02-03', 'Pending'),
(2, 5, 1, 'Reserve', '2018-02-01', '2018-02-04', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locker`
--

CREATE TABLE `tbl_locker` (
  `locker_num` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `locker_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_locker`
--

INSERT INTO `tbl_locker` (`locker_num`, `dept_id`, `locker_status`) VALUES
(1, 0, 'Vacant'),
(2, 0, 'Vacant'),
(3, 0, 'Vacant'),
(4, 0, 'Vacant'),
(5, 0, 'Vacant'),
(6, 0, 'Vacant'),
(7, 0, 'Vacant'),
(8, 0, 'Vacant'),
(9, 0, 'Vacant'),
(10, 0, 'Vacant'),
(11, 0, 'Vacant'),
(12, 0, 'Vacant'),
(13, 0, 'Vacant'),
(14, 0, 'Vacant'),
(15, 0, 'Vacant'),
(16, 0, 'Vacant'),
(17, 0, 'Vacant'),
(18, 0, 'Vacant'),
(19, 0, 'Vacant'),
(20, 0, 'Vacant'),
(21, 0, 'Vacant'),
(22, 0, 'Vacant'),
(23, 0, 'Vacant'),
(24, 0, 'Vacant'),
(25, 0, 'Vacant'),
(26, 0, 'Vacant'),
(27, 0, 'Vacant'),
(28, 0, 'Vacant'),
(29, 0, 'Vacant'),
(30, 0, 'Vacant');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_student`
--

CREATE TABLE `tbl_student` (
  `stud_id` int(11) NOT NULL,
  `stud_fname` varchar(255) NOT NULL,
  `stud_lname` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `stud_yearLevel` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`stud_id`, `stud_fname`, `stud_lname`, `dept_id`, `stud_yearLevel`, `username`, `password`) VALUES
(4, 'EJ', 'Potot', 1, 4, 'pototskie', 'potot'),
(5, 'test', 'test', 1, 3, 'test', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  ADD PRIMARY KEY (`locker_num`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`stud_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  MODIFY `locker_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `stud_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
