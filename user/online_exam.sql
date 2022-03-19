-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 07:43 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123'),
(2, 'sweta', 'shwetamerai@gmail.com', 'sweta123'),
(3, 'amisha', 'amishashah@gmail.com', '$2y$10$hFoMNJSTGJWiKgaJ9uliI.cxwrBtY3s7d6pgJ00XQZxScrMHoKBCW'),
(5, 'sweta', 'sweta@gmail.com', '$2y$10$TuhBQdzo4Rc7DKgyTiTZleoyW.0wHFLW57IFiu1DS8CoP26YGiyHq'),
(6, 'sweta', 'sweta@gmail.com', '$2y$10$TuhBQdzo4Rc7DKgyTiTZleoyW.0wHFLW57IFiu1DS8CoP26YGiyHq'),
(9, 'richa', 'richamerai05@gmail.com', '$2y$10$3hf.i6t7gw./.C5NW.xEzumIVIA44zb08faKGKduSMcqgcLvbT7gS'),
(10, 'richa', 'richamerai05@gmail.com', '$2y$10$3hf.i6t7gw./.C5NW.xEzumIVIA44zb08faKGKduSMcqgcLvbT7gS'),
(11, 'amisha', 'amishashah@gmail.com', '$2y$10$fG/akJzGJ99qkM4GwYYGNuBaJ4tB3RgScGCjPTT78EofGVm.Wreua');

-- --------------------------------------------------------

--
-- Table structure for table `examinee_tbl`
--

CREATE TABLE `examinee_tbl` (
  `exmne_id` int(11) NOT NULL,
  `s_id` int(255) NOT NULL,
  `exmne_fullname` varchar(1000) NOT NULL,
  `exmne_gender` varchar(1000) NOT NULL,
  `exmne_birthdate` varchar(1000) NOT NULL,
  `exmne_year_level` varchar(1000) NOT NULL,
  `exmne_email` varchar(1000) NOT NULL,
  `exmne_password` varchar(1000) NOT NULL,
  `exmne_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examinee_tbl`
--

INSERT INTO `examinee_tbl` (`exmne_id`, `s_id`, `exmne_fullname`, `exmne_gender`, `exmne_birthdate`, `exmne_year_level`, `exmne_email`, `exmne_password`, `exmne_status`) VALUES
(8, 17, 'amisha patel', 'female', '2019-12-21', 'second year', 'dave@gmail.com', 'dave', 'active'),
(11, 3, 'radha', 'female', '2022-02-10', 'third year', 'radha@gmail.com', 'radha123', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_attempt`
--

CREATE TABLE `exam_attempt` (
  `examat_id` int(11) NOT NULL,
  `exmne_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `examat_status` varchar(1000) NOT NULL DEFAULT 'used'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_attempt`
--

INSERT INTO `exam_attempt` (`examat_id`, `exmne_id`, `exam_id`, `examat_status`) VALUES
(54, 8, 12, 'used'),
(55, 9, 24, 'used'),
(56, 9, 25, 'used'),
(57, 9, 26, 'used');

-- --------------------------------------------------------

--
-- Table structure for table `exam_question_tbl`
--

CREATE TABLE `exam_question_tbl` (
  `eqt_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `exam_question` varchar(1000) NOT NULL,
  `exam_ch1` varchar(1000) NOT NULL,
  `exam_ch2` varchar(1000) NOT NULL,
  `exam_ch3` varchar(1000) NOT NULL,
  `exam_ch4` varchar(1000) NOT NULL,
  `exam_answer` varchar(1000) NOT NULL,
  `exam_status` varchar(1000) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_question_tbl`
--

INSERT INTO `exam_question_tbl` (`eqt_id`, `exam_id`, `exam_question`, `exam_ch1`, `exam_ch2`, `exam_ch3`, `exam_ch4`, `exam_answer`, `exam_status`) VALUES
(58, 56, 'full form of php is ?', 'pretext hypertext processor', 'hypertext preaprocessor', 'preprocessor home page', 'none', 'exam_ch2', 'active'),
(59, 56, ' Who is known as the father of PHP?', 'Drek Kolkevi ', 'List Barely', 'Rasmus Lerdrof', 'None of the above', 'exam_ch3', 'active'),
(60, 56, ' Which of the following starts with __ (double underscore) in PHP?  ', 'Inbuilt constants', 'User-defined constants', 'Magic constants', 'Default constants', 'exam_ch3', 'active'),
(62, 56, 'Which of the following function displays the information about PHP and its configuration?  ', 'php_info()', 'phpinfo()', 'info()', 'None of the above', 'exam_ch2', 'active'),
(63, 56, ' Which of the following PHP function is used to generate unique id?  ', 'id()', 'mdid()', 'uniqueid()', 'None of the above', 'exam_ch2', 'active'),
(64, 51, 'Android is -', 'an operating system ', 'a web browser', ' a web server ', 'None of the above', 'exam_ch1', 'active'),
(65, 51, 'Under which of the following Android is licensed?', 'OSS', 'Sourceforge', ' Apache/MIT ', 'None of the above', 'exam_ch3', 'active'),
(66, 54, 'Connected graph without any cycles is called', 'A tree', 'Free tree', 'A tree graph ', 'All of the above', 'exam_ch1', 'active'),
(67, 54, '__________ data structures are indexed structures', 'Linked lists', 'Stack', 'Linear arrays ', 'None of the above', 'exam_ch3', 'active'),
(68, 54, ' __________ is a logical or mathematical model of a data. ', ' Structure ', 'Data structures', 'Variable ', 'function', 'exam_ch2', 'active'),
(69, 54, 'Which of the following is a linear data structure?', 'Array', 'AVL trees', 'Binary trees', 'Graphs', 'exam_ch1', 'active'),
(70, 54, 'Which of the following is not the type of queue?', 'Priority queue', 'Single-ended queue', 'Circular queue', 'Ordinary queue', 'exam_ch2', 'active'),
(72, 51, 'Android is based on which of the following language? ', 'Java', ' C++', 'C ', 'None of the above', 'exam_ch1', 'active'),
(73, 51, 'APK stands for -', '  Android Phone Kit', ' Android Page Kit ', 'Android Package Kit ', 'None of the above', 'exam_ch3', 'active'),
(74, 51, 'Which of the following kernel is used in Android? ', ' MAC', ' Windows ', 'Linux ', 'Redhat', 'exam_ch3', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `exam_tbl`
--

CREATE TABLE `exam_tbl` (
  `ex_id` int(11) NOT NULL,
  `s_id` int(255) NOT NULL,
  `ex_title` varchar(1000) NOT NULL,
  `ex_time_limit` varchar(1000) NOT NULL,
  `ex_questlimit_display` int(11) NOT NULL,
  `marks` int(255) NOT NULL,
  `ex_description` varchar(1000) NOT NULL,
  `exam_date` date NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `s_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `marks`, `ex_description`, `exam_date`, `ex_created`) VALUES
(51, 27, 'ANDROID TEST', '10', 1, 0, 'android exam', '0000-00-00', '2022-03-12 06:57:59'),
(52, 18, 'REACTJS TEST', '10', 1, 0, 'Reactjs exam', '0000-00-00', '2022-03-12 06:57:44'),
(53, 17, 'JAVA TEST', '10', 1, 0, 'java exam', '0000-00-00', '2022-03-12 06:57:25'),
(54, 16, 'DS TEST', '10', 1, 0, 'ds test', '0000-00-00', '2022-03-12 06:58:42'),
(55, 13, 'BCC TEST', '10', 1, 0, 'BCC EXAM', '0000-00-00', '2022-03-12 06:59:18'),
(56, 4, 'PHP TEST', '10', 1, 0, 'PHP EXAM', '0000-00-00', '2022-03-12 06:59:47');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_master`
--

CREATE TABLE `faculty_master` (
  `f_id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `main_subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_master`
--

INSERT INTO `faculty_master` (`f_id`, `fname`, `email`, `password`, `main_subject`) VALUES
(1, 'jinal tailor', 'jinal@gmail.com', 'jinal123', 'php'),
(2, 'dikshan patel', 'diksan@gmail.com', 'diksan123', 'network'),
(3, 'rajnish rakhodia', 'rajnish@gmail.com', 'rajnish123', 'c++'),
(21, 'amisha', 'amisha@gmail.com', '$2y$10$Fe0BxIVLfN7EBAw2GcU3X.bE8KqI2NURBovIn8SoT.lYOPJ4kDfam', 'network'),
(24, 'amisha', 'amisha@gmail.com', '$2y$10$M/32xlEK5rkms0YL2kwrTeTCgrN4bkOpWokgyRkUZcR1TYVhcw5Hq', 'js');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `f_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_10_051507_create_student_reg', 1);

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
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `attend_que` text NOT NULL,
  `right_ans` text NOT NULL,
  `exam_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`id`, `user_id`, `s_id`, `attend_que`, `right_ans`, `exam_date`) VALUES
