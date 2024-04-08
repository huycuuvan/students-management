-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 06, 2024 at 01:36 PM
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
-- Database: `students_manager`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `acc_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `ip_client` varchar(100) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`acc_id`, `role_id`, `user_id`, `username`, `password`, `status`, `ip_client`, `last_login`, `last_logout`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, 1, 'huyndbh', '12345', 1, NULL, NULL, NULL, '2024-03-11 08:40:44', NULL, NULL),
(2, 1, 2, 'trieunt', '12345', 1, NULL, NULL, NULL, '2024-03-25 14:36:10', NULL, NULL),
(3, 2, 3, 'abc', '12345', 1, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:02:19'),
(4, 3, 5, ' An danh', '12345', 1, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:02:09'),
(5, 2, 6, ' hoangduong', '12345', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 2, 8, ' binhquan', '12345', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 1, 9, ' huycuuvan', '12345', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 2, 10, ' huynd', '12345', 1, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:02:11'),
(9, 3, 11, 'hungnv', '12345', 1, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:01:22'),
(10, 2, 12, 'chithanh', '12345', 1, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 2, 13, 'huyhuy', '12345', 1, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:02:11');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_id` int(10) UNSIGNED NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_id`, `course_name`, `slug`, `department_id`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SDLC', 'sdlc', 9, 1, NULL, NULL, NULL),
(2, 'C#', 'c', 8, 1, '2024-03-31 23:34:11', NULL, NULL),
(3, 'Thiet ke Website', 'thiet-ke-website', 8, 1, '1970-01-01 00:00:00', NULL, NULL),
(4, 'Marketing', 'marketing', 13, 1, '1970-01-01 00:00:00', NULL, NULL),
(5, 'PHP', 'php', 8, 1, '1970-01-01 00:00:00', NULL, '2024-04-01 07:31:39'),
(6, 'PHP', 'php', 8, 1, '2024-04-01 01:25:20', NULL, '2024-04-01 07:59:52'),
(7, 'PHP', 'php', 5, 1, '2024-04-01 07:57:33', NULL, '2024-04-01 07:59:51'),
(8, 'PHP', 'php', 26, 1, '2024-04-01 07:57:41', NULL, '2024-04-01 07:59:47'),
(10, 'PHP', 'php', 5, 1, '2024-04-01 07:58:43', '2024-04-01 09:12:52', NULL),
(11, 'PHP', 'php', 26, 1, '2024-04-01 08:12:32', NULL, '2024-04-01 08:12:39'),
(12, 'CNTT', 'cntt', 8, 1, '2024-04-04 07:39:47', NULL, '2024-04-04 07:39:52'),
(13, 'SE06205', 'se06205', 29, 1, '2024-04-04 16:21:42', NULL, '2024-04-04 16:24:01'),
(14, 'SE06205', 'se06205', 29, 1, '2024-04-04 16:23:58', NULL, '2024-04-04 16:24:01');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(150) NOT NULL,
  `slug` varchar(200) NOT NULL,
  `leader` varchar(60) NOT NULL,
  `date_beginning` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `logo` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `slug`, `leader`, `date_beginning`, `status`, `logo`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'CNTT', 'cntt', 'TrieuNt', '2024-03-19', 1, NULL, '2024-03-19 02:27:03', NULL, '2024-03-25 04:17:55'),
(3, 'IT', 'it', 'TrieuNt', '2024-03-17', 1, NULL, '2024-03-19 02:28:18', NULL, '2024-03-25 10:40:55'),
(4, 'IT', 'it', 'TrieuNt', '2024-03-20', 1, NULL, '2024-03-19 02:31:14', NULL, '2024-03-25 10:43:53'),
(5, 'Web', 'web', 'hung', '2024-03-18', 1, NULL, '2024-03-19 02:39:51', NULL, '2024-04-04 15:34:23'),
(7, 'Web', 'web', 'TrieuNt', '2024-03-25', 1, NULL, '2024-03-25 01:35:29', NULL, '2024-03-25 10:40:54'),
(8, 'CNTT', 'cntt', 'hung', '1970-01-01', 1, NULL, '2024-03-25 01:43:44', NULL, '2024-04-04 15:34:22'),
(9, 'SDLC', 'sdlc', 'TrieuNt', '2024-03-25', 1, 'c#.png', '2024-03-25 01:49:28', NULL, '2024-04-04 15:34:21'),
(10, 'C#', 'c', 'TrieuNt', '2024-03-25', 1, 'c#.png', '2024-03-25 02:49:46', NULL, '2024-03-25 04:29:42'),
(11, 'Web', 'web', 'TrieuNt', '2024-03-25', 1, 'images.jpg', '2024-03-25 02:52:50', NULL, '2024-03-25 04:18:20'),
(12, 'Math', 'math', 'huy dinh', '1970-01-01', 1, 'c#.png', '2024-03-25 10:31:10', '2024-03-26 17:42:31', '2024-03-26 18:00:46'),
(13, 'QTKD', 'qtkd', 'Huy', '2023-03-09', 1, 'Logo-Btec.png', '2024-03-26 17:54:22', '2024-03-26 18:05:44', '2024-04-04 16:34:21'),
(14, 'MKT', 'mkt', 'Huy', '2024-03-26', 1, 'rutien.png', '2024-03-26 18:04:21', NULL, '2024-04-04 16:34:22'),
(15, 'Thiet Ke Do Hoa', 'Thiet Ke Do Hoa', 'Huy', '2024-02-06', 1, 'rutien.png', '2024-03-26 19:51:41', NULL, '2024-03-27 00:00:00'),
(16, 'Logistic', 'Logistic', 'Huy', '0000-00-00', 1, 'Logo-Btec.png', '2024-03-26 19:52:36', NULL, '2024-03-26 00:00:00'),
(17, '', '', '', '0000-00-00', 1, '', '2024-03-26 20:01:09', NULL, '2024-03-26 00:00:00'),
(18, 'Tai Chinh', 'Tai Chinh', 'Huy', '2024-03-26', 1, 'c#.png', '2024-03-26 20:02:13', NULL, '2024-03-26 00:00:00'),
(19, '', '', '', '0000-00-00', 1, '', '2024-03-26 20:07:37', NULL, '2024-03-26 00:00:00'),
(20, '', '', '', '0000-00-00', 1, '', '2024-03-26 20:09:43', NULL, '2024-03-26 00:00:00'),
(21, '', '', '', '0000-00-00', 1, '', '2024-03-26 20:10:57', NULL, '2024-03-26 00:00:00'),
(22, '', '', '', '0000-00-00', 1, '', '2024-03-26 21:05:46', NULL, '2024-03-26 00:00:00'),
(23, '', '', '', '0000-00-00', 1, '', '2024-03-26 21:12:18', NULL, '2024-03-26 00:00:00'),
(24, 'Thiet Ke Do Hoa', 'Thiet Ke Do Hoa', 'Huy', '2024-03-26', 1, 'rutien.png', '2024-03-26 21:14:02', NULL, '2024-03-26 00:00:00'),
(25, 'Thiet Ke Do Hoa', 'thiet-ke-do-hoa', 'hung', '2024-03-27', 1, 'images.jpg', '2024-03-27 16:27:10', NULL, '2024-03-27 00:00:00'),
(26, 'IT', 'it', 'TrieuNt', '2024-04-01', 1, 'c#.png', '2024-04-01 00:00:09', NULL, '2024-04-04 15:34:24'),
(27, 'Thiet Ke Do Hoa', 'thiet-ke-do-hoa', 'Thang', '2024-04-01', 1, 'Logo-Btec.png', '2024-04-01 11:24:15', NULL, '2024-04-04 16:34:24'),
(28, 'aaa', 'aaa', 'aaa', '2024-04-01', 1, 'rutien.png', '2024-04-01 11:26:43', NULL, '2024-04-04 16:34:17'),
(29, 'CNTT', 'cntt', 'hung', '2024-04-04', 1, 'c#.png', '2024-04-04 16:20:03', NULL, '2024-04-04 16:34:14'),
(30, 'Computing', 'computing', 'linh', '2024-04-04', 1, 'Logo-Btec.png', '2024-04-04 16:34:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `student_numbers` int(10) UNSIGNED NOT NULL,
  `teacher` varchar(100) DEFAULT NULL,
  `captain` varchar(60) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `department_id`, `term_id`, `name`, `slug`, `student_numbers`, `teacher`, `captain`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 29, 1, 'SE06205', 'se06205', 31, 'Trieunt', NULL, 1, '2024-04-04 16:24:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_student`
