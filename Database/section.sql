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