(138, 5, 56, '4', '2', '2022-03-16'),
(139, 1, 51, '4', '1', '2022-03-16'),
(140, 1, 56, '4', '3', '2022-03-16'),
(141, 1, 56, '3', '3', '2022-03-16'),
(142, 1, 54, '4', '4', '2022-03-16'),
(143, 1, 54, '4', '4', '2022-03-16');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'sweta', 'admin@gmail.com', 'sweta', '2022-03-10 00:13:13', '2022-03-10 00:13:13'),
(2, 'amisha', 'amishashah@gmail.com', 'amisha', '2022-03-10 00:13:31', '2022-03-10 00:13:31'),
(4, 'daksh', 'dakshmerai@gmail.com', 'daksh', '2022-03-10 02:14:53', '2022-03-10 02:14:53'),
(5, 'admin', 'admin@gmail.com', 'admin', '2022-03-10 03:07:35', '2022-03-10 03:07:35'),
(9, 'sweta', 'swetamerai@gmail.com', 'admin', '2022-03-11 04:43:24', '2022-03-11 04:43:24');

-- --------------------------------------------------------

--
-- Table structure for table `sub_master`
--

CREATE TABLE `sub_master` (
  `s_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `sub_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_master`
--

INSERT INTO `sub_master` (`s_id`, `name`, `sub_created`) VALUES
(4, 'PHP', '2022-02-15 06:15:51'),
(13, 'BCC', '2022-02-15 10:51:12'),
(16, 'DS', '2022-02-15 10:53:07'),
(17, 'JAVA', '2022-02-18 07:55:11'),
(18, 'REACTJS', '2022-03-07 08:35:30'),
(27, 'ANDROID', '2022-03-11 07:40:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  ADD PRIMARY KEY (`exmne_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  ADD PRIMARY KEY (`examat_id`);

--
-- Indexes for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  ADD PRIMARY KEY (`eqt_id`);

--
-- Indexes for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  ADD PRIMARY KEY (`ex_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `faculty_master`
--
ALTER TABLE `faculty_master`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `id` (`user_id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_master`
--
ALTER TABLE `sub_master`
  ADD PRIMARY KEY (`s_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `faculty_master`
--
ALTER TABLE `faculty_master`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sub_master`
--
ALTER TABLE `sub_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
