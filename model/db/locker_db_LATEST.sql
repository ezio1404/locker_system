-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2018 at 09:23 PM
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
(1, 'EJ', 'POTOT', 'ej', 'potot'),
(2, 'Admin', 'Admin', 'admin', '1234');

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
(1, 'BSIT ', 'Bachelor of Science in Information Technology', '5th floor'),
(2, 'BSOA', 'Bachelor of Science in Office Administration', '3rd floor'),
(3, 'BSHRM', 'Bachelor of Science in Hotel Restaurant Management', '6th floor'),
(4, 'BSED', 'Bachelor of Science in Education', '2nd floor'),
(5, 'BSBA', 'Bachelor of Science in Business Accountancy', '2nd floor'),
(6, 'BSCRIM', 'Bachelor of Science in Criminology', '3rd floor'),
(7, 'BSEE', 'Bachelor of Science in Electric Engineering', '3rd floor'),
(8, 'ACT', 'Associate in Computer Technology', '5th floor'),
(9, 'BSCS', 'Bachelor of Science in Computer Science', '2nd floor'),
(10, 'BSCE', 'Bachelor of Science in Computer Engineering', 'Mezzanine');

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
  `form_status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_forms`
--

INSERT INTO `tbl_forms` (`form_id`, `stud_id`, `locker_num`, `form_type`, `date_submitted`, `form_status`) VALUES
(1, 15387468, 1, 'Reservation', '2018-03-11', 'Pending'),
(2, 151177308, 2, 'Occupancy', '2018-03-07', 'Approved'),
(8, 15387467, 7, 'Occupancy', '2018-03-07', 'Approved');

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
(1, 1, 'Occupied'),
(2, 1, 'Vacant'),
(3, 1, 'Vacant'),
(4, 1, 'Vacant'),
(5, 1, 'Vacant'),
(6, 1, 'Vacant'),
(7, 1, 'Vacant'),
(8, 1, 'Vacant'),
(9, 1, 'Vacant'),
(10, 1, 'Vacant'),
(11, 1, 'Vacant'),
(12, 1, 'Vacant'),
(13, 1, 'Vacant'),
(14, 1, 'Vacant'),
(15, 1, 'Vacant'),
(16, 1, 'Vacant'),
(17, 1, 'Vacant'),
(18, 1, 'Vacant'),
(19, 1, 'Vacant'),
(20, 1, 'Vacant'),
(21, 1, 'Vacant'),
(22, 1, 'Vacant'),
(23, 1, 'Vacant'),
(24, 1, 'Vacant'),
(25, 1, 'Vacant'),
(26, 1, 'Vacant'),
(27, 1, 'Vacant'),
(28, 1, 'Vacant'),
(29, 1, 'Vacant'),
(30, 1, 'Vacant'),
(31, 2, 'Vacant'),
(32, 2, 'Vacant'),
(33, 2, 'Vacant'),
(34, 2, 'Vacant'),
(35, 2, 'Vacant'),
(36, 2, 'Vacant'),
(37, 2, 'Vacant'),
(38, 2, 'Vacant'),
(39, 2, 'Vacant'),
(40, 2, 'Vacant'),
(41, 2, 'Vacant'),
(42, 2, 'Vacant'),
(43, 2, 'Vacant'),
(44, 2, 'Vacant'),
(45, 2, 'Vacant'),
(46, 2, 'Vacant'),
(47, 2, 'Vacant'),
(48, 2, 'Vacant'),
(49, 2, 'Vacant'),
(50, 2, 'Vacant'),
(51, 2, 'Vacant'),
(52, 2, 'Vacant'),
(53, 2, 'Vacant'),
(54, 2, 'Vacant'),
(55, 2, 'Vacant'),
(56, 2, 'Vacant'),
(57, 2, 'Vacant'),
(58, 2, 'Vacant'),
(59, 2, 'Vacant'),
(60, 2, 'Vacant'),
(61, 5, 'Vacant'),
(62, 5, 'Vacant'),
(63, 5, 'Vacant'),
(64, 5, 'Vacant'),
(65, 5, 'Vacant'),
(66, 5, 'Vacant'),
(67, 5, 'Vacant'),
(68, 5, 'Vacant'),
(69, 5, 'Vacant'),
(70, 5, 'Vacant'),
(71, 5, 'Vacant'),
(72, 5, 'Vacant'),
(73, 5, 'Vacant'),
(74, 5, 'Vacant'),
(75, 5, 'Vacant'),
(76, 5, 'Vacant'),
(77, 5, 'Vacant'),
(78, 5, 'Vacant'),
(79, 5, 'Vacant'),
(80, 5, 'Vacant'),
(81, 5, 'Vacant'),
(82, 5, 'Vacant'),
(83, 5, 'Vacant'),
(84, 5, 'Vacant'),
(85, 5, 'Vacant'),
(86, 5, 'Vacant'),
(87, 5, 'Vacant'),
(88, 5, 'Vacant'),
(89, 5, 'Vacant'),
(90, 5, 'Vacant'),
(91, 8, 'Vacant'),
(92, 8, 'Vacant'),
(93, 8, 'Vacant'),
(94, 8, 'Vacant'),
(95, 8, 'Vacant'),
(96, 8, 'Vacant'),
(97, 8, 'Vacant'),
(98, 8, 'Vacant'),
(99, 8, 'Vacant'),
(100, 8, 'Vacant'),
(101, 8, 'Vacant'),
(102, 8, 'Vacant'),
(103, 8, 'Vacant'),
(104, 8, 'Vacant'),
(105, 8, 'Vacant'),
(106, 8, 'Vacant'),
(107, 8, 'Vacant'),
(108, 8, 'Vacant'),
(109, 8, 'Vacant'),
(110, 8, 'Vacant'),
(111, 8, 'Vacant'),
(112, 8, 'Vacant'),
(113, 8, 'Vacant'),
(114, 8, 'Vacant'),
(115, 8, 'Vacant'),
(116, 8, 'Vacant'),
(117, 8, 'Vacant'),
(118, 8, 'Vacant'),
(119, 8, 'Vacant'),
(120, 8, 'Vacant'),
(121, 1, 'Vacant'),
(122, 1, 'Vacant'),
(123, 1, 'Vacant'),
(124, 1, 'Vacant'),
(125, 1, 'Vacant'),
(126, 1, 'Vacant'),
(127, 1, 'Vacant'),
(128, 1, 'Vacant'),
(129, 1, 'Vacant'),
(130, 1, 'Vacant'),
(131, 1, 'Vacant'),
(132, 1, 'Vacant'),
(133, 1, 'Vacant'),
(134, 1, 'Vacant'),
(135, 1, 'Vacant'),
(136, 1, 'Vacant'),
(137, 1, 'Vacant'),
(138, 1, 'Vacant'),
(139, 1, 'Vacant'),
(140, 1, 'Vacant'),
(141, 1, 'Vacant'),
(142, 1, 'Vacant'),
(143, 1, 'Vacant'),
(144, 1, 'Vacant'),
(145, 1, 'Vacant'),
(146, 1, 'Vacant'),
(147, 1, 'Vacant'),
(148, 1, 'Vacant'),
(149, 1, 'Vacant'),
(150, 1, 'Vacant'),
(151, 2, 'Vacant'),
(152, 2, 'Vacant'),
(153, 2, 'Vacant'),
(154, 2, 'Vacant'),
(155, 2, 'Vacant'),
(156, 2, 'Vacant'),
(157, 2, 'Vacant'),
(158, 2, 'Vacant'),
(159, 2, 'Vacant'),
(160, 2, 'Vacant'),
(161, 2, 'Vacant'),
(162, 2, 'Vacant'),
(163, 2, 'Vacant'),
(164, 2, 'Vacant'),
(165, 2, 'Vacant'),
(166, 2, 'Vacant'),
(167, 2, 'Vacant'),
(168, 2, 'Vacant'),
(169, 2, 'Vacant'),
(170, 2, 'Vacant'),
(171, 2, 'Vacant'),
(172, 2, 'Vacant'),
(173, 2, 'Vacant'),
(174, 2, 'Vacant'),
(175, 2, 'Vacant'),
(176, 2, 'Vacant'),
(177, 2, 'Vacant'),
(178, 2, 'Vacant'),
(179, 2, 'Vacant'),
(180, 2, 'Vacant'),
(181, 3, 'Vacant'),
(182, 3, 'Vacant'),
(183, 3, 'Vacant'),
(184, 3, 'Vacant'),
(185, 3, 'Vacant'),
(186, 3, 'Vacant'),
(187, 3, 'Vacant'),
(188, 3, 'Vacant'),
(189, 3, 'Vacant'),
(190, 3, 'Vacant'),
(191, 3, 'Vacant'),
(192, 3, 'Vacant'),
(193, 3, 'Vacant'),
(194, 3, 'Vacant'),
(195, 3, 'Vacant'),
(196, 3, 'Vacant'),
(197, 3, 'Vacant'),
(198, 3, 'Vacant'),
(199, 3, 'Vacant'),
(200, 3, 'Vacant'),
(201, 3, 'Vacant'),
(202, 3, 'Vacant'),
(203, 3, 'Vacant'),
(204, 3, 'Vacant'),
(205, 3, 'Vacant'),
(206, 3, 'Vacant'),
(207, 3, 'Vacant'),
(208, 3, 'Vacant'),
(209, 3, 'Vacant'),
(210, 3, 'Vacant'),
(211, 4, 'Vacant'),
(212, 4, 'Vacant'),
(213, 4, 'Vacant'),
(214, 4, 'Vacant'),
(215, 4, 'Vacant'),
(216, 4, 'Vacant'),
(217, 4, 'Vacant'),
(218, 4, 'Vacant'),
(219, 4, 'Vacant'),
(220, 4, 'Vacant'),
(221, 4, 'Vacant'),
(222, 4, 'Vacant'),
(223, 4, 'Vacant'),
(224, 4, 'Vacant'),
(225, 4, 'Vacant'),
(226, 4, 'Vacant'),
(227, 4, 'Vacant'),
(228, 4, 'Vacant'),
(229, 4, 'Vacant'),
(230, 4, 'Vacant'),
(231, 4, 'Vacant'),
(232, 4, 'Vacant'),
(233, 4, 'Vacant'),
(234, 4, 'Vacant'),
(235, 4, 'Vacant'),
(236, 4, 'Vacant'),
(237, 4, 'Vacant'),
(238, 4, 'Vacant'),
(239, 4, 'Vacant'),
(240, 4, 'Vacant'),
(241, 5, 'Vacant'),
(242, 5, 'Vacant'),
(243, 5, 'Vacant'),
(244, 5, 'Vacant'),
(245, 5, 'Vacant'),
(246, 5, 'Vacant'),
(247, 5, 'Vacant'),
(248, 5, 'Vacant'),
(249, 5, 'Vacant'),
(250, 5, 'Vacant'),
(251, 5, 'Vacant'),
(252, 5, 'Vacant'),
(253, 5, 'Vacant'),
(254, 5, 'Vacant'),
(255, 5, 'Vacant'),
(256, 5, 'Vacant'),
(257, 5, 'Vacant'),
(258, 5, 'Vacant'),
(259, 5, 'Vacant'),
(260, 5, 'Vacant'),
(261, 5, 'Vacant'),
(262, 5, 'Vacant'),
(263, 5, 'Vacant'),
(264, 5, 'Vacant'),
(265, 5, 'Vacant'),
(266, 5, 'Vacant'),
(267, 5, 'Vacant'),
(268, 5, 'Vacant'),
(269, 5, 'Vacant'),
(270, 5, 'Vacant'),
(271, 6, 'Vacant'),
(272, 6, 'Vacant'),
(273, 6, 'Vacant'),
(274, 6, 'Vacant'),
(275, 6, 'Vacant'),
(276, 6, 'Vacant'),
(277, 6, 'Vacant'),
(278, 6, 'Vacant'),
(279, 6, 'Vacant'),
(280, 6, 'Vacant'),
(281, 6, 'Vacant'),
(282, 6, 'Vacant'),
(283, 6, 'Vacant'),
(284, 6, 'Vacant'),
(285, 6, 'Vacant'),
(286, 6, 'Vacant'),
(287, 6, 'Vacant'),
(288, 6, 'Vacant'),
(289, 6, 'Vacant'),
(290, 6, 'Vacant'),
(291, 6, 'Vacant'),
(292, 6, 'Vacant'),
(293, 6, 'Vacant'),
(294, 6, 'Vacant'),
(295, 6, 'Vacant'),
(296, 6, 'Vacant'),
(297, 6, 'Vacant'),
(298, 6, 'Vacant'),
(299, 6, 'Vacant'),
(300, 6, 'Vacant'),
(301, 7, 'Vacant'),
(302, 7, 'Vacant'),
(303, 7, 'Vacant'),
(304, 7, 'Vacant'),
(305, 7, 'Vacant'),
(306, 7, 'Vacant'),
(307, 7, 'Vacant'),
(308, 7, 'Vacant'),
(309, 7, 'Vacant'),
(310, 7, 'Vacant'),
(311, 7, 'Vacant'),
(312, 7, 'Vacant'),
(313, 7, 'Vacant'),
(314, 7, 'Vacant'),
(315, 7, 'Vacant'),
(316, 7, 'Vacant'),
(317, 7, 'Vacant'),
(318, 7, 'Vacant'),
(319, 7, 'Vacant'),
(320, 7, 'Vacant'),
(321, 7, 'Vacant'),
(322, 7, 'Vacant'),
(323, 7, 'Vacant'),
(324, 7, 'Vacant'),
(325, 7, 'Vacant'),
(326, 7, 'Vacant'),
(327, 7, 'Vacant'),
(328, 7, 'Vacant'),
(329, 7, 'Vacant'),
(330, 7, 'Vacant'),
(331, 10, 'Vacant'),
(332, 10, 'Vacant'),
(333, 10, 'Vacant'),
(334, 10, 'Vacant'),
(335, 10, 'Vacant'),
(336, 10, 'Vacant'),
(337, 10, 'Vacant'),
(338, 10, 'Vacant'),
(339, 10, 'Vacant'),
(340, 10, 'Vacant'),
(341, 10, 'Vacant'),
(342, 10, 'Vacant'),
(343, 10, 'Vacant'),
(344, 10, 'Vacant'),
(345, 10, 'Vacant'),
(346, 10, 'Vacant'),
(347, 10, 'Vacant'),
(348, 10, 'Vacant'),
(349, 10, 'Vacant'),
(350, 10, 'Vacant'),
(351, 10, 'Vacant'),
(352, 10, 'Vacant'),
(353, 10, 'Vacant'),
(354, 10, 'Vacant'),
(355, 10, 'Vacant'),
(356, 10, 'Vacant'),
(357, 10, 'Vacant'),
(358, 10, 'Vacant'),
(359, 10, 'Vacant'),
(360, 10, 'Vacant');

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
-- Dumping data for table `tbl_student`
--

INSERT INTO `tbl_student` (`stud_id`, `stud_fname`, `stud_lname`, `dept_id`, `stud_yearLevel`, `email`, `date_applied`) VALUES
(15224145, 'Anna Marie', 'Jumao-as', 2, 3, 'sancahii@gmail.com', '2018-03-04'),
(15387411, 'Ezio', 'Auditorre', 1, 2, 'ezio@gmail.com', '2018-03-04'),
(15387467, 'Ej Anton', 'Potot', 1, 1, 'zuming1404@gamil.com', '2018-03-04'),
(15387468, 'Alyn', 'Magdadaro', 1, 3, 'Qj@gmail.com', '2018-03-04'),
(151177308, 'Gohand', 'Slavius', 2, 2, 'asd@gmail.com', '2018-03-04'),
(153874679, 'Julie Pearl', 'Polleros', 1, 1, 'asd@gmail.com', '2018-03-04');

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
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_dept`
--
ALTER TABLE `tbl_dept`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_forms`
--
ALTER TABLE `tbl_forms`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_locker`
--
ALTER TABLE `tbl_locker`
  MODIFY `locker_num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

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
