-- phpMyAdmin SQL Dump
-- version 4.6.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 09, 2016 at 03:51 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21


--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `question`
--


CREATE TABLE question(
  question_id int NOT NULL,
  content varchar(255) NOT NULL,
  section_id int NOT NULL,
  selection varchar(255) NOT NULL,
  isType int NOT NULL,
  isRadio int NOT NULL,
  isHidden int NOT NULL,
  nextQuestion_id int NOT NULL,
  Resource text NOT NULL,
  parameter text NOT NULL
) ;



--
-- Dumping data for table `question`
--

INSERT INTO question (question_id, content, section_id, selection, isType, isRadio, isHidden, nextQuestion_id, Resource, parameter) VALUES
(1, 'Would you say that in general your health is', 1, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(2, 'Now thinking about your physical health, which includes physical illness and injury, for\r\nhow many days during the past 30 days was your physical health not good?', 2, 'RADIO', 1, 1, 0, 0, ' Questionnaire', ''),
(3, 'Now thinking about your mental health, which includes stress, depression, and problems\r\nwith emotions, for how many days during the past 30 days was your mental health not\r\ngood?', 2, 'RADIO', 1, 1, 0, 0, ' Questionnaire', ''),
(4, 'During the past 30 days, for about how many days did poor physical or mental health\r\nkeep you from doing your usual activities, such as self-care, work, or recreation?', 2, 'RADIO', 1, 1, 0, 0, ' Questionnaire', ''),
(5, 'What is your gender?', 3, 'RADIO', 0, 1, 0, 0, 'Patient', 'gender'),
(6, 'What is your age?', 3, 'RADIO', 1, 1, 0, 0, 'Patient', 'extension'),
(7, 'Are you Hispanic, Latino/a, or Spanish origin?', 3, 'RADIO', 0, 1, 0, 0, 'Questionnaire', ''),
(8, 'Which one or more of the following would you say is your race?', 3, 'CHECKBOX', 0, 1, 0, 0, 'Questionnaire', ''),
(9, 'Which one of these groups would you say best represents your race?', 3, 'CHECKBOX', 0, 1, 0, 0, 'Questionnaire', ''),
(10, 'Are you --?', 3, 'RADIO', 0, 1, 0, 0, 'Patient', 'maritalStatus'),
(11, 'What is the highest grade or year of school you completed?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(12, 'Do you own or rent your home?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(13, 'In what county do you currently live?', 3, 'RADIO', 1, 0, 0, 0, ' Patient', 'nationality'),
(14, 'What is the ZIP Code where you currently live?', 3, 'RADIO', 1, 0, 0, 0, ' Questionnaire', ''),
(15, 'Do you have more than one telephone number in your household? Do not include\r\ncell phones or numbers that are only used by a computer or fax machine.', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(16, 'How many of these telephone numbers are residential numbers?', 3, 'RADIO', 1, 0, 1, 0, ' Questionnaire', ''),
(17, 'Do you have a cell phone for personal use? Please include cell phones used for\r\nboth business and personal use.', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(18, 'Have you ever served on active duty in the United States Armed Forces, either in the regular military or in a National Guard or military reserve unit?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(19, 'Are you currently--?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(20, 'How many children less than 18 years of age live in your household?', 3, 'RADIO', 1, 1, 0, 0, ' Questionnaire', ''),
(21, 'Is your annual household income from all sources-', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(22, 'Have you used the internet in the past 30 days?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(23, 'About how much do you weigh without shoes?', 3, 'RADIO', 1, 1, 0, 0, ' Observation', ''),
(24, 'About how tall are you without shoes?', 3, 'RADIO', 1, 1, 0, 0, ' Observation', ''),
(25, 'To your knowledge, are you now pregnant?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(26, 'Are you deaf or do you have serious difficulty hearing?', 3, 'RADIO', 0, 1, 0, 0, 'Patient', 'disability'),
(27, 'Are you blind or do you have serious difficulty seeing, even when wearing glasses?', 3, 'RADIO', 0, 1, 0, 0, 'Patient', 'disability'),
(28, 'Because of a physical, mental, or emotional condition, do you have serious difficulty concentrating, remembering, or making decisions?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(29, 'Do you have serious difficulty walking or climbing stairs?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(30, 'Do you have difficulty dressing or bathing?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', ''),
(31, 'Because of a physical, mental, or emotional condition, do you have difficulty doing errands alone such as visiting a doctor’s office or shopping?', 3, 'RADIO', 0, 1, 0, 0, ' Questionnaire', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question`
--
ALTER TABLE question
  ADD PRIMARY KEY (question_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
