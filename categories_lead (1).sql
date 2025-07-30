-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2025 at 12:49 PM
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
-- Table structure for table `calls`
--

CREATE TABLE `calls` (
  `id` int(11) NOT NULL,
  `call_id` varchar(10) NOT NULL,
  `call_for` varchar(50) DEFAULT NULL,
  `related_to` varchar(50) NOT NULL,
  `call_type` varchar(50) DEFAULT NULL,
  `call_status` varchar(50) DEFAULT NULL,
  `call_date` varchar(50) DEFAULT NULL,
  `call_time` varchar(10) NOT NULL,
  `duration_minutes` int(11) DEFAULT 0,
  `duration_seconds` int(11) DEFAULT 0,
  `subject` varchar(255) DEFAULT NULL,
  `voice_recording` varchar(255) DEFAULT NULL,
  `call_purpose` varchar(100) DEFAULT NULL,
  `call_agenda` varchar(255) DEFAULT NULL,
  `call_result` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lead_id` varchar(20) DEFAULT NULL,
  `assigned_to` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calls`
--

INSERT INTO `calls` (`id`, `call_id`, `call_for`, `related_to`, `call_type`, `call_status`, `call_date`, `call_time`, `duration_minutes`, `duration_seconds`, `subject`, `voice_recording`, `call_purpose`, `call_agenda`, `call_result`, `description`, `lead_id`, `assigned_to`, `created_at`, `updated_at`) VALUES
(1, 'C00010', 'Contact', '101', 'Outbound', 'Completed', '2025-06-25', '11:00 AM', 6, 12, 'Initial Discussion', NULL, 'Intro Call', 'Explained services', 'Interested', 'Lead was positive and asked for quote.', '101', 'E-20250701-01', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(2, 'C00011', 'Contact', '102', 'Inbound', 'Completed', '2025-06-26', '02:45 PM', 9, 5, 'Support Request', NULL, 'Issue Clarification', 'Resolved small query', 'Resolved', 'Answered product compatibility questions.', '102', 'E-20250701-02', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(3, 'C00012', 'Contact', '103', 'Outbound', 'Completed', '2025-06-27', '09:30 AM', 7, 30, 'Follow-up', NULL, 'Follow-up Discussion', 'Discussed timeline', 'Pending', 'Client needs internal approval.', '103', 'E-20250701-03', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(4, 'C00013', 'Contact', '104', 'Outbound', 'Completed', '2025-06-28', '04:15 PM', 10, 45, 'Demo Scheduling', NULL, 'Schedule Demo', 'Demo planned for Monday', 'Scheduled', 'Demo booked with tech team.', '104', 'E-20250701-01', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(5, 'C00014', 'Contact', '105', 'Outbound', 'Completed', '2025-06-29', '01:00 PM', 4, 10, 'Pricing Clarification', NULL, 'Answer Queries', 'Shared rate card', 'Interested', 'Positive call, lead is price sensitive.', '105', 'E-20250701-04', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(6, 'C00015', 'Contact', '106', 'Outbound', 'Completed', '2025-06-30', '12:00 PM', 8, 0, 'Conversion Attempt', NULL, 'Proposal Discussion', 'Ready to buy soon', 'Negotiation', 'Lead negotiating payment terms.', '106', 'E-20250701-02', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(7, 'C00016', 'Contact', '101', 'Inbound', 'Completed', '2025-07-01', '10:20 AM', 3, 20, 'Call Back', NULL, 'Missed Follow-up', 'Returned call from yesterday', 'Connected', 'Quick catch-up, no issues.', '101', 'E-20250701-01', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(8, 'C00017', 'Contact', '102', 'Outbound', 'Completed', '2025-07-01', '03:45 PM', 6, 50, 'Technical Query', NULL, 'Clarify Specifications', 'Explained integration options', 'Resolved', 'Client is evaluating options.', '102', 'E-20250701-03', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(9, 'C00018', 'Contact', '103', 'Inbound', 'Completed', '2025-07-01', '04:30 PM', 5, 0, 'Document Request', NULL, 'Send Docs', 'Shared proposal PDF', 'Shared', 'Proposal emailed successfully.', '103', 'E-20250701-04', '2025-07-01 10:22:08', '2025-07-01 10:22:08'),
(10, 'C00019', 'Contact', '104', 'Outbound', 'Completed', '2025-07-01', '05:15 PM', 7, 10, 'Demo Reminder', NULL, 'Demo Reminder', 'Reminder for demo tomorrow', 'Reminder Sent', 'Client confirmed attendance.', '104', 'E-20250701-01', '2025-07-01 10:22:08', '2025-07-01 10:22:08');

-- --------------------------------------------------------

--
-- Table structure for table `calls_one`
--

CREATE TABLE `calls_one` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `call_type` enum('inbound','outbound') DEFAULT NULL,
  `call_duration` int(11) DEFAULT NULL,
  `call_status` enum('completed','missed','no-answer') DEFAULT NULL,
  `recording_url` text DEFAULT NULL,
  `transcript` text DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calls_one`
--

INSERT INTO `calls_one` (`id`, `lead_id`, `user_id`, `call_type`, `call_duration`, `call_status`, `recording_url`, `transcript`, `timestamp`) VALUES
(1, 101, 12, 'outbound', 420, 'completed', '/calls/rec-101.mp3', 'Interested. Wants demo tomorrow', '2024-04-02 15:00:00'),
(2, 102, 14, 'outbound', 0, 'no-answer', NULL, NULL, '2024-04-03 10:30:00'),
(3, 103, 12, 'inbound', 300, 'completed', '/calls/rec-103.mp3', 'Asking for revised quote', '2024-04-05 11:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `communication_logs`
--

CREATE TABLE `communication_logs` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_type` enum('email_sent','email_opened','email_replied','call_made','call_received','sms_sent','whatsapp_sent','linkedin_msg','meeting_in_person','form_submitted') DEFAULT NULL,
  `channel` enum('email','call','sms','whatsapp','linkedin','in_person','form','other') DEFAULT NULL,
  `reference_id` int(11) DEFAULT NULL,
  `message_snippet` text DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `source` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `communication_logs`
--

INSERT INTO `communication_logs` (`id`, `lead_id`, `user_id`, `action_type`, `channel`, `reference_id`, `message_snippet`, `location`, `timestamp`, `duration`, `source`) VALUES
(1, 101, 12, 'email_sent', 'email', 1, 'Welcome to Anika CRM', NULL, '2024-04-01 10:45:00', NULL, NULL),
(2, 101, NULL, 'email_replied', 'email', 2, 'Thanks. Schedule a demo?', NULL, '2024-04-01 11:05:00', NULL, NULL),
(3, 103, 14, 'whatsapp_sent', 'whatsapp', NULL, 'Shared brochure via WhatsApp', NULL, '2024-04-04 13:00:00', NULL, NULL),
(4, 103, 14, 'linkedin_msg', 'linkedin', NULL, 'Replied to InMail: Wants to connect', NULL, '2024-04-04 13:10:00', NULL, NULL),
(5, 105, 14, 'meeting_in_person', 'in_person', NULL, 'Met at Trade Fair, gave demo on tablet', 'Pragati Maidan', '2024-04-05 12:30:00', NULL, NULL),
(6, 106, 13, 'call_made', 'call', NULL, 'Follow-up call, discussed terms', NULL, '2024-04-06 10:30:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `conversation_text` text DEFAULT NULL,
  `predicted_label` varchar(50) DEFAULT NULL,
  `confidence_score` decimal(5,4) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `lead_id`, `conversation_text`, `predicted_label`, `confidence_score`, `created_at`, `updated_at`) VALUES
(2, 113, 'sent: Hope you\'re doing well. Any thoughts on the CRM trial?\n Following up on my last email — any updates from your side?', 'Inactive', NULL, '2025-06-30 08:11:27', '2025-06-30 08:11:27'),
(3, 113, 'received: Hope you\'re doing well. Any thoughts on the CRM trial?\nSorry, we’re tied up right now. Let’s revisit this later.', 'Inactive', NULL, '2025-06-30 08:11:47', '2025-06-30 08:11:47'),
(4, 113, 'sent: Hope you\'re doing well. Any thoughts on the CRM trial?\nJust wondering if you had a chance to review our pricing options.', 'Inactive', NULL, '2025-06-30 08:12:07', '2025-06-30 08:12:07'),
(5, 113, 'received: Hope you\'re doing well. Any thoughts on the CRM trial?\nReceived: We like it, but need to discuss it with finance first.', 'Inactive', NULL, '2025-06-30 08:12:21', '2025-06-30 08:12:21');

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

-- --------------------------------------------------------

--
-- Table structure for table `inactivity_days`
--

CREATE TABLE `inactivity_days` (
  `lead_id` int(11) NOT NULL,
  `inactivity_days` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inactivity_days`
--

INSERT INTO `inactivity_days` (`lead_id`, `inactivity_days`) VALUES
(6, 7),
(101, 32),
(102, 32),
(103, 32),
(104, 32),
(105, 33),
(106, 33),
(107, 7),
(113, 34);

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

-- --------------------------------------------------------

--
-- Table structure for table `lead_assignments`
--

CREATE TABLE `lead_assignments` (
  `assignment_id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `assigned_to` int(11) DEFAULT NULL,
  `assigned_by` int(11) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lead_assignments`
--

INSERT INTO `lead_assignments` (`assignment_id`, `lead_id`, `assigned_to`, `assigned_by`, `assigned_at`) VALUES
(1, 6, 2, 1, '2025-05-19 05:32:18');

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
(101, 'emails.related_to', '2025-07-24', '', 0, '{\"week 1\": 5, \"week 2\": 6, \"week 3\": 4}', 1, 'Warm', 'Hot', 'Warm', 'Hot', 'No', 'Low Churn Risk', 0),
(102, 'calls.related_to', '2025-07-24', '{\"week 1\": 1, \"week 2\": 2, \"week 3\": 2, \"week 4\": 0}', 1, '{\"week 1\": 3, \"week 2\": 5, \"week 3\": 6, \"week 4\": 8}', 0, 'Cool', 'Warm', 'Hot', 'Warm', 'Yes', 'Low Churn Risk', 10),
(103, 'tasks.lead_id', '2025-07-24', '{\"week 1\": 0, \"week 2\": 1, \"week 3\": 3, \"week 4\": 2, \"week 5\": 1}', 2, '{\"week 1\": 2, \"week 2\": 3, \"week 3\": 5, \"week 4\": 4, \"week 5\": 6}', 1, 'Warm', 'Warm', 'Cool', 'Warm', 'No', 'Low Churn Risk', 27),
(104, 'emails.related_to', '2025-07-24', '{\"week 1\": 3, \"week 2\": 2, \"week 3\": 1, \"week 4\": 1, \"week 5\": 0, \"week 6\": 0}', 0, '{\"week 1\": 1, \"week 2\": 2, \"week 3\": 2, \"week 4\": 3, \"week 5\": 4, \"week 6\": 5}', 2, 'Hot', 'Hot', 'Hot', 'Hot', 'No', 'Low Churn Risk', 2.33),
(105, 'calls.related_to', '2025-07-24', '{\"week 1\": 1, \"week 2\": 2, \"week 3\": 2, \"week 4\": 1, \"week 5\": 0, \"week 6\": 1, \"week 7\": 3, \"week 8\": 2}', 3, '{\"week 1\": 1, \"week 2\": 3, \"week 3\": 4, \"week 4\": 3, \"week 5\": 5, \"week 6\": 4, \"week 7\": 2, \"week 8\": 3}', 2, 'Cool', 'Cool', 'Warm', 'Cool', 'Yes', 'Medium Churn Risk', 55.67);

-- --------------------------------------------------------

--
-- Table structure for table `lead_follow_ups`
--

CREATE TABLE `lead_follow_ups` (
  `follow_up_id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `follow_up_date` date DEFAULT NULL,
  `method` varchar(20) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'Pending',
  `notes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `meeting_notes`
--

CREATE TABLE `meeting_notes` (
  `id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `created_by` varchar(100) DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meeting_notes`
--

INSERT INTO `meeting_notes` (`id`, `meeting_id`, `note_text`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lead showed strong interest. Requested pricing sheet.', 'rahul.mehta', '2025-07-02 07:28:58', '2025-07-02 07:28:58'),
(2, 2, 'Discussed CRM training schedule. Client satisfied with onboarding flow.', 'ankita.verma', '2025-07-02 07:28:58', '2025-07-02 07:28:58'),
(3, 3, 'Client had concerns about SLA terms. Follow-up required.', 'vinod.reddy', '2025-07-02 07:28:58', '2025-07-02 07:28:58'),
(4, 4, 'Demo successful. Client asked for API documentation.', 'nisha.banerjee', '2025-07-02 07:28:58', '2025-07-02 07:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `page_time_logs`
--

CREATE TABLE `page_time_logs` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `page_url` text DEFAULT NULL,
  `time_spent` int(11) DEFAULT NULL,
  `entry_time` datetime DEFAULT NULL,
  `exit_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_time_logs`
--

INSERT INTO `page_time_logs` (`id`, `lead_id`, `session_id`, `user_id`, `page_url`, `time_spent`, `entry_time`, `exit_time`) VALUES
(1, 101, 'SESS001', NULL, '/pricing', 120, '2024-04-01 10:42:10', '2024-04-01 10:44:10'),
(2, 101, 'SESS001', NULL, '/demo-request', 180, '2024-04-01 10:44:11', '2024-04-01 10:47:11'),
(3, 104, 'SESS004', NULL, '/product-comparison', 45, '2024-04-06 14:00:00', '2024-04-06 14:00:45');

-- --------------------------------------------------------

--
-- Table structure for table `page_views`
--

CREATE TABLE `page_views` (
  `id` int(11) NOT NULL,
  `lead_id` int(11) DEFAULT NULL,
  `session_id` varchar(50) DEFAULT NULL,
  `page_url` text DEFAULT NULL,
  `device` enum('desktop','mobile','tablet') DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `referrer_url` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `page_views`
--

INSERT INTO `page_views` (`id`, `lead_id`, `session_id`, `page_url`, `device`, `browser`, `referrer_url`, `timestamp`) VALUES
(1, 101, 'SESS001', '/pricing', 'desktop', 'Chrome', '/home', '2024-04-01 10:42:10'),
(2, 101, 'SESS001', '/demo-request', 'desktop', 'Chrome', '/pricing', '2024-04-01 10:44:11'),
(3, 104, 'SESS004', '/product-comparison', 'mobile', 'Safari', '/ad/google-crm', '2024-04-06 14:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` varchar(30) NOT NULL,
  `active` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `role`, `active`) VALUES
(1, 'Ajay Sharma', 'ajay@company.com', 'sales_executive', 1),
(2, 'Suman Singh', 'suman@company.com', 'sales_executive', 1),
(3, 'Ravi Patel', 'ravi@company.com', 'sales_executive', 1),
(4, 'Nisha Mehra', 'nisha@company.com', 'sales_executive', 1),
(5, 'Admin User', 'admin@company.com', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_ids_categories`
--

CREATE TABLE `user_ids_categories` (
  `user_id` varchar(15) NOT NULL,
  `emails` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calls`
--
ALTER TABLE `calls`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `call_id` (`call_id`);

--
-- Indexes for table `calls_one`
--
ALTER TABLE `calls_one`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `communication_logs`
--
ALTER TABLE `communication_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interaction_counts`
--
ALTER TABLE `interaction_counts`
  ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`lead_id`),
  ADD KEY `assigned_to` (`assigned_to`);

--
-- Indexes for table `lead_assignments`
--
ALTER TABLE `lead_assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `lead_id` (`lead_id`),
  ADD KEY `assigned_to` (`assigned_to`),
  ADD KEY `assigned_by` (`assigned_by`);

--
-- Indexes for table `lead_engagement_summary`
--
ALTER TABLE `lead_engagement_summary`
  ADD PRIMARY KEY (`lead_id`);

--
-- Indexes for table `lead_follow_ups`
--
ALTER TABLE `lead_follow_ups`
  ADD PRIMARY KEY (`follow_up_id`),
  ADD KEY `lead_id` (`lead_id`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `meeting_id` (`meeting_id`);

--
-- Indexes for table `meeting_notes`
--
ALTER TABLE `meeting_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_id` (`meeting_id`);

--
-- Indexes for table `page_time_logs`
--
ALTER TABLE `page_time_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page_views`
--
ALTER TABLE `page_views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calls`
--
ALTER TABLE `calls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calls_one`
--
ALTER TABLE `calls_one`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `communication_logs`
--
ALTER TABLE `communication_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `lead_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `lead_assignments`
--
ALTER TABLE `lead_assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lead_follow_ups`
--
ALTER TABLE `lead_follow_ups`
  MODIFY `follow_up_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `meeting_notes`
--
ALTER TABLE `meeting_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `page_time_logs`
--
ALTER TABLE `page_time_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `page_views`
--
ALTER TABLE `page_views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`) ON DELETE CASCADE;

--
-- Constraints for table `leads`
--
ALTER TABLE `leads`
  ADD CONSTRAINT `leads_ibfk_1` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `lead_assignments`
--
ALTER TABLE `lead_assignments`
  ADD CONSTRAINT `lead_assignments_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`),
  ADD CONSTRAINT `lead_assignments_ibfk_2` FOREIGN KEY (`assigned_to`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `lead_assignments_ibfk_3` FOREIGN KEY (`assigned_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `lead_follow_ups`
--
ALTER TABLE `lead_follow_ups`
  ADD CONSTRAINT `lead_follow_ups_ibfk_1` FOREIGN KEY (`lead_id`) REFERENCES `leads` (`lead_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
