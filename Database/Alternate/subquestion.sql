-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2016 at 09:52 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthsurvey`
--

-- --------------------------------------------------------

--
-- Table structure for table `subquestion`
--

CREATE TABLE `subquestion` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `selection` enum('CHECKBOX','RADIO') NOT NULL DEFAULT 'CHECKBOX',
  `question_id` int(11) NOT NULL,
  `answer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subquestion`
--

INSERT INTO `subquestion` (`id`, `content`, `selection`, `question_id`, `answer_id`) VALUES
(1, 'Asian Indian', 'CHECKBOX', 4, 31),
(2, 'Chinese', 'CHECKBOX', 4, 31),
(3, 'Filipino', 'CHECKBOX', 4, 31),
(4, 'Japanese', 'CHECKBOX', 4, 31),
(5, 'Korean', 'CHECKBOX', 4, 31),
(6, 'Vietnamease', 'CHECKBOX', 4, 31),
(7, 'Other Asian', 'CHECKBOX', 4, 31),
(8, 'Native Hawaiian', 'CHECKBOX', 4, 32),
(9, 'Guamanian or Chamorro', 'CHECKBOX', 4, 32),
(10, 'Samoan', 'CHECKBOX', 4, 32),
(11, 'Other Pacific Islander', 'CHECKBOX', 4, 32),
(12, 'Asian Indian', 'CHECKBOX', 5, 39),
(13, 'Chinese', 'CHECKBOX', 5, 39),
(14, 'Filipino', 'CHECKBOX', 5, 39),
(15, 'Japanese', 'CHECKBOX', 5, 39),
(16, 'Korean', 'CHECKBOX', 5, 39),
(17, 'Vietnamease', 'CHECKBOX', 5, 39),
(18, 'Other Asian', 'CHECKBOX', 5, 39),
(19, 'Native Hawaiian', 'CHECKBOX', 5, 40),
(20, 'Guamanian or Chamorro', 'CHECKBOX', 5, 40),
(21, 'Samoan', 'CHECKBOX', 5, 40),
(22, 'Other Pacific Islander', 'CHECKBOX', 5, 40);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subquestion`
--
ALTER TABLE `subquestion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `subquestion`
--
ALTER TABLE `subquestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
