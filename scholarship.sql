-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2023 at 01:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scholarship`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `reg_id` varchar(20) NOT NULL,
  `type_issue` text NOT NULL,
  `mat_ter` text NOT NULL,
  `cont_date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `full_name`, `reg_id`, `type_issue`, `mat_ter`, `cont_date`) VALUES
(1, 'demo contact', 'demo reg id', 'scholar issue demo', 'scholar ship issue demo matter', '2023-01-19'),
(2, 'Sona Nano', 'ssp123456', 'scholarship', 'hello', '2023-01-19');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sno` int(11) NOT NULL,
  `scholar_choice` text NOT NULL,
  `stud_name` text NOT NULL,
  `stud_age` int(10) NOT NULL,
  `stud_gender` text NOT NULL,
  `father_name` text NOT NULL,
  `mother_name` text NOT NULL,
  `permanent_addr` text NOT NULL,
  `phone_no` int(12) NOT NULL,
  `email_id` varchar(20) NOT NULL,
  `in_come` int(20) NOT NULL,
  `annual_inc_img` varchar(20) NOT NULL,
  `passport_img` varchar(20) NOT NULL,
  `course_name` text NOT NULL,
  `str_eam` text NOT NULL,
  `clg_name` text NOT NULL,
  `univ_roll` varchar(20) NOT NULL,
  `sem_1_img` varchar(20) NOT NULL,
  `sem_2_img` varchar(20) NOT NULL,
  `b_Accountno` int(20) NOT NULL,
  `b_branch` varchar(20) NOT NULL,
  `b_ifsc` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sno`, `scholar_choice`, `stud_name`, `stud_age`, `stud_gender`, `father_name`, `mother_name`, `permanent_addr`, `phone_no`, `email_id`, `in_come`, `annual_inc_img`, `passport_img`, `course_name`, `str_eam`, `clg_name`, `univ_roll`, `sem_1_img`, `sem_2_img`, `b_Accountno`, `b_branch`, `b_ifsc`, `date`) VALUES
(1, 'dummy', 'dummy', 1, 'dummy', 'dummy', 'dummy', 'dummy', 1000000, 'dummy@yahoo.com', 10000, 'dummy.jpg', 'dummy.jpg', 'dummy ', 'dummy ', 'dummy ', '123456789', 'dummy ', 'dummy ', 123456, 'dummy ', 'dummy ', '2023-01-23 13:38:42'),
(3, 'Pre Matric', 'Rehan Mondal', 22, 'male', 'Tappu Mondal', 'Sakila Mondal', 'Garia Boral 700103', 2147483647, 'rehanmondal01@gmail.', 450000, 'wal-1.jpg', 'wal-2.jpeg', 'engineering', 'CSE', 'FUTURE ', '20188453262', 'wal-1.jpg', 'wal-2.jpeg', 2147483647, 'ICICI', 'ICIC540I', '2023-01-23 13:53:58'),
(5, 'SVMCM', 'Nishat', 16, 'male', 'James', 'Oliver', 'newyork', 2147483647, 'rehan@gmail.com', 250000, '', '', 'ca', 'Business Study', 'IITS', '20188453200', '', '', 2147483647, 'PNB', 'SWIS5481', '2023-01-23 13:58:26'),
(6, 'SVMCM', 'Rina Mondal', 22, 'Female', 'Nano', 'Mini', 'Garia Boral', 2147483647, 'rina05@gmail.com', 45000, '1.jpg', '2.jpg', 'engineering', 'CSE', 'GMIT', '28100119062', '3.png', '4.png', 2147483647, 'PNB', 'PN00B24', '2023-01-27 22:52:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `UC_students` (`univ_roll`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
