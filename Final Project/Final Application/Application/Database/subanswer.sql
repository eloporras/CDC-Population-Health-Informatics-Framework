-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2016 at 04:02 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21



/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `subanswer`
--

CREATE TABLE subanswer (
  subanswer_id int NOT NULL,
  content varchar(255) NOT NULL,
  ischeck int NOT NULL,
  istype int NOT NULL,
  isradio int NOT NULL,
  question_id int NOT NULL,
  answer_id int NOT NULL,
  code int NOT NULL
) ;

--
-- Dumping data for table `subanswer`
--

INSERT INTO subanswer (subanswer_id, content, ischeck, istype, isradio, question_id, answer_id, code) VALUES
(1, 'Asian Indian', 0, 0, 1, 8, 31, 41),
(2, 'Chinese', 0, 0, 1, 8, 31, 42),
(3, 'Filipino', 0, 0, 1, 8, 31, 43),
(4, 'Japanese', 0, 0, 1, 8, 31, 44),
(5, 'Korean', 0, 0, 1, 8, 31, 45),
(6, 'Vietnamease', 0, 0, 1, 8, 31, 46),
(7, 'Other Asian', 0, 0, 1, 8, 31, 47),
(8, 'Native Hawaiian', 0, 0, 1, 8, 32, 51),
(9, 'Guamanian or Chamorro', 0, 0, 1, 8, 32, 52),
(10, 'Samoan', 0, 0, 1, 8, 32, 53),
(11, 'Other Pacific Islander', 0, 0, 1, 8, 32, 54),
(12, 'Asian Indian', 0, 0, 1, 9, 39, 41),
(13, 'Chinese', 0, 0, 1, 9, 39, 42),
(14, 'Filipino', 0, 0, 1, 9, 39, 43),
(15, 'Japanese', 0, 0, 1, 9, 39, 44),
(16, 'Korean', 0, 0, 1, 9, 39, 45),
(17, 'Vietnamease', 0, 0, 1, 9, 39, 46),
(18, 'Other Asian', 0, 0, 1, 9, 39, 47),
(19, 'Native Hawaiian', 0, 0, 1, 9, 40, 51),
(20, 'Guamanian or Chamorro', 0, 0, 1, 9, 40, 52),
(21, 'Samoan', 0, 0, 1, 9, 40, 53),
(22, 'Other Pacific Islander', 0, 0, 1, 9, 40, 54),
(23, 'Mexican, Mexican American, Chicano/a', 0, 0, 1, 7, 24, 1),
(24, 'Puerto Rican', 0, 0, 1, 7, 24, 2),
(25, 'Cuban', 0, 0, 1, 7, 24, 3),
(26, 'Another Hispanic, Latino/a, or Spanish origin', 0, 0, 1, 7, 24, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `subanswer`
--
ALTER TABLE subanswer
  ADD PRIMARY KEY (subanswer_id);

--
-- AUTO_INCREMENT for dumped tables
--

