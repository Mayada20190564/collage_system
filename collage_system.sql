-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 11:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collage_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `ask`
--

CREATE TABLE `ask` (
  `id` int(11) NOT NULL,
  `question` varchar(500) NOT NULL,
  `reply` varchar(500) NOT NULL,
  `student_id` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ask`
--

INSERT INTO `ask` (`id`, `question`, `reply`, `student_id`, `admin`, `created_at`, `updated_at`) VALUES
(4, 'fkga', 'sfdvfdvgfdvdf', 1, 8, '2022-03-16 22:00:35', '2022-03-16 20:00:35'),
(5, 'dslvj:SALDKl', '', 1, 8, NULL, NULL),
(6, 'dslvj:SALDKl', '', 1, 8, NULL, NULL),
(7, 'dslvj:SALDKl', 'dbdfbdfbfdb', 1, 8, '2022-03-16 14:11:16', '2022-03-16 12:11:16'),
(8, 'dslvj:SALDKl', '', 1, 8, NULL, NULL),
(9, 'اي الاخباااااار عامله اي و ازي العياااال', '', 1, 8, NULL, NULL),
(10, 'fkga', 'fhfnhhng', 1, 8, '2022-03-10 19:51:46', '2022-03-10 17:51:46'),
(11, 'dslvj:SALDKl', '', 1, 8, NULL, NULL),
(12, 'sdlknkkdk', '', 1, 8, NULL, NULL),
(13, 'sdlknkkdk', '', 1, 8, NULL, NULL),
(14, '51515', 'iesgnilsnilsndfilnsdnfidnspnsdifnsdfni bs.', 1025, 8, '2022-03-08 22:15:06', '2022-03-08 20:15:06'),
(15, 'dfgfgdgdfgd', '', 1025, 8, NULL, NULL),
(16, 'smthsmthsmthsmthsmthsmthsmthsmth', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1025, 8, '2022-03-16 14:20:19', '2022-03-16 12:20:19'),
(17, 'dfgdfgfgfgdfgdfgdfgdgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgdfgfdgdfg', '', 1025, 8, NULL, NULL),
(18, 'q1', 'a2', 1026, 8, '2022-03-20 18:01:41', '2022-03-20 16:01:41'),
(19, 'hello', '', 1029, 8, NULL, NULL),
(20, 'hello2', '', 1029, 8, NULL, NULL),
(21, 'asasdasd', 'dddd', 25, 8, '2022-03-26 14:55:00', '2022-03-26 12:55:00'),
(22, 'dfgfgdgdfgd', '', 1025, 8, NULL, NULL);

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
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(100) NOT NULL,
  `answer` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(1, 'q1', 'A1', NULL, NULL),
(2, 'Q2', 'A2', NULL, NULL),
(3, 'Q3', 'A3', NULL, NULL),
(4, 'Q4', 'A4', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `final-decision`
--

CREATE TABLE `final-decision` (
  `ID` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `SSN` varchar(15) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `specialization` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `final-decision`
--

INSERT INTO `final-decision` (`ID`, `studentid`, `SSN`, `studentname`, `specialization`) VALUES
(9, 95, '390-29-2511', 'Luca', '3'),
(10, 1025, '123456789012345', 'Ziad', '1'),
(11, 1026, '535353535353535', 'aaaaaa', '1'),
(12, 25, '570-85-4151', 'Robb', '1'),
(13, 1035, '123456789000000', 'Ali hassan', '1');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `news` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `news_details` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `news`, `img`, `created_at`, `updated_at`, `news_details`) VALUES
(2, 'Big news 2', 'pris.jpg', '2022-02-15 18:01:50', '2022-02-16 18:01:50', '\"I\'ll talk to you tomorrow in more detail at our meeting, but I think I\'ve found a solution to our problem. It\'s not exactly legal, but it won\'t land us in jail for the rest of our lives either. Are you willing to take the chance?\" Monroe asked his partner over the phone.'),
(3, 'Big news 3', 'gradu.jpg', '2022-02-17 18:01:50', '2022-02-18 18:01:50', 'It was a weird concept. Why would I really need to generate a random paragraph? Could I actually learn something from doing so? All these questions were running through her head as she pressed the generate button. To her surprise, she found what she least expected to see.'),
(4, 'Big news 4', 'full.jpg', '2022-02-19 18:01:50', '2022-02-20 18:01:50', 'He sat staring at the person in the train stopped at the station going in the opposite direction. She sat staring ahead, never noticing that she was being watched. Both trains began to move and he knew that in another timeline or in another universe, they had been happy together.'),
(5, 'Big news 5', 'exams.jpg', '2022-01-03 18:01:50', '2022-01-21 18:01:50', 'She looked at her student wondering if she could ever get through. \"You need to learn to think for yourself,\" she wanted to tell him. \"Your friends are holding you back and bringing you down.\" But she didn\'t because she knew his friends were all that he had and even if that meant a life of misery, he would never give them up.'),
(6, 'Big news 6', 'chairs.png\r\n', '2022-02-23 18:01:50', '2022-02-23 18:01:50', 'The kids were loud. They were way too loud for Jerry, especially since this was a four-hour flight. The parents didn\'t seem to be able, or simply didn\'t want, to control them. They were yelling and fighting among themselves and it was impossible for any of the passengers to concentrate or rest. He thought about politely tapping on the parents\' shoulders and asking them to try and get their kids under a bit more control, but before he did he came up with a better idea. Sure, it was a bit sinister, and he\'d probably end p in a lot of trouble, but he really didn\'t care at that point.'),
(12, 'new1new1new1new1new1', 'p18-q4.PNG', '2022-03-26 12:55:30', '2022-03-26 12:55:30', 'answer5555new1new1new1new1new1'),
(13, 'after update after update', 'Capture.PNG', '2022-04-01 11:35:17', '2022-04-01 11:35:17', 'after update after update after update');

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
-- Table structure for table `pre_decision`
--

CREATE TABLE `pre_decision` (
  `ID` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `SSN` varchar(15) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `specialization` varchar(100) DEFAULT NULL,
  `paymentreset` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pre_decision`
--

INSERT INTO `pre_decision` (`ID`, `studentid`, `SSN`, `studentname`, `specialization`, `paymentreset`) VALUES
(1621, 43, '651-41-3694', 'Mendel', '1', NULL),
(1622, 79, '840-37-6409', 'Jory', '1', NULL),
(1623, 4, '250-20-6270', 'Anitra', '1', NULL),
(1624, 7, '627-62-0817', 'Edee', '1', NULL),
(1625, 30, '583-34-0713', 'Anastassia', '1', NULL),
(1626, 92, '425-94-9394', 'Hyacintha', '1', NULL),
(1628, 98, '148-61-0876', 'Melisande', '1', NULL),
(1629, 81, '790-38-2370', 'Jacquelynn', '1', NULL),
(1630, 55, '619-10-2771', 'Forbes', '1', NULL),
(1631, 67, '851-29-6573', 'Bryce', '1', NULL),
(1632, 33, '243-51-4460', 'Shalne', '1', NULL),
(1633, 61, '532-83-1595', 'Horatia', '1', NULL),
(1634, 47, '718-64-0628', 'Davon', '1', NULL),
(1635, 1, '213-21-2658', 'Durant', '1', NULL),
(1636, 21, '419-94-9935', 'Otes', '1', NULL),
(1637, 35, '628-46-5143', 'Guilbert', '1', NULL),
(1638, 73, '281-65-6314', 'Christophe', '1', NULL),
(1639, 32, '715-82-7620', 'Devonne', '1', NULL),
(1640, 20, '586-59-2115', 'Nye', '1', NULL),
(1641, 2, '420-73-6001', 'Laetitia', '1', NULL),
(1642, 71, '446-31-8298', 'Winna', '1', NULL),
(1643, 84, '389-88-7188', 'Winslow', '1', NULL),
(1644, 16, '622-43-9476', 'Alessandro', '1', NULL),
(1645, 52, '455-24-9742', 'Mavra', '1', NULL),
(1646, 39, '728-96-9845', 'Lemuel', '1', NULL),
(1647, 85, '331-38-3975', 'Paulita', '1', NULL),
(1648, 100, '512-67-2591', 'Dorotea', '1', NULL),
(1649, 22, '305-50-9340', 'Elfrieda', '1', NULL),
(1650, 46, '635-58-7379', 'Mada', '1', NULL),
(1651, 34, '734-72-3484', 'Winonah', '1', NULL),
(1652, 76, '510-55-4911', 'Tomas', '1', NULL),
(1653, 96, '124-63-6761', 'Lee', '1', NULL),
(1654, 86, '814-82-7058', 'Dalli', '1', NULL),
(1655, 10, '251-92-1137', 'Tobi', '2', NULL),
(1656, 11, '180-91-3411', 'Abbott', '2', NULL),
(1657, 75, '579-07-4807', 'Uri', '2', NULL),
(1658, 49, '732-03-3895', 'Morton', '2', NULL),
(1659, 15, '540-35-4882', 'Reeta', '2', NULL),
(1660, 36, '843-21-2743', 'Teodoro', '2', NULL),
(1661, 31, '666-56-1206', 'Gizela', '2', NULL),
(1662, 65, '656-88-9437', 'Siegfried', '2', NULL),
(1663, 60, '356-14-3773', 'Polly', '2', NULL),
(1664, 23, '539-66-2951', 'Chelsey', '2', NULL),
(1665, 57, '332-83-2952', 'Launce', '2', NULL),
(1666, 83, '216-75-3458', 'Boyce', '2', NULL),
(1667, 53, '202-17-2258', 'Skipper', '2', NULL),
(1668, 58, '644-19-6745', 'Dinnie', '2', NULL),
(1669, 64, '858-98-1227', 'Guido', '2', NULL),
(1670, 26, '872-16-3398', 'Peirce', '2', NULL),
(1671, 97, '319-77-9939', 'Catharine', '2', 'software-developer-on-php-code.jpg'),
(1672, 6, '882-92-4941', 'Ruthanne', '2', NULL),
(1673, 68, '789-96-4458', 'Roxanna', '2', NULL),
(1674, 89, '380-44-9613', 'Jerrold', '2', NULL),
(1675, 13, '736-87-6379', 'Thain', '2', NULL),
(1676, 94, '474-05-3001', 'Beverly', '2', NULL),
(1677, 5, '134-75-3212', 'Carly', '3', NULL),
(1678, 41, '815-03-8446', 'Kane', '3', NULL),
(1679, 17, '837-16-0338', 'Julina', '3', NULL),
(1680, 12, '660-64-3292', 'Lura', '3', NULL),
(1681, 9, '658-62-7424', 'Cyrill', '3', NULL),
(1682, 40, '659-65-8595', 'Alla', '3', NULL),
(1683, 59, '254-29-8649', 'Mickie', '3', NULL),
(1684, 42, '835-56-3450', 'Ki', '3', NULL),
(1685, 19, '898-17-3558', 'Ronnie', '3', NULL),
(1686, 74, '192-59-8500', 'Merl', '3', NULL),
(1687, 78, '873-25-9821', 'Cathyleen', '3', NULL),
(1688, 27, '333-21-7456', 'Joshuah', '3', NULL),
(1689, 44, '569-64-1280', 'Waite', '3', NULL),
(1690, 14, '740-80-5306', 'Charo', '3', NULL),
(1692, 28, '856-12-7604', 'Mahala', '2', NULL),
(1693, 72, '555-29-4411', 'Armando', '2', NULL),
(1694, 82, '614-42-0631', 'Edgard', '2', NULL),
(1695, 91, '612-60-4241', 'Selle', '2', NULL),
(1697, 1029, '123456789123456', 'Ziad', '3', NULL),
(1698, 1034, '11122233333444', 'ZiadAhmed', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `ID` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `question` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`ID`, `name`, `priority`) VALUES
(1, 'bis', 1),
(2, 'fmi', 2),
(3, 'com', 3);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `SSN` varchar(20) DEFAULT NULL,
  `payment_reset` varchar(50) DEFAULT NULL,
  `personal_img` varchar(50) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `grade` double DEFAULT NULL,
  `E_grade` double DEFAULT NULL,
  `final_total` double DEFAULT NULL,
  `high_school_cer` varchar(50) DEFAULT NULL,
  `specialization1` int(11) DEFAULT NULL,
  `specialization2` int(11) DEFAULT NULL,
  `specialization3` int(11) DEFAULT NULL,
  `status` enum('notapplied','applied','semiaccepted','accepted','rejected') NOT NULL DEFAULT 'notapplied',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ID`, `name`, `email`, `password`, `SSN`, `payment_reset`, `personal_img`, `phone`, `grade`, `E_grade`, `final_total`, `high_school_cer`, `specialization1`, `specialization2`, `specialization3`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Durant', 'ddahlen0_@hatena.ne.jp', 'uGqqV2L', '213-21-2658', NULL, 'bg.jpg', NULL, 348, 52, 400, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(2, 'Laetitia', 'lcrees1_@arizona.edu', 'RQ785fgRHE', '420-73-6001', NULL, NULL, NULL, 327, 59, 386, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(3, 'Horace', 'hgentsch2_@surveymonkey.com', 'A9F0Wdvz5i', '869-98-0909', NULL, NULL, NULL, 235, 47, 282, NULL, 2, 1, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(4, 'Anitra', 'achidlow3_@howstuffworks.com', '1fHgyUcsoxVg', '250-20-6270', NULL, NULL, NULL, 397, 57, 454, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(5, 'Carly', 'cmcclosh4_@tinyurl.com', '8Nbwiv', '134-75-3212', NULL, NULL, NULL, 407, 37, 444, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(6, 'Ruthanne', 'rdoldon5_@a8.net', 'shWJs7R1kku2', '882-92-4941', NULL, NULL, NULL, 258, 56, 314, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(7, 'Edee', 'epiken6_@time.com', 'L8oyZK49', '627-62-0817', NULL, NULL, NULL, 407, 46, 453, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(8, 'Timmie', 'toduilleain7_@google.it', 'UCsIwSSE', '220-99-8122', NULL, NULL, NULL, 240, 50, 290, NULL, 1, 3, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(9, 'Cyrill', 'cstockton8_@phpbb.com', 'z5uP7rqJbJ', '658-62-7424', NULL, NULL, NULL, 351, 34, 385, NULL, 3, 1, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(10, 'Tobi', 'tsaer9_@hatena.ne.jp', 'fdxowp82qCAi', '251-92-1137', NULL, NULL, NULL, 390, 55, 445, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(11, 'Abbott', 'alefeuvrea_@ning.com', '5jhf2oOvH', '180-91-3411', NULL, NULL, NULL, 376, 59, 435, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(12, 'Lura', 'lfillgateb_@usatoday.com', 'HgU1l7', '660-64-3292', NULL, NULL, NULL, 356, 30, 386, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(13, 'Thain', 'tlatehousec_@narod.ru', 'ZlMiVMnz', '736-87-6379', NULL, NULL, NULL, 264, 45, 309, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(14, 'Charo', 'cburdsd_@shutterfly.com', 'r0gVcPV', '740-80-5306', NULL, NULL, NULL, 296, 31, 327, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(15, 'Reeta', 'rgunthorpee_@list-manage.com', 'kM2s5DQ', '540-35-4882', NULL, NULL, NULL, 370, 55, 425, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(16, 'Alessandro', 'afancuttf_@opera.com', 'QeGQEaKOE14h', '622-43-9476', NULL, NULL, NULL, 338, 33, 371, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(17, 'Julina', 'jbernardong_@ucoz.com', '1svI14oULjU7', '837-16-0338', NULL, NULL, NULL, 338, 60, 398, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(18, 'Mauricio', 'mlinnardh_@huffingtonpost.com', '9wA86mxjufK', '623-75-4093', NULL, NULL, NULL, 233, 30, 263, NULL, 2, 1, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(19, 'Ronnie', 'rsergeaunti_@noaa.gov', 'bPjkQflTMRlX', '898-17-3558', NULL, NULL, NULL, 315, 35, 350, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(20, 'Nye', 'nmarneyj_@washingtonpost.com', 'sVNr8qsR', '586-59-2115', NULL, NULL, NULL, 338, 51, 389, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(21, 'Otes', 'oropkinsk_@wunderground.com', 'nxu0dnaQ', '419-94-9935', NULL, NULL, NULL, 342, 57, 399, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(22, 'Elfrieda', 'eflattel_@house.gov', 'Nou0vJsB3g7', '305-50-9340', NULL, NULL, NULL, 308, 38, 346, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(23, 'Chelsey', 'cdunnanm_@zdnet.com', '6ei1D98GEla', '539-66-2951', NULL, NULL, NULL, 303, 50, 353, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(24, 'Viole', 'vwoolenn_@bloomberg.com', 'T7BBJd', '407-33-2656', NULL, NULL, NULL, 251, 36, 287, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(25, 'Robb', 'rshurmero_@360.cn', 'qD7xgbrVn', '570-85-4151', 'p18-q6.PNG', NULL, NULL, 402, 57, 459, NULL, 1, 3, 2, 'accepted', '2022-03-08 20:30:52', '2022-03-26 12:53:08'),
(26, 'Peirce', 'pbernetp_@go.com', 'XSnhbb5RSA00', '872-16-3398', NULL, NULL, NULL, 285, 34, 319, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(27, 'Joshuah', 'jmechicq_@home.pl', 'JzC4zD', '333-21-7456', NULL, NULL, NULL, 286, 55, 341, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(28, 'Mahala', 'mstoner_@phoca.cz', 'WGzs30U5A', '856-12-7604', NULL, NULL, NULL, 253, 58, 311, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(29, 'Denys', 'dmateevs_@wunderground.com', 'DabX2el4wy', '536-57-0988', NULL, NULL, NULL, 239, 36, 275, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(30, 'Anastassia', 'areisenbergt_@ed.gov', 'rfveMNx3', '583-34-0713', NULL, NULL, NULL, 406, 47, 453, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(31, 'Gizela', 'gmathewsu_@github.io', 'VM9B4X7Aiu', '666-56-1206', NULL, NULL, NULL, 349, 44, 393, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(32, 'Devonne', 'dheimesv_@g.co', 'Gx8vdzy7h', '715-82-7620', NULL, NULL, NULL, 355, 36, 391, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(33, 'Shalne', 'sjoynesw_@taobao.com', 'GCyvXK', '243-51-4460', NULL, NULL, NULL, 377, 43, 420, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(34, 'Winonah', 'wolyetx_@dailymail.co.uk', 'IVjYvr', '734-72-3484', NULL, NULL, NULL, 297, 40, 337, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(35, 'Guilbert', 'gbousteady_@timesonline.co.uk', 'bXFggqzeW', '628-46-5143', NULL, NULL, NULL, 368, 31, 399, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(36, 'Teodoro', 'tpalluschekz_@umich.edu', '6GGocdt5U', '843-21-2743', NULL, NULL, NULL, 373, 49, 422, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(37, 'Birgitta', 'bgwinn10_@kickstarter.com', 'TgmGIDIXe', '381-59-5771', NULL, NULL, NULL, 222, 49, 271, NULL, 3, 1, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(38, 'Freddy', 'ffosbraey11_@google.it', 'H977smFuw', '675-66-8276', NULL, NULL, NULL, 248, 34, 282, NULL, 3, 2, 1, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(39, 'Lemuel', 'lleguin12_@elpais.com', '7cCrvsk', '728-96-9845', NULL, NULL, NULL, 299, 52, 351, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(40, 'Alla', 'ajepensen13_@upenn.edu', 'Omn2tC9dHh', '659-65-8595', NULL, NULL, NULL, 323, 44, 367, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(41, 'Kane', 'kbello14_@xinhuanet.com', 'cwXvm5', '815-03-8446', NULL, NULL, NULL, 349, 52, 401, NULL, 3, 1, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(42, 'Ki', 'kdymidowicz15_@go.com', 'bSPo1v', '835-56-3450', NULL, NULL, NULL, 321, 35, 356, NULL, 3, 1, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(43, 'Mendel', 'mcesaric16_@list-manage.com', 'fsoiahj', '651-41-3694', NULL, NULL, NULL, 402, 57, 459, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(44, 'Waite', 'wquiney17_@quantcast.com', 'FGxPzH', '569-64-1280', NULL, NULL, NULL, 270, 58, 328, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(45, 'Claribel', 'chardwell18_@pen.io', 'cLPUMk', '805-43-3767', NULL, NULL, NULL, 222, 46, 268, NULL, 3, 2, 1, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(46, 'Mada', 'mmerrell19_@comcast.net', 'AtvKeR3vJ', '635-58-7379', NULL, NULL, NULL, 281, 59, 340, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(47, 'Davon', 'dgillion1a_@timesonline.co.uk', 'kTSCzXzICe', '718-64-0628', NULL, NULL, NULL, 365, 37, 402, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(48, 'Engelbert', 'ecaush1b_@google.fr', 'bq8gdVH', '442-14-3911', NULL, NULL, NULL, 220, 44, 264, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(49, 'Morton', 'mstroud1c_@seesaa.net', '4Gvm4vh', '732-03-3895', NULL, NULL, NULL, 389, 38, 427, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(50, 'Mellicent', 'mvillage1d_@unblog.fr', 'Mq8tCkioLdkh', '156-56-5499', NULL, NULL, NULL, 246, 48, 294, NULL, 1, 3, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(51, 'Minnaminnie', 'mmordey1e_@ft.com', 'L7OF6RU', '649-28-4253', NULL, NULL, NULL, 234, 33, 267, NULL, 2, 1, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(52, 'Mavra', 'mmanagh1f_@psu.edu', 'EIxrOIb', '455-24-9742', NULL, NULL, NULL, 329, 33, 362, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(53, 'Skipper', 'smcpeck1g_@hud.gov', 'dfyaW3c', '202-17-2258', NULL, NULL, NULL, 307, 37, 344, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(54, 'Jo-ann', 'jtimlett1h_@fc2.com', 'yjrL79Pi', '337-66-0915', NULL, NULL, NULL, 233, 37, 270, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(55, 'Forbes', 'fashburner1i_@skyrock.com', 'CRWkwpI5rujA', '619-10-2771', NULL, NULL, NULL, 400, 30, 430, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(56, 'Mignonne', 'mjurczik1j_@netvibes.com', 'q85wH7q5h', '249-89-4288', NULL, NULL, NULL, 228, 42, 270, NULL, 3, 1, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(57, 'Launce', 'lvardey1k_@webmd.com', '9pRix8Yvr3IN', '332-83-2952', NULL, NULL, NULL, 311, 40, 351, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(58, 'Dinnie', 'dsermin1l_@jigsy.com', 'Rh7mdSu4MiZ', '644-19-6745', NULL, NULL, NULL, 295, 43, 338, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(59, 'Mickie', 'mmozzetti1m_@google.it', 'UO23M2E', '254-29-8649', NULL, NULL, NULL, 322, 43, 365, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(60, 'Polly', 'pseamon1n_@spiegel.de', 'yFjtizr', '356-14-3773', NULL, NULL, NULL, 319, 35, 354, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(61, 'Horatia', 'head1o_@cocolog-nifty.com', 'epefERumNnQy', '532-83-1595', NULL, NULL, NULL, 369, 37, 406, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(62, 'Arlette', 'afranck1p_@cornell.edu', 'xU7t5Vr6', '655-38-2973', NULL, NULL, NULL, 228, 45, 273, NULL, 3, 1, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(63, 'Myer', 'mpiecha1q_@nydailynews.com', 'raFqjh0FYIb', '171-12-6529', NULL, NULL, NULL, 226, 55, 281, NULL, 3, 2, 1, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(64, 'Guido', 'gbugdell1r_@is.gd', 'izPrcaf', '858-98-1227', NULL, NULL, NULL, 268, 55, 323, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(65, 'Siegfried', 'spenny1s_@tumblr.com', 'jvwP27Iw', '656-88-9437', NULL, NULL, NULL, 318, 48, 366, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(66, 'Callean', 'cmebius1t_@meetup.com', '1BJqOR4l', '417-95-6996', NULL, NULL, NULL, 253, 43, 296, NULL, 1, 3, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(67, 'Bryce', 'bskeete1u_@ezinearticles.com', 'G890ePIG', '851-29-6573', NULL, NULL, NULL, 388, 39, 427, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(68, 'Roxanna', 'rbranton1v_@yellowbook.com', 'jXuzni3K', '789-96-4458', NULL, NULL, NULL, 269, 42, 311, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(69, 'Fidole', 'fpegrum1w_@china.com.cn', 'XfCUPEW01A', '226-88-9600', NULL, NULL, NULL, 236, 30, 266, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(70, 'Robinet', 'rbarosch1x_@mozilla.com', '0n2oA7T26P', '322-72-1388', NULL, NULL, NULL, 222, 46, 268, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(71, 'Winna', 'wsaker1y_@indiatimes.com', 'Us2Rn2B4QI', '446-31-8298', NULL, NULL, NULL, 338, 45, 383, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(72, 'Armando', 'apawley1z_@slideshare.net', 'CjAeo78vb9', '555-29-4411', NULL, NULL, NULL, 256, 52, 308, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(73, 'Christophe', 'ckinleyside20_@wisc.edu', 'LQV6dzFu', '281-65-6314', NULL, NULL, NULL, 361, 31, 392, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(74, 'Merl', 'mgoldis21_@engadget.com', '8D6vteeaVu4', '192-59-8500', NULL, NULL, NULL, 320, 30, 350, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(75, 'Uri', 'uregorz22_@i2i.jp', '8SUuF1wYio7', '579-07-4807', NULL, NULL, NULL, 400, 35, 435, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(76, 'Tomas', 'tkepp23_@mediafire.com', '0or1lvaKKHdf', '510-55-4911', NULL, NULL, NULL, 274, 60, 334, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(77, 'Elroy', 'elafuente24_@ft.com', 'gTJvPbL7', '822-69-1920', NULL, NULL, NULL, 230, 48, 278, NULL, 3, 2, 1, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(78, 'Cathyleen', 'ccolloby25_@de.vu', '0VN1q2dR', '873-25-9821', NULL, NULL, NULL, 308, 38, 346, NULL, 3, 2, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(79, 'Jory', 'jbrownell26_@gravatar.com', 'wgttMe', '840-37-6409', NULL, NULL, NULL, 409, 49, 458, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(80, 'Urban', 'uscawton27_@jugem.jp', 'GimMzIG', '846-01-8781', NULL, NULL, NULL, 245, 43, 288, NULL, 1, 3, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(81, 'Jacquelynn', 'jclitheroe28_@walmart.com', '6SHuadOt', '790-38-2370', NULL, NULL, NULL, 383, 50, 433, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(82, 'Edgard', 'emawer29_@ed.gov', 'o39i4Dbc', '614-42-0631', NULL, NULL, NULL, 277, 30, 307, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(83, 'Boyce', 'bfalck2a_@youtu.be', 'DINsCmyL', '216-75-3458', NULL, NULL, NULL, 298, 52, 350, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(84, 'Winslow', 'wmacneachtain2b_@creativecommons.org', 'iphHmm', '389-88-7188', NULL, NULL, NULL, 335, 41, 376, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(85, 'Paulita', 'pisgar2c_@nba.com', 'tTJkZ2eTTl1O', '331-38-3975', NULL, NULL, NULL, 308, 41, 349, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(86, 'Dalli', 'dgilhoolie2d_@edublogs.org', 'gHmkoz', '814-82-7058', NULL, NULL, NULL, 257, 60, 317, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(87, 'Vera', 'vburnapp2e_@samsung.com', 'g3PiJZiVsGz', '321-56-3369', NULL, NULL, NULL, 1, 39, 40, NULL, 2, 1, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(88, 'Kaylyn', 'kpledger2f_@indiatimes.com', 'PHXRLDZuBRx', '252-70-6481', NULL, NULL, NULL, 255, 39, 294, NULL, 1, 3, 2, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(89, 'Jerrold', 'jpettengell2g_@arizona.edu', 'lRAX2S5h8B', '380-44-9613', NULL, NULL, NULL, 259, 51, 310, NULL, 2, 1, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(90, 'Casey', 'cparaman2h_@senate.gov', 'fNNsfXImA', '706-48-7228', NULL, NULL, NULL, 236, 54, 290, NULL, 2, 1, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(91, 'Selle', 'sforcade2i_@yellowpages.com', '4w12vIWf92WB', '612-60-4241', NULL, NULL, NULL, 257, 46, 303, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(92, 'Hyacintha', 'hsmyley2j_@vkontakte.ru', 'hLaRViD', '425-94-9394', NULL, NULL, NULL, 394, 54, 448, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(94, 'Beverly', 'brobeson2l_@google.com', 'Dg38DbwrsA', '474-05-3001', NULL, NULL, NULL, 257, 51, 308, NULL, 2, 3, 1, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(95, 'Luca', 'lfranklen2m_@freewebs.com', 'LNCC4Q', '390-29-2511', 'largepreview.png', NULL, NULL, 266, 52, 318, NULL, 3, 2, 1, 'accepted', '2022-03-08 20:30:52', '2022-03-08 20:10:52'),
(96, 'Lee', 'lhendrix2n_@nasa.gov', 'hI3KvM', '124-63-6761', NULL, NULL, NULL, 282, 52, 334, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(97, 'Catharine', 'cstollenbeck2o_@freewebs.com', '5hHH6ePBgic', '319-77-9939', 'software-developer-on-php-code.jpg', NULL, NULL, 275, 42, 317, NULL, 2, 1, 3, 'accepted', '2022-03-08 20:30:52', '2022-03-08 20:03:56'),
(98, 'Melisande', 'mettels2p_@artisteer.com', '8gPi9VW', '148-61-0876', NULL, NULL, NULL, 400, 36, 436, NULL, 1, 3, 2, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(99, 'Henrieta', 'hmoquin2q_@illinois.edu', '0brCXKa', '781-89-8933', NULL, NULL, NULL, 245, 48, 293, NULL, 1, 2, 3, 'applied', '2022-03-08 20:30:52', '2022-03-08 20:30:52'),
(100, 'Dorotea', 'dcronkshaw2r_@china.com.cn', 'IKWuep95B', '512-67-2591', NULL, NULL, NULL, 310, 39, 349, NULL, 1, 2, 3, 'semiaccepted', '2022-03-08 20:30:52', '2022-03-08 18:41:26'),
(1025, 'Ziad', 'zyad.ashraaf@gmail.com', '12345678', '123456789012345', 'pr.jpg', 'software-developer-on-php-code.jpg', ' 0111422375', 390, 50, 440, NULL, 1, 2, 3, 'accepted', '2022-03-08 20:30:52', '2022-03-08 20:11:22'),
(1026, 'aaaaaa', 'aaaaaaaaaaa@gmail.com', '12345678', '535353535353535', 'person.png', 'bg.jpg', ' 0111422375', 4525, 5353, 9878, 'person.png', 1, 2, 3, 'accepted', '2022-03-20 16:53:31', '2022-03-20 16:00:44'),
(1027, 'afssd', 'zzzzz@gmail.com', '12345678', 'sdfsdfsd', NULL, '2.PNG', ' dsfsdfsdfs', 0, 0, 0, 'Capture.PNG', 1, 1, 1, 'notapplied', '2022-03-25 22:49:08', '2022-03-25 22:49:08'),
(1028, 'ahmed abdullah', 'mayada@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notapplied', '2022-03-26 13:15:55', '2022-03-26 13:15:55'),
(1029, 'Ziad', 'zyad33.ashraaf@gmail.com', '123456789', '123456789123456', NULL, 'p18-q2.PNG', ' 0115735318', 399, 85, 484, 'p18-q1d.PNG', 3, 1, 2, 'semiaccepted', '2022-03-26 13:30:55', '2022-03-26 12:51:23'),
(1030, 'ahmed', 'aaa123@gmail.com', '123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notapplied', '2022-03-26 13:40:48', '2022-03-26 13:40:48'),
(1031, 's', 'ss@gmail.com', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notapplied', '2022-04-01 15:04:56', '2022-04-01 15:04:56'),
(1032, 'aa', 'aaaaaaaasaaa@gmail.com', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notapplied', '2022-04-01 15:06:15', '2022-04-01 15:06:15'),
(1033, 'ss', 'redx51051s0@gmai.com', '12345678', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notapplied', '2022-04-01 15:06:33', '2022-04-01 15:06:33'),
(1034, 'ZiadAhmed', 'ahmed_abdullah10@gmail.com', '12345678', '11122233333444', NULL, 'Capture.PNG', '01114223757', 350, 50, 400, 'Capture.PNG', 1, 2, 3, 'semiaccepted', '2022-04-01 15:09:01', '2022-04-01 16:42:59'),
(1035, 'Ali hassan', 'aliHassan510@gmail.com', '12345678', '123456789000000', 'Capture.PNG', 'Capture.PNG', '66666666666', 300, 50, 350, 'Capture.PNG', 1, 2, 3, 'accepted', '2022-04-01 18:38:42', '2022-04-01 16:48:21'),
(1036, 'ahmed', 'ahmed@gamil.com', '123456789', '1234561232456987', NULL, 'Capture.PNG', '01114223757', 100, 50, 150, 'Capture.PNG', 1, 2, 3, 'applied', '2022-04-03 12:03:11', '2022-04-03 12:07:17'),
(1037, 'Hisham shokry', 'hshokry@gmail.com', 'HS2020$$', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'notapplied', '2022-04-21 11:16:36', '2022-04-21 11:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(8, 'Ziad', 'zyad.ashraaf@gmail.com', NULL, '12345678', NULL, '2022-02-27 15:42:14', '2022-02-27 15:42:14', 0),
(12, 'Ziad', 'zyad33.ashraaf@gmail.com', NULL, '$2y$10$u/kln0GBC5uF6az2mfyd9.1rRpKen8HP7EHIgYfY.K90DZyUqcZL2', NULL, '2022-08-14 11:39:54', '2022-08-14 11:39:54', 1),
(13, 'Ziad', 'zyad@gmail.com', NULL, '$2y$10$EjrLPRnukaSPMWlQd2nHp.EhA2YAuyqH8TFdFBQGQtA92zhHDRjhi', NULL, '2022-12-19 20:03:57', '2022-12-19 20:03:57', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ask`
--
ALTER TABLE `ask`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `admin` (`admin`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `final-decision`
--
ALTER TABLE `final-decision`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `student-id` (`studentid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pre_decision`
--
ALTER TABLE `pre_decision`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `studentid` (`studentid`),
  ADD UNIQUE KEY `SSN` (`SSN`),
  ADD KEY `student-id` (`studentid`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `priority` (`priority`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `SSN` (`SSN`),
  ADD KEY `specialization1` (`specialization1`),
  ADD KEY `specialization2` (`specialization2`),
  ADD KEY `specialization3` (`specialization3`);

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
-- AUTO_INCREMENT for table `ask`
--
ALTER TABLE `ask`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `final-decision`
--
ALTER TABLE `final-decision`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pre_decision`
--
ALTER TABLE `pre_decision`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1700;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1038;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ask`
--
ALTER TABLE `ask`
  ADD CONSTRAINT `ask_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`ID`),
  ADD CONSTRAINT `ask_ibfk_2` FOREIGN KEY (`admin`) REFERENCES `users` (`id`);

--
-- Constraints for table `final-decision`
--
ALTER TABLE `final-decision`
  ADD CONSTRAINT `final-decision_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`ID`);

--
-- Constraints for table `pre_decision`
--
ALTER TABLE `pre_decision`
  ADD CONSTRAINT `pre_decision_ibfk_1` FOREIGN KEY (`studentid`) REFERENCES `student` (`ID`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`ID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`specialization1`) REFERENCES `specializations` (`ID`),
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`specialization2`) REFERENCES `specializations` (`ID`),
  ADD CONSTRAINT `student_ibfk_3` FOREIGN KEY (`specialization3`) REFERENCES `specializations` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
