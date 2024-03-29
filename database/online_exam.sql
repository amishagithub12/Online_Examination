-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 23, 2022 at 12:26 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.15

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
(11, 'amisha', 'amishashah@gmail.com', '$2y$10$fG/akJzGJ99qkM4GwYYGNuBaJ4tB3RgScGCjPTT78EofGVm.Wreua'),
(16, 'Diksan Shah', 'diksan@gmail.com', 'f7301eb03e557330cea393b5004f7e59');

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
(1, 27, 'Devarshi Vaidya', 'male', '1990-03-12', 'first year', 'devarshi@gmail.com', 'devarshi', 'active'),
(2, 13, 'Richa Shah', 'female', '1999-01-01', 'first year', 'richa@gmail.com', 'richa', 'active'),
(3, 13, 'shah amisha', 'female', '2000-02-12', 'first year', 'amisha@gmail.com', 'amisha', 'active'),
(4, 18, 'Shah Shruti', 'female', '1998-06-19', 'second year', 'shruti@gmail.com', 'shruti', 'active'),
(5, 27, 'Soniya Shah', 'female', '1998-04-13', 'second year', 'soniya@gmail.com', 'soniya', 'active'),
(6, 13, 'Manish Shah', 'male', '1998-04-04', 'third year', 'manish@gmail.com', 'manish123', 'active'),
(7, 16, 'Sweety Patel', 'female', '2000-05-03', 'second year', 'sweety@gmail.com', 'sweety123', 'active');

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
(74, 51, 'Which of the following kernel is used in Android? ', ' MAC', ' Windows ', 'Linux ', 'Redhat', 'exam_ch3', 'active'),
(75, 61, 'Primary memory is used by the', ' CPU', 'user', 'input device', 'none of the above', 'exam_ch1', 'active'),
(76, 61, 'WAV file format is associated with what type of files?', ' sound', 'image', 'word document', 'video', 'exam_ch1', 'active'),
(77, 61, 'FTP is stand for:', 'File Transfer Protocol', 'File Transfer Program', 'File Thread Protocol', 'None of the above', 'exam_ch1', 'active'),
(78, 61, 'ALU is stands for:', 'Array Logical Unit', 'Application logic unit', 'Arithmetic logical unit', 'Application logic universal', 'exam_ch3', 'active'),
(80, 53, ' Which of the following is not a Java features?', 'Dynamic ', 'Architecture Neutral', 'Use of pointers ', 'Object-oriented', 'exam_ch3', 'active'),
(81, 53, '_____ is used to find and fix bugs in the Java programs.', 'JVM ', 'JRE ', 'JDK ', 'JDB', 'exam_ch4', 'active'),
(82, 53, 'What is the return type of the hashCode() method in the Object class?', 'Object', 'int ', 'long ', 'void', 'exam_ch2', 'active'),
(83, 53, 'Which of the following is a reserved keyword in Java?', 'object ', 'strictfp ', 'main ', 'system', 'exam_ch2', 'active'),
(84, 53, 'Who invented Java Programming?', 'Guido van Rossum ', 'James Gosling ', 'Dennis Ritchie ', ' Bjarne Stroustrup', 'exam_ch2', 'active'),
(85, 61, '...........represent approximately one billion memory locations:', ' Terabyte ', 'Gigabyte ', 'Megabyte ', 'Kilobyte', 'exam_ch2', 'active'),
(86, 52, 'Which of the following is the correct name of React.js?', 'React ', 'React.js ', 'ReactJS', 'All of the above', 'exam_ch4', 'active'),
(87, 52, 'Which of the following command is used to install create-react-app?', 'npm install -g create-react-app ', 'npm install create-react-app ', ' npm install -f create-react-app ', 'install -g create-react-app', 'exam_ch1', 'active'),
(88, 52, 'What of the following is used in React.js to increase performance?', 'Original DOM ', 'Virtual DOM ', 'Both A and B.', 'None of the above.', 'exam_ch2', 'active'),
(89, 52, ' A class is a type of function, but instead of using the keyword function to initiate it, which keyword do we use?', 'Constructor ', 'Class ', 'Object ', 'DataObject', 'exam_ch2', 'active'),
(90, 52, 'Which of the following acts as the input of a class-based component?', 'Class ', 'Factory ', 'Render', 'Props', 'exam_ch4', 'active');

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
  `ex_description` varchar(1000) NOT NULL,
  `ex_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exam_tbl`
