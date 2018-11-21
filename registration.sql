-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2017 at 05:11 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `course_id` int(11) NOT NULL,
  `course_name` varchar(60) NOT NULL,
  `course_description` varchar(150) DEFAULT NULL,
  `instructor_name` varchar(50) DEFAULT NULL,
  `credit_hours` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`course_id`, `course_name`, `course_description`, `instructor_name`, `credit_hours`, `department_id`) VALUES
(1, 'probability', 'we will learn about different methods', 'Dr.yasmine', 3, 1),
(2, 'chemistry', 'we will learn about different chemical formulas', 'Dr.hassan', 3, 1),
(3, 'Math1', 'we will learn about differentiation and integration', 'Dr.mohamed', 3, 1),
(4, 'Control systems', 'we will learn about stabitlity of the system', 'Dr. Ahmed', 3, 3),
(5, 'Programming', 'we get to know java and c', 'Dr.Ahmed wagdi', 4, 3),
(6, 'Logic', 'how to consturct logic circuits', 'Dr.mostafa medhat', 3, 3),
(7, 'statistics', 'how to make a stable system', 'dr.ahmed kahled', 3, 2),
(8, 'dynamics', 'how object move and third dimension', 'dr.mostafa mohamed', 3, 2),
(9, 'math2', 'we will learn about fourier series', 'dr.khaled hassan', 3, 2),
(10, 'graph1', 'how to design a house', 'dr.medhat saleh', 3, 4),
(11, 'graph2', 'different concepts for graph', 'dr.hassan ahmed', 4, 4),
(12, 'math3', 'how to calculate taylor series', 'dr.khalil mostafa', 3, 4),
(13, 'fluid dynamics', 'understand the flow of fluids ', 'dr.ahmed khaled', 3, 5),
(14, 'computer science', 'introduction inot c programming', 'dr. mostafa ahmed', 3, 5),
(15, 'Accunting', 'how to calculate profit and loss', 'dr.nezar samy', 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `name`, `description`) VALUES
(1, 'Gas and Petrochemicals engineering program', 'It is a field of engineering concerned with the activities related to the production of hydrocarbons, which can be either crude oil or natural gas.'),
(2, 'Electromechanical engineering program', ' It is a field of engineering concerned with analysis, design, manufacture and maintenance of equipment and products based on the combination of electrical/electronic circuits and mechanical systems. '),
(3, 'Computer and Telecommunications engineering program', ' It is a field of engineering concerned with developing, testing and evaluating the software that make our computers work. They may help in the development of new computer games and business applicati'),
(4, 'Architecture and Construction engineering program', 'It is a field of engineering concerned with creating efficient buildings and building systems. '),
(5, 'Offshore and Costal engineering program', 'It is a field of engineering  concerned with the technical design of fixed and floating marine structures, such as oil platforms and offshore wind farms. '),
(6, 'test', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `uuser`
--

CREATE TABLE `uuser` (
  `user_id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `username` varchar(60) NOT NULL,
  `password` varchar(100) NOT NULL,
  `registration_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `department_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `uuser`
--

INSERT INTO `uuser` (`user_id`, `email`, `username`, `password`, `registration_date`, `department_id`) VALUES
(1, 'nour@hotmail.com', 'nour', '$2y$10$m.Kml43qI1v9yCI1PkAGFeU1tK/nTprYsmTjxUh4P.IxncHsxTlZi', '2017-11-13 11:09:56.156908', 4),
(2, 'adam@hotmail.com', 'adam', '$2y$10$ZWEiOC66p5xJpyHJXbZxLOCgvQBzAhIDk3JxIhFJHuUzkNjRtADd.', '2017-11-13 11:10:38.772755', 1),
(3, 'hassan@hotmail.com', 'hassan', '$2y$10$PArSPPoJv.sSSnuH6WL.CutmK2F8ybbW5vaAVLDkNYbPztNpFBm7i', '2017-11-16 12:53:26.792508', 5),
(4, 'alex@hotmail.com', 'alex', '$2y$10$cr1rU5xG7/MZcJ5/Xwy3c.uqT8DHMjf1ZfHmfe6chgRlox0huDv1O', '2017-11-16 12:53:52.008464', 3),
(6, 'nader@hotmail.com', 'nader', '$2y$10$btSF93//ZRxw1oohaIPUYuD8ox8nYpKluq/pcBMts373QllxYucdm', '2017-11-19 19:25:41.016521', 2),
(7, 'omar@hotmail.com', 'omar', '$2y$10$yxBYIEZ2GsGffjZuPOpWt.Uc6/vxJn61x76DZe2/o1JSGMf0S9IkW', '2017-11-20 12:14:57.675974', 4),
(8, 'khaled@hotmail.com', 'kahled', '$2y$10$NztWUE/9oHKd3DrD6Ej0VeG6iKO1v32VDslQRcLHwAwhyE54GWtl.', '2017-11-22 20:02:26.776929', 5),
(9, 'cesar@hotmail.com', 'cesar', '$2y$10$gIimVU9ORmQLnJsirdumr.yYuWinMKTVAFcKd3Bcr50NRCs8PWTvS', '2017-11-22 20:07:05.791689', 1),
(10, 'yahya@hotmail.com', 'yahya', '$2y$10$c6y6N1QuVz0Sd3zO./jG5e6fIqJ6GbTB/oiacmSPwv7V4VS4FJmFu', '2017-11-22 21:56:00.679305', 1),
(11, 'samy@hotmail.com', 'samy', '$2y$10$FK1.CdhvcBbyYSautXz.P.QZiMmT3L10sEXcD8/sFvXcKl4xK8Jr6', '2017-11-22 21:56:48.171181', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`course_id`),
  ADD UNIQUE KEY `course_name` (`course_name`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `uuser`
--
ALTER TABLE `uuser`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `department_id` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `uuser`
--
ALTER TABLE `uuser`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`dept_id`);

--
-- Constraints for table `uuser`
--
ALTER TABLE `uuser`
  ADD CONSTRAINT `uuser_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `department` (`dept_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
