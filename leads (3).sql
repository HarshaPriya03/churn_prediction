-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2025 at 12:32 PM
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
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `lead_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `source` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `assigned_to` int(11) NOT NULL,
  `status` varchar(20) DEFAULT 'Unassigned',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `category` varchar(20) DEFAULT 'Unassigned',
  `priority` varchar(10) DEFAULT 'Medium',
  `score` int(11) DEFAULT 0,
  `qualification_status` varchar(20) DEFAULT 'Pending',
  `converted_at` timestamp NULL DEFAULT NULL,
  `converted_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`lead_id`, `name`, `email`, `phone`, `source`, `message`, `assigned_to`, `status`, `created_at`, `category`, `priority`, `score`, `qualification_status`, `converted_at`, `converted_by`) VALUES
(6, 'Nehru Stevens', 'qamyju@mailinator.com', '7412356984', 'Web', 'Non aliquip nostrum ', 2, 'Assigned', '2025-05-19 03:09:54', 'Hot', 'Medium', 0, 'Pending', NULL, NULL),
(101, 'Rahul Kumar', 'rahul@gmail.com', '9876543210', 'Web', 'Interested in product', 1, 'Assigned', '2025-05-19 01:34:41', 'Super Hot', 'Medium', 0, 'Pending', NULL, NULL),
(102, 'Meena Jain', 'meena@gmail.com', '9123456789', 'Referral', 'Wants a callback', 2, 'Assigned', '2025-05-19 01:34:41', 'Super Hot', 'Medium', 0, 'Pending', NULL, NULL),
(103, 'Arvind Rao', 'arvind@gmail.com', '9991112223', 'Networking', 'Asking for demo', 3, 'Assigned', '2025-05-19 01:34:41', 'Hot', 'Medium', 0, 'Pending', NULL, NULL),
(104, 'Stuart Holland', 'tabetoh@mailinator.com', '8121126998', 'Referral', 'Qui dolorem vel aspe', 4, 'Assigned', '2025-05-19 01:41:37', 'Cold', 'Medium', 0, 'Pending', NULL, NULL),
(105, 'Venus Pugh', 'genomu@mailinator.com', '8512369745', 'Networking', 'Magna quis ut sed at', 2, 'Assigned', '2025-05-19 05:30:31', 'Warm', 'Medium', 0, 'Pending', NULL, NULL),
(106, 'Steel Guzman', 'nixaduhaw@mailinator.com', '7949466464', 'Networking', 'Sunt rerum tempora ', 3, 'Assigned', '2025-05-19 05:31:34', 'Cold', 'Medium', 0, 'Pending', NULL, NULL),
(107, 'James Bradford', 'soqam@mailinator.com', '7741714141', 'Referral', 'In eum illo et quisq', 4, 'Assigned', '2025-05-19 06:22:56', 'Unassigned', 'Medium', 0, 'Pending', NULL, NULL),
(113, 'PUTSALA HARSHA PRIYA', 'putsalaharshapriya@gmail.com', '09398830730', 'Web', '', 1, 'Assigned', '2025-06-26 11:17:06', 'Inactive', 'Medium', 0, 'Pending', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
