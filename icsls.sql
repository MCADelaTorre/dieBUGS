-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 20, 2014 at 07:06 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `icsls`
--
CREATE DATABASE IF NOT EXISTS `icsls` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `icsls`;

-- --------------------------------------------------------

--
-- Table structure for table `reference_material`
--

CREATE TABLE IF NOT EXISTS `reference_material` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(500) NOT NULL,
  `author` tinytext NOT NULL,
  `isbn` varchar(13) DEFAULT NULL,
  `category` char(1) NOT NULL,
  `description` text,
  `publisher` varchar(100) DEFAULT NULL,
  `publication_year` int(4) DEFAULT NULL,
  `access_type` char(1) NOT NULL,
  `course_code` varchar(6) NOT NULL,
  `total_available` int(2) NOT NULL,
  `total_stock` int(2) NOT NULL,
  `times_borrowed` int(5) DEFAULT '0',
  `for_deletion` char(1) DEFAULT 'F',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `reference_material`
--

INSERT INTO `reference_material` (`id`, `title`, `author`, `isbn`, `category`, `description`, `publisher`, `publication_year`, `access_type`, `course_code`, `total_available`, `total_stock`, `times_borrowed`, `for_deletion`) VALUES
(1, 'Computer Applications in Engineering Education', 'Magdy F. Iskander', NULL, 'J', NULL, 'Wiley Periodicals, Inc., A Wiley Company', 2014, 'F', 'CS128', 6, 6, 0, 'F'),
(2, 'Model-Driven and Software Product Line Engineering', 'Hugo Arboleda', '9781848214279', 'B', NULL, 'ISTE Ltd', 2012, 'F', 'CS128', 5, 5, 0, 'F'),
(3, 'Computational Intelligence', 'Ali Ghorbani', NULL, 'J', 'This leading international journal promotes and stimulates research in the field of artificial intelligence (AI).', 'Wiley Periodicals, Inc.', 2014, 'S', 'CS170', 5, 5, 0, 'F'),
(4, 'Emerging Methods, Technologies, and Process Management in Software Engineering', 'Andrea De Lucia', '9780470085714', 'B', NULL, 'John Wiley & Sons, Inc.', 2008, 'S', 'CS128', 7, 7, 0, 'F'),
(5, 'Process Control Engineering', 'M. Polke', '9783527286898', 'B', 'This book surveys methods, problems, and tools used in process control engineering. Its scope has been purposely made broad in order to permit an overall view of this subject.', 'VCH Verlagsgesellschaft mbH', 1994, 'F', 'CS125', 2, 2, 0, 'F'),
(6, 'The Handbook of Information and Computer Ethics', 'Kenneth Einar Himma', '9780471799597', 'B', 'This handbook provides an accessible overview of the most important issues in information and computer ethics.', 'John Wiley & Sons, Inc.', 2008, 'F', 'CS11', 3, 3, 0, 'F'),
(7, 'Random Structures & Algorithms', 'Michal Karonski', NULL, 'J', NULL, 'Wiley Periodicals, Inc., A Wiley Company', 2014, 'S', 'CS123', 9, 9, 0, 'F'),
(8, 'Network Modeling and Simulation: A Practical Perspective', 'Mohsen Guizani', '9780470035870', 'B', 'Network Modeling and Simulation is a practical guide to using modeling and simulation to solve real-life problems.', 'John Wiley & Sons, Ltd', 2010, 'F', 'CS100', 2, 2, 0, 'F'),
(9, 'Advanced Computer Architecture and Parallel Processing', 'Hesham El-Rewini', '9780471467403', 'B', 'Computer architecture deals with the physical configuration, logical structure, formats, protocols, and operational sequences for processing data, controlling the configuration, and controlling the operations over a computer.', 'John Wiley & Sons, Inc.', 2005, 'F', 'CS132', 8, 8, 0, 'F'),
(10, 'Computer Animation and Virtual Worlds', 'Nadia Magnenat Thalmann', NULL, 'J', NULL, 'John Wiley & Sons, Ltd.', NULL, 'S', 'CS161', 6, 6, 0, 'F'),
(11, '3D Object Processing: Compression, Indexing and Watermarking', 'Jean-Luc Dugelay', '9780470065426', 'B', '', 'John Wiley &amp; Sons, Ltd', 2008, 'F', 'CS161', 4, 4, 0, 'F'),
(12, 'Computer System Design: System-on-Chip', 'Michael J. Flynn', '9780470643365', 'B', NULL, 'John Wiley & Sons, Inc.', 2011, 'F', 'CS132', 3, 3, 0, 'F'),
(13, 'Compiler Construction Using Java, JavaCC, and Yacc', 'Anthony J. Dos Reis', '9780470949597', 'B', 'Broad in scope, involving theory, the application of that theory, and programming technology, compiler construction is a moving target, with constant advances in compiler technology taking place.', 'the IEEE Computer Society, Inc.', 2012, 'S', 'CS129', 2, 2, 0, 'F'),
(14, 'Concurrency and Computation: Practice and Experience', 'Geoffrey C. Fox', NULL, 'J', NULL, 'John Wiley & Sons, Ltd.', 2014, 'F', 'CS132', 1, 1, 0, 'F'),
(15, 'Mobile 3D Graphics SoC: From Algorithm to Chip', 'Jeong-Ho Woo', '9780470823774', 'B', 'The first book to explain the principals behind mobile 3D hardware implementation, helping readers understand advanced algorithms, produce low-cost, low-power SoCs, or become familiar with embedded systems', 'John Wiley & Sons (Asia) Pte Ltd', 2010, 'F', 'CS161', 7, 7, 0, 'F'),
(16, 'Journal of Computer-Mediated Communication', 'S. Shyam Sundar', NULL, 'J', NULL, 'International Communication Association', 2014, 'S', 'CS170', 6, 6, 0, 'F'),
(17, 'Journal of Software: Evolution and Process', 'Gerardo Canfora', NULL, 'J', NULL, 'John Wiley & Sons, Ltd.', NULL, 'F', 'CS128', 6, 6, 0, 'F'),
(18, 'Internet Technologies Handbook: Optimizing the IP Network', 'Mark A. Miller', '9780471480501', 'B', 'A comprehensive reference that addresses the need for solid understanding of the operation of IP networks, plus optimization and management techniques to keep those networks running at peak performance', 'Mark A. Miller. All rights reserved.', 2004, 'F', 'CS100', 7, 7, 0, 'F'),
(19, 'International Journal of Network Management', 'James Won-Ki Hong', NULL, 'J', NULL, 'John Wiley & Sons, Ltd.', NULL, 'S', 'CS100', 3, 3, 0, 'F'),
(20, 'Fundamentals of Software Testing', 'Bernard Homès', '9781848213241', 'B', NULL, 'ISTE Ltd', 2012, 'F', 'CS128', 5, 5, 0, 'F'),
(21, 'Designing a Better Authentication Model', 'Prashasti Gehalot', NULL, 'T', NULL, NULL, 2013, 'S', 'CS132', 1, 1, 0, 'F'),
(22, 'Introduction to the Theory of Computation 2nd edition', 'Michael Sipser', NULL, 'B', NULL, NULL, NULL, 'S', 'CS141', 1, 1, 0, 'F');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `reference_material_id` int(11) NOT NULL,
  `borrower_id` int(11) NOT NULL,
  `user_type` int(11) NOT NULL,
  `waitlist_rank` int(2) DEFAULT NULL,
  `date_waitlisted` date DEFAULT NULL,
  `date_reserved` date DEFAULT NULL,
  `reservation_due_date` date DEFAULT NULL,
  `date_borrowed` date DEFAULT NULL,
  `borrow_due_date` date DEFAULT NULL,
  `date_returned` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `employee_number` varchar(9) DEFAULT NULL,
  `student_number` varchar(10) DEFAULT NULL,
  `last_name` varchar(32) NOT NULL,
  `first_name` varchar(32) NOT NULL,
  `middle_name` varchar(32) DEFAULT NULL,
  `user_type` char(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `college_address` varchar(150) NOT NULL,
  `email_address` varchar(60) NOT NULL,
  `contact_number` varchar(11) NOT NULL,
  `borrow_limit` int(1) DEFAULT NULL,
  `waitlist_limit` int(1) DEFAULT NULL,
  `college` varchar(6) DEFAULT NULL,
  `degree` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_number` (`employee_number`,`student_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `employee_number`, `student_number`, `last_name`, `first_name`, `middle_name`, `user_type`, `username`, `password`, `college_address`, `email_address`, `contact_number`, `borrow_limit`, `waitlist_limit`, `college`, `degree`) VALUES