--

CREATE TABLE `group_student` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `course_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `absent` tinyint(4) NOT NULL DEFAULT 1,
  `present` tinyint(4) NOT NULL DEFAULT 0,
  `learning_date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `slug`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'admin', 'admin', '', 1, '2024-03-11 08:31:20', NULL, NULL),
(2, 'student', NULL, '', 1, '2024-03-11 08:31:20', NULL, NULL),
(3, 'teacher', 'teacher', '', 1, '2024-03-11 08:33:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `year` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `name`, `slug`, `year`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SUMMER 2024', 'summer2024', 2024, 1, '2024-04-04 15:35:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `extra_code` varchar(100) NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(60) NOT NULL,
  `last_name` varchar(60) NOT NULL,
  `full_name` varchar(60) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `birthday` date NOT NULL,
  `gender` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(200) DEFAULT NULL,
  `information` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `extra_code`, `role_id`, `first_name`, `last_name`, `full_name`, `email`, `phone`, `address`, `birthday`, `gender`, `avatar`, `information`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'BH01009', 2, 'Dinh', 'Huy', 'Nguyen Dinh Huy', 'ndhuy0904@gmail.com', '0867868546', 'Ha noi', '2004-09-13', 1, NULL, NULL, 1, '2024-03-11 08:38:15', NULL, '2024-03-26 00:00:00'),
