-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2015 at 05:59 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `project_tracker`
--

-- --------------------------------------------------------

--
-- Table structure for table `flag`
--

CREATE TABLE IF NOT EXISTS `flag` (
  `mem` varchar(150) NOT NULL,
  `teamid` int(10) NOT NULL,
  PRIMARY KEY (`mem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flag`
--

INSERT INTO `flag` (`mem`, `teamid`) VALUES
('cse11308', 1),
('cse11309', 2),
('cse11314', 2),
('cse11315', 1);

-- --------------------------------------------------------

--
-- Table structure for table `img`
--

CREATE TABLE IF NOT EXISTS `img` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `img_base_name` varchar(50) NOT NULL,
  `img_ext` varchar(30) NOT NULL,
  `img_height` int(13) NOT NULL,
  `img_width` int(13) NOT NULL,
  `size` varchar(50) NOT NULL,
  `image_status` enum('Y','N') DEFAULT NULL,
  `rollnum` varchar(40) DEFAULT NULL,
  `teamid` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `img`
--

INSERT INTO `img` (`id`, `img_base_name`, `img_ext`, `img_height`, `img_width`, `size`, `image_status`, `rollnum`, `teamid`) VALUES
(7, '1', 'jpg', 480, 640, '342797', 'Y', 'cse11308', '3');

-- --------------------------------------------------------

--
-- Table structure for table `panel`
--

CREATE TABLE IF NOT EXISTS `panel` (
  `panelid` int(10) NOT NULL AUTO_INCREMENT,
  `coord_name` varchar(50) NOT NULL,
  `mem_name` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`panelid`),
  UNIQUE KEY `panelid` (`panelid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `panel`
--

INSERT INTO `panel` (`panelid`, `coord_name`, `mem_name`) VALUES
(3, 'Arun', '\r\nP.Prakash\r\n\r\n,Arun');

-- --------------------------------------------------------

--
-- Table structure for table `project_details`
--

CREATE TABLE IF NOT EXISTS `project_details` (
  `projectid` int(40) NOT NULL AUTO_INCREMENT,
  `teamid` varchar(40) NOT NULL,
  `title` varchar(100) NOT NULL,
  `domain` varchar(75) NOT NULL,
  `subdomain` varchar(50) NOT NULL,
  `comments` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`teamid`),
  UNIQUE KEY `projectid` (`projectid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `project_details`
--

INSERT INTO `project_details` (`projectid`, `teamid`, `title`, `domain`, `subdomain`, `comments`) VALUES
(19, '1', 'Semantic Search', 'Information Retrieval', 'Networks', 'Good'),
(20, '2', 'Big Data ', 'Machine learning ', 'Networks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(32) NOT NULL,
  `access` int(10) unsigned DEFAULT NULL,
  `data` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staf_details`
--

CREATE TABLE IF NOT EXISTS `staf_details` (
  `staff_id` int(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile_no` varchar(40) NOT NULL,
  `dob` date DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mode` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `staf_details`
--

INSERT INTO `staf_details` (`staff_id`, `username`, `password`, `mobile_no`, `dob`, `email`, `name`, `mode`) VALUES
(1, 'admin', 'admin', '987456321', '1993-11-22', 'arunganesh321@gmail.com', '\nP.Prakash\n\n', 'Advisor,Guide,Coordinator,Panel'),
(2, 'admin1', 'admin', '9600801539', '2015-04-19', 'arunganesh321@gmail.com', 'Arun', NULL),
(3, 'admin2', 'admin', '9600801539', '2015-04-19', 'arunganesh321@gmail.com', 'Rama', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `std-details`
--

CREATE TABLE IF NOT EXISTS `std-details` (
  `stud_id` int(9) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `e-mail` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `name` varchar(40) DEFAULT NULL,
  `phno` varchar(50) DEFAULT NULL,
  `gender` varchar(5) DEFAULT NULL,
  `branch` varchar(20) DEFAULT NULL,
  `sec` varchar(20) DEFAULT NULL,
  `cgpa` float DEFAULT NULL,
  `acco` varchar(20) DEFAULT NULL,
  `placed` varchar(20) DEFAULT NULL,
  `company` varchar(20) DEFAULT NULL,
  `year` int(10) DEFAULT NULL,
  `teamid` int(12) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `stud_id` (`stud_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `std-details`
--

INSERT INTO `std-details` (`stud_id`, `username`, `pass`, `e-mail`, `dob`, `name`, `phno`, `gender`, `branch`, `sec`, `cgpa`, `acco`, `placed`, `company`, `year`, `teamid`) VALUES
(1, 'cse11308', '11308', 'arunganesh321@gmail.com', '1993-11-22', 'AR. Arun Ganesh', '9600801539', 'Male', 'CSE', 'D', 9, 'Day-scholar', 'Yes', 'wipro', 2015, 1),
(4, 'cse11309', '11309', '11309@gmail.com', '2015-04-19', 'Arya', '9600801539', 'Femal', 'CSE', 'D', 6, 'Hostelite', NULL, NULL, 2015, 2),
(3, 'cse11314', '11314', '11314@gmail.com', '2015-04-19', 'Diviya', '9600801539', 'Femal', 'CSE', 'D', 9, 'Hostelite', NULL, NULL, NULL, 2),
(2, 'cse11315', '11315', '11315@gmail.com', '2015-04-19', 'Gnana Sundaram', '9789338865', 'Male', 'CSE', 'D', 9, 'Day-scholar', 'No', '', 2015, 1),
(5, 'cse11347', '11347', '11347@gmail.com', '2015-04-19', 'Indhu', '9600801539', 'Femal', 'CSE', 'B', 9, 'Hostelite', 'yes', 'Wipro', 2015, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE IF NOT EXISTS `team_details` (
  `advisor` varchar(40) NOT NULL,
  `guide` varchar(40) NOT NULL,
  `avg_cgpa` float DEFAULT NULL,
  `status` varchar(40) NOT NULL DEFAULT 'Pending',
  `teamid` int(20) NOT NULL AUTO_INCREMENT,
  `mem_all` varchar(200) NOT NULL,
  `num_mem` int(12) NOT NULL,
  PRIMARY KEY (`teamid`),
  UNIQUE KEY `teamid` (`teamid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`advisor`, `guide`, `avg_cgpa`, `status`, `teamid`, `mem_all`, `num_mem`) VALUES
('\r\nP.Prakash\r\n\r\n', '\r\nP.Prakash\r\n\r\n', 9, 'Rejected', 1, 'cse11308,cse11315', 2),
('\r\nP.Prakash\r\n\r\n', '\r\nP.Prakash\r\n\r\n', 7.5, 'Accepted', 2, 'cse11314,cse11309', 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
