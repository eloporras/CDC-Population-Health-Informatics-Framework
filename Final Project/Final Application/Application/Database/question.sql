-- pgMyAdmin SQL Dump
-- Generation Time: Nov 03, 2016 at 03:51 PM



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
  answer_layout varchar(255) NOT NULL,
  ishidden int NOT NULL,
  nextquestion_id int NOT NULL,
  resource text NOT NULL,
  parameter text NOT NULL,
  cardinality varchar(255) NOT NULL
) ;



--
-- Dumping data for table `question`
--

INSERT INTO question (question_id, content, section_id, answer_layout, ishidden, nextquestion_id, resource, parameter, cardinality) VALUES
(1, 'Would you say that in general your health is', 1, 'list',  0, 0, ' Questionnaire','', '1,1'),
(2, 'Now thinking about your physical health, which includes physical illness and injury, for\r\nhow many days during the past 30 days was your physical health not good?', 2, 'list', 0, 0, ' Questionnaire', '','1,1'),
(3, 'Now thinking about your mental health, which includes stress, depression, and problems\r\nwith emotions, for how many days during the past 30 days was your mental health not\r\ngood?', 2, 'list',0, 0, ' Questionnaire', '', '1,1'),
(4, 'During the past 30 days, for about how many days did poor physical or mental health\r\nkeep you from doing your usual activities, such as self-care, work, or recreation?', 2, 'list', 0, 0, ' Questionnaire', '', '1,1'),
(5, 'What is your gender?', 3, 'list', 0, 0, 'Patient', 'gender','1,1'),
(6, 'What is your age?', 3, 'list', 0, 0, 'Patient', 'extension','1,1'),
(7, 'Are you Hispanic, Latino/a, or Spanish origin?', 3, 'list', 0, 0, 'Questionnaire', '','1,*'),
(8, 'Which one or more of the following would you say is your race?', 3, 'radio',  0, 0, 'Questionnaire', '','1,*'),
(9, 'Which one of these groups would you say best represents your race?', 3, 'radio',0, 0, 'Questionnaire', '','1,*'),
(10, 'Are you --?', 3, 'list', 0, 0, 'Patient', 'maritalStatus','1,1'),
(11, 'What is the highest grade or year of school you completed?', 3, 'list',  0, 0, 'Questionnaire', '','1,1'),
(12, 'Do you own or rent your home?', 3, 'list', 0, 0,  'Questionnaire', '','1,1'),
(13, 'In what county do you currently live?', 3, 'list',  0, 0, ' Patient', 'nationality','1,1'),
(14, 'What is the ZIP Code where you currently live?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(15, 'Do you have more than one telephone number in your household? Do not include\r\ncell phones or numbers that are only used by a computer or fax machine.', 3, 'list', 0, 0, ' Questionnaire', '','1,1'),
(16, 'How many of these telephone numbers are residential numbers?', 3, 'list', 1, 0,  ' Questionnaire', '','1,1'),
(17, 'Do you have a cell phone for personal use? Please include cell phones used for\r\nboth business and personal use.', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(18, 'Have you ever served on active duty in the United States Armed Forces, either in the regular military or in a National Guard or military reserve unit?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(19, 'Are you currently--?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(20, 'How many children less than 18 years of age live in your household?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(21, 'Is your annual household income from all sources-', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(22, 'Have you used the internet in the past 30 days?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(23, 'About how much do you weigh without shoes?', 3, 'list', 0, 0, ' Observation', '','1,1'),
(24, 'About how tall are you without shoes?', 3, 'list',  0, 0, ' Observation', '','1,1'),
(25, 'To your knowledge, are you now pregnant?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(26, 'Are you deaf or do you have serious difficulty hearing?', 3, 'list',  0, 0, 'Patient', 'disability','1,1'),
(27, 'Are you blind or do you have serious difficulty seeing, even when wearing glasses?', 3, 'list', 0, 0, 'Patient', 'disability','1,1'),
(28, 'Because of a physical, mental, or emotional condition, do you have serious difficulty concentrating, remembering, or making decisions?', 3, 'list', 0, 0, ' Questionnaire', '','1,1'),
(29, 'Do you have serious difficulty walking or climbing stairs?', 3, 'list',  0, 0, ' Questionnaire', '','1,1'),
(30, 'Do you have difficulty dressing or bathing?', 3, 'list', 0, 0, ' Questionnaire', '','1,1'),
(31, 'Because of a physical, mental, or emotional condition, do you have difficulty doing errands alone such as visiting a doctor’s office or shopping?', 3, 'list',  0, 0, ' Questionnaire', '','1,1');

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
