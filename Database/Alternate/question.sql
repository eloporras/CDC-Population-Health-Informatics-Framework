-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2016 at 09:50 AM
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
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `selection` enum('CHECKBOX','RADIO') NOT NULL DEFAULT 'RADIO',
  `isHidden` int(11) NOT NULL,
  `nextQuestion_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `section_id`, `content`, `selection`, `isHidden`, `nextQuestion_id`) VALUES
(1, 1, 'Would you say that in general your health is', 'RADIO', 0, 0),
(1, 2, 'Now thinking about your physical health, which includes physical illness and injury, for\r\nhow many days during the past 30 days was your physical health not good?', 'RADIO', 0, 0),
(1, 3, 'Are you…?', 'RADIO', 0, 0),
(2, 2, 'Now thinking about your mental health, which includes stress, depression, and problems\r\nwith emotions, for how many days during the past 30 days was your mental health not\r\ngood?', 'RADIO', 0, 0),
(2, 3, 'What is your age?', 'RADIO', 0, 0),
(3, 2, 'During the past 30 days, for about how many days did poor physical or mental health\r\nkeep you from doing your usual activities, such as self-care, work, or recreation?', 'RADIO', 0, 0),
(3, 3, 'Are you Hispanic, Latino/a, or Spanish origin?', 'RADIO', 0, 0),
(4, 3, 'Which one or more of the following would you say is your race?', 'CHECKBOX', 0, 0),
(5, 3, 'Which one of these groups would you say best represents your race?', 'CHECKBOX', 0, 0),
(6, 3, 'Are you …', 'RADIO', 0, 0),
(7, 3, 'What is the highest grade or year of school you completed?', 'RADIO', 0, 0),
(8, 3, 'Do you own or rent your home?', 'RADIO', 0, 0),
(9, 3, 'In what county do you currently live?', 'RADIO', 0, 0),
(10, 3, 'What is the ZIP Code where you currently live?', 'RADIO', 0, 0),
(11, 3, 'Do you have more than one telephone number in your household? Do not include\r\ncell phones or numbers that are only used by a computer or fax machine.', 'RADIO', 0, 0),
(12, 3, 'How many of these telephone numbers are residential numbers?', 'RADIO', 1, 0),
(13, 3, 'Do you have a cell phone for personal use? Please include cell phones used for\r\nboth business and personal use.', 'RADIO', 0, 0),
(14, 3, 'Have you ever served on active duty in the United States Armed Forces, either in the regular military or in a National Guard or military reserve unit?', 'RADIO', 0, 0),
(15, 3, 'Are you currently…?', 'RADIO', 0, 0),
(16, 3, 'How many children less than 18 years of age live in your household?', 'RADIO', 0, 0),
(17, 3, 'Is your annual household income from all sources—', 'RADIO', 0, 0),
(18, 3, 'Have you used the internet in the past 30 days?', 'RADIO', 0, 0),
(19, 3, 'About how much do you weigh without shoes?', 'RADIO', 0, 0),
(20, 3, 'About how tall are you without shoes?', 'RADIO', 0, 0),
(21, 3, 'To your knowledge, are you now pregnant?', 'RADIO', 0, 0),
(22, 3, 'Are you deaf or do you have serious difficulty hearing?', 'RADIO', 0, 0),
(23, 3, 'Are you blind or do you have serious difficulty seeing, even when wearing glasses?', 'RADIO', 0, 0),
(24, 3, 'Because of a physical, mental, or emotional condition, do you have serious difficulty concentrating, remembering, or making decisions?', 'RADIO', 0, 0),
(25, 3, 'Do you have serious difficulty walking or climbing stairs?', 'RADIO', 0, 0),
(26, 3, 'Do you have difficulty dressing or bathing?', 'RADIO', 0, 0),
(27, 3, 'Because of a physical, mental, or emotional condition, do you have difficulty doing errands alone such as visiting a doctor’s office or shopping?', 'RADIO', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`,`section_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
