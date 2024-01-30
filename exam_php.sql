-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2024 at 06:44 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam_php`
--

-- --------------------------------------------------------

--
-- Table structure for table `colleagues`
--

CREATE TABLE `colleagues` (
  `id` int(11) NOT NULL,
  `office_id` int(11) DEFAULT NULL,
  `colleague_name` varchar(255) DEFAULT NULL,
  `colleague_mobile` varchar(255) DEFAULT NULL,
  `colleague_address` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colleagues`
--

INSERT INTO `colleagues` (`id`, `office_id`, `colleague_name`, `colleague_mobile`, `colleague_address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'Mr Shaif Ali', '012892332423', 'Dhaka', 'nai', NULL, NULL),
(2, NULL, 'Mr. koil', '0433564657', 'Mirpur', NULL, NULL, NULL),
(3, NULL, 'Mr. koil', NULL, 'Mirpur', NULL, NULL, NULL),
(4, NULL, 'Mr Rohim', '0433564657', 'Mirpur', NULL, NULL, NULL),
(5, NULL, 'Mr. koil', '0433564657', 'Mirpur', NULL, NULL, NULL),
(6, NULL, 'Mr Rahim', '0433564657', 'Mirpur', NULL, NULL, NULL),
(7, NULL, 'Mr. koil', '0433564657', 'Mirpur', NULL, NULL, NULL),
(8, NULL, 'Mr. koillll', '0433564657', 'Mirpur', NULL, NULL, NULL),
(9, 1, 'Mr Kamal', '0433564657', 'Mirpur, Dhaka', NULL, NULL, NULL),
(10, 1, 'Mr Kamal', '0433564657', 'Mirpur, Dhaka', NULL, NULL, NULL),
(11, 1, 'Mr Kamal', '0433564657', 'Mirpur, Dhaka', NULL, NULL, NULL),
(12, 23, 'Mr Kamal', '0433564657', 'Mirpur, Dhaka', NULL, NULL, NULL),
(13, 23, 'Mr. harun', '0433564657', 'Mirpur, Dhaka', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offices`
--

CREATE TABLE `offices` (
  `id` int(11) NOT NULL,
  `office_name` varchar(255) DEFAULT NULL,
  `office_address` varchar(255) DEFAULT NULL,
  `office_phone` varchar(50) DEFAULT NULL,
  `application_letter` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offices`
--

INSERT INTO `offices` (`id`, `office_name`, `office_address`, `office_phone`, `application_letter`, `created_at`, `updated_at`) VALUES
(1, 'Soft-tech digital', 'Dhanmondi, Dhaka', '012342543454', 'letter1', NULL, NULL),
(2, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:31:17', '2024-01-30 06:31:17'),
(3, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:34:03', '2024-01-30 06:34:03'),
(4, 'Microsoft', NULL, '03242534543', NULL, '2024-01-30 06:34:15', '2024-01-30 06:34:15'),
(5, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:34:50', '2024-01-30 06:34:50'),
(6, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:40:28', '2024-01-30 06:40:28'),
(7, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:42:15', '2024-01-30 06:42:15'),
(8, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:42:29', '2024-01-30 06:42:29'),
(9, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:43:49', '2024-01-30 06:43:49'),
(10, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:45:17', '2024-01-30 06:45:17'),
(11, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:56:33', '2024-01-30 06:56:33'),
(12, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:58:09', '2024-01-30 06:58:09'),
(13, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 06:58:56', '2024-01-30 06:58:56'),
(14, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 07:10:27', '2024-01-30 07:10:27'),
(15, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 07:15:00', '2024-01-30 07:15:00'),
(16, 'Microsoft', 'Newyork', '03242534543', NULL, '2024-01-30 10:16:57', '2024-01-30 10:16:57'),
(17, 'Apple', 'Apple', '03242534543', NULL, '2024-01-30 10:21:17', '2024-01-30 10:21:17'),
(18, 'Apple', 'Apple', '03242534543', NULL, '2024-01-30 10:23:21', '2024-01-30 10:23:21'),
(19, 'Systech', 'Dhaka', '03242534543', NULL, '2024-01-30 10:25:34', '2024-01-30 10:25:34'),
(20, 'Systech', 'Apple', '03242534543', 'F:\\Server\\tmp\\phpAB9A.tmp', NULL, NULL),
(21, 'Microsoft', 'Dhaka', '03242534543', 'F:\\Server\\tmp\\phpF9D4.tmp', NULL, NULL),
(22, 'Microsoft', 'Dhaka', '03242534543', 'F:\\Server\\tmp\\phpF741.tmp', NULL, NULL),
(23, 'Apple', 'Apple', '03242534543', 'F:\\Server\\tmp\\phpC557.tmp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@email.com', NULL, '$2y$10$iPoaGS2BiDTkBSlj493TzegcxRmlvWmtsrALh30JtecNkn5oG9nyO', NULL, '2024-01-30 03:55:02', '2024-01-30 03:55:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colleagues`
--
ALTER TABLE `colleagues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `colleagues_ibfk_1` (`office_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colleagues`
--
ALTER TABLE `colleagues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `offices`
--
ALTER TABLE `offices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `colleagues`
--
ALTER TABLE `colleagues`
  ADD CONSTRAINT `colleagues_ibfk_1` FOREIGN KEY (`office_id`) REFERENCES `offices` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