--

INSERT INTO `exam_tbl` (`ex_id`, `s_id`, `ex_title`, `ex_time_limit`, `ex_questlimit_display`, `ex_description`, `ex_created`) VALUES
(51, 27, 'ANDROID TEST', '10', 5, 'android exam', '2022-03-25 18:11:22'),
(52, 18, 'REACTJS TEST', '10', 5, 'Reactjs exam', '2022-03-25 18:11:13'),
(53, 17, 'JAVA TEST', '10', 5, 'java exam', '2022-03-25 18:11:05'),
(54, 16, 'DS TEST', '10', 5, 'ds test', '2022-03-25 18:10:58'),
(56, 4, 'PHP TEST', '10', 5, 'PHP EXAM', '2022-03-25 18:10:37'),
(61, 13, 'BCC EXAM', '10', 5, 'bccc', '2022-03-25 18:10:50');

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
(27, 'Hemina Bhavsar', 'hemina@gmail.com', '1954bd5824795ee74771abc0d4f62322', 'BCC'),
(29, 'Bharti Patil', 'bharti@gmail.com', '79cf533abb9b9e283a2f2a0277dc9c32', 'LARAVEL'),
(30, 'Jinal Tailor', 'jinal@gmail.com', '$2y$10$xTOa3l8Bvt1Y78kqhixbP.kzQdX3Y.n/nhy.GtWmdz4ImSXCX/rYG', 'PHP'),
(31, 'Diksan Shah', 'diksan@gmail.com', '$2y$10$S7a2LynAuVkkU0GdgKDYb.ncymF5m7JSAOlKq8TT9kN6/yQ2jY932', 'Nodejs'),
(32, 'Hina Mehta', 'hina@gmail.com', 'e67c310c07ee1610455e3372f2868756', 'react');

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
(1, 1, 51, '2', '0', '2022-03-19'),
(2, 1, 54, '3', '0', '2022-03-19'),
(3, 1, 54, '4', '2', '2022-03-19'),
(4, 2, 54, '1', '1', '2022-03-19'),
(5, 1, 54, '3', '2', '2022-03-19'),
(6, 3, 51, '3', '1', '2022-03-19'),
(7, 5, 51, '4', '0', '2022-03-19'),
(8, 3, 54, '0', '0', '2022-03-19'),
(9, 5, 51, '3', '1', '2022-03-19'),
(10, 1, 51, '4', '2', '2022-03-19'),
(11, 1, 51, '4', '1', '2022-03-25'),
(12, 2, 61, '4', '1', '2022-03-25'),
(13, 2, 61, '4', '2', '2022-03-25'),
(14, 2, 61, '4', '1', '2022-03-25'),
(15, 2, 61, '4', '4', '2022-03-25'),
(16, 4, 52, '4', '3', '2022-03-25'),
(17, 4, 52, '0', '0', '2022-03-25'),
(18, 2, 51, '4', '0', '2022-03-26'),
(19, 2, 52, '4', '2', '2022-04-22'),
(20, 2, 52, '4', '1', '2022-04-22'),
(21, 19, 61, '4', '0', '2022-04-22'),
(22, 19, 61, '4', '3', '2022-04-22'),
(23, 19, 52, '3', '2', '2022-04-22'),
(24, 22, 52, '3', '2', '2022-04-22'),
(25, 24, 54, '4', '2', '2022-05-22'),
(26, 24, 54, '4', '2', '2022-05-22'),
(27, 24, 54, '4', '2', '2022-05-22'),
(28, 24, 54, '4', '0', '2022-05-22'),
(29, 24, 54, '2', '0', '2022-05-22'),
(30, 24, 54, '4', '0', '2022-05-22'),
(31, 24, 54, '4', '3', '2022-05-22'),
(32, 24, 54, '4', '1', '2022-05-22'),
(33, 24, 54, '4', '0', '2022-05-22'),
(34, 24, 54, '4', '0', '2022-05-22'),
(35, 24, 54, '0', '0', '2022-05-22'),
(36, 24, 54, '0', '0', '2022-05-22'),
(37, 24, 54, '4', '0', '2022-05-22'),
(38, 24, 54, '4', '0', '2022-05-22'),
(39, 24, 54, '4', '0', '2022-05-22');

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
(7, 'Gita Shah', 'gita@gmail.com', '$2y$10$gA15Acas/Xn8GdN9sl/VIuCZ.5Gb3A/CKr2ODCq2DK44xMmNFbxzC', NULL, NULL),
(8, 'Devarshi Vaidya', 'devarshi@gmail.com', '$2y$10$qpa/04lhvGAy2OUHKsh99ea2Qm00kN3BRUieNRbewAYBD9pLfQPCO', NULL, NULL),
(9, 'Richa Shah', 'richa@gmail.com', '$2y$10$yTclUi/FgZYtTDBP023EAOvtcT39OI7sw.4xAz.JiXlXYSCLR88Oa', NULL, NULL),
(10, 'Amisha Shah', 'amisha@gmail.com', '$2y$10$DRTBPXtHFVAZQ2TZ4sXlquKCcoxlmsB3R5ZIM1ttUbXIY20r3BtF6', NULL, NULL),
(11, 'Shruti Shah', 'shruti@gmail.com', '$2y$10$xZKna1Hj.fn/j7N4NbLe6.eYVN8uEK.pyh1MHiI01o9TWFwW9oBOa', NULL, NULL),
(12, 'Sweta Merai', 'sweta@gmail.com', '$2y$10$d1kvNtVmsNtB897YeCYYSu2KNtFZX0Ao5X6EdG6nRk2vthoqIeW7u', NULL, NULL),
(13, 'Krisha Shah', 'krisha@gmail.com', '$2y$10$vdEA20mbMZPuYzpuk13MfO3LFDUdMURXvTduD97V4Myy.NnSo8.AC', NULL, NULL),
(14, 'Deep Shah', 'deep@gmail.com', '$2y$10$Ju9kOcUsOSi2uI.wTm5bJ.Y7tU08ig7jz1d7YvcEq46NCenK4wRGi', NULL, NULL),
(15, 'Sagar Patel', 'sagar@gmail.com', '$2y$10$SRhbqv9kPFbqt9Bg3J/QF.KYjJZP6AMmCY7dYCeK7W9lTwNfVgMbm', NULL, NULL),
(16, 'Herish Patel', 'herish@gmail.com', '$2y$10$lReeJ0EMgnms5VJ0m4p5Ieg6H5he0vSddlmCuoAihYbK5/HwbaWxu', NULL, NULL),
(17, 'Fenil Shah', 'fenil@gmail.com', '$2y$10$WLuYunXNaRZJAFNs/BDfy.0pvDy6apYQ/CmvTeyz71LG4DApke7eS', NULL, NULL),
(20, 'Harshad shah', 'harshad@gmail.com', '$2y$10$QMvhsST5JFIyfUhJxUpBjemaifXV3xLknsbh.1q0YV54e4mM54Mpi', NULL, NULL),
(21, 'Manish Shah', 'manish@gmail.com', '$2y$10$nAypd8QgESW595oiCuP2ou/ICyk2aa0R1bE.j28sCKgBCXbDUMt66', NULL, NULL),
(22, 'Manish Shah', 'manish@gmail.com', 'manish123', '2022-04-22 11:49:01', '2022-04-22 11:49:01'),
(24, 'Sweety Patel', 'sweety@gmail.com', 'sweety123', '2022-05-22 05:39:13', '2022-05-22 05:39:13');

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
(27, 'ANDROID', '2022-03-11 07:40:16'),
(29, 'LARAVEL', '2022-05-22 10:43:01');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `examinee_tbl`
--
ALTER TABLE `examinee_tbl`
  MODIFY `exmne_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exam_attempt`
--
ALTER TABLE `exam_attempt`
  MODIFY `examat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `exam_question_tbl`
--
ALTER TABLE `exam_question_tbl`
  MODIFY `eqt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `exam_tbl`
--
ALTER TABLE `exam_tbl`
  MODIFY `ex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `faculty_master`
--
ALTER TABLE `faculty_master`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

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
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `sub_master`
--
ALTER TABLE `sub_master`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
