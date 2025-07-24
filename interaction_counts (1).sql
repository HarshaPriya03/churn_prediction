-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 12:52 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `categories_lead`
--

-- --------------------------------------------------------

--
-- Table structure for table `interaction_counts`
--

CREATE TABLE `interaction_counts` (
  `lead_id` int(11) NOT NULL,
  `calls` text NOT NULL,
  `meetings` text NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `interaction_counts`
--

INSERT INTO `interaction_counts` (`lead_id`, `calls`, `meetings`, `email`) VALUES
(6, '{}', '{}', ''),
(101, '{\"week 1\": 0, \"week 2\": 0, \"week 3\": 0, \"week 4\": 0, \"week 5\": 0, \"week 6\": 0, \"week 7\": 2}', '{\"week 1\": 2}', ''),
(102, '{\"week 1\": 0, \"week 2\": 0, \"week 3\": 0, \"week 4\": 0, \"week 5\": 0, \"week 6\": 0, \"week 7\": 2}', '{\"week 1\": 1}', ''),
(103, '{\"week 1\": 0, \"week 2\": 0, \"week 3\": 0, \"week 4\": 0, \"week 5\": 0, \"week 6\": 0, \"week 7\": 2}', '{}', ''),
(104, '{\"week 1\": 0, \"week 2\": 0, \"week 3\": 0, \"week 4\": 0, \"week 5\": 0, \"week 6\": 0, \"week 7\": 2}', '{}', ''),
(105, '{\"week 1\": 0, \"week 2\": 0, \"week 3\": 0, \"week 4\": 0, \"week 5\": 0, \"week 6\": 0, \"week 7\": 1}', '{}', ''),
(106, '{\"week 1\": 0, \"week 2\": 0, \"week 3\": 0, \"week 4\": 0, \"week 5\": 0, \"week 6\": 0, \"week 7\": 1}', '{}', ''),
(107, '{}', '{}', ''),
(113, '{}', '{\"week 1\": 2}', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `interaction_counts`
--
ALTER TABLE `interaction_counts`
  ADD PRIMARY KEY (`lead_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
