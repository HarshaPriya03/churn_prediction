-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 09:39 AM
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
-- Table structure for table `lead_engagement_summary`
--

CREATE TABLE `lead_engagement_summary` (
  `lead_id` int(11) NOT NULL,
  `derived_from` varchar(50) DEFAULT NULL,
  `last_contact_date` date DEFAULT NULL,
  `inactivity_days` text DEFAULT NULL,
  `negative_sentiment_count` int(11) DEFAULT NULL,
  `total_interactions` text DEFAULT NULL,
  `missed_followups` int(11) DEFAULT NULL,
  `calls_category` varchar(20) DEFAULT NULL,
  `meetings_category` varchar(20) DEFAULT NULL,
  `emails_category` varchar(20) DEFAULT NULL,
  `final_category` varchar(20) DEFAULT NULL,
  `converted` enum('Yes','No') DEFAULT NULL,
  `churn_label` varchar(30) DEFAULT NULL,
  `churn_score` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_engagement_summary`
--

INSERT INTO `lead_engagement_summary` (`lead_id`, `derived_from`, `last_contact_date`, `inactivity_days`, `negative_sentiment_count`, `total_interactions`, `missed_followups`, `calls_category`, `meetings_category`, `emails_category`, `final_category`, `converted`, `churn_label`, `churn_score`) VALUES
(101, 'emails.related_to', '2025-07-24', '{\"week 1\": 2, \"week 2\": 3, \"week 3\": 1}', 0, '{\"week 1\": 5, \"week 2\": 6, \"week 3\": 4}', 1, 'Warm', 'Hot', 'Warm', 'Hot', 'No', '0.0', 0),
(102, 'calls.related_to', '2025-07-24', '{\"week 1\": 1, \"week 2\": 2, \"week 3\": 2, \"week 4\": 0}', 1, '{\"week 1\": 3, \"week 2\": 5, \"week 3\": 6, \"week 4\": 8}', 0, 'Cool', 'Warm', 'Hot', 'Warm', 'Yes', '10.0', 0),
(103, 'tasks.lead_id', '2025-07-24', '{\"week 1\": 0, \"week 2\": 1, \"week 3\": 3, \"week 4\": 2, \"week 5\": 1}', 2, '{\"week 1\": 2, \"week 2\": 3, \"week 3\": 5, \"week 4\": 4, \"week 5\": 6}', 1, 'Warm', 'Warm', 'Cool', 'Warm', 'No', '27.0', 0),
(104, 'emails.related_to', '2025-07-24', '{\"week 1\": 3, \"week 2\": 2, \"week 3\": 1, \"week 4\": 1, \"week 5\": 0, \"week 6\": 0}', 0, '{\"week 1\": 1, \"week 2\": 2, \"week 3\": 2, \"week 4\": 3, \"week 5\": 4, \"week 6\": 5}', 2, 'Hot', 'Hot', 'Hot', 'Hot', 'No', '2.33', 0),
(105, 'calls.related_to', '2025-07-24', '{\"week 1\": 1, \"week 2\": 2, \"week 3\": 2, \"week 4\": 1, \"week 5\": 0, \"week 6\": 1, \"week 7\": 3, \"week 8\": 2}', 3, '{\"week 1\": 1, \"week 2\": 3, \"week 3\": 4, \"week 4\": 3, \"week 5\": 5, \"week 6\": 4, \"week 7\": 2, \"week 8\": 3}', 2, 'Cool', 'Cool', 'Warm', 'Cool', 'Yes', '55.67', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lead_engagement_summary`
--
ALTER TABLE `lead_engagement_summary`
  ADD PRIMARY KEY (`lead_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
