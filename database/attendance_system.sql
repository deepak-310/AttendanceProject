-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3305
-- Generation Time: Sep 23, 2022 at 04:46 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `add_no` varchar(50) DEFAULT NULL,
  `att_date` datetime DEFAULT current_timestamp(),
  `present_absent` int(11) DEFAULT NULL,
  `subject_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`add_no`, `att_date`, `present_absent`, `subject_name`) VALUES
('2020PC1365', '2022-09-05 10:30:46', 0, 'data science'),
('2020PC1366', '2022-09-05 10:30:46', 1, 'data science'),
('2020PC1365', '2022-09-05 10:31:26', 1, 'c++'),
('2020PC1366', '2022-09-05 10:31:26', 1, 'c++'),
('2020PC1365', '2022-09-13 10:46:32', 0, 'data science'),
('2020PC1366', '2022-09-13 10:46:32', 1, 'data science'),
('2020PC1365', '2022-09-23 19:22:52', 1, 'data science'),
('2020PC1366', '2022-09-23 19:22:52', 1, 'data science'),
('2020PC1365', '2022-09-23 19:29:44', 1, 'c++'),
('2020PC1366', '2022-09-23 19:29:44', 0, 'c++');

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `brinch_id` int(11) DEFAULT NULL,
  `branch_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`brinch_id`, `branch_name`) VALUES
(104, 'bachelor of commerce'),
(103, 'biotechnology'),
(101, 'computer sciene'),
(102, 'information technology');

-- --------------------------------------------------------

--
-- Table structure for table `divison`
--

CREATE TABLE `divison` (
  `div_id` int(11) DEFAULT NULL,
  `div_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divison`
--

INSERT INTO `divison` (`div_id`, `div_name`) VALUES
(11, 'A'),
(12, 'B'),
(13, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `sem_id` int(11) DEFAULT NULL,
  `semester_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`sem_id`, `semester_name`) VALUES
(21, '1 sem'),
(22, '2 sem'),
(23, '3 sem'),
(24, '4 sem'),
(25, '5 sem'),
(26, '6 sem');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `addmission_no` varchar(50) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `branch_name` varchar(50) DEFAULT NULL,
  `year` varchar(50) DEFAULT NULL,
  `divison` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `semester` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`addmission_no`, `name`, `roll_no`, `branch_name`, `year`, `divison`, `email`, `semester`) VALUES
('2020PC1323', 'ADITI KHILARE', 8223, 'information technology', '3 year', 'A', 'aditibcom@gmail.com', '5 sem'),
('2020PC1365', 'ARPIT SANTOSH DUBEY', 8221, 'computer sciene', '3 year', 'A', 'darpitbscs@gmail.com', '5 sem'),
('2020PC1366', 'Yash Kakade', 8222, 'computer sciene', '3 year', 'A', 'darpitbscs@gmail.com', '5 sem'),
('2020PC6521', 'FIZA MEHTA', 6521, 'computer sciene', '2 year', 'B', 'fizabcom@gmail.com', '3 sem');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) DEFAULT NULL,
  `sub_name` varchar(50) NOT NULL,
  `sub_code` varchar(50) DEFAULT NULL,
  `branch_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `sub_name`, `sub_code`, `branch_name`) VALUES
(203, 'Accounting', 'a1', 'bachelor of commerce'),
(207, 'Book keeping', 'b2', 'bachelor of commerce'),
(201, 'c++', 'c2', 'computer sciene'),
(206, 'data science', 'd1', 'computer sciene'),
(202, 'java', 'j1', 'Information technology'),
(204, 'organic chemistry', 'o3', 'biotechnology'),
(205, 'Rotational motion', 'r4', 'biotechnology');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `user_type` varchar(50) DEFAULT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_type`, `email_id`, `password`) VALUES
(1, 'Admin1', 'admin', 'admin@gmail.com', '1234'),
(2, 'Teacher1', 'teacher', 'teacher@gmail.com', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `year`
--

CREATE TABLE `year` (
  `year_id` int(11) DEFAULT NULL,
  `year_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `year`
--

INSERT INTO `year` (`year_id`, `year_name`) VALUES
(1, '1 year'),
(2, '2 year'),
(3, '3 year');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `subject_name` (`subject_name`),
  ADD KEY `add_no` (`add_no`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_name`);

--
-- Indexes for table `divison`
--
ALTER TABLE `divison`
  ADD PRIMARY KEY (`div_name`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`semester_name`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`addmission_no`),
  ADD KEY `branch_name` (`branch_name`),
  ADD KEY `year` (`year`),
  ADD KEY `divison` (`divison`),
  ADD KEY `semester` (`semester`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sub_name`),
  ADD KEY `branch_name` (`branch_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email_id`);

--
-- Indexes for table `year`
--
ALTER TABLE `year`
  ADD PRIMARY KEY (`year_name`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`subject_name`) REFERENCES `subject` (`sub_name`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`add_no`) REFERENCES `student` (`addmission_no`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`year`) REFERENCES `year` (`year_name`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`divison`) REFERENCES `divison` (`div_name`),
  ADD CONSTRAINT `student_ibfk_4` FOREIGN KEY (`semester`) REFERENCES `semester` (`semester_name`);

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`branch_name`) REFERENCES `branch` (`branch_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