(2, 'BH66666', 1, 'Thanh', 'Trieu', 'Nguyen Thanh Trieu', 'trieunt@gmail.com', '0123456789', 'Ha Noi', '1995-02-16', 1, 'trieunt.png', NULL, 1, '2024-03-25 14:33:26', NULL, '2024-03-26 00:00:00'),
(3, 'BH11111', 3, '  A', 'B', ' ABC', ' clone3@gmail.com', '123454321 ', '  Ha Noi', '0000-00-00', 2, '', NULL, 1, NULL, NULL, '2024-03-26 00:00:00'),
(4, 'BH11111', 3, '  A', 'B', ' ABC', ' clone3@gmail.com', '123454321 ', '  Ha Noi', '2025-03-24', 2, '', NULL, 1, NULL, NULL, '2024-04-04 15:22:28'),
(5, 'BH11111', 1, '  An', 'Danh', ' Andanh', ' clone1@gmail.com', '1231312312 ', '  Ha Noi', '2025-03-24', 3, 'c#.png', NULL, 1, NULL, NULL, '2024-03-26 00:00:00'),
(6, 'BH11112', 2, '  hoang', 'duong', ' hoang duong', ' hoangduong@gmail.com', '123443211 ', '  ha noi', '2026-03-24', 1, 'images.jpg', NULL, 1, NULL, NULL, '2024-03-26 00:00:00'),
(8, 'BH11113', 2, '  binh', 'quan', ' binh quan', ' binhquan@gmail.com', '123321123 ', '  Ha Noi', '2026-03-24', 1, 'nam cao.jpg', NULL, 1, NULL, NULL, '2024-04-04 15:22:29'),
(9, 'BH11113', 2, '  nguyen dinh', 'quan', ' huycuuvan', ' clone3@gmail.com', '1231312312 ', '  ha noi', '2026-03-24', 1, 'nam cao.jpg', NULL, 1, NULL, NULL, '2024-04-04 15:22:29'),
(10, 'BH11111', 2, '  An', 'Danh', ' huycuuvan', ' clone3@gmail.com', '1231312312 ', '  ha noi', '2026-03-24', 1, 'ng du.jpg', NULL, 1, NULL, NULL, '2024-03-26 00:00:00'),
(11, 'BH00001', 3, '  Nguyen', 'Hung', ' Nguyen Hung', ' clone1@gmail.com', '1231312312 ', '  Ha Noi', '2026-03-24', 1, 'The_Lu.jpg', NULL, 1, NULL, NULL, '2024-04-04 15:22:26'),
(12, 'BH121212', 2, '  Chi', 'Thanh', ' Chi Thanh', ' clone3@gmail.com', '1231312312 ', '  Ha Noi', '2026-03-24', 1, 'lien-minh-huyen-thoai-game-moba-pho-bien-nhat-the-gioi-21-05-2020-2.jpg', NULL, 1, NULL, NULL, '2024-04-04 15:22:29'),
(13, 'BH121212', 2, '  huy', 'huy', ' huyhuy', ' clone1@gmail.com', '1231312312 ', '  Ha Noi', '2027-03-24', 1, 'download.jpg', NULL, 1, NULL, NULL, '2024-04-04 15:22:28'),
(14, 'BH123456', 2, 'a', 'c', 'abc', 'abc@gmail.com', '123321123', 'ha noi', '2004-10-12', 2, 'ng du.jpg', NULL, 1, '2024-04-04 08:25:48', NULL, '2024-04-04 15:22:26'),
(15, 'bh222222', 3, 'c', 'd', 'cdf', 'abc@gmail.com', '1011121314', 'ha noi', '2005-02-08', 2, 'nam cao.jpg', NULL, 1, '2024-04-04 08:34:59', NULL, '2024-04-04 15:22:22'),
(16, 'BH123456', 2, 'a', 'd', 'cdf', 'abc@gmail.com', '1011121314', 'ha noi', '2004-06-14', 2, 'ng du.jpg', NULL, 1, '2024-04-04 08:39:38', NULL, '2024-04-04 15:22:27'),
(17, 'bh222222', 2, 'a', 'c', 'abc', 'abc@gmail.com', '1011121314', 'ha noi', '2004-10-20', 2, 'nam cao.jpg', NULL, 1, '2024-04-04 08:43:10', NULL, '2024-04-04 15:22:27'),
(18, 'BH01009', 2, 'Dinh', 'Huy', 'Nguyen Dinh Huy', 'ndhuy0904@gmail.com', '0867868546', 'ha noi', '2004-09-13', 1, 'WIN_20230513_00_02_49_Pro.jpg', NULL, 1, '2024-04-04 15:23:20', NULL, NULL),
(19, 'BH01009', 2, 'Dinh', 'Huy', 'Nguyen Dinh Huy', 'ndhuy0904@gmail.com', '0867868546', '', '2004-09-13', 1, 'WIN_20230513_00_02_49_Pro.jpg', NULL, 1, '2024-04-04 15:29:58', NULL, '2024-04-04 16:31:57'),
(20, 'BH00986', 2, 'Nguyen Ngo', 'Hoang Duong', 'Nguyen Ngo Hoang Duong', 'hoangduong@gmail.com', '123321123', 'ha noi', '2004-05-04', 1, 'The_Lu.jpg', NULL, 1, '2024-04-04 16:31:51', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`acc_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `term_id` (`term_id`);

--
-- Indexes for table `group_student`
--
ALTER TABLE `group_student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `course_id` (`course_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `acc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `course_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `group_student`
--
ALTER TABLE `group_student`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `accounts_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `groups_ibfk_2` FOREIGN KEY (`term_id`) REFERENCES `term` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `group_student`
--
ALTER TABLE `group_student`
  ADD CONSTRAINT `group_student_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_3` FOREIGN KEY (`student_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `group_student_ibfk_4` FOREIGN KEY (`teacher_id`) REFERENCES `accounts` (`acc_id`) ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
