-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2018 at 05:40 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facilitator`
--

CREATE TABLE `tbl_facilitator` (
  `faci_id` int(11) NOT NULL,
  `faci_lname` varchar(255) NOT NULL,
  `faci_fname` varchar(255) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `tbl_locker`
--

CREATE TABLE `tbl_locker` (
  `locker_num` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `locker_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  `email` varchar(255) NOT NULL,
  `date_applied` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `tbl_facilitator`
--
ALTER TABLE `tbl_facilitator`
  ADD PRIMARY KEY (`faci_id`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  ADD PRIMARY KEY (`form_id`),
  ADD KEY `locker_num` (`locker_num`),
  ADD KEY `stud_id` (`stud_id`);

--
-- Indexes for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  ADD PRIMARY KEY (`locker_num`),
  ADD KEY `dept_id` (`dept_id`);

--
-- Indexes for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`stud_id`),
  ADD KEY `dept_id` (`dept_id`);

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
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  MODIFY `locker_num` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_facilitator`
--
ALTER TABLE `tbl_facilitator`
  ADD CONSTRAINT `tbl_facilitator_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_dept` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  ADD CONSTRAINT `tbl_forms_ibfk_1` FOREIGN KEY (`locker_num`) REFERENCES `tbl_locker` (`locker_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_forms_ibfk_2` FOREIGN KEY (`stud_id`) REFERENCES `tbl_student` (`stud_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  ADD CONSTRAINT `tbl_locker_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_dept` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD CONSTRAINT `tbl_student_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `tbl_dept` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
