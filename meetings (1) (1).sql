-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 02, 2025 at 12:29 AM
-- Server version: 10.6.21-MariaDB-cll-lve
-- PHP Version: 8.3.22

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
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` int(11) NOT NULL,
  `meeting_id` varchar(10) NOT NULL,
  `meeting_for` varchar(100) DEFAULT NULL,
  `related_to` varchar(255) DEFAULT NULL,
  `meeting_title` varchar(255) DEFAULT NULL,
  `meeting_datetime` varchar(100) DEFAULT NULL,
  `meeting_type` varchar(100) DEFAULT NULL,
  `location` text DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `meeting_link` text DEFAULT NULL,
  `participants` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `agenda` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `meeting_id`, `meeting_for`, `related_to`, `meeting_title`, `meeting_datetime`, `meeting_type`, `location`, `platform`, `meeting_link`, `participants`, `description`, `agenda`, `created_at`, `updated_at`) VALUES
(1, 'M00003', 'Lead', '101', 'Introductory Call', '2025-07-01T11:00', 'virtual', NULL, 'Google Meet', 'https://meet.google.com/abc-defg-hij', 'Rahul Mehta, Ramesh Iyer', 'Initial intro call with lead.', 'Discuss services and pricing.', '2025-07-02 00:28:58', '2025-07-02 00:28:58'),
(2, 'M00004', 'Lead', '102', 'Onboarding Discussion', '2025-07-02T14:30', 'in-person', 'Bangalore HQ', NULL, NULL, 'Ankita Verma, Sneha Nair', 'Client wants onboarding support.', 'Walk through CRM setup.', '2025-07-02 00:28:58', '2025-07-02 00:28:58'),
(3, 'M00005', 'Client', '103', 'Proposal Review Meeting', '2025-07-03T16:00', 'virtual', NULL, 'Zoom', 'https://zoom.us/j/1234567890', 'Vinod Reddy, Amit Kumar', 'Review shared proposal.', 'Go over pricing and scope.', '2025-07-02 00:28:58', '2025-07-02 00:28:58'),
(4, 'M00006', 'Lead', '104', 'Technical Integration Demo', '2025-07-04T10:00', 'virtual', NULL, 'Microsoft Teams', 'https://teams.microsoft.com/l/meetup', 'Nisha Banerjee, Priya Shah', 'Tech team joins demo.', 'Integration walkthrough.', '2025-07-02 00:28:58', '2025-07-02 00:28:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_id` (`meeting_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