(5, '12356', NULL, 'Dela Torre', 'MC', 'A', 'L', 'librarian', 'ee11cbb19052e40b07aac0ca060c23ee', 'there', 'a@b.com', '', NULL, NULL, 'CAS', 'BSCS'),
(7, '', NULL, 'as', 'aas', 'as', 'S', 'asd', '7815696ecbf1c96e6894b779456d330e', 'asd', 'ab@ba.com', '', NULL, NULL, NULL, NULL),
(8, '', NULL, 'Dela Torre', 'Mary Ruth', 'Alcan tara', 'S', 'mary31', 'e15be976609a8e0fe1918416b492c272', 'there', 'ab@ba.com', '09052786318', NULL, NULL, NULL, NULL),
(9, NULL, '', 'troll', 'troll', 'troll', 'S', 'troll', '9aeaed51f2b0f6680c4ed4b07fb1a83c', 'trolling', 'troll@troll.com', '09052786318', NULL, NULL, 'colleg', 'MSCo'),
(10, NULL, '2015-99999', 'troll', 'troll', 'troll', 'S', 'troll1', '9aeaed51f2b0f6680c4ed4b07fb1a83c', 'trolling', 'atroll@troll.com', '09052786318', NULL, NULL, 'colleg', 'MSCo'),
(11, '123456789', NULL, 'frog', 'frog', 'frog', 'F', 'frog', '938c2cc0dcc05f2b68c4287040cfcf71', 'froggy', 'frog@frog.com', '09052786318', 3, 3, NULL, NULL),
(12, NULL, '2014-00000', 'Bambi', 'bambino', 'B.', 'S', 'BAMBINO', 'ee11cbb19052e40b07aac0ca060c23ee', 'there oh!', 'bambino@yehey.com', '09052786318', 3, 5, 'CA', 'BSFT');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
