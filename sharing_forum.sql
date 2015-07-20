-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2015 at 01:16 PM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sharing_forum`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_semesters`
--

CREATE TABLE IF NOT EXISTS `academic_semesters` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `academic_year` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `semester` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Dumping data for table `academic_semesters`
--

INSERT INTO `academic_semesters` (`id`, `academic_year`, `semester`, `created_at`, `updated_at`) VALUES
(1, '2008/2009', 1, '2015-04-01 21:00:00', '0000-00-00 00:00:00'),
(2, '2008/2009', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '2008/2009', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '2009/2010', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '2009/2010', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '2009/2010', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, '2010/2011', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '2010/2011', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, '2010/2011', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, '2011/2012', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, '2011/2012', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, '2011/2012', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, '2012/2013', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '2012/2013', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, '2012/2013', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, '2013/2014', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '2013/2014', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, '2013/2014', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, '2014/2015', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, '2014/2015', 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, '2014/2015', 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Fee', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Units', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Missing Marks', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Late Registration', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Hostels', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'General', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `category_problem`
--

CREATE TABLE IF NOT EXISTS `category_problem` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `problem_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `category_problem_category_id_index` (`category_id`),
  KEY `category_problem_problem_id_index` (`problem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=44 ;

--
-- Dumping data for table `category_problem`
--

INSERT INTO `category_problem` (`id`, `category_id`, `problem_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2015-01-09 10:17:10', '2015-01-09 10:17:10'),
(2, 4, 3, '2015-01-09 10:24:13', '2015-01-09 10:24:13'),
(3, 3, 4, '2015-01-09 10:24:53', '2015-01-09 10:24:53'),
(4, 5, 5, '2015-01-09 10:25:32', '2015-01-09 10:25:32'),
(5, 1, 6, '2015-01-09 10:26:08', '2015-01-09 10:26:08'),
(6, 2, 7, '2015-01-10 07:49:28', '2015-01-10 07:49:28'),
(7, 2, 8, '2015-01-10 08:24:19', '2015-01-10 08:24:19'),
(8, 3, 9, '2015-01-10 08:24:33', '2015-01-10 08:24:33'),
(9, 1, 10, '2015-01-10 08:24:45', '2015-01-10 08:24:45'),
(10, 1, 12, '2015-01-13 10:16:12', '2015-01-13 10:16:12'),
(11, 5, 13, '2015-01-13 10:18:17', '2015-01-13 10:18:17'),
(12, 2, 16, '2015-01-19 05:23:42', '2015-01-19 05:23:42'),
(13, 3, 17, '2015-01-22 07:27:41', '2015-01-22 07:27:41'),
(14, 2, 19, '2015-01-22 08:00:19', '2015-01-22 08:00:19'),
(15, 1, 20, '2015-01-22 08:03:31', '2015-01-22 08:03:31'),
(16, 1, 21, '2015-03-05 05:56:31', '2015-03-05 05:56:31'),
(18, 1, 23, '2015-03-09 08:43:42', '2015-03-09 08:43:42'),
(19, 1, 24, '2015-03-09 10:06:29', '2015-03-09 10:06:29'),
(20, 1, 25, '2015-03-09 10:50:47', '2015-03-09 10:50:47'),
(21, 2, 26, '2015-03-12 05:46:00', '2015-03-12 05:46:00'),
(22, 2, 27, '2015-03-19 04:29:15', '2015-03-19 04:29:15'),
(23, 4, 28, '2015-03-19 11:42:58', '2015-03-19 11:42:58'),
(24, 2, 29, '2015-03-23 06:36:34', '2015-03-23 06:36:34'),
(28, 2, 33, '2015-03-26 05:05:51', '2015-03-26 05:05:51'),
(29, 1, 34, '2015-03-26 06:43:23', '2015-03-26 06:43:23'),
(30, 3, 35, '2015-03-26 06:47:06', '2015-03-26 06:47:06'),
(40, 6, 45, '2015-04-07 01:05:33', '2015-04-07 01:05:33'),
(41, 6, 46, '2015-04-07 05:59:28', '2015-04-07 05:59:28'),
(42, 6, 47, '2015-04-10 04:49:27', '2015-04-10 04:49:27'),
(43, 6, 48, '2015-04-10 04:50:48', '2015-04-10 04:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `solution_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `comments_user_id_index` (`user_id`),
  KEY `comments_solution_id_index` (`solution_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=28 ;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `description`, `user_id`, `solution_id`, `created_at`, `updated_at`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'The controller is not getting the data from the FORM. I realise that the Form has by default a Post method, while the Route is using a Get, but if I change that, then the form will not display the form fields. Validation fails as the "required" does not get any values, so it returns to the same page. If I remove the validation filter, then it does go to the results page, but all it does is show ALL of the content of the table, since it is getting no parameters (where) from the Form. The weird thing is that in the past, it worked, but I must have messed up with some part of the code and now it doesn''t. To save space here I have left out many fields which dont play a role in the problem.', 1, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'The controller is not getting the data from the FORM. I realise that the Form has by default a Post method, while the Route is using a Get, but if I change that, then the form will not display the form fields. Validation fails as the "required" does not get any values, so it returns to the same page. If I remove the validation filter, then it does go to the results page, but all it does is show ALL of the content of the table, since it is getting no parameters (where) from the Form. The weird thing is that in the past, it worked, but I must have messed up with some part of the code and now it doesn''t. To save space here I have left out many fields which dont play a role in the problem.', 1, 4, '2015-03-11 21:00:00', '2015-03-11 21:00:00'),
(15, 'The controller is not getting the data from the FORM. I realise that the Form has by default a Post method, while the Route is using a Get, but if I change that, then the form will not display the form fields. Validation fails as the "required" does not get any values, so it returns to the same page. If I remove the validation filter, then it does go to the results page, but all it does is show ALL of the content of the table, since it is getting no parameters (where) from the Form. The weird thing is that in the past, it worked, but I must have messed up with some part of the code and now it doesn''t. To save space here I have left out many fields which dont play a role in the problem.', 1, 5, '2015-03-11 21:00:00', '0000-00-00 00:00:00'),
(16, 'The controller is not getting the data from the FORM. I realise that the Form has by default a Post method, while the Route is using a Get, but if I change that, then the form will not display the form fields. Validation fails as the "required" does not get any values, so it returns to the same page. If I remove the validation filter, then it does go to the results page, but all it does is show ALL of the content of the table, since it is getting no parameters (where) from the Form. The weird thing is that in the past, it worked, but I must have messed up with some part of the code and now it doesn''t. To save space here I have left out many fields which dont play a role in the problem.', 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, '<p><font color="#17365d"><span style="background-color: rgb(229, 224, 236);">this is me</span></font><br></p>', 1, 7, '2015-01-12 11:42:46', '2015-01-12 11:42:46'),
(19, '<p>this is A CIOMWMDFWE <br></p>', 2, 9, '2015-01-13 10:20:44', '2015-01-13 10:20:44'),
(20, '<p>THIS ISA SA, DSMSBDMDFJN<br></p>', 2, 9, '2015-01-13 10:21:14', '2015-01-13 10:21:14'),
(21, '<p>njrr okwopkpo,,z keowkkj8hn&nbsp; iojwi93,<br></p>', 2, 10, '2015-01-13 10:22:10', '2015-01-13 10:22:10'),
(22, '<p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don''t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn''t \r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum \r\ngenerators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.<br></p>', 2, 3, '2015-01-14 09:20:16', '2015-01-14 09:20:16'),
(23, '<p>supply with the following<p> type of summer flowers we currently sell currently we are producing the below varieties: Gypsophila Limonium china white limonium china summer Ammi Strelitzia birds of paradise  Bupleurum Anigoz red and Orange Solidago and Roses for special contact let''s do it now and I will give you a very best prices. Try me.</p><br></p>', 5, 12, '2015-01-19 05:24:28', '2015-01-19 05:24:28'),
(24, '<p>There is always one way to find out<br></p>', 5, 19, '2015-03-19 11:44:49', '2015-03-19 11:44:49'),
(25, '<p>Hey frankie<br></p>', 5, 19, '2015-03-19 11:45:12', '2015-03-19 11:45:12'),
(26, '<p>Stop acting Holier-than-thou<br></p>', 5, 19, '2015-03-19 11:45:57', '2015-03-19 11:45:57'),
(27, '<p>i like this one<br></p>', 5, 24, '2015-04-10 04:54:58', '2015-04-10 04:54:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_11_27_105308_create_users_table', 1),
('2014_11_27_110102_create_academic_semesters_table', 2),
('2014_11_27_112443_create_problems_table', 3),
('2014_11_27_113341_create_solutions_table', 4),
('2014_11_27_114157_create_comments_table', 5),
('2014_11_27_114550_create_categories_table', 6),
('2014_11_27_114713_create_category_problem_table', 7),
('2015_01_14_150142_create_reliability_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `problems`
--

CREATE TABLE IF NOT EXISTS `problems` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `views` int(11) NOT NULL,
  `academic_semester_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `problems_user_id_index` (`user_id`),
  KEY `problems_academic_semester_id_index` (`academic_semester_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=49 ;

--
-- Dumping data for table `problems`
--

INSERT INTO `problems` (`id`, `description`, `user_id`, `views`, `academic_semester_id`, `created_at`, `updated_at`) VALUES
(2, 'this is the first problem shared ever!', 1, 17, 1, '2015-01-09 10:17:10', '2015-03-25 09:27:09'),
(3, 'This a late registration problem', 1, 3, 6, '2015-01-09 10:24:13', '2015-03-09 09:13:01'),
(4, 'This a missing mark problem', 1, 3, 13, '2015-01-09 10:24:53', '2015-03-12 05:25:24'),
(5, 'Room allocation problem', 1, 0, 16, '2015-01-09 10:25:32', '2015-01-09 10:25:32'),
(6, 'Fee payment problem', 1, 15, 17, '2015-01-09 10:26:08', '2015-03-25 05:14:39'),
(7, '<h1>hallo<br></h1><p>You are yunus</p><ol><li>hurray</li><li>hey</li><li>sema</li><li>budfa boss<br></li></ol>', 1, 0, 7, '2015-01-10 07:49:28', '2015-01-10 07:49:28'),
(8, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.<br></p>', 1, 1, 6, '2015-01-10 08:24:19', '2015-01-27 07:16:10'),
(9, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.<br></p>', 1, 1, 3, '2015-01-10 08:24:33', '2015-01-27 07:35:01'),
(10, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ratione, est eos minus porro voluptatum sapiente earum ipsum qui facilis eum sunt in nesciunt debitis. Saepe molestias impedit nihil deleniti eaque.<br></p>', 1, 1, 17, '2015-01-10 08:24:45', '2015-01-27 07:37:13'),
(12, '<p><span style="background-color: rgb(250, 192, 143);">Cu quo aperiam disputando, pri cetero gubergren et, cu sed eros verterem. Timeam suscipiantur intellegebat us</span>u te, purto atqui eirmod ei est. Tale sint disputando per ne, democritum efficiendi repudiandae no pri, <span style="color: #4f81bd;">eum id probo nulla</span>. <br></p><hr><p>Possim constituam ius ex. Case eruditi voluptua eam ex, his quot illud tation te, an fabellas <b>persequeri</b>s vituperatoribus usu.<br></p>', 2, 0, 5, '2015-01-13 10:16:12', '2015-01-13 10:16:12'),
(13, '<p><span style="background-color: rgb(250, 192, 143);">Cu quo aperiam disputando, pri cetero gubergren et, cu sed eros verterem. Timeam suscipiantur intellegebat us</span>u te, purto atqui eirmod ei est. Tale sint disputando per ne, democritum efficiendi repudiandae no pri, <span style="color: #4f81bd;">eum id probo nulla</span>. <br></p><hr><p>Possim constituam ius ex. Case eruditi voluptua eam ex, his quot illud tation te, an fabellas <b>persequeri</b>s vituperatoribus usu.<br></p>', 2, 0, 8, '2015-01-13 10:18:17', '2015-01-13 10:18:17'),
(16, '<p>supply with the following<p> type of summer flowers we currently sell currently we are producing the below varieties: Gypsophila Limonium china white limonium china summer Ammi Strelitzia birds of paradise  Bupleurum Anigoz red and Orange Solidago and Roses for special contact let''s do it now and I will give you a very best prices. Try me.</p><br></p>', 5, 0, 6, '2015-01-19 05:23:41', '2015-01-19 05:23:41'),
(17, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 5, 5, 3, '2015-01-22 07:27:41', '2015-03-12 09:54:31'),
(19, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 5, 1, 1, '2015-01-22 08:00:19', '2015-01-22 08:00:39'),
(20, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 5, 2, 12, '2015-01-22 08:03:31', '2015-01-22 08:04:03'),
(21, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis aut voluptatibus, eligendi in reprehenderit excepturi quos, quae quis! Recusandae non eius laboriosam magnam, aspernatur corporis cumque dolores explicabo itaque. Voluptatibus!<br></p>', 5, 2, 3, '2015-03-05 05:56:31', '2015-03-26 05:49:34'),
(23, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Necessitatibus dignissimos hic, illum veritatis, magnam quidem assumenda. Facere dicta, delectus illum, ipsam incidunt inventore ea aperiam necessitatibus tenetur tempore maxime molestiae.<br></p>', 5, 0, 10, '2015-03-09 08:43:42', '2015-03-09 08:43:42'),
(24, '<p><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit</b>. Temporibus dolorem saepe sapiente, corrupti necessitatibus, ipsa voluptatum. Iusto fuga, aspernatur tempora, veritatis assumenda nostrum perferendis mollitia. Fuga corporis praesentium numquam. Quia.<br></p>', 5, 0, 4, '2015-03-09 10:06:28', '2015-03-09 10:06:28'),
(25, ' <h3><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Magnam nisi, nostrum tempore odio doloribus accusantium ullam molestiae minus dolor. Explicabo aspernatur quos nihil, dolorem accusantium. Ipsa alias iusto iste minus.</b><br></h3>', 5, 1, 12, '2015-03-09 10:50:47', '2015-03-12 09:54:10'),
(26, ' <h3><i style="font-weight: normal;">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate ex quam autem. Dolor porro eos dignissimos velit reiciendis. Recusandae quaerat a nihil corrupti soluta vitae non, neque mollitia quo atque.</i></h3>', 5, 1, 18, '2015-03-12 05:45:59', '2015-03-19 06:54:29'),
(27, '<p><b>Lorem ipsum dolor sit </b><i>amet, consectetur adipisicing elit. Suscipit reprehenderit</i> eum numquam labore aut sit. Culpa animi perspiciatis hic neque dolore rerum debitis deserunt nobis pariatur tempora. Ea, numquam, itaque.<br></p>', 5, 8, 2, '2015-03-19 04:29:15', '2015-03-26 02:29:59'),
(28, '<p><i>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consectetur sequi id unde sunt, corporis qui adipisci expedita facilis ipsa doloremque. Id fuga ad repellat, modi unde consectetur quasi rerum deserunt</i>.<br></p>', 5, 5, 2, '2015-03-19 11:42:58', '2015-03-19 11:46:01'),
(29, ' <p><b>Units not registered on time</b></p><p>Submitted my online registration form on time yet my units were not successfully registered in the students portal<br></p>', 5, 2, 20, '2015-03-23 06:36:34', '2015-04-10 05:02:52'),
(33, ' <p><i><b>PRIMARY KEY</b></i><br></p><p>To allow naming of a PRIMARY KEY constraint, and for defining a PRIMARY \r\nKEY constraint on multiple columns, use the following SQL syntax<br></p>', 7, 1, 4, '2015-03-26 05:05:51', '2015-03-26 05:06:07'),
(34, ' <p>There are some modeling situations that you will find\r\n       over and over again as you design real databases. We refer to these<strong></strong>. If you understand the concepts\r\n       behind each one, you will in effect be adding new “tools” to\r\n       your design toolbox that you can use in building the model of\r\n       an enterprise.<br></p>', 5, 0, 4, '2015-03-26 06:43:22', '2015-03-26 06:43:22'),
(35, '<p><b>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</b> <br></p><p>Velit tempore obcaecati, esse doloribus enim nostrum magni, cumque optio repudiandae reiciendis reprehenderit atque! Deleniti numquam commodi maxime dolorum eum illum, magni.<br></p>', 5, 0, 2, '2015-03-26 06:47:06', '2015-03-26 06:47:06'),
(45, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sint, magni, laborum. Molestias doloremque fugit, rerum earum perspiciatis, maiores architecto nulla eaque qui asperiores labore ipsum incidunt. Voluptatem ipsa, cupiditate quis.<br></p>', 5, 1, 2, '2015-04-07 01:05:33', '2015-04-07 05:53:52'),
(46, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci nemo laboriosam veniam, facere odit commodi et praesentium, repellat vitae numquam natus at, eaque libero reprehenderit necessitatibus eligendi autem tenetur id.<br></p>', 5, 1, 1, '2015-04-07 05:59:28', '2015-04-10 05:00:42'),
(47, ' <p>The blackboard are dirty<br></p>', 8, 0, 20, '2015-04-10 04:49:27', '2015-04-10 04:49:27'),
(48, '<p>cheating in examination<br></p>', 8, 5, 20, '2015-04-10 04:50:48', '2015-04-10 05:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `reliability`
--

CREATE TABLE IF NOT EXISTS `reliability` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `solution_id` int(10) unsigned NOT NULL,
  `reliability` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `reliability_user_id_index` (`user_id`),
  KEY `reliability_solution_id_index` (`solution_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=57 ;

--
-- Dumping data for table `reliability`
--

INSERT INTO `reliability` (`id`, `user_id`, `solution_id`, `reliability`, `created_at`, `updated_at`) VALUES
(1, 2, 6, 1, '2015-01-14 13:12:24', '2015-01-14 13:12:24'),
(2, 2, 7, 1, '2015-01-14 13:12:32', '2015-01-14 13:12:32'),
(3, 3, 7, 1, '2015-01-14 17:40:18', '2015-01-14 17:40:18'),
(4, 3, 6, 1, '2015-01-14 17:40:45', '2015-01-14 17:40:45'),
(5, 3, 3, 1, '2015-01-14 17:40:59', '2015-01-14 17:40:59'),
(6, 3, 2, 1, '2015-01-14 17:41:13', '2015-01-14 17:41:13'),
(7, 3, 1, 1, '2015-01-14 17:41:29', '2015-01-14 17:41:29'),
(8, 2, 3, 1, '2015-01-14 17:45:57', '2015-01-14 17:45:57'),
(9, 2, 2, 1, '2015-01-14 17:46:20', '2015-01-14 17:46:20'),
(10, 2, 1, 1, '2015-01-14 17:46:51', '2015-01-14 17:46:51'),
(11, 4, 7, 1, '2015-01-14 17:49:25', '2015-01-14 17:49:25'),
(12, 4, 6, 1, '2015-01-14 17:49:49', '2015-01-14 17:49:49'),
(13, 4, 3, 1, '2015-01-14 17:49:57', '2015-01-14 17:49:57'),
(49, 5, 7, 1, '2015-01-19 13:00:08', '2015-01-19 13:00:08'),
(50, 5, 2, 0, '2015-01-19 13:10:14', '2015-01-19 13:10:14'),
(51, 5, 1, 0, '2015-01-19 13:10:38', '2015-01-19 13:10:38'),
(52, 5, 3, 1, '2015-01-19 13:10:54', '2015-01-19 13:10:54'),
(53, 5, 6, 1, '2015-01-19 13:11:11', '2015-01-19 13:11:11'),
(54, 5, 15, 1, '2015-03-19 04:30:28', '2015-03-19 04:30:28'),
(55, 5, 16, 1, '2015-03-19 04:30:31', '2015-03-19 04:30:31'),
(56, 5, 24, 0, '2015-04-10 04:53:37', '2015-04-10 04:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE IF NOT EXISTS `solutions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `reliable` int(11) NOT NULL,
  `unreliable` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `problem_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `solutions_user_id_index` (`user_id`),
  KEY `solutions_problem_id_index` (`problem_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=26 ;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `description`, `reliable`, `unreliable`, `user_id`, `problem_id`, `created_at`, `updated_at`) VALUES
(1, '<p><font color="#d7e3bc"><i><strike><b>This is our first solution ever</b></strike></i></font><br></p>', 24, 24, 1, 6, '2015-01-11 09:07:10', '2015-01-19 13:10:38'),
(2, '', 21, 21, 1, 6, '2015-01-11 09:16:32', '2015-01-19 13:10:14'),
(3, 'dfhghjh hjkuuiui\r\n<hr>', 28, 25, 1, 6, '2015-01-11 09:19:11', '2015-01-19 13:10:54'),
(4, 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, 0, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ''lorem ipsum'' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 0, 0, 1, 5, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '<p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don''t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn''t \r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum \r\ngenerators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.<br></p>', 28, 26, 1, 6, '2015-01-12 08:08:12', '2015-01-19 13:11:11'),
(7, '<p>There are many variations of passages of Lorem Ipsum available, but the \r\nmajority have suffered alteration in some form, by injected humour, or \r\nrandomised words which don''t look even slightly believable. If you are \r\ngoing to use a passage of Lorem Ipsum, you need to be sure there isn''t \r\nanything embarrassing hidden in the middle of text. All the Lorem Ipsum \r\ngenerators on the Internet tend to repeat predefined chunks as \r\nnecessary, making this the first true generator on the Internet. It uses\r\n a dictionary of over 200 Latin words, combined with a handful of model \r\nsentence structures, to generate Lorem Ipsum which looks reasonable. The\r\n generated Lorem Ipsum is therefore always free from repetition, \r\ninjected humour, or non-characteristic words etc.<br></p>', 26, 30, 1, 6, '2015-01-12 08:11:23', '2015-01-19 13:00:28'),
(8, '<p>fdfhdhc<br></p>', 0, 0, 2, 2, '2015-01-13 09:41:17', '2015-01-13 09:41:17'),
(9, '<p>Vim eu habeo senserit, usu nemore fabulas ne. Quo accusata quaerendum voluptatibus ei,<span style="background-color: rgb(221, 217, 195);"> vim ut antiopam volutpat, usu assentior mnesarchum an. Vis ea platonem persequeris, dicam euismod facilis cu qui. Cu sea legendos </span>dignissim, enim intellegat usu ne, ad nec error veritus corpora.<br><br>Nostrud impedit tractatos pri ei. Id mel zril impetus iudicabit, persius offendit consectetuer est in, et assum med<font color="#1f497d">iocrem nec. Ex usu quando eripuit, doming facete timeam eos cu. Nam equidem menandri ei. Nec in justo feuga</font>it.<br></p>', 0, 0, 2, 12, '2015-01-13 10:20:10', '2015-01-13 10:20:10'),
(10, '<p>Vim eu habeo senserit, usu nemore fabulas ne. Quo accusata quaerendum voluptatibus ei, vim ut antiopam volutpat, usu assentior mnesarchum an. Vis ea platonem persequeris, dicam euismod facilis cu qui. Cu sea legendos dignissim, enim intellegat usu ne, ad nec error veritus corpora.<br><br>Nostrud impedit tractatos pri ei. Id mel zril impetus iudicabit, per<br></p>', 0, 0, 2, 12, '2015-01-13 10:21:47', '2015-01-13 10:21:47'),
(12, '<p>supply with the following<p> type of summer flowers we currently sell currently we are producing the below varieties: Gypsophila Limonium china white limonium china summer Ammi Strelitzia birds of paradise  Bupleurum Anigoz red and Orange Solidago and Roses for special contact let''s do it now and I will give you a very best prices. Try me.</p><br></p>', 0, 0, 5, 16, '2015-01-19 05:24:15', '2015-01-19 05:24:15'),
(13, '1', 0, 0, 5, 19, '2015-01-22 08:00:19', '2015-01-22 08:00:19'),
(14, '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and \r\ntypesetting industry. Lorem Ipsum has been the industry''s standard dummy\r\n text ever since the 1500s, when an unknown printer took a galley of \r\ntype and scrambled it to make a type specimen book. It has survived not \r\nonly five centuries, but also the leap into electronic typesetting, \r\nremaining essentially unchanged. It was popularised in the 1960s with \r\nthe release of Letraset sheets containing Lorem Ipsum passages, and more\r\n recently with desktop publishing software like Aldus PageMaker \r\nincluding versions of Lorem Ipsum.<br></p>', 0, 0, 5, 20, '2015-01-22 08:03:31', '2015-01-22 08:03:31'),
(15, '<p>kuiuoiuh yuigyugyrn uigiykj uihui<br></p>', 1, 0, 5, 27, '2015-03-19 04:29:15', '2015-03-19 04:30:28'),
(16, '<p>iuh8u iuhuiyc iuhqdiu uhfv iuhuit yugy <br></p>', 1, 0, 5, 27, '2015-03-19 04:30:16', '2015-03-19 04:30:31'),
(18, '', 0, 0, 5, 6, '2015-03-19 08:24:59', '2015-03-19 10:31:59'),
(19, '\r\n						<p>qui adipisci expedita facilis ipsa doloremque. Id fuga ad repellat, modi unde consectetur quasi rerum deserunt. This is frankie .com<br></p>\r\n					', 0, 0, 5, 28, '2015-03-19 11:42:59', '2015-03-19 11:43:58'),
(20, '<p>Visit the central Administration block, office no. 123 seek advice from the registrar academic.<br></p>', 0, 0, 5, 29, '2015-03-23 06:36:34', '2015-03-23 06:36:34'),
(22, '<p>Our sales database represents one of these patterns. \r\n      So far, we have customers and orders. To finish the pattern, we need\r\n      products to sell. We’ll first describe what the Product class means, and how it is\r\n      associated with the Order class:<br></p>', 0, 0, 5, 34, '2015-03-26 06:43:23', '2015-03-26 06:43:23'),
(23, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit tempore obcaecati, esse doloribus enim nostrum magni, cumque optio repudiandae reiciendis reprehenderit atque! Deleniti numquam commodi maxime dolorum eum illum, magni.<br></p>', 0, 0, 5, 35, '2015-03-26 06:47:07', '2015-03-26 06:47:07'),
(24, '<p>intall CCTV camera<br></p>', 0, 1, 8, 48, '2015-04-10 04:50:48', '2015-04-10 04:53:37'),
(25, '<p>abolish exams<br></p>', 0, 0, 5, 48, '2015-04-10 04:52:43', '2015-04-10 04:52:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `username`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Marcosa', 'marcosa@victoria.com', '1234567890', 'marcosa', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'frank', 'ffrankie@gmail.com', '$2y$10$qaCKjkHceT0dHYTudCMc6ezCmXyOK7dhsg1MCAJYZ8CrMIAMny6RC', 'ghare', 'vkkDNyT0HEhtjjJEF7knJITZzs1Z0G0uY1hWwKasxjLcgWHf0cg9HvBEkxpC', '2015-01-13 08:10:39', '2015-01-14 17:47:42'),
(3, 'gfgjch', 'gfaaa@gmail.com', '$2y$10$ODkXqDoyyiyO9haxE8RwnORC/gA7.pyMUmyCncPLZk9hp6Y6PlRmu', 'bnm', 'y3ZQnpc0KRbXCcj5vbyiJxGHM0NjoK68fdiNsbzCxvSvSot7Lpd5o82iEGJt', '2015-01-13 09:24:06', '2015-01-14 17:44:31'),
(4, 'muriithi', 'muriithi@gmail.com', '$2y$10$slpJI5QrKDcBkIta/9PWqutn7WCndjs5hFI6x.g54SiFNSh7isoaC', 'nyaga', 'la0QwDBFD5SSegrbki7rh6hHSxSuPfzDzrYDWgbRuoD50bZpSCI59h6bIlDE', '2015-01-14 17:48:43', '2015-01-14 17:50:32'),
(5, 'linton', 'gitonga@gmail.com', '$2y$10$/HwtkkG0zf5ZATkBcDvaxO/JdH1Wew2WYGjRjEYO8v8Ba4xs4uwtO', 'gitonga', 'wEoE0lNrUf82o6XvFnnhosxSkx9lGimO5Mcsj0J1UYc7msPj0NQBlnOLLzAi', '2015-01-14 17:51:22', '2015-04-10 04:46:33'),
(6, 'kkkk3425345645', 'sig@ku.ac.ke', '$2y$10$MdWiTu9NXHkL4zAyZ.sIDujVdtc.G6aS44ShMwH7KXl1NoXv.xnvy', '4#$%^^&**', 'SfLtzY8VMTIUQ4i25ywtwVn2QevQs5DasYrrzqJRLT49Il7VppJaGdBRQAeF', '2015-03-19 06:29:59', '2015-03-19 06:31:37'),
(7, 'John Mwangi', 'mwangi@gmail.com', '$2y$10$sWf47lUl1MpkjDYcxa7hKekmpRYO5yJSlXl989OFL6Bm6siBqCwdC', 'Mwangi', 'y9FSInqvMRasmi6aVJftWmWFPJg4OA3NtbnVOJECAtTQsIvLvPMUHKG8pSCl', '2015-03-26 05:03:14', '2015-03-26 05:06:47'),
(8, 'Stephen', 'Stephen@gmail.com', '$2y$10$dubhAze7C1ZAGLRQrlVRn.Xw1hOBRVpC2DmEUrluJvy4mcGugw2KO', 'Stephen', 'pJmZaeIheSBQicQPtKk0ndfPqdtzxCAY3kpnH2qQPWHfoYvEjwi9NEmYku3M', '2015-04-10 04:47:53', '2015-04-10 04:51:25');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_problem`
--
ALTER TABLE `category_problem`
  ADD CONSTRAINT `category_problem_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_problem_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`),
  ADD CONSTRAINT `comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `problems`
--
ALTER TABLE `problems`
  ADD CONSTRAINT `problems_academic_semester_id_foreign` FOREIGN KEY (`academic_semester_id`) REFERENCES `academic_semesters` (`id`),
  ADD CONSTRAINT `problems_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `reliability`
--
ALTER TABLE `reliability`
  ADD CONSTRAINT `reliability_solution_id_foreign` FOREIGN KEY (`solution_id`) REFERENCES `solutions` (`id`),
  ADD CONSTRAINT `reliability_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `solutions`
--
ALTER TABLE `solutions`
  ADD CONSTRAINT `solutions_problem_id_foreign` FOREIGN KEY (`problem_id`) REFERENCES `problems` (`id`),
  ADD CONSTRAINT `solutions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
