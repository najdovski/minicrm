-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2020 at 05:59 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `minicrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `name`, `logo`, `email`, `website`, `created_at`, `updated_at`) VALUES
(1, 'Alimbu', 'logos/jcRXXk4AIi14l3XPr4S4BcIlU9wQQyAruW1Xg8FI.jpeg', 'contact@alimbu.com', 'www.alimbu.com', '2020-01-11 14:07:36', '2020-01-11 14:07:36'),
(2, 'Divander', 'logos/uVqQ84AK2wqDwhWL1auU5CbERstzlMy47vsNt1m4.jpeg', 'contact@divander.com', 'www.divander.com', '2020-01-11 14:08:39', '2020-01-11 14:08:39'),
(3, 'Astrope', 'logos/PbNj2XT7qskAaf2a6KVAGhmUPyGjNA4jJJKmLZx6.jpeg', 'contact@astrope.com', 'www.astrope.com', '2020-01-11 14:18:22', '2020-01-11 14:19:34'),
(4, 'Esose', 'logos/4LllA0KHFYrFbMRGTLf3NbgKS4YgjOsRLrU7pBnH.jpeg', 'contact@esose.com', 'www.esose.com', '2020-01-11 14:21:32', '2020-01-11 14:21:32'),
(5, 'Sysent', NULL, 'contact@sysent.com', 'www.sysent.com', '2020-01-11 14:24:49', '2020-01-11 14:24:49'),
(6, 'Mistigen', 'logos/iVVikksZI1pIKinizH6SMqp5reTuFyCWNY6Cxg8m.jpeg', 'contact@mistigen.com', 'www.mistigen.com', '2020-01-11 14:26:27', '2020-01-11 14:26:27'),
(7, 'Surore', NULL, 'contact@surore.com', 'www.surore.com', '2020-01-11 14:26:54', '2020-01-11 14:26:54'),
(8, 'Subosis', 'logos/tjHaIPjG8nLiZ6L8MS4Kq9i6ebnoVvTyrga76iBS.jpeg', 'contact@subosis.com', 'www.subosis.com', '2020-01-11 14:30:07', '2020-01-11 14:30:07'),
(9, 'Yakinyx', 'logos/nWsnQ7yZg5tLSSJr1MK9rEB8BLKZvSuCI21G20Y9.jpeg', 'contact@yakinyx.com', 'www.yakinyx.com', '2020-01-11 14:32:18', '2020-01-11 14:32:18'),
(10, 'Ambinoodle', 'logos/HE5W4V7uZq2KlZdnC0DsLf5XTL7MAGkSnVZV3fW6.jpeg', 'contact@ambinoodle.com', 'www.ambinoodle.com', '2020-01-11 14:33:44', '2020-01-11 14:33:44'),
(11, 'Demideo', NULL, 'contact@demideo.com', 'www.demideo.com', '2020-01-11 14:34:15', '2020-01-11 14:34:15'),
(12, 'Movose', 'logos/rODkYME2EZQfuqFahL2dKkAHToKUIVPEC21TjqUY.jpeg', 'contact@movose.com', 'www.movose.com', '2020-01-11 14:35:52', '2020-01-11 14:35:52'),
(13, 'Socitude', 'logos/P71oLMByJmBGoD2eYsdX81GSFw1JlZBWrwOvZWEv.jpeg', 'contact@socitude.com', 'www.socitude.com', '2020-01-11 14:38:57', '2020-01-11 14:38:57'),
(14, 'Rucerism', 'logos/LWDzjY2fbhL49tuAKut3z0MMx1RtOAkN6hXoESti.jpeg', 'contact@rucerism.com', 'www.rucerism.com', '2020-01-11 14:40:37', '2020-01-11 14:40:37'),
(15, 'Vericious', 'logos/eDvpErfqO0B0YWfZwdRPfGWSSPb2VFIWcbav6e7z.jpeg', 'contact@vericious.com', 'www.vericious.com', '2020-01-11 14:41:45', '2020-01-11 14:41:45');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `company_id`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'William', 'Johnson', 1, 'WilliamMJohnson@jourrapide.com', '714-970-4124', '2020-01-11 15:20:03', '2020-01-11 15:20:03'),
(2, 'Roger', 'McQueen', 1, NULL, '501-212-7090', '2020-01-11 15:20:49', '2020-01-11 15:20:49'),
(3, 'Gordon', 'Nock', 1, 'GordonMNock@teleworm.us', NULL, '2020-01-11 15:21:15', '2020-01-11 15:21:15'),
(4, 'Stephen', 'Montalvo', 1, NULL, NULL, '2020-01-11 15:21:26', '2020-01-11 15:21:26'),
(5, 'Linda', 'Ruiz', 2, 'LindaSRuiz@armyspy.com', '765-203-7023', '2020-01-11 15:23:04', '2020-01-11 15:23:04'),
(6, 'Jay', 'Ward', 2, 'JayMWard@teleworm.us', '717-504-8466', '2020-01-11 15:23:26', '2020-01-11 15:23:26'),
(7, 'Clifton', 'Roger', 2, 'CliftonSRoger@jourrapide.com', '724-607-7117', '2020-01-11 15:23:45', '2020-01-11 15:23:45'),
(8, 'Heather', 'Reid', 3, 'HeatherAReid@rhyta.com', '781-254-0062', '2020-01-11 15:24:06', '2020-01-11 15:24:06'),
(9, 'Gilda', 'Woods', 3, NULL, NULL, '2020-01-11 15:24:17', '2020-01-11 15:24:17'),
(10, 'Stephanie', 'Vega', 3, 'StephanieJVega@dayrep.com', NULL, '2020-01-11 15:24:33', '2020-01-11 15:24:33'),
(11, 'Scott', 'Hayes', 3, 'ScottMHayes@dayrep.com', '361-598-0459', '2020-01-11 15:25:02', '2020-01-11 15:25:02'),
(12, 'Douglas', 'Washington', 3, NULL, NULL, '2020-01-11 15:25:40', '2020-01-11 15:25:40'),
(13, 'Susan', 'Hayes', 4, 'SusanNHayes@rhyta.com', '281-401-3697', '2020-01-11 15:26:14', '2020-01-11 15:26:14'),
(14, 'Jane', 'Johns', 4, 'JaneCJohns@jourrapide.com', '717-907-4843', '2020-01-11 15:26:34', '2020-01-11 15:26:34'),
(15, 'Nancy', 'Penton', 4, NULL, NULL, '2020-01-11 15:26:46', '2020-01-11 15:26:46'),
(16, 'James', 'Beard', 5, 'JamesPBeard@armyspy.com', '734-454-4517', '2020-01-11 15:27:08', '2020-01-11 15:27:08'),
(17, 'Lisa', 'Cude', 5, 'LisaHCude@jourrapide.com', '717-584-5382', '2020-01-11 15:27:31', '2020-01-11 15:27:31'),
(18, 'Stephen', 'Flores', 6, 'StephenCFlores@dayrep.com', '606-282-6566', '2020-01-11 15:27:53', '2020-01-11 15:27:53'),
(19, 'Michael', 'Sea', 6, 'MichaelPSea@dayrep.com', '661-766-7763', '2020-01-11 15:28:11', '2020-01-11 15:28:11'),
(20, 'Kathleen', 'Difiore', 6, 'KathleenLDifiore@dayrep.com', '240-776-5746', '2020-01-11 15:28:29', '2020-01-11 15:28:29'),
(21, 'Charles', 'Sylvestre', 6, 'CharlesKSylvestre@dayrep.com', '305-822-0123', '2020-01-11 15:28:52', '2020-01-11 15:28:52'),
(22, 'Maria', 'Pearson', 6, 'MariaKPearson@teleworm.us', '609-868-4463', '2020-01-11 15:29:09', '2020-01-11 15:29:09'),
(23, 'Cheryl', 'Carlton', 6, NULL, NULL, '2020-01-11 15:29:21', '2020-01-11 15:29:21'),
(24, 'Jason', 'Kelley', 7, 'JasonEKelley@rhyta.com', '785-744-5918', '2020-01-11 15:30:06', '2020-01-11 15:30:06'),
(25, 'Amber', 'Andrade', 7, NULL, NULL, '2020-01-11 15:30:17', '2020-01-11 15:30:17'),
(26, 'Dominic', 'Blalock', 7, 'DominicJBlalock@jourrapide.com', NULL, '2020-01-11 15:30:34', '2020-01-11 15:30:34'),
(27, 'Steven', 'Guidi', 8, 'StevenCGuidi@dayrep.com', '201-379-4678', '2020-01-11 15:30:54', '2020-01-11 15:30:54'),
(28, 'Earl', 'Jensen', 8, NULL, '585-509-8802', '2020-01-11 15:31:14', '2020-01-11 15:31:14'),
(29, 'Linda', 'Robbins', 8, 'LindaARobbins@armyspy.com', NULL, '2020-01-11 15:31:37', '2020-01-11 15:31:37'),
(30, 'Donna', 'Kent', 8, 'DonnaVKent@rhyta.com', '970-986-5479', '2020-01-11 15:32:02', '2020-01-11 15:32:02'),
(31, 'Sharon', 'Luna', 9, 'SharonSLuna@teleworm.us', '910-825-8745', '2020-01-11 15:32:30', '2020-01-11 15:32:30'),
(32, 'Melisa', 'Goyette', 9, 'MelisaLGoyette@armyspy.com', '201-881-8294', '2020-01-11 15:32:48', '2020-01-11 15:32:48'),
(33, 'Mary', 'Lugo', 9, 'MaryDLugo@dayrep.com', '660-337-4775', '2020-01-11 15:33:04', '2020-01-11 15:33:04'),
(34, 'David', 'Walker', 10, NULL, NULL, '2020-01-11 15:33:43', '2020-01-11 15:33:43'),
(35, 'Joel', 'Bozek', 10, 'JoelDBozek@teleworm.us', '425-381-1776', '2020-01-11 15:34:01', '2020-01-11 15:34:01'),
(36, 'Federico', 'Moore', 10, 'FedericoLMoore@rhyta.com', '860-563-4946', '2020-01-11 15:34:18', '2020-01-11 15:34:18'),
(37, 'Donald', 'Haase', 10, NULL, '212-458-6396', '2020-01-11 15:34:32', '2020-01-11 15:34:32'),
(38, 'Gladys', 'Bishop', 10, 'GladysMBishop@dayrep.com', '419-754-5597', '2020-01-11 15:34:51', '2020-01-11 15:34:51'),
(39, 'Marion', 'Kohut', 10, NULL, NULL, '2020-01-11 15:35:00', '2020-01-11 15:35:00'),
(40, 'Sarah', 'Santos', 11, 'SarahPSantos@dayrep.com', '903-792-5962', '2020-01-11 15:35:17', '2020-01-11 15:35:17'),
(41, 'Brenda', 'Hubbard', 11, NULL, '570-578-0096', '2020-01-11 15:35:33', '2020-01-11 15:35:33'),
(42, 'Evelyn', 'Stevenson', 12, 'EvelynHStevenson@dayrep.com', '845-482-7827', '2020-01-11 15:36:31', '2020-01-11 15:36:31'),
(43, 'Carol', 'Reece', 12, NULL, NULL, '2020-01-11 15:36:40', '2020-01-11 15:36:40'),
(44, 'Kimberly', 'Estepp', 12, 'KimberlyJEstepp@armyspy.com', '831-996-1270', '2020-01-11 15:36:55', '2020-01-11 15:36:55'),
(45, 'Dawn', 'Moyer', 13, NULL, NULL, '2020-01-11 15:37:56', '2020-01-11 15:37:56'),
(46, 'Elizabeth', 'Johnson', 13, 'ElizabethDJohnson@teleworm.us', '509-495-2875', '2020-01-11 15:38:13', '2020-01-11 15:38:13'),
(47, 'Steven', 'Tincher', 13, 'StevenLTincher@jourrapide.com', '336-320-0790', '2020-01-11 15:38:33', '2020-01-11 15:38:33'),
(48, 'Norman', 'Turner', 13, NULL, '712-783-3704', '2020-01-11 15:38:53', '2020-01-11 15:38:53'),
(49, 'Booker', 'Suda', 14, 'BookerMSuda@jourrapide.com', '303-335-3480', '2020-01-11 15:39:59', '2020-01-11 15:39:59'),
(50, 'Ramon', 'Crume', 14, 'RamonECrume@jourrapide.com', '262-253-6653', '2020-01-11 15:40:21', '2020-01-11 15:40:21'),
(51, 'Louisa', 'Redden', 15, NULL, '617-768-5860', '2020-01-11 15:40:42', '2020-01-11 15:40:42'),
(52, 'Cesar', 'Ruggiero', 15, 'CesarMRuggiero@armyspy.com', '310-580-0618', '2020-01-11 15:40:59', '2020-01-11 15:40:59'),
(53, 'James', 'Bedford', 15, 'JamesMBedford@dayrep.com', '202-966-4762', '2020-01-11 15:41:18', '2020-01-11 15:41:18'),
(54, 'Brain', 'Oliver', 15, NULL, '323-753-4481', '2020-01-11 15:41:31', '2020-01-11 15:41:31'),
(55, 'Annemarie', 'Pancoast', 15, 'AnnemarieHPancoast@armyspy.com', '201-355-9386', '2020-01-11 15:41:49', '2020-01-11 15:41:49');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_01_10_141822_create_companies_table', 1),
(5, '2020_01_10_141951_create_employees_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `admin`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', NULL, '$2y$10$RKs2gF2kxjYK.ustC.rqe.AIEzrkwUW/c109PIUjJGX0Zack.Sika', 1, NULL, '2020-01-11 14:04:30', '2020-01-11 14:04:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
