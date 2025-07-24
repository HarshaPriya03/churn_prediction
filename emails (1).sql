-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 12:29 PM
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
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `direction` enum('sent','received') NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `status` enum('sent','bounced','delivered','failed','replied') DEFAULT NULL,
  `opened_at` datetime DEFAULT NULL,
  `clicked_at` datetime DEFAULT NULL,
  `email_thread_id` varchar(50) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `is_archived` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `emails`
--

INSERT INTO `emails` (`id`, `lead_id`, `user_id`, `direction`, `subject`, `body`, `status`, `opened_at`, `clicked_at`, `email_thread_id`, `timestamp`, `is_archived`) VALUES
(1, 101, 12, 'sent', 'Welcome to Anika CRM', 'Hi Rakesh, Welcome to Anika CRM! Let’s help you get started today.', 'delivered', '2024-04-01 10:45:00', '2024-04-01 10:46:20', 'THREAD-001', '2024-04-01 10:45:00', 0),
(2, 101, 12, 'received', 'Re: Welcome to Anika', 'Sure, we will have a meet', 'replied', NULL, NULL, 'THREAD-001', '2024-04-01 11:05:00', 0),
(3, 102, 14, 'sent', 'Proposal Attached', 'Please find the pricing proposal attached.', 'bounced', NULL, NULL, 'THREAD-002', '2024-04-03 09:30:00', 0),
(4, 102, 14, 'received', 'Re: Welcome to Anika', 'Let’s initiate kick-off tomorrow. Let’s touch base again.', 'replied', NULL, NULL, 'THREAD-001', '2024-04-01 11:05:00', 0),
(6, 101, 12, 'sent', 'Welcome to Anika CRM', 'at what time, you are available to have a meet', 'delivered', '2024-04-01 10:45:00', '2024-04-01 10:46:20', 'THREAD-001', '2024-04-01 10:45:00', 0),
(7, 101, 12, 'received', 'Re: Welcome to Anika', '11:40 am ', 'replied', NULL, NULL, 'THREAD-001', '2024-04-01 11:05:00', 0),
(8, 113, NULL, 'sent', 'Hope you\'re doing well. Any thoughts on the CRM trial?', 'Hope you\'re doing well. Any thoughts on the CRM trial?', 'delivered', NULL, NULL, NULL, '2025-06-26 16:47:06', 0),
(9, 113, NULL, 'sent', 'Hope you\'re doing well. Any thoughts on the CRM trial?', ' Following up on my last email — any updates from your side?', 'delivered', NULL, NULL, NULL, '2025-06-30 13:41:27', 0),
(10, 113, NULL, 'received', 'Hope you\'re doing well. Any thoughts on the CRM trial?', 'Sorry, we’re tied up right now. Let’s revisit this later.', 'delivered', NULL, NULL, NULL, '2025-06-30 13:41:47', 0),
(11, 113, NULL, 'sent', 'Hope you\'re doing well. Any thoughts on the CRM trial?', 'Just wondering if you had a chance to review our pricing options.', 'delivered', NULL, NULL, NULL, '2025-06-30 13:42:07', 0),
(12, 113, NULL, 'received', 'Hope you\'re doing well. Any thoughts on the CRM trial?', 'Received: We like it, but need to discuss it with finance first.', 'delivered', NULL, NULL, NULL, '2025-06-30 13:42:21', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
