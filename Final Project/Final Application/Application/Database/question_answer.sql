-- pgAdmin SQL Dump
-- version 4.6.2




--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE question_answer (
    id integer NOT NULL,
    question_id integer NOT NULL,
    answer character varying(255) NOT NULL,
    answer_order integer NOT NULL,
    istype integer NOT NULL,
    hassubanswer integer NOT NULL,
    hassubquestion integer NOT NULL,
    subquestion_id integer NOT NULL,
    code character varying(11) NOT NULL,
    range character varying(10)
) ;




--
-- Dumping data for table `question_answer`
--

INSERT INTO question_answer (id, question_id, answer, answer_order, istype, hassubanswer, hassubquestion, subquestion_id, code, range) VALUES
(1, 1, 'Excellent', 1, 0, 0, 0, 0, '1',''),
(2, 1, 'Very good', 1, 0, 0, 0, 0, '2',''),
(3, 1, 'Good', 3, 0, 0, 0, 0, '3',''),
(4, 1, 'Fair', 4, 0, 0, 0, 0, '4',''),
(5, 1, 'Poor', 5, 0, 0, 0, 0, '5',''),
(6, 2, 'Number of days', 1, 1, 0, 0, 0, '0','0,31'),
(7, 2, 'None', 2, 0, 0, 0, 0, '88',''),
(8, 2, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '77',''),
(9, 2, 'Refused', 4, 0, 0, 0, 0, '99',''),
(10, 3, 'Number of days', 1, 1, 0, 0, 0, '0','0,31'),
(11, 3, 'None', 2, 0, 0, 0, 0, '88',''),
(12, 3, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '77',''),
(13, 3, 'Resued', 3, 0, 0, 0, 0, '99',''),
(14, 4, 'Number of days', 1, 1, 0, 0, 0, '0','0,31'),
(15, 4, 'None', 2, 0, 0, 0, 0, '88',''),
(16, 4, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '77',''),
(17, 4, 'Refused', 4, 0, 0, 0, 0, '99',''),
(18, 5, 'male', 1, 0, 0, 0, 0, '1',''),
(19, 5, 'female', 2, 0, 0, 0, 0, '2',''),
(20, 5, 'Refused', 3, 0, 0, 0, 0, '9',''),
(21, 6, 'Code age in years', 1, 1, 0, 0, 0, '0','0,200'),
(22, 6, 'Don''t know / Not sure', 2, 0, 0, 0, 0, '7',''),
(23, 6, 'Refused', 3, 0, 0, 0, 0, '9',''),
(24, 7, 'Yes', 1, 0, 0, 0, 0, '1',''),
(25, 7, 'No', 2, 0, 0, 0, 0, '5',''),
(28, 8, 'White', 1, 0, 0, 0, 0, '10',''),
(29, 8, 'Black or African American', 2, 0, 0, 0, 0, '20',''),
(30, 8, 'American Indian or Alaska Native', 3, 0, 0, 0, 0, '30',''),
(31, 8, 'Asian', 4, 0, 1, 0, 0, '40',''),
(32, 8, 'Pacific Islander', 5, 0, 1, 0, 0, '50',''),
(36, 9, 'White', 1, 0, 0, 0, 0, '10',''),
(37, 9, 'Black or African American', 2, 0, 0, 0, 0, '20',''),
(38, 9, 'American Indian or Alaska Native', 3, 0, 0, 0, 0, '30',''),
(39, 9, 'Asian', 4, 0, 1, 0, 0, '40',''),
(40, 9, 'Pacific Islander', 5, 0, 1, 0, 0, '50',''),
(41, 10, 'Married', 1, 0, 0, 0, 0, 'M',''),
(42, 10, 'Divorced', 2, 0, 0, 0, 0, 'D',''),
(43, 10, 'Widowed', 3, 0, 0, 0, 0, 'W',''),
(44, 10, 'Separated', 4, 0, 0, 0, 0, 'L',''),
(45, 10, 'Never married', 5, 0, 0, 0, 0, 'S',''),
(46, 10, 'A member of an unmarried couple', 6, 0, 0, 0, 0, '6',''),
(48, 11, 'Never attended school or only attended kindergarten', 1, 0, 0, 0, 0, '1',''),
(49, 11, 'Grades 1 through 8 (Elementary)', 2, 0, 0, 0, 0, '2',''),
(50, 11, 'Grades 9 through 11 (Some high school)', 3, 0, 0, 0, 0, '3',''),
(51, 11, 'Grade 12 or GED (High school graduate)', 4, 0, 0, 0, 0, '4',''),
(52, 11, 'College 1 year to 3 years (Some college or technical school)', 5, 0, 0, 0, 0, '5',''),
(53, 11, 'College 4 years or more (College graduate)', 6, 0, 0, 0, 0, '6',''),
(54, 11, 'Refused', 7, 0, 0, 0, 0, '0',''),
(55, 12, 'Own', 1, 0, 0, 0, 0, '1',''),
(56, 12, 'Rent', 2, 0, 0, 0, 0, '2',''),
(57, 12, 'Other arrangement', 3, 0, 0, 0, 0, '3',''),
(58, 12, 'Don''t know/ Not sure', 4, 0, 0, 0, 0, '7',''),
(59, 12, 'Refused', 5, 0, 0, 0, 0, '9',''),
(60, 13, 'ANSI County Code (formerly FIPS county code)', 1,1, 0, 0, 0, '0',''),
(61, 13, 'Don''t know / Not sure', 2, 0, 0, 0, 0, '777',''),
(62, 13, 'Refused', 3, 0, 0, 0, 0, '999',''),
(63, 14, 'ZIP Code', 1, 1, 0, 0, 0, '0',''),
(64, 14, 'Don''t know / Not sure', 2, 0, 0, 0, 0, '77777',''),
(65, 14, 'Refused', 3, 0, 0, 0, 0, '99999',''),
(66, 15, 'Yes', 1, 0, 0, 1, 16, '1',''),
(67, 15, 'No', 2, 0, 0, 0, 0, '2',''),
(68, 15, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(69, 15, 'Refused', 4, 0, 0, 0, 0, '9',''),
(70, 16, 'Residential telephone numbers [6 = 6 or more]', 1, 0, 0, 0, 0, '0',''),
(71, 16, 'Don''t know / Not sure', 2, 0, 0, 0, 0, '7',''),
(72, 16, 'Refused', 3, 0, 0, 0, 0, '9',''),
(73, 17, 'Yes', 1, 0, 0, 0, 0, '1',''),
(74, 17, 'No', 2, 0, 0, 0, 0, '2',''),
(75, 17, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(76, 17, 'Refused', 4, 0, 0, 0, 0, '9',''),
(77, 18, 'Yes', 1, 0, 0, 0, 0, '1',''),
(78, 18, 'No', 2, 0, 0, 0, 0, '2',''),
(81, 19, 'Employed for wages', 1, 0, 0, 0, 0, '0',''),
(82, 19, 'Self-employed', 2, 0, 0, 0, 0, '2',''),
(83, 19, 'Out of work for 1 year or more', 3, 0, 0, 0, 0, '3',''),
(84, 19, 'Out of work for less than 1 year', 4, 0, 0, 0, 0, '4',''),
(85, 19, 'A Homemaker', 5, 0, 0, 0, 0, '5',''),
(86, 19, 'A Student', 6, 0, 0, 0, 0, '6',''),
(87, 19, 'Retired', 7, 0, 0, 0, 0, '7',''),
(88, 19, 'Unable to work', 8, 0, 0, 0, 0, '8',''),
(89, 20, 'Number of children', 1, 1, 0, 0, 0, '0','0,100'),
(90, 20, 'None', 2, 0, 0, 0, 0, '88',''),
(91, 20, 'Refused', 3, 0, 0, 0, 0, '99',''),
(92, 21, '$20,000 to less than $25,000', 1, 0, 0, 0, 0, '4',''),
(93, 21, '$15,000 to less than $20,000', 2, 0, 0, 0, 0, '3',''),
(94, 21, '$10,000 to less than $15,000', 3, 0, 0, 0, 0, '2',''),
(95, 21, 'Less than $10,000', 4, 0, 0, 0, 0, '1',''),
(96, 21, '$25,000 to less than $35,000', 5, 0, 0, 0, 0, '5',''),
(97, 21, '$35,000 to less than $50,000', 6, 0, 0, 0, 0, '6',''),
(98, 21, '$50,000 to less than $75,000', 7, 0, 0, 0, 0, '7',''),
(99, 21, '$75,000 or more', 8, 0, 0, 0, 0, '8',''),
(100, 22, 'Yes', 1, 0, 0, 0, 0, '1',''),
(101, 22, 'No', 2, 0, 0, 0, 0, '2',''),
(102, 22, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(103, 22, 'Refused', 4, 0, 0, 0, 0, '9',''),
(104, 23, 'Weight(pounds/kilograms)', 1, 1, 0, 0, 0, '0','0,2000'),
(105, 23, 'Don''t know / Not sure', 2, 0, 0, 0, 0, '7777',''),
(106, 23, 'Refused', 3, 0, 0, 0, 0, '9999',''),
(107, 24, 'Height(ft/inches/meters/centimeters)', 1, 1, 0, 0, 0, '','0,15'),
(108, 24, 'Don''t know / Not sure', 2, 0, 0, 0, 0, '77/77',''),
(109, 24, 'Refused', 3, 0, 0, 0, 0, '99/99',''),
(110, 25, 'Yes', 1, 0, 0, 0, 0, '1',''),
(111, 25, 'No', 2, 0, 0, 0, 0, '2',''),
(112, 25, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(113, 25, 'Refused', 4, 0, 0, 0, 0, '9',''),
(114, 26, 'Yes', 1, 0, 0, 0, 0, '1',''),
(115, 26, 'No', 2, 0, 0, 0, 0, '2',''),
(116, 26, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(117, 26, 'Refused', 4, 0, 0, 0, 0, '9',''),
(118, 27, 'Yes', 1, 0, 0, 0, 0, '1',''),
(119, 27, 'No', 2, 0, 0, 0, 0, '2',''),
(120, 27, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(121, 27, 'Refused', 4, 0, 0, 0, 0, '9',''),
(122, 28, 'Yes', 1, 0, 0, 0, 0, '1',''),
(123, 28, 'No', 2, 0, 0, 0, 0, '2',''),
(124, 28, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(125, 28, 'Refused', 4, 0, 0, 0, 0, '9',''),
(126, 29, 'Yes', 1, 0, 0, 0, 0, '1',''),
(127, 29, 'No', 2, 0, 0, 0, 0, '2',''),
(128, 29, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(129, 29, 'Refused', 4, 0, 0, 0, 0, '9',''),
(130, 30, 'Yes', 1, 0, 0, 0, 0, '1',''),
(131, 30, 'No', 2, 0, 0, 0, 0, '2',''),
(132, 30, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(133, 30, 'Refused', 4, 0, 0, 0, 0, '9',''),
(134, 31, 'Yes', 1, 0, 0, 0, 0, '1',''),
(135, 31, 'No', 2, 0, 0, 0, 0, '2',''),
(136, 31, 'Don''t know / Not sure', 3, 0, 0, 0, 0, '7',''),
(137, 31, 'Refused', 4, 0, 0, 0, 0, '9','');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `question_answer`
--
ALTER TABLE question_answer
  ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT for dumped tables
--

