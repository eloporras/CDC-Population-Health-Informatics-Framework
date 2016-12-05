--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.6.1
--
-- Database: `survey`
--

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE section (
  section_id int NOT NULL,
  section_name varchar(255) NOT NULL
) ;

--
-- Dumping data for table `section`
--

INSERT INTO section (section_id, section_name) VALUES
(1, 'Health Status'),
(2, 'Healthy Days-Health-Related Quality of Life'),
(3, 'Demographics');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `section`
--
ALTER TABLE section
  ADD PRIMARY KEY (section_id);

--
-- AUTO_INCREMENT for dumped tables
--