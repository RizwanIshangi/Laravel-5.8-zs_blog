-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 15, 2019 at 07:26 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zs_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `zs_category`
--

CREATE TABLE `zs_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category_alias` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_category`
--

INSERT INTO `zs_category` (`id`, `category_name`, `category_alias`, `icon`) VALUES
(1, 'DNC List', 'dnc-list', ''),
(2, 'Sale People', 'sale-people', ''),
(3, 'Waiting List', 'waiting-list', '');

-- --------------------------------------------------------

--
-- Table structure for table `zs_comments`
--

CREATE TABLE `zs_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `diary_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_comments`
--

INSERT INTO `zs_comments` (`id`, `comment`, `status`, `diary_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'tnks rizwan great job', 1, 6, 2, '2019-06-26 10:27:03', '2019-06-26 10:27:03'),
(2, 'this sample comment', 1, 10, 2, '2019-06-30 04:49:54', '2019-06-30 04:49:54'),
(3, 'this is test cmnt', 1, 12, 2, '2019-07-12 13:22:23', '2019-07-12 13:22:23');

-- --------------------------------------------------------

--
-- Table structure for table `zs_diary`
--

CREATE TABLE `zs_diary` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `featured_image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_diary`
--

INSERT INTO `zs_diary` (`id`, `title`, `note`, `featured_image`, `visits`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(2, '2020', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138ca0d15a3.jpg', 0, 1, 1, 2, '2019-06-26 10:17:52', '2019-06-26 10:17:52'),
(4, '2022', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138cd01fa35.jpg', 0, 1, 1, 2, '2019-06-26 10:18:40', '2019-06-26 10:18:40'),
(5, '2023', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138ce0d3b27.jpg', 0, 1, 1, 2, '2019-06-26 10:18:56', '2019-06-26 10:18:56'),
(6, '2024', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138d18455c8.jpg', 4, 1, 1, 2, '2019-06-26 10:19:52', '2019-06-26 10:33:44'),
(7, '2022', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138cd01fa35.jpg', 0, 1, 1, 2, '2019-06-26 10:18:40', '2019-06-26 10:18:40'),
(8, '2023', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138ce0d3b27.jpg', 0, 1, 1, 2, '2019-06-26 10:18:56', '2019-06-26 10:18:56'),
(9, '2024', 'What is Lorem Ipsum?\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '20195d138d18455c8.jpg', 3, 1, 1, 2, '2019-06-26 10:19:52', '2019-06-26 10:27:47'),
(10, '2000', 'Why do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ''Content here, content here'', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, an', '20005d139585a2f94.png', 13, 1, 1, 2, '2019-06-26 10:55:49', '2019-07-12 13:27:20'),
(11, '2030', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document without relying on meaningful content. Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produce', '20305d1899a6a4223.png', 0, 1, 3, 2, '2019-06-30 06:14:46', '2019-06-30 06:14:46'),
(12, '2031', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document without relying on meaningful content. Replacing the actual content with placeholder text allows designers to design the form of the content before the content itself has been produce', '20315d189a85dec79.png', 6, 1, 2, 2, '2019-06-30 06:18:30', '2019-07-12 13:26:08');

-- --------------------------------------------------------

--
-- Table structure for table `zs_messages`
--

CREATE TABLE `zs_messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_messages`
--

INSERT INTO `zs_messages` (`id`, `name`, `email`, `image`, `message`, `status`, `created_at`, `updated_at`) VALUES
(1, 'rizwan', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'hi rizwan this is cotact mesage', 1, '2016-10-09 04:41:48', '2019-06-27 13:11:58'),
(2, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', ' hjghjg jhg jh gjhgjhgjh gj', 0, '2016-10-16 00:31:06', '2016-10-16 00:31:06'),
(3, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'ccvc jjgfjhgf jh', 0, '2016-10-16 00:41:43', '2016-10-16 00:41:43'),
(4, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'ccvc jjgfjhgf jh', 0, '2016-10-16 00:43:59', '2016-10-16 00:43:59'),
(5, 'feroz', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'ccvc jjgfjhgf jh', 0, '2016-10-16 01:18:06', '2016-10-16 01:18:06'),
(6, 'feroz', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'sfsdf asdfads', 1, '2016-10-16 01:32:14', '2019-06-26 10:09:02'),
(7, 'feroz', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'sfsdf asdfads', 0, '2016-10-16 01:32:45', '2016-10-16 01:32:45'),
(8, 'Lights', 'rizwan.ishangi@gmail.com', 'http://www.gravatar.com/avatar/fa7efe9cdb794bb57630149caf5c33b9', 'zxczc zc', 0, '2019-06-22 01:45:07', '2019-06-22 01:45:07'),
(9, 'Lights', 'mr_rizvi898@yahoo.com', 'http://www.gravatar.com/avatar/b1770730d54abe69a720e484a7a6c10b', 'this is test contact message', 1, '2019-06-26 10:01:47', '2019-06-26 10:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `zs_migrations`
--

CREATE TABLE `zs_migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_migrations`
--

INSERT INTO `zs_migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_08_13_141818_create_diary_table', 1),
('2015_08_14_094915_create_category_table', 1),
('2015_08_17_094947_create_comments_table', 1),
('2015_08_18_105055_craete_notifications_table', 1),
('2015_08_19_104711_create_work_educaton_table', 1),
('2015_08_19_124645_create_skills_table', 1),
('2015_08_24_074611_create_message_table', 1),
('2015_08_24_074647_create_settings_table', 1),
('2015_08_26_082311_create_tags_table', 1),
('2015_08_26_082346_create_tagged_table', 1),
('2016_04_20_073342_add_visit_column_in_diary_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zs_notifications`
--

CREATE TABLE `zs_notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `messages` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_notifications`
--

INSERT INTO `zs_notifications` (`id`, `messages`, `link`, `image`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'this is test notify message', '', '', 0, 2, '2019-06-28 19:00:00', '2019-06-28 19:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `zs_password_resets`
--

CREATE TABLE `zs_password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zs_settings`
--

CREATE TABLE `zs_settings` (
  `option` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zs_skills`
--

CREATE TABLE `zs_skills` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `skill_range` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_skills`
--

INSERT INTO `zs_skills` (`id`, `skill`, `skill_range`, `type`) VALUES
(1, 'Codigniter', 30, 'professional'),
(2, 'Laravel', 30, 'professional'),
(3, '', 10, 'additional'),
(4, 'Cake', 30, 'professional');

-- --------------------------------------------------------

--
-- Table structure for table `zs_tagged`
--

CREATE TABLE `zs_tagged` (
  `diary_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_tagged`
--

INSERT INTO `zs_tagged` (`diary_id`, `tag_id`) VALUES
(10, 4),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `zs_tags`
--

CREATE TABLE `zs_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag_name` varchar(40) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_tags`
--

INSERT INTO `zs_tags` (`id`, `tag_name`) VALUES
(4, 'call'),
(11, 'ci-devloper'),
(9, 'dnc'),
(3, 'email'),
(7, 'hotprospect'),
(12, 'larvael-developer'),
(5, 'leads'),
(6, 'prospect'),
(10, 'quick'),
(1, 'rvm'),
(8, 'sale'),
(2, 'sms');

-- --------------------------------------------------------

--
-- Table structure for table `zs_users`
--

CREATE TABLE `zs_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `visits` int(11) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_users`
--

INSERT INTO `zs_users` (`id`, `name`, `email`, `password`, `image`, `role`, `status`, `visits`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'rizwan', 'rizwan.ishangi@gmail.com', '$2y$10$DwP6jbCFoxVkpmH.zAYGleJtvx0Q1c/2K16gL9vAEdCzGnFVbHVoi', 'assets/img/avatar.png', 'admin', 0, 0, 'kveVxMEsVVLXkwMAkDqH1H57mOaCVclh6Wx11e5UL93RAJ9lnVOxN4ZaNryB', '2019-06-23 06:22:12', '2019-07-14 01:47:47'),
(3, 'Zedan', 'rizwan.ishangi1@gmail.com', '$2y$10$DwP6jbCFoxVkpmH.zAYGleJtvx0Q1c/2K16gL9vAEdCzGnFVbHVoi', 'assets/img/avatar.png', 'author', 0, 5, 'LdFLpmRRVlI9VmFLO1Iki8AvIqm2elRPs8csYW7se0v9hshJKJYiuNqd3Nc9', '2019-06-23 06:22:12', '2019-07-11 11:16:58'),
(10, 'Lights', 'rana@zamsol.com', '$2y$10$DwP6jbCFoxVkpmH.zAYGleJtvx0Q1c/2K16gL9vAEdCzGnFVbHVoi', 'assets/img/avatar.png', 'admin', 0, 0, 'VM6TzL5TMkPj7rwxwZjOkw4nJJ6WKCQ2JN8pwcqvGNbPzXQy1jcohL32ExPt', '2019-07-13 14:21:34', '2019-07-14 00:48:26'),
(14, 'Naeed', 'naeem@zamsol.com', '$2y$10$sAvmREslRwZxManaayQqrO3PgeRGWNGpSA83Us42dwJpPcegL2hbq', 'assets/img/avatar.png', 'author', 0, 0, 'NBntkgHmLNh9E5Zxne50gaP5tbwUV4komoQ3wSOyDPZ9dfCzDo7zNdxAJmcx', '2019-07-14 04:35:52', '2019-07-14 04:51:12');

-- --------------------------------------------------------

--
-- Table structure for table `zs_work_education`
--

CREATE TABLE `zs_work_education` (
  `id` int(10) UNSIGNED NOT NULL,
  `institute` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `period` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `section` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `zs_work_education`
--

INSERT INTO `zs_work_education` (`id`, `institute`, `address`, `period`, `section`, `note`, `type`) VALUES
(1, 'Quality Developer', '6th road Rawalpindi', '2012-2013', 'Student', 'I have passed metric from WENSAM College in Science', 1),
(2, 'Zam Solutions', 'I-8 Markaz Islamabad', '2014-2015', 'Student', 'I have passed FSC in eng from Degree 1 DIKhan', 1),
(3, 'Wensam College', 'Main Multan Road Dera Ismail Khan', '2000-2001', 'Student', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 0),
(4, 'Degree College', 'I-8 Markaz Islamabad', '2004-2006', 'Student', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zs_category`
--
ALTER TABLE `zs_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_category_alias_unique` (`category_alias`);

--
-- Indexes for table `zs_comments`
--
ALTER TABLE `zs_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zs_diary`
--
ALTER TABLE `zs_diary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zs_messages`
--
ALTER TABLE `zs_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zs_notifications`
--
ALTER TABLE `zs_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zs_password_resets`
--
ALTER TABLE `zs_password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `zs_settings`
--
ALTER TABLE `zs_settings`
  ADD UNIQUE KEY `settings_option_unique` (`option`);

--
-- Indexes for table `zs_skills`
--
ALTER TABLE `zs_skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zs_tags`
--
ALTER TABLE `zs_tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_name_unique` (`tag_name`);

--
-- Indexes for table `zs_users`
--
ALTER TABLE `zs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `zs_work_education`
--
ALTER TABLE `zs_work_education`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zs_category`
--
ALTER TABLE `zs_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `zs_comments`
--
ALTER TABLE `zs_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `zs_diary`
--
ALTER TABLE `zs_diary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `zs_messages`
--
ALTER TABLE `zs_messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `zs_notifications`
--
ALTER TABLE `zs_notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `zs_skills`
--
ALTER TABLE `zs_skills`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `zs_tags`
--
ALTER TABLE `zs_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `zs_users`
--
ALTER TABLE `zs_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `zs_work_education`
--
ALTER TABLE `zs_work_education`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
