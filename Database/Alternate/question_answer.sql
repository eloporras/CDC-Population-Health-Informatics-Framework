-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2016 at 09:51 AM
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
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `id` int(11) NOT NULL,
  `question_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `answer_order` int(11) NOT NULL,
  `hasField` tinyint(1) NOT NULL,
  `hasSubAnswer` int(11) NOT NULL,
  `hasSubQuestion` int(11) NOT NULL,
  `subquestion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`id`, `question_id`, `section_id`, `answer`, `answer_order`, `hasField`, `hasSubAnswer`, `hasSubQuestion`, `subquestion_id`) VALUES
(1, 1, 1, 'Excellent', 1, 0, 0, 0, 0),
(2, 1, 1, 'Very good', 2, 0, 0, 0, 0),
(3, 1, 1, 'Good', 3, 0, 0, 0, 0),
(4, 1, 1, 'Fair', 4, 0, 0, 0, 0),
(5, 1, 1, 'Poor', 5, 0, 0, 0, 0),
(6, 1, 2, 'Number of days', 1, 1, 0, 0, 0),
(7, 1, 2, 'None', 2, 0, 0, 0, 0),
(8, 1, 2, 'Don’t know / Not sure', 3, 0, 0, 0, 0),
(9, 1, 2, 'Refused', 4, 0, 0, 0, 0),
(10, 2, 2, 'Number of days', 1, 1, 0, 0, 0),
(11, 2, 2, 'None', 2, 0, 0, 0, 0),
(12, 2, 2, 'Don’t know / Not sure', 3, 0, 0, 0, 0),
(13, 2, 2, 'Refused', 3, 0, 0, 0, 0),
(14, 3, 2, 'Number of days', 1, 1, 0, 0, 0),
(15, 3, 2, 'None', 2, 0, 0, 0, 0),
(16, 3, 2, 'Don’t know / Not sure', 3, 0, 0, 0, 0),
(17, 3, 2, 'Refused', 4, 0, 0, 0, 0),
(18, 1, 3, 'Male', 1, 0, 0, 0, 0),
(19, 1, 3, 'Female', 2, 0, 0, 0, 0),
(20, 1, 3, 'Refused', 3, 0, 0, 0, 0),
(21, 2, 3, 'Code age in years', 1, 1, 0, 0, 0),
(22, 2, 3, 'Don’t know / Not sure', 2, 0, 0, 0, 0),
(23, 2, 3, 'Refused', 3, 0, 0, 0, 0),
(24, 3, 3, 'Mexican, Mexican American, Chicano/a', 1, 0, 0, 0, 0),
(25, 3, 3, 'Puerto Rican', 2, 0, 0, 0, 0),
(26, 3, 3, 'Cuban', 3, 0, 0, 0, 0),
(27, 3, 3, 'Another Hispanic, Latino/a, or Spanish origin', 4, 0, 0, 0, 0),
(28, 4, 3, 'White', 1, 0, 0, 0, 0),
(29, 4, 3, 'Black or African American', 2, 0, 0, 0, 0),
(30, 4, 3, 'American Indian or Alaska Native', 3, 0, 0, 0, 0),
(31, 4, 3, 'Asian', 4, 0, 1, 0, 0),
(32, 4, 3, 'Pacific Islander', 5, 0, 1, 0, 0),
(36, 5, 3, 'White', 1, 0, 0, 0, 0),
(37, 5, 3, 'Black or African American', 2, 0, 0, 0, 0),
(38, 5, 3, 'American Indian or Alaska Native', 3, 0, 0, 0, 0),
(39, 5, 3, 'Asian', 4, 0, 1, 0, 0),
(40, 5, 3, 'Pacific Islander', 5, 0, 1, 0, 0),
(41, 6, 3, 'Married', 1, 0, 0, 0, 0),
(42, 6, 3, 'Divorced', 2, 0, 0, 0, 0),
(43, 6, 3, 'Widowed', 3, 0, 0, 0, 0),
(44, 6, 3, 'Separated', 4, 0, 0, 0, 0),
(45, 6, 3, 'Never married', 5, 0, 0, 0, 0),
(46, 6, 3, 'A member of an unmarried couple', 6, 0, 0, 0, 0),
(47, 6, 3, 'Refused', 7, 0, 0, 0, 0),
(48, 7, 3, 'Never attended school or only attended kindergarten', 1, 0, 0, 0, 0),
(49, 7, 3, 'Grades 1 through 8 (Elementary)', 2, 0, 0, 0, 0),
(50, 7, 3, 'Grades 9 through 11 (Some high school)', 3, 0, 0, 0, 0),
(51, 7, 3, 'Grade 12 or GED (High school graduate)', 4, 0, 0, 0, 0),
(52, 7, 3, 'College 1 year to 3 years (Some college or technical school)', 5, 0, 0, 0, 0),
(53, 7, 3, 'College 4 years or more (College graduate)', 6, 0, 0, 0, 0),
(54, 7, 3, 'Refused', 7, 0, 0, 0, 0),
(55, 8, 3, 'Own', 1, 0, 0, 0, 0),
(56, 8, 3, 'Rent', 2, 0, 0, 0, 0),
(57, 8, 3, 'Other arrangement', 3, 0, 0, 0, 0),
(58, 8, 3, 'Don''t know/ Not sure', 4, 0, 0, 0, 0),
(59, 8, 3, 'Refused', 5, 0, 0, 0, 0),
(60, 9, 3, 'ANSI County Code (formerly FIPS county code)', 1, 0, 0, 0, 0),
(61, 9, 3, 'Don''t know / Not sure', 2, 0, 0, 0, 0),
(62, 9, 3, 'Refused', 3, 0, 0, 0, 0),
(63, 10, 3, 'ZIP Code', 1, 0, 0, 0, 0),
(64, 10, 3, 'Don''t know / Not sure', 2, 0, 0, 0, 0),
(65, 10, 3, 'Refused', 3, 0, 0, 0, 0),
(66, 11, 3, 'Yes', 1, 0, 0, 1, 16),
(67, 11, 3, 'No', 2, 0, 0, 0, 0),
(68, 11, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(69, 11, 3, 'Refused', 4, 0, 0, 0, 0),
(70, 12, 3, 'Residential telephone numbers [6 = 6 or more]', 1, 0, 0, 0, 0),
(71, 12, 3, 'Don''t know / Not sure', 2, 0, 0, 0, 0),
(72, 12, 3, 'Refused', 3, 0, 0, 0, 0),
(73, 13, 3, 'Yes', 1, 0, 0, 0, 0),
(74, 13, 3, 'No', 2, 0, 0, 0, 0),
(75, 13, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(76, 13, 3, 'Refused', 4, 0, 0, 0, 0),
(77, 14, 3, 'Yes', 1, 0, 0, 0, 0),
(78, 14, 3, 'No', 2, 0, 0, 0, 0),
(79, 14, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(80, 14, 3, 'Refused', 4, 0, 0, 0, 0),
(81, 15, 3, 'Employed for wages', 1, 0, 0, 0, 0),
(82, 15, 3, 'Self-employed', 2, 0, 0, 0, 0),
(83, 15, 3, 'Out of work for 1 year or more', 3, 0, 0, 0, 0),
(84, 15, 3, 'Out of work for less than 1 year', 4, 0, 0, 0, 0),
(85, 15, 3, 'A Homemaker', 5, 0, 0, 0, 0),
(86, 15, 3, 'A Student', 6, 0, 0, 0, 0),
(87, 15, 3, 'Retired', 7, 0, 0, 0, 0),
(88, 15, 3, 'Unable to work', 8, 0, 0, 0, 0),
(89, 16, 3, 'Number of children', 1, 1, 0, 0, 0),
(90, 16, 3, 'None', 2, 0, 0, 0, 0),
(91, 16, 3, 'Refused', 3, 0, 0, 0, 0),
(92, 17, 3, '$20,000 to less than $25,000', 1, 0, 0, 0, 0),
(93, 17, 3, '$15,000 to less than $20,000', 2, 0, 0, 0, 0),
(94, 17, 3, '$10,000 to less than $15,000', 3, 0, 0, 0, 0),
(95, 17, 3, 'Less than $10,000', 4, 0, 0, 0, 0),
(96, 17, 3, '$25,000 to less than $35,000', 5, 0, 0, 0, 0),
(97, 17, 3, '$35,000 to less than $50,000', 6, 0, 0, 0, 0),
(98, 17, 3, '$50,000 to less than $75,000', 7, 0, 0, 0, 0),
(99, 17, 3, '$75,000 or more', 8, 0, 0, 0, 0),
(100, 18, 3, 'Yes', 1, 0, 0, 0, 0),
(101, 18, 3, 'No', 2, 0, 0, 0, 0),
(102, 18, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(103, 18, 3, 'Refused', 4, 0, 0, 0, 0),
(104, 19, 3, 'Weight(pounds/kilograms)', 1, 1, 0, 0, 0),
(105, 19, 3, 'Don''t know / Not sure', 2, 0, 0, 0, 0),
(106, 19, 3, 'Refused', 3, 0, 0, 0, 0),
(107, 20, 3, 'Height(ft/inches/meters/centimeters)', 1, 1, 0, 0, 0),
(108, 20, 3, 'Don''t know / Not sure', 2, 0, 0, 0, 0),
(109, 20, 3, 'Refused', 3, 0, 0, 0, 0),
(110, 21, 3, 'Yes', 1, 0, 0, 0, 0),
(111, 21, 3, 'No', 2, 0, 0, 0, 0),
(112, 21, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(113, 21, 3, 'Refused', 4, 0, 0, 0, 0),
(114, 22, 3, 'Yes', 1, 0, 0, 0, 0),
(115, 22, 3, 'No', 2, 0, 0, 0, 0),
(116, 22, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(117, 22, 3, 'Refused', 4, 0, 0, 0, 0),
(118, 23, 3, 'Yes', 1, 0, 0, 0, 0),
(119, 23, 3, 'No', 2, 0, 0, 0, 0),
(120, 23, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(121, 23, 3, 'Refused', 4, 0, 0, 0, 0),
(122, 24, 3, 'Yes', 1, 0, 0, 0, 0),
(123, 24, 3, 'No', 2, 0, 0, 0, 0),
(124, 24, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(125, 24, 3, 'Refused', 4, 0, 0, 0, 0),
(126, 25, 3, 'Yes', 1, 0, 0, 0, 0),
(127, 25, 3, 'No', 2, 0, 0, 0, 0),
(128, 25, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(129, 25, 3, 'Refused', 4, 0, 0, 0, 0),
(130, 26, 3, 'Yes', 1, 0, 0, 0, 0),
(131, 26, 3, 'No', 2, 0, 0, 0, 0),
(132, 26, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(133, 26, 3, 'Refused', 4, 0, 0, 0, 0),
(134, 27, 3, 'Yes', 1, 0, 0, 0, 0),
(135, 27, 3, 'No', 2, 0, 0, 0, 0),
(136, 27, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0),
(137, 27, 3, 'Refused', 4, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
