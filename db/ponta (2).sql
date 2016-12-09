-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2016 at 05:08 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ponta`
--

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_commentmeta`
--

CREATE TABLE `ponta_at_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_comments`
--

CREATE TABLE `ponta_at_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_comments`
--

INSERT INTO `ponta_at_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2016-11-24 07:05:24', '2016-11-24 07:05:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_itsec_lockouts`
--

CREATE TABLE `ponta_at_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(20) NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_itsec_lockouts`
--

INSERT INTO `ponta_at_itsec_lockouts` (`lockout_id`, `lockout_type`, `lockout_start`, `lockout_start_gmt`, `lockout_expire`, `lockout_expire_gmt`, `lockout_host`, `lockout_user`, `lockout_username`, `lockout_active`) VALUES
(6, 'four_oh_four', '2016-12-07 14:18:25', '2016-12-07 14:18:25', '2016-12-07 14:33:25', '2016-12-07 14:33:25', '94.230.240.180', NULL, NULL, 1),
(5, 'four_oh_four', '2016-12-05 01:39:33', '2016-12-05 01:39:33', '2016-12-05 01:54:33', '2016-12-05 01:54:33', '194.213.39.50', NULL, NULL, 1),
(7, 'four_oh_four', '2016-12-07 23:24:25', '2016-12-07 23:24:25', '2016-12-07 23:39:25', '2016-12-07 23:39:25', '94.199.151.22', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_itsec_log`
--

CREATE TABLE `ponta_at_itsec_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `log_type` varchar(20) NOT NULL DEFAULT '',
  `log_function` varchar(255) NOT NULL DEFAULT '',
  `log_priority` int(2) NOT NULL DEFAULT '1',
  `log_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_host` varchar(40) DEFAULT NULL,
  `log_username` varchar(60) DEFAULT NULL,
  `log_user` bigint(20) UNSIGNED DEFAULT NULL,
  `log_url` varchar(255) DEFAULT NULL,
  `log_referrer` varchar(255) DEFAULT NULL,
  `log_data` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_itsec_log`
--

INSERT INTO `ponta_at_itsec_log` (`log_id`, `log_type`, `log_function`, `log_priority`, `log_date`, `log_date_gmt`, `log_host`, `log_username`, `log_user`, `log_url`, `log_referrer`, `log_data`) VALUES
(384, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:12', '2016-11-27 15:06:12', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(385, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:18', '2016-11-27 15:06:18', '116.107.154.49', '', 0, '/admin', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(386, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:19', '2016-11-27 15:06:19', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(387, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:21', '2016-11-27 15:06:21', '116.107.154.49', '', 0, '/404', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(388, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:22', '2016-11-27 15:06:22', '116.107.154.49', '', 0, '/404', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(389, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:23', '2016-11-27 15:06:23', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(390, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:33', '2016-11-27 15:06:33', '116.107.154.49', '', 0, '/404', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(391, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:34', '2016-11-27 15:06:34', '116.107.154.49', '', 0, '/404', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(392, 'four_oh_four', '404 Error', 3, '2016-11-27 15:06:35', '2016-11-27 15:06:35', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(393, 'four_oh_four', '404 Error', 3, '2016-11-27 15:21:51', '2016-11-27 15:21:51', '54.201.89.187', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(394, 'four_oh_four', '404 Error', 3, '2016-11-27 15:27:56', '2016-11-27 15:27:56', '116.107.154.49', '', 0, '/html/page3.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(395, 'four_oh_four', '404 Error', 3, '2016-11-27 15:27:58', '2016-11-27 15:27:58', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(396, 'four_oh_four', '404 Error', 3, '2016-11-27 17:00:37', '2016-11-27 17:00:37', '116.107.154.49', '', 0, '/html/js/allPage.js', 'http://ponta.at/html/home.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(397, 'four_oh_four', '404 Error', 3, '2016-11-27 17:00:37', '2016-11-27 17:00:37', '116.107.154.49', '', 0, '/html/js/bootstrap.min.js', 'http://ponta.at/html/home.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(398, 'four_oh_four', '404 Error', 3, '2016-11-27 17:00:38', '2016-11-27 17:00:38', '116.107.154.49', '', 0, '/html/js/allPage.js', 'http://ponta.at/html/home.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(399, 'four_oh_four', '404 Error', 3, '2016-11-27 17:10:50', '2016-11-27 17:10:50', '54.144.8.243', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(400, 'four_oh_four', '404 Error', 3, '2016-11-27 18:19:03', '2016-11-27 18:19:03', '213.225.15.185', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(401, 'four_oh_four', '404 Error', 3, '2016-11-27 18:57:44', '2016-11-27 18:57:44', '35.164.103.238', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(402, 'four_oh_four', '404 Error', 3, '2016-11-27 20:46:21', '2016-11-27 20:46:21', '54.162.113.248', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(403, 'four_oh_four', '404 Error', 3, '2016-11-27 22:31:42', '2016-11-27 22:31:42', '54.144.37.95', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(404, 'four_oh_four', '404 Error', 3, '2016-11-28 00:22:13', '2016-11-28 00:22:13', '54.218.73.60', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(405, 'four_oh_four', '404 Error', 3, '2016-11-28 01:46:34', '2016-11-28 01:46:34', '5.206.71.162', '', 0, '/wp-content/plugins/wysija-newsletters/readme.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(406, 'four_oh_four', '404 Error', 3, '2016-11-28 02:10:53', '2016-11-28 02:10:53', '195.154.183.187', '', 0, '/blog/wp-admin/setup-config.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(407, 'four_oh_four', '404 Error', 3, '2016-11-28 02:10:53', '2016-11-28 02:10:53', '195.154.183.187', '', 0, '/wp/wp-admin/setup-config.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(408, 'four_oh_four', '404 Error', 3, '2016-11-28 02:10:53', '2016-11-28 02:10:53', '195.154.183.187', '', 0, '/backup/wp-admin/setup-config.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(409, 'four_oh_four', '404 Error', 3, '2016-11-28 02:10:53', '2016-11-28 02:10:53', '195.154.183.187', '', 0, '/wordpress/wp-admin/setup-config.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(410, 'four_oh_four', '404 Error', 3, '2016-11-28 02:11:15', '2016-11-28 02:11:15', '157.55.39.2', '', 0, '/2136/delete47263/sponsor.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(411, 'four_oh_four', '404 Error', 3, '2016-11-28 02:13:01', '2016-11-28 02:13:01', '35.162.53.88', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(412, 'four_oh_four', '404 Error', 3, '2016-11-28 04:05:33', '2016-11-28 04:05:33', '35.164.163.55', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(413, 'four_oh_four', '404 Error', 3, '2016-11-28 05:58:13', '2016-11-28 05:58:13', '54.202.233.93', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(414, 'four_oh_four', '404 Error', 3, '2016-11-28 07:42:48', '2016-11-28 07:42:48', '54.209.79.227', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(415, 'four_oh_four', '404 Error', 3, '2016-11-28 08:37:59', '2016-11-28 08:37:59', '91.223.89.100', '', 0, '/root2.php', 'http://www.google.com/', 'a:1:{s:12:"query_string";s:0:"";}'),
(416, 'four_oh_four', '404 Error', 3, '2016-11-28 09:13:46', '2016-11-28 09:13:46', '113.160.54.50', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(417, 'four_oh_four', '404 Error', 3, '2016-11-28 09:43:36', '2016-11-28 09:43:36', '35.163.174.233', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(418, 'four_oh_four', '404 Error', 3, '2016-11-28 09:49:17', '2016-11-28 09:49:17', '85.217.224.212', '', 0, '/info.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(419, 'four_oh_four', '404 Error', 3, '2016-11-28 09:49:29', '2016-11-28 09:49:29', '85.217.224.212', '', 0, '/db.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(420, 'four_oh_four', '404 Error', 3, '2016-11-28 09:49:57', '2016-11-28 09:49:57', '85.217.224.212', '', 0, '/themes.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(421, 'four_oh_four', '404 Error', 3, '2016-11-28 09:56:58', '2016-11-28 09:56:58', '85.217.224.212', '', 0, '/search.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(422, 'four_oh_four', '404 Error', 3, '2016-11-28 09:57:23', '2016-11-28 09:57:23', '184.75.240.252', '', 0, '/sql.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(423, 'four_oh_four', '404 Error', 3, '2016-11-28 09:57:35', '2016-11-28 09:57:35', '184.75.240.252', '', 0, '/gallery.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(424, 'four_oh_four', '404 Error', 3, '2016-11-28 09:59:15', '2016-11-28 09:59:15', '184.75.240.252', '', 0, '/article.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(425, 'four_oh_four', '404 Error', 3, '2016-11-28 09:59:31', '2016-11-28 09:59:31', '85.217.224.212', '', 0, '/code.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(426, 'four_oh_four', '404 Error', 3, '2016-11-28 09:59:45', '2016-11-28 09:59:45', '85.217.224.212', '', 0, '/plugin.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(427, 'four_oh_four', '404 Error', 3, '2016-11-28 10:00:51', '2016-11-28 10:00:51', '85.217.224.212', '', 0, '/global.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(428, 'four_oh_four', '404 Error', 3, '2016-11-28 10:01:45', '2016-11-28 10:01:45', '184.75.240.252', '', 0, '/proxy.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(429, 'four_oh_four', '404 Error', 3, '2016-11-28 10:03:37', '2016-11-28 10:03:37', '85.217.224.212', '', 0, '/defines.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(430, 'four_oh_four', '404 Error', 3, '2016-11-28 10:04:27', '2016-11-28 10:04:27', '85.217.224.212', '', 0, '/error.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(431, 'brute_force', 'Invalid Login Attempt', 5, '2016-11-28 10:08:24', '2016-11-28 10:08:24', '195.154.199.140', 'admin', 1, '', '', 'a:0:{}'),
(432, 'brute_force', 'Invalid Login Attempt', 5, '2016-11-28 10:08:24', '2016-11-28 10:08:24', '195.154.199.140', 'admin', 1, '', '', 'a:0:{}'),
(433, 'brute_force', 'Invalid Login Attempt', 5, '2016-11-28 10:08:24', '2016-11-28 10:08:24', '195.154.199.140', 'admin', 1, '', '', 'a:0:{}'),
(434, 'brute_force', 'Invalid Login Attempt', 5, '2016-11-28 10:08:24', '2016-11-28 10:08:24', '195.154.199.140', 'admin', 1, '', '', 'a:0:{}'),
(435, 'brute_force', 'Invalid Login Attempt', 5, '2016-11-28 10:08:24', '2016-11-28 10:08:24', '195.154.199.140', 'admin', 1, '', '', 'a:0:{}'),
(436, 'lockout', 'Host or User Lockout', 10, '2016-11-28 10:08:24', '2016-11-28 10:08:24', '195.154.199.140', '', 0, '', '', 'a:3:{s:7:"expires";s:19:"2016-11-28 10:23:24";s:11:"expires_gmt";s:19:"2016-11-28 10:23:24";s:4:"type";s:11:"brute_force";}'),
(437, 'four_oh_four', '404 Error', 3, '2016-11-28 10:08:25', '2016-11-28 10:08:25', '184.75.240.252', '', 0, '/general.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(438, 'four_oh_four', '404 Error', 3, '2016-11-28 10:09:27', '2016-11-28 10:09:27', '85.217.224.212', '', 0, '/alias.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(439, 'four_oh_four', '404 Error', 3, '2016-11-28 10:13:21', '2016-11-28 10:13:21', '85.217.224.212', '', 0, '/page.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(440, 'four_oh_four', '404 Error', 3, '2016-11-28 10:15:12', '2016-11-28 10:15:12', '85.217.224.212', '', 0, '/login.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(441, 'four_oh_four', '404 Error', 3, '2016-11-28 10:17:26', '2016-11-28 10:17:26', '85.217.224.212', '', 0, '/help.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(442, 'four_oh_four', '404 Error', 3, '2016-11-28 10:17:51', '2016-11-28 10:17:51', '184.75.240.252', '', 0, '/session.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(443, 'four_oh_four', '404 Error', 3, '2016-11-28 10:18:06', '2016-11-28 10:18:06', '184.75.240.252', '', 0, '/footer.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(444, 'four_oh_four', '404 Error', 3, '2016-11-28 10:20:05', '2016-11-28 10:20:05', '184.75.240.252', '', 0, '/files.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(445, 'four_oh_four', '404 Error', 3, '2016-11-28 10:24:02', '2016-11-28 10:24:02', '85.217.224.212', '', 0, '/option.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(446, 'four_oh_four', '404 Error', 3, '2016-11-28 10:29:43', '2016-11-28 10:29:43', '85.217.224.212', '', 0, '/options.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(447, 'four_oh_four', '404 Error', 3, '2016-11-28 10:29:46', '2016-11-28 10:29:46', '85.217.224.212', '', 0, '/dump.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(448, 'four_oh_four', '404 Error', 3, '2016-11-28 10:33:17', '2016-11-28 10:33:17', '85.217.224.212', '', 0, '/css.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(449, 'four_oh_four', '404 Error', 3, '2016-11-28 10:33:22', '2016-11-28 10:33:22', '85.217.224.212', '', 0, '/list.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(450, 'four_oh_four', '404 Error', 3, '2016-11-28 10:37:48', '2016-11-28 10:37:48', '85.217.224.212', '', 0, '/user.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(451, 'four_oh_four', '404 Error', 3, '2016-11-28 10:40:21', '2016-11-28 10:40:21', '85.217.224.212', '', 0, '/javascript.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(452, 'four_oh_four', '404 Error', 3, '2016-11-28 10:40:37', '2016-11-28 10:40:37', '184.75.240.252', '', 0, '/test.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(453, 'four_oh_four', '404 Error', 3, '2016-11-28 10:40:59', '2016-11-28 10:40:59', '85.217.224.212', '', 0, '/lib.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(454, 'four_oh_four', '404 Error', 3, '2016-11-28 10:43:23', '2016-11-28 10:43:23', '85.217.224.212', '', 0, '/press.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(455, 'four_oh_four', '404 Error', 3, '2016-11-28 10:44:16', '2016-11-28 10:44:16', '85.217.224.212', '', 0, '/model.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(456, 'four_oh_four', '404 Error', 3, '2016-11-28 10:45:58', '2016-11-28 10:45:58', '85.217.224.212', '', 0, '/view.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(457, 'four_oh_four', '404 Error', 3, '2016-11-28 10:49:29', '2016-11-28 10:49:29', '85.217.224.212', '', 0, '/stats.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(458, 'four_oh_four', '404 Error', 3, '2016-11-28 10:54:59', '2016-11-28 10:54:59', '85.217.224.212', '', 0, '/cache.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(459, 'four_oh_four', '404 Error', 3, '2016-11-28 11:07:46', '2016-11-28 11:07:46', '184.75.240.252', '', 0, '/dirs.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(460, 'four_oh_four', '404 Error', 3, '2016-11-28 11:15:29', '2016-11-28 11:15:29', '184.75.240.252', '', 0, '/template.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(461, 'four_oh_four', '404 Error', 3, '2016-11-28 11:22:32', '2016-11-28 11:22:32', '184.75.240.252', '', 0, '/ajax.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(462, 'four_oh_four', '404 Error', 3, '2016-11-28 11:23:39', '2016-11-28 11:23:39', '184.75.240.252', '', 0, '/dir.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(463, 'four_oh_four', '404 Error', 3, '2016-11-28 11:27:45', '2016-11-28 11:27:45', '184.75.240.252', '', 0, '/object.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(464, 'four_oh_four', '404 Error', 3, '2016-11-28 11:37:35', '2016-11-28 11:37:35', '184.75.240.252', '', 0, '/functions.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(465, 'four_oh_four', '404 Error', 3, '2016-11-28 11:37:50', '2016-11-28 11:37:50', '184.75.240.252', '', 0, '/diff.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(466, 'four_oh_four', '404 Error', 3, '2016-11-28 11:37:50', '2016-11-28 11:37:50', '54.209.79.227', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(467, 'four_oh_four', '404 Error', 3, '2016-11-28 11:48:18', '2016-11-28 11:48:18', '184.75.240.252', '', 0, '/ini.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(468, 'four_oh_four', '404 Error', 3, '2016-11-28 11:56:57', '2016-11-28 11:56:57', '184.75.240.252', '', 0, '/utf.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(469, 'four_oh_four', '404 Error', 3, '2016-11-28 11:58:32', '2016-11-28 11:58:32', '184.75.240.252', '', 0, '/admin.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(470, 'four_oh_four', '404 Error', 3, '2016-11-28 12:02:48', '2016-11-28 12:02:48', '184.75.240.252', '', 0, '/config.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(471, 'four_oh_four', '404 Error', 3, '2016-11-28 12:14:06', '2016-11-28 12:14:06', '184.75.240.252', '', 0, '/menu.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(472, 'four_oh_four', '404 Error', 3, '2016-11-28 12:28:53', '2016-11-28 12:28:53', '184.75.240.252', '', 0, '/start.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(473, 'four_oh_four', '404 Error', 3, '2016-11-28 12:43:10', '2016-11-28 12:43:10', '184.75.240.252', '', 0, '/header.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(474, 'four_oh_four', '404 Error', 3, '2016-11-28 12:53:45', '2016-11-28 12:53:45', '184.75.240.252', '', 0, '/blog.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(475, 'four_oh_four', '404 Error', 3, '2016-11-28 12:54:28', '2016-11-28 12:54:28', '184.75.240.252', '', 0, '/title.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(476, 'four_oh_four', '404 Error', 3, '2016-11-28 13:12:19', '2016-11-28 13:12:19', '184.75.240.252', '', 0, '/xml.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(477, 'four_oh_four', '404 Error', 3, '2016-11-28 13:13:41', '2016-11-28 13:13:41', '184.75.240.252', '', 0, '/include.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(478, 'four_oh_four', '404 Error', 3, '2016-11-28 13:30:22', '2016-11-28 13:30:22', '184.75.240.252', '', 0, '/system.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(479, 'four_oh_four', '404 Error', 3, '2016-11-28 13:30:39', '2016-11-28 13:30:39', '184.75.240.252', '', 0, '/inc.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(480, 'four_oh_four', '404 Error', 3, '2016-11-28 13:39:20', '2016-11-28 13:39:20', '35.164.163.55', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(481, 'four_oh_four', '404 Error', 3, '2016-11-28 14:02:58', '2016-11-28 14:02:58', '184.75.240.252', '', 0, '/file.php', 'ponta.at', 'a:1:{s:12:"query_string";s:0:"";}'),
(482, 'four_oh_four', '404 Error', 3, '2016-11-28 15:33:40', '2016-11-28 15:33:40', '35.160.232.108', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(483, 'four_oh_four', '404 Error', 3, '2016-11-28 16:49:02', '2016-11-28 16:49:02', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(484, 'four_oh_four', '404 Error', 3, '2016-11-28 17:37:57', '2016-11-28 17:37:57', '35.160.232.108', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(485, 'four_oh_four', '404 Error', 3, '2016-11-28 19:42:59', '2016-11-28 19:42:59', '35.162.53.88', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(486, 'four_oh_four', '404 Error', 3, '2016-11-29 14:23:54', '2016-11-29 14:23:54', '163.172.66.141', '', 0, '/2012/12/29/premium-wordpress-themes-bursting-with-quality/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(487, 'four_oh_four', '404 Error', 3, '2016-11-29 19:27:53', '2016-11-29 19:27:53', '157.55.39.2', '', 0, '/2136/delete47263/sponsor.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(488, 'four_oh_four', '404 Error', 3, '2016-11-29 21:57:41', '2016-11-29 21:57:41', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(489, 'four_oh_four', '404 Error', 3, '2016-11-29 21:57:42', '2016-11-29 21:57:42', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(490, 'four_oh_four', '404 Error', 3, '2016-11-29 23:12:03', '2016-11-29 23:12:03', '35.164.203.195', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(491, 'four_oh_four', '404 Error', 3, '2016-11-30 03:40:06', '2016-11-30 03:40:06', '113.160.54.50', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(492, 'four_oh_four', '404 Error', 3, '2016-11-30 03:47:47', '2016-11-30 03:47:47', '163.172.65.12', '', 0, '/2012/11/07/suspendisse-vulputate-diam/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(493, 'four_oh_four', '404 Error', 3, '2016-11-30 04:08:49', '2016-11-30 04:08:49', '40.78.146.128', '', 0, '/pontalogin', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(494, 'four_oh_four', '404 Error', 3, '2016-11-30 04:12:11', '2016-11-30 04:12:11', '113.160.54.50', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(495, 'four_oh_four', '404 Error', 3, '2016-11-30 05:01:12', '2016-11-30 05:01:12', '5.9.17.118', '', 0, '/2125/delete6580/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(496, 'four_oh_four', '404 Error', 3, '2016-11-30 05:01:12', '2016-11-30 05:01:12', '5.9.17.118', '', 0, '/2125/delete8997/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(497, 'four_oh_four', '404 Error', 3, '2016-11-30 05:01:16', '2016-11-30 05:01:16', '78.46.156.169', '', 0, '/2130/delete32591/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(498, 'four_oh_four', '404 Error', 3, '2016-11-30 05:03:27', '2016-11-30 05:03:27', '5.9.145.132', '', 0, '/2135/delete14700/sponsor.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(499, 'four_oh_four', '404 Error', 3, '2016-11-30 07:03:38', '2016-11-30 07:03:38', '163.172.65.202', '', 0, '/2013/01/26/nulla-fringilla-magna/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(500, 'backup', 'Database Backup Executed', 3, '2016-11-30 09:05:08', '2016-11-30 09:05:08', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:7:"Success";s:7:"details";s:28:"emailed to backup recipients";}}'),
(501, 'backup', 'Database Backup Executed', 3, '2016-11-30 09:05:08', '2016-11-30 09:05:08', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:7:"Success";s:7:"details";s:28:"emailed to backup recipients";}}'),
(502, 'four_oh_four', '404 Error', 3, '2016-11-30 09:43:56', '2016-11-30 09:43:56', '143.205.84.105', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(503, 'four_oh_four', '404 Error', 3, '2016-11-30 09:48:14', '2016-11-30 09:48:14', '78.46.156.169', '', 0, '/2124/delete13046/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(504, 'four_oh_four', '404 Error', 3, '2016-11-30 11:38:59', '2016-11-30 11:38:59', '143.205.84.105', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(505, 'four_oh_four', '404 Error', 3, '2016-11-30 14:52:18', '2016-11-30 14:52:18', '92.63.219.100', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(506, 'four_oh_four', '404 Error', 3, '2016-11-30 15:48:20', '2016-11-30 15:48:20', '14.162.147.11', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(507, 'four_oh_four', '404 Error', 3, '2016-11-30 15:54:37', '2016-11-30 15:54:37', '163.172.65.246', '', 0, '/2013/01/09/velit-feugiat-porttito/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(508, 'four_oh_four', '404 Error', 3, '2016-11-30 17:23:02', '2016-11-30 17:23:02', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(509, 'four_oh_four', '404 Error', 3, '2016-11-30 19:41:09', '2016-11-30 19:41:09', '213.225.6.186', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(510, 'four_oh_four', '404 Error', 3, '2016-11-30 19:41:11', '2016-11-30 19:41:11', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(511, 'four_oh_four', '404 Error', 3, '2016-11-30 19:48:43', '2016-11-30 19:48:43', '213.225.6.186', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(512, 'four_oh_four', '404 Error', 3, '2016-11-30 19:48:44', '2016-11-30 19:48:44', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(513, 'four_oh_four', '404 Error', 3, '2016-11-30 19:48:47', '2016-11-30 19:48:47', '213.225.6.186', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(514, 'four_oh_four', '404 Error', 3, '2016-11-30 19:48:48', '2016-11-30 19:48:48', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(515, 'four_oh_four', '404 Error', 3, '2016-11-30 19:49:12', '2016-11-30 19:49:12', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(516, 'four_oh_four', '404 Error', 3, '2016-11-30 19:49:17', '2016-11-30 19:49:17', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(517, 'four_oh_four', '404 Error', 3, '2016-11-30 19:49:23', '2016-11-30 19:49:23', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(518, 'four_oh_four', '404 Error', 3, '2016-11-30 20:29:06', '2016-11-30 20:29:06', '213.225.6.186', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(519, 'four_oh_four', '404 Error', 3, '2016-11-30 20:29:06', '2016-11-30 20:29:06', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(520, 'four_oh_four', '404 Error', 3, '2016-11-30 20:38:11', '2016-11-30 20:38:11', '213.225.34.54', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(521, 'four_oh_four', '404 Error', 3, '2016-11-30 20:38:12', '2016-11-30 20:38:12', '213.225.34.54', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/html/werwirsind.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(522, 'four_oh_four', '404 Error', 3, '2016-11-30 23:01:06', '2016-11-30 23:01:06', '213.225.6.186', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(523, 'four_oh_four', '404 Error', 3, '2016-11-30 23:01:07', '2016-11-30 23:01:07', '213.225.6.186', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(524, 'four_oh_four', '404 Error', 3, '2016-12-01 01:39:12', '2016-12-01 01:39:12', '5.9.145.132', '', 0, '/2135/delete636/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(525, 'four_oh_four', '404 Error', 3, '2016-12-01 07:05:08', '2016-12-01 07:05:08', '163.172.65.6', '', 0, '/2012/12/08/aenean-laoreet-tortor/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(526, 'four_oh_four', '404 Error', 3, '2016-12-01 07:59:08', '2016-12-01 07:59:08', '163.172.64.236', '', 0, '/2013/01/04/quisque-sit-amet-sapien-et-lacus/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(527, 'four_oh_four', '404 Error', 3, '2016-12-01 08:33:09', '2016-12-01 08:33:09', '78.46.156.169', '', 0, '/2135/delete7480/_result.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(528, 'four_oh_four', '404 Error', 3, '2016-12-01 10:21:11', '2016-12-01 10:21:11', '5.9.94.207', '', 0, '/2124/delete26412/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(529, 'four_oh_four', '404 Error', 3, '2016-12-01 12:52:29', '2016-12-01 12:52:29', '163.172.65.202', '', 0, '/2012/12/09/nullam-blandit-venenatis-lectus/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(530, 'four_oh_four', '404 Error', 3, '2016-12-01 13:06:26', '2016-12-01 13:06:26', '83.215.140.129', '', 0, '/tmp/chaine/chaine_bg.jpg', 'http://www.kuechenkult.at/chaine/', 'a:1:{s:12:"query_string";s:0:"";}'),
(531, 'four_oh_four', '404 Error', 3, '2016-12-01 13:16:08', '2016-12-01 13:16:08', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(532, 'four_oh_four', '404 Error', 3, '2016-12-01 13:32:58', '2016-12-01 13:32:58', '213.225.6.12', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(533, 'four_oh_four', '404 Error', 3, '2016-12-01 13:32:59', '2016-12-01 13:32:59', '213.225.6.12', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(534, 'four_oh_four', '404 Error', 3, '2016-12-01 13:38:25', '2016-12-01 13:38:25', '113.190.138.226', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(535, 'four_oh_four', '404 Error', 3, '2016-12-01 14:10:13', '2016-12-01 14:10:13', '113.190.138.226', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(536, 'four_oh_four', '404 Error', 3, '2016-12-01 15:52:51', '2016-12-01 15:52:51', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(537, 'four_oh_four', '404 Error', 3, '2016-12-01 15:57:29', '2016-12-01 15:57:29', '213.225.6.12', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(538, 'four_oh_four', '404 Error', 3, '2016-12-01 16:14:32', '2016-12-01 16:14:32', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(539, 'four_oh_four', '404 Error', 3, '2016-12-01 16:26:45', '2016-12-01 16:26:45', '213.225.6.12', '', 0, '/html2/img/neuroth-bw.jpg', 'http://ponta.at/html2/agentur.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(540, 'four_oh_four', '404 Error', 3, '2016-12-01 16:26:45', '2016-12-01 16:26:45', '213.225.6.12', '', 0, '/html2/img/nemec-bw.jpg', 'http://ponta.at/html2/agentur.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(541, 'four_oh_four', '404 Error', 3, '2016-12-01 16:26:45', '2016-12-01 16:26:45', '213.225.6.12', '', 0, '/html2/img/werner-bw.jpg', 'http://ponta.at/html2/agentur.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(542, 'four_oh_four', '404 Error', 3, '2016-12-01 19:06:24', '2016-12-01 19:06:24', '78.46.156.169', '', 0, '/2138/delete8192/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(543, 'four_oh_four', '404 Error', 3, '2016-12-01 19:06:55', '2016-12-01 19:06:55', '78.46.156.169', '', 0, '/2138/delete8192/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(544, 'four_oh_four', '404 Error', 3, '2016-12-01 20:14:20', '2016-12-01 20:14:20', '163.172.66.86', '', 0, '/2012/11/05/carl-sagan/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(545, 'four_oh_four', '404 Error', 3, '2016-12-02 00:17:01', '2016-12-02 00:17:01', '40.77.167.80', '', 0, '/2136/delete47263/sponsor.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(546, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:42', '2016-12-02 01:49:42', '5.9.145.132', '', 0, '/2132/delete46830/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(547, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:42', '2016-12-02 01:49:42', '5.9.145.132', '', 0, '/2132/delete35197/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(548, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:42', '2016-12-02 01:49:42', '5.9.94.207', '', 0, '/2123/delete39543/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(549, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:42', '2016-12-02 01:49:42', '5.9.94.207', '', 0, '/2132/delete16853/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(550, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:52', '2016-12-02 01:49:52', '144.76.71.83', '', 0, '/2132/delete35197/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(551, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:52', '2016-12-02 01:49:52', '144.76.71.83', '', 0, '/2132/delete46830/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(552, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:55', '2016-12-02 01:49:55', '5.9.112.6', '', 0, '/2123/delete39543/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(553, 'four_oh_four', '404 Error', 3, '2016-12-02 01:49:55', '2016-12-02 01:49:55', '5.9.112.6', '', 0, '/2132/delete16853/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(554, 'four_oh_four', '404 Error', 3, '2016-12-02 05:49:02', '2016-12-02 05:49:02', '213.225.5.137', '', 0, '/html/werwirsind.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(555, 'four_oh_four', '404 Error', 3, '2016-12-02 05:49:03', '2016-12-02 05:49:03', '213.225.5.137', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(556, 'four_oh_four', '404 Error', 3, '2016-12-02 05:49:04', '2016-12-02 05:49:04', '213.225.5.137', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(557, 'four_oh_four', '404 Error', 3, '2016-12-02 05:49:05', '2016-12-02 05:49:05', '213.225.5.137', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(558, 'four_oh_four', '404 Error', 3, '2016-12-02 05:49:06', '2016-12-02 05:49:06', '213.225.5.137', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(559, 'four_oh_four', '404 Error', 3, '2016-12-02 07:09:32', '2016-12-02 07:09:32', '195.154.199.101', '', 0, '/wp-smtp.php', '', 'a:1:{s:12:"query_string";s:1:"c";}'),
(560, 'four_oh_four', '404 Error', 3, '2016-12-02 14:16:09', '2016-12-02 14:16:09', '66.249.75.183', '', 0, '/sitemap.xml', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(561, 'four_oh_four', '404 Error', 3, '2016-12-02 22:42:52', '2016-12-02 22:42:52', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(562, 'four_oh_four', '404 Error', 3, '2016-12-03 04:24:03', '2016-12-03 04:24:03', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(563, 'four_oh_four', '404 Error', 3, '2016-12-03 05:42:00', '2016-12-03 05:42:00', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(564, 'four_oh_four', '404 Error', 3, '2016-12-03 05:42:02', '2016-12-03 05:42:02', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(565, 'four_oh_four', '404 Error', 3, '2016-12-03 11:58:04', '2016-12-03 11:58:04', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(566, 'backup', 'Database Backup Executed', 3, '2016-12-03 11:58:04', '2016-12-03 11:58:04', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:7:"Success";s:7:"details";s:28:"emailed to backup recipients";}}'),
(567, 'four_oh_four', '404 Error', 3, '2016-12-03 21:01:59', '2016-12-03 21:01:59', '216.244.66.229', '', 0, '/purchasing-vicodin-in-mexico', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(568, 'four_oh_four', '404 Error', 3, '2016-12-04 01:53:57', '2016-12-04 01:53:57', '163.172.66.151', '', 0, '/2012/12/29/premium-wordpress-themes-bursting-with-quality/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(569, 'four_oh_four', '404 Error', 3, '2016-12-04 03:00:27', '2016-12-04 03:00:27', '216.244.66.239', '', 0, '/kontakt/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(570, 'four_oh_four', '404 Error', 3, '2016-12-04 03:00:27', '2016-12-04 03:00:27', '216.244.66.239', '', 0, '/kontakt/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(571, 'four_oh_four', '404 Error', 3, '2016-12-04 03:18:44', '2016-12-04 03:18:44', '116.107.154.49', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(572, 'four_oh_four', '404 Error', 3, '2016-12-04 10:01:35', '2016-12-04 10:01:35', '35.164.203.195', '', 0, '/404', 'https://www.google.com', 'a:1:{s:12:"query_string";s:0:"";}'),
(573, 'four_oh_four', '404 Error', 3, '2016-12-04 10:04:42', '2016-12-04 10:04:42', '163.172.66.76', '', 0, '/2012/11/07/suspendisse-vulputate-diam/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(574, 'four_oh_four', '404 Error', 3, '2016-12-04 17:00:14', '2016-12-04 17:00:14', '216.244.66.229', '', 0, '/buy-oral-ivermectin-pills', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(575, 'four_oh_four', '404 Error', 3, '2016-12-04 17:00:14', '2016-12-04 17:00:14', '216.244.66.229', '', 0, '/buy-oral-ivermectin-pills', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(576, 'four_oh_four', '404 Error', 3, '2016-12-04 17:46:45', '2016-12-04 17:46:45', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(577, 'four_oh_four', '404 Error', 3, '2016-12-04 18:52:47', '2016-12-04 18:52:47', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/layouts/main.min.css', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:7:"ver=1.1";}'),
(578, 'four_oh_four', '404 Error', 3, '2016-12-04 18:52:49', '2016-12-04 18:52:49', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(579, 'four_oh_four', '404 Error', 3, '2016-12-04 18:52:56', '2016-12-04 18:52:56', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/layouts/main.min.css', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:7:"ver=1.1";}'),
(580, 'four_oh_four', '404 Error', 3, '2016-12-04 18:54:18', '2016-12-04 18:54:18', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(581, 'four_oh_four', '404 Error', 3, '2016-12-04 18:55:12', '2016-12-04 18:55:12', '1.55.115.199', '', 0, '/contact/img/banner.jpg', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(582, 'four_oh_four', '404 Error', 3, '2016-12-04 18:55:12', '2016-12-04 18:55:12', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(583, 'four_oh_four', '404 Error', 3, '2016-12-04 18:55:12', '2016-12-04 18:55:12', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(584, 'four_oh_four', '404 Error', 3, '2016-12-04 18:55:12', '2016-12-04 18:55:12', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(585, 'four_oh_four', '404 Error', 3, '2016-12-04 18:55:12', '2016-12-04 18:55:12', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(586, 'four_oh_four', '404 Error', 3, '2016-12-04 18:58:56', '2016-12-04 18:58:56', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(587, 'four_oh_four', '404 Error', 3, '2016-12-04 18:58:56', '2016-12-04 18:58:56', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(588, 'four_oh_four', '404 Error', 3, '2016-12-04 18:58:56', '2016-12-04 18:58:56', '1.55.115.199', '', 0, '/contact/img/banner.jpg', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(589, 'four_oh_four', '404 Error', 3, '2016-12-04 18:58:57', '2016-12-04 18:58:57', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(590, 'four_oh_four', '404 Error', 3, '2016-12-04 18:58:57', '2016-12-04 18:58:57', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(591, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:24', '2016-12-04 18:59:24', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(592, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:24', '2016-12-04 18:59:24', '1.55.115.199', '', 0, '/contact/img/banner.jpg', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(593, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:24', '2016-12-04 18:59:24', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(594, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:24', '2016-12-04 18:59:24', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(595, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:24', '2016-12-04 18:59:24', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(596, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:53', '2016-12-04 18:59:53', '1.55.115.199', '', 0, '/contact/img/banner.jpg', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(597, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:53', '2016-12-04 18:59:53', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(598, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:53', '2016-12-04 18:59:53', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(599, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:54', '2016-12-04 18:59:54', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(600, 'four_oh_four', '404 Error', 3, '2016-12-04 18:59:54', '2016-12-04 18:59:54', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(601, 'four_oh_four', '404 Error', 3, '2016-12-04 19:00:29', '2016-12-04 19:00:29', '1.55.115.199', '', 0, '/contact/img/banner.jpg', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(602, 'four_oh_four', '404 Error', 3, '2016-12-04 19:00:29', '2016-12-04 19:00:29', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(603, 'four_oh_four', '404 Error', 3, '2016-12-04 19:00:29', '2016-12-04 19:00:29', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(604, 'four_oh_four', '404 Error', 3, '2016-12-04 19:00:30', '2016-12-04 19:00:30', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(605, 'four_oh_four', '404 Error', 3, '2016-12-04 19:00:30', '2016-12-04 19:00:30', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(606, 'four_oh_four', '404 Error', 3, '2016-12-04 19:01:44', '2016-12-04 19:01:44', '1.55.115.199', '', 0, '/contact/img/banner.jpg', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(607, 'four_oh_four', '404 Error', 3, '2016-12-04 19:01:44', '2016-12-04 19:01:44', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(608, 'four_oh_four', '404 Error', 3, '2016-12-04 19:01:44', '2016-12-04 19:01:44', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(609, 'four_oh_four', '404 Error', 3, '2016-12-04 19:01:44', '2016-12-04 19:01:44', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(610, 'four_oh_four', '404 Error', 3, '2016-12-04 19:01:44', '2016-12-04 19:01:44', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(611, 'four_oh_four', '404 Error', 3, '2016-12-04 19:02:51', '2016-12-04 19:02:51', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(612, 'four_oh_four', '404 Error', 3, '2016-12-04 19:02:51', '2016-12-04 19:02:51', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(613, 'four_oh_four', '404 Error', 3, '2016-12-04 19:02:51', '2016-12-04 19:02:51', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(614, 'four_oh_four', '404 Error', 3, '2016-12-04 19:02:51', '2016-12-04 19:02:51', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(615, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:24', '2016-12-04 19:03:24', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(616, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:29', '2016-12-04 19:03:29', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(617, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:29', '2016-12-04 19:03:29', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(618, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:29', '2016-12-04 19:03:29', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(619, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:29', '2016-12-04 19:03:29', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(620, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:47', '2016-12-04 19:03:47', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(621, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:47', '2016-12-04 19:03:47', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(622, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:48', '2016-12-04 19:03:48', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(623, 'four_oh_four', '404 Error', 3, '2016-12-04 19:03:48', '2016-12-04 19:03:48', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(624, 'four_oh_four', '404 Error', 3, '2016-12-04 19:04:10', '2016-12-04 19:04:10', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(625, 'four_oh_four', '404 Error', 3, '2016-12-04 19:04:10', '2016-12-04 19:04:10', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(626, 'four_oh_four', '404 Error', 3, '2016-12-04 19:04:10', '2016-12-04 19:04:10', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(627, 'four_oh_four', '404 Error', 3, '2016-12-04 19:04:10', '2016-12-04 19:04:10', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(628, 'four_oh_four', '404 Error', 3, '2016-12-04 19:05:38', '2016-12-04 19:05:38', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(629, 'four_oh_four', '404 Error', 3, '2016-12-04 19:05:38', '2016-12-04 19:05:38', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(630, 'four_oh_four', '404 Error', 3, '2016-12-04 19:05:38', '2016-12-04 19:05:38', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(631, 'four_oh_four', '404 Error', 3, '2016-12-04 19:05:39', '2016-12-04 19:05:39', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(632, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:29', '2016-12-04 19:06:29', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(633, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:29', '2016-12-04 19:06:29', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(634, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:29', '2016-12-04 19:06:29', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(635, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:29', '2016-12-04 19:06:29', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}');
INSERT INTO `ponta_at_itsec_log` (`log_id`, `log_type`, `log_function`, `log_priority`, `log_date`, `log_date_gmt`, `log_host`, `log_username`, `log_user`, `log_url`, `log_referrer`, `log_data`) VALUES
(636, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:55', '2016-12-04 19:06:55', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(637, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:55', '2016-12-04 19:06:55', '1.55.115.199', '', 0, '/contact/img/phone.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(638, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:55', '2016-12-04 19:06:55', '1.55.115.199', '', 0, '/contact/img/maker.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(639, 'four_oh_four', '404 Error', 3, '2016-12-04 19:06:55', '2016-12-04 19:06:55', '1.55.115.199', '', 0, '/contact/img/inbox.png', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(640, 'four_oh_four', '404 Error', 3, '2016-12-04 19:08:29', '2016-12-04 19:08:29', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(641, 'four_oh_four', '404 Error', 3, '2016-12-04 19:09:37', '2016-12-04 19:09:37', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(642, 'four_oh_four', '404 Error', 3, '2016-12-04 19:09:44', '2016-12-04 19:09:44', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(643, 'four_oh_four', '404 Error', 3, '2016-12-04 19:10:12', '2016-12-04 19:10:12', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(644, 'four_oh_four', '404 Error', 3, '2016-12-04 19:11:12', '2016-12-04 19:11:12', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(645, 'four_oh_four', '404 Error', 3, '2016-12-04 19:12:26', '2016-12-04 19:12:26', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(646, 'four_oh_four', '404 Error', 3, '2016-12-04 19:14:13', '2016-12-04 19:14:13', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(647, 'four_oh_four', '404 Error', 3, '2016-12-04 19:31:48', '2016-12-04 19:31:48', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(648, 'four_oh_four', '404 Error', 3, '2016-12-04 19:33:22', '2016-12-04 19:33:22', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(649, 'four_oh_four', '404 Error', 3, '2016-12-04 19:33:31', '2016-12-04 19:33:31', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(650, 'four_oh_four', '404 Error', 3, '2016-12-04 19:43:20', '2016-12-04 19:43:20', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(651, 'four_oh_four', '404 Error', 3, '2016-12-04 19:49:50', '2016-12-04 19:49:50', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(652, 'four_oh_four', '404 Error', 3, '2016-12-04 19:52:50', '2016-12-04 19:52:50', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(653, 'four_oh_four', '404 Error', 3, '2016-12-04 20:04:59', '2016-12-04 20:04:59', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(654, 'four_oh_four', '404 Error', 3, '2016-12-04 20:05:04', '2016-12-04 20:05:04', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(655, 'four_oh_four', '404 Error', 3, '2016-12-04 20:07:43', '2016-12-04 20:07:43', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(656, 'four_oh_four', '404 Error', 3, '2016-12-04 20:08:14', '2016-12-04 20:08:14', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(657, 'four_oh_four', '404 Error', 3, '2016-12-04 20:09:23', '2016-12-04 20:09:23', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(658, 'four_oh_four', '404 Error', 3, '2016-12-04 20:09:32', '2016-12-04 20:09:32', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(659, 'four_oh_four', '404 Error', 3, '2016-12-04 20:09:35', '2016-12-04 20:09:35', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(660, 'four_oh_four', '404 Error', 3, '2016-12-04 20:09:52', '2016-12-04 20:09:52', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(661, 'four_oh_four', '404 Error', 3, '2016-12-04 20:10:13', '2016-12-04 20:10:13', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(662, 'four_oh_four', '404 Error', 3, '2016-12-04 20:10:32', '2016-12-04 20:10:32', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(663, 'four_oh_four', '404 Error', 3, '2016-12-04 20:10:34', '2016-12-04 20:10:34', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(664, 'four_oh_four', '404 Error', 3, '2016-12-04 20:11:01', '2016-12-04 20:11:01', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(665, 'four_oh_four', '404 Error', 3, '2016-12-04 20:11:40', '2016-12-04 20:11:40', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(666, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/font-uploader/font-uploader-free.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(667, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/another-wordpress-classifieds-plugin/AWPCP.po', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(668, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/auto-attachments/a-a.css', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(669, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/wpmarketplace/readme.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(670, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/user-photo/admin.css', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(671, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/wp-homepage-slideshow/functions.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(672, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/contact-form-7/license.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(673, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/wp-image-news-slider/functions.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(674, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/ninja-forms/ninja_forms.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(675, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/wpmarketplace/readme.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(676, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/wp-filemanager/fm.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(677, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/front-end-upload/destination.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(678, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/zingiri-web-shop/admin.css', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(679, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/user-avatar/readme.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(680, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/cimy-user-extra-fields/README_OFFICIAL.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(681, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/fcchat/default.png', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(682, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:32', '2016-12-05 01:39:32', '194.213.39.50', '', 0, '/wp-content/plugins/resume-submissions-job-postings/installer.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(683, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/user-meta/readme.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(684, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/front-end-upload/destination.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(685, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/nextgen-gallery/changelog.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(686, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/wpstorecart/lgpl.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(687, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/wp-e-commerce/license.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(688, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/simple-dropbox-upload-form/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(689, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/magic-fields/MF_Constant.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(690, 'lockout', 'Host or User Lockout', 10, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '', '', 'a:3:{s:7:"expires";s:19:"2016-12-05 01:54:33";s:11:"expires_gmt";s:19:"2016-12-05 01:54:33";s:4:"type";s:12:"four_oh_four";}'),
(691, 'four_oh_four', '404 Error', 3, '2016-12-05 01:39:33', '2016-12-05 01:39:33', '194.213.39.50', '', 0, '/wp-content/plugins/mac-dock-gallery/bugslist.txt', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(692, 'four_oh_four', '404 Error', 3, '2016-12-05 08:29:25', '2016-12-05 08:29:25', '163.172.64.181', '', 0, '/2012/12/08/aenean-laoreet-tortor/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(693, 'four_oh_four', '404 Error', 3, '2016-12-05 08:56:29', '2016-12-05 08:56:29', '216.244.66.229', '', 0, '/metformin-cheap-online', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(694, 'four_oh_four', '404 Error', 3, '2016-12-05 09:02:34', '2016-12-05 09:02:34', '216.244.66.229', '', 0, '/metformin-cheap-online', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(695, 'four_oh_four', '404 Error', 3, '2016-12-05 11:46:53', '2016-12-05 11:46:53', '5.9.145.132', '', 0, '/2138/delete742/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(696, 'four_oh_four', '404 Error', 3, '2016-12-05 17:56:41', '2016-12-05 17:56:41', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(697, 'four_oh_four', '404 Error', 3, '2016-12-05 17:56:50', '2016-12-05 17:56:50', '1.55.115.199', '', 0, '/kontakt.html', 'http://ponta.at/', 'a:1:{s:12:"query_string";s:0:"";}'),
(698, 'four_oh_four', '404 Error', 3, '2016-12-05 17:56:50', '2016-12-05 17:56:50', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(699, 'four_oh_four', '404 Error', 3, '2016-12-05 17:57:05', '2016-12-05 17:57:05', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(700, 'four_oh_four', '404 Error', 3, '2016-12-05 17:57:19', '2016-12-05 17:57:19', '1.55.115.199', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(701, 'four_oh_four', '404 Error', 3, '2016-12-05 19:36:56', '2016-12-05 19:36:56', '213.225.10.39', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(702, 'four_oh_four', '404 Error', 3, '2016-12-05 19:53:29', '2016-12-05 19:53:29', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(703, 'four_oh_four', '404 Error', 3, '2016-12-05 19:53:39', '2016-12-05 19:53:39', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(704, 'four_oh_four', '404 Error', 3, '2016-12-05 19:53:56', '2016-12-05 19:53:56', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(705, 'four_oh_four', '404 Error', 3, '2016-12-05 19:54:21', '2016-12-05 19:54:21', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(706, 'four_oh_four', '404 Error', 3, '2016-12-05 19:54:47', '2016-12-05 19:54:47', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(707, 'four_oh_four', '404 Error', 3, '2016-12-05 19:56:12', '2016-12-05 19:56:12', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(708, 'four_oh_four', '404 Error', 3, '2016-12-05 19:56:55', '2016-12-05 19:56:55', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(709, 'four_oh_four', '404 Error', 3, '2016-12-05 19:56:59', '2016-12-05 19:56:59', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(710, 'four_oh_four', '404 Error', 3, '2016-12-05 19:57:04', '2016-12-05 19:57:04', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(711, 'four_oh_four', '404 Error', 3, '2016-12-05 20:32:34', '2016-12-05 20:32:34', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(712, 'four_oh_four', '404 Error', 3, '2016-12-05 20:53:57', '2016-12-05 20:53:57', '42.113.21.117', '', 0, '/agency/img/img1.jpg', 'http://ponta.at/agency/', 'a:1:{s:12:"query_string";s:0:"";}'),
(713, 'four_oh_four', '404 Error', 3, '2016-12-05 20:53:58', '2016-12-05 20:53:58', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(714, 'four_oh_four', '404 Error', 3, '2016-12-05 20:59:19', '2016-12-05 20:59:19', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(715, 'four_oh_four', '404 Error', 3, '2016-12-05 21:01:19', '2016-12-05 21:01:19', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(716, 'four_oh_four', '404 Error', 3, '2016-12-05 21:05:46', '2016-12-05 21:05:46', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(717, 'four_oh_four', '404 Error', 3, '2016-12-05 21:08:31', '2016-12-05 21:08:31', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(718, 'four_oh_four', '404 Error', 3, '2016-12-05 21:11:16', '2016-12-05 21:11:16', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(719, 'four_oh_four', '404 Error', 3, '2016-12-05 21:12:21', '2016-12-05 21:12:21', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(720, 'four_oh_four', '404 Error', 3, '2016-12-05 21:17:25', '2016-12-05 21:17:25', '42.113.21.117', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(721, 'four_oh_four', '404 Error', 3, '2016-12-06 01:28:04', '2016-12-06 01:28:04', '117.0.34.25', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(722, 'four_oh_four', '404 Error', 3, '2016-12-06 01:47:31', '2016-12-06 01:47:31', '176.9.10.227', '', 0, '/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(723, 'four_oh_four', '404 Error', 3, '2016-12-06 01:47:33', '2016-12-06 01:47:33', '176.9.10.227', '', 0, '/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(724, 'four_oh_four', '404 Error', 3, '2016-12-06 01:47:35', '2016-12-06 01:47:35', '176.9.10.227', '', 0, '/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(725, 'four_oh_four', '404 Error', 3, '2016-12-06 01:47:37', '2016-12-06 01:47:37', '176.9.10.227', '', 0, '/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(726, 'four_oh_four', '404 Error', 3, '2016-12-06 02:00:41', '2016-12-06 02:00:41', '5.9.145.132', '', 0, '/2138/delete23026/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(727, 'four_oh_four', '404 Error', 3, '2016-12-06 05:17:37', '2016-12-06 05:17:37', '91.223.89.100', '', 0, '/support.php', 'http://www.google.com/', 'a:1:{s:12:"query_string";s:0:"";}'),
(728, 'four_oh_four', '404 Error', 3, '2016-12-06 06:42:24', '2016-12-06 06:42:24', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(729, 'four_oh_four', '404 Error', 3, '2016-12-06 06:42:25', '2016-12-06 06:42:25', '42.114.3.148', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(730, 'four_oh_four', '404 Error', 3, '2016-12-06 06:42:47', '2016-12-06 06:42:47', '42.114.3.148', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(731, 'four_oh_four', '404 Error', 3, '2016-12-06 06:43:42', '2016-12-06 06:43:42', '42.114.3.148', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(732, 'four_oh_four', '404 Error', 3, '2016-12-06 06:44:00', '2016-12-06 06:44:00', '213.225.37.232', '', 0, '/contact/warwirtun.html', 'http://ponta.at/contact/', 'a:1:{s:12:"query_string";s:0:"";}'),
(733, 'four_oh_four', '404 Error', 3, '2016-12-06 06:44:01', '2016-12-06 06:44:01', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(734, 'four_oh_four', '404 Error', 3, '2016-12-06 06:44:06', '2016-12-06 06:44:06', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(735, 'four_oh_four', '404 Error', 3, '2016-12-06 06:44:09', '2016-12-06 06:44:09', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(736, 'four_oh_four', '404 Error', 3, '2016-12-06 06:44:14', '2016-12-06 06:44:14', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(737, 'four_oh_four', '404 Error', 3, '2016-12-06 06:44:19', '2016-12-06 06:44:19', '42.114.3.148', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(738, 'four_oh_four', '404 Error', 3, '2016-12-06 06:55:29', '2016-12-06 06:55:29', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(739, 'four_oh_four', '404 Error', 3, '2016-12-06 07:46:41', '2016-12-06 07:46:41', '157.55.39.182', '', 0, '/2136/delete47263/sponsor.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(740, 'four_oh_four', '404 Error', 3, '2016-12-06 10:16:15', '2016-12-06 10:16:15', '117.0.34.25', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(741, 'backup', 'Database Backup Executed', 3, '2016-12-06 12:59:20', '2016-12-06 12:59:20', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:7:"Success";s:7:"details";s:28:"emailed to backup recipients";}}'),
(742, 'four_oh_four', '404 Error', 3, '2016-12-06 19:09:16', '2016-12-06 19:09:16', '163.172.66.119', '', 0, '/2013/01/04/quisque-sit-amet-sapien-et-lacus/feed/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(743, 'four_oh_four', '404 Error', 3, '2016-12-06 19:48:18', '2016-12-06 19:48:18', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(744, 'four_oh_four', '404 Error', 3, '2016-12-06 19:48:20', '2016-12-06 19:48:20', '213.225.37.232', '', 0, '/what-we-make/warwirtun.html', 'http://ponta.at/what-we-make/', 'a:1:{s:12:"query_string";s:0:"";}'),
(745, 'four_oh_four', '404 Error', 3, '2016-12-06 19:48:21', '2016-12-06 19:48:21', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(746, 'four_oh_four', '404 Error', 3, '2016-12-06 19:48:31', '2016-12-06 19:48:31', '213.225.37.232', '', 0, '/what-we-make/warwirtun.html', 'http://ponta.at/what-we-make/', 'a:1:{s:12:"query_string";s:0:"";}'),
(747, 'four_oh_four', '404 Error', 3, '2016-12-06 19:48:31', '2016-12-06 19:48:31', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(748, 'four_oh_four', '404 Error', 3, '2016-12-06 21:11:05', '2016-12-06 21:11:05', '163.172.65.192', '', 0, '/category/dining/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(749, 'four_oh_four', '404 Error', 3, '2016-12-06 23:47:22', '2016-12-06 23:47:22', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(750, 'four_oh_four', '404 Error', 3, '2016-12-07 00:05:08', '2016-12-07 00:05:08', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(751, 'four_oh_four', '404 Error', 3, '2016-12-07 00:05:09', '2016-12-07 00:05:09', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(752, 'four_oh_four', '404 Error', 3, '2016-12-07 00:05:13', '2016-12-07 00:05:13', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(753, 'four_oh_four', '404 Error', 3, '2016-12-07 00:05:16', '2016-12-07 00:05:16', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(754, 'four_oh_four', '404 Error', 3, '2016-12-07 00:05:18', '2016-12-07 00:05:18', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(755, 'four_oh_four', '404 Error', 3, '2016-12-07 00:05:18', '2016-12-07 00:05:18', '213.225.37.232', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(756, 'four_oh_four', '404 Error', 3, '2016-12-07 01:16:13', '2016-12-07 01:16:13', '5.9.106.81', '', 0, '/2138/delete17175/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(757, 'four_oh_four', '404 Error', 3, '2016-12-07 05:20:53', '2016-12-07 05:20:53', '5.9.17.118', '', 0, '/2132/delete39341/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(758, 'four_oh_four', '404 Error', 3, '2016-12-07 08:19:01', '2016-12-07 08:19:01', '163.172.65.111', '', 0, '/category/gaming/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(759, 'four_oh_four', '404 Error', 3, '2016-12-07 09:37:38', '2016-12-07 09:37:38', '195.154.199.140', '', 0, '/wall_login.php', '', 'a:1:{s:12:"query_string";s:9:"login=cmd";}'),
(760, 'four_oh_four', '404 Error', 3, '2016-12-07 11:25:41', '2016-12-07 11:25:41', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(761, 'four_oh_four', '404 Error', 3, '2016-12-07 11:25:43', '2016-12-07 11:25:43', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(762, 'four_oh_four', '404 Error', 3, '2016-12-07 11:25:45', '2016-12-07 11:25:45', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(763, 'four_oh_four', '404 Error', 3, '2016-12-07 11:25:47', '2016-12-07 11:25:47', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(764, 'four_oh_four', '404 Error', 3, '2016-12-07 11:25:47', '2016-12-07 11:25:47', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(765, 'four_oh_four', '404 Error', 3, '2016-12-07 11:25:47', '2016-12-07 11:25:47', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(766, 'four_oh_four', '404 Error', 3, '2016-12-07 11:33:23', '2016-12-07 11:33:23', '213.225.36.124', '', 0, '/what-we-make/warwirtun.html', 'http://ponta.at/what-we-make/', 'a:1:{s:12:"query_string";s:0:"";}'),
(767, 'four_oh_four', '404 Error', 3, '2016-12-07 11:33:23', '2016-12-07 11:33:23', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(768, 'four_oh_four', '404 Error', 3, '2016-12-07 11:33:29', '2016-12-07 11:33:29', '213.225.36.124', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(769, 'four_oh_four', '404 Error', 3, '2016-12-07 11:41:23', '2016-12-07 11:41:23', '195.154.194.116', '', 0, '/license.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(770, 'four_oh_four', '404 Error', 3, '2016-12-07 14:17:21', '2016-12-07 14:17:21', '94.230.240.180', '', 0, '/vmskdl44rededd', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(771, 'four_oh_four', '404 Error', 3, '2016-12-07 14:17:21', '2016-12-07 14:17:21', '94.230.240.180', '', 0, '/vmskdl44rededd', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(772, 'four_oh_four', '404 Error', 3, '2016-12-07 14:17:22', '2016-12-07 14:17:22', '94.230.240.180', '', 0, '/N0Wccvvd333.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(773, 'four_oh_four', '404 Error', 3, '2016-12-07 14:17:23', '2016-12-07 14:17:23', '94.230.240.180', '', 0, '/N0Wccvvd333.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(774, 'four_oh_four', '404 Error', 3, '2016-12-07 14:17:24', '2016-12-07 14:17:24', '94.230.240.180', '', 0, '/N0WaY/N0WaY1bb2/N0WaY123.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(775, 'four_oh_four', '404 Error', 3, '2016-12-07 14:17:24', '2016-12-07 14:17:24', '94.230.240.180', '', 0, '/N0WaY/N0WaY1bb2/N0WaY123.php', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(776, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:14', '2016-12-07 14:18:14', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=2";}'),
(777, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:15', '2016-12-07 14:18:15', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=3";}'),
(778, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:16', '2016-12-07 14:18:16', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=4";}'),
(779, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:17', '2016-12-07 14:18:17', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=5";}'),
(780, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:17', '2016-12-07 14:18:17', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=6";}'),
(781, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:18', '2016-12-07 14:18:18', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=7";}'),
(782, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:19', '2016-12-07 14:18:19', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=8";}'),
(783, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:20', '2016-12-07 14:18:20', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:8:"author=9";}'),
(784, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:21', '2016-12-07 14:18:21', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:9:"author=10";}'),
(785, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:22', '2016-12-07 14:18:22', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:9:"author=11";}'),
(786, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:23', '2016-12-07 14:18:23', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:9:"author=12";}'),
(787, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:24', '2016-12-07 14:18:24', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:9:"author=13";}'),
(788, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:25', '2016-12-07 14:18:25', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:9:"author=14";}'),
(789, 'four_oh_four', '404 Error', 3, '2016-12-07 14:18:25', '2016-12-07 14:18:25', '94.230.240.180', '', 0, '/', '', 'a:1:{s:12:"query_string";s:9:"author=15";}'),
(790, 'lockout', 'Host or User Lockout', 10, '2016-12-07 14:18:25', '2016-12-07 14:18:25', '94.230.240.180', '', 0, '', '', 'a:3:{s:7:"expires";s:19:"2016-12-07 14:33:25";s:11:"expires_gmt";s:19:"2016-12-07 14:33:25";s:4:"type";s:12:"four_oh_four";}'),
(791, 'four_oh_four', '404 Error', 3, '2016-12-07 18:11:53', '2016-12-07 18:11:53', '78.46.156.169', '', 0, '/2138/delete40780/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(792, 'four_oh_four', '404 Error', 3, '2016-12-07 18:35:21', '2016-12-07 18:35:21', '88.99.27.172', '', 0, '/2138/delete18110/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(793, 'four_oh_four', '404 Error', 3, '2016-12-07 18:36:33', '2016-12-07 18:36:33', '5.9.112.6', '', 0, '/2131/delete26347/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(794, 'four_oh_four', '404 Error', 3, '2016-12-07 23:20:17', '2016-12-07 23:20:17', '94.199.151.22', '', 0, '/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(795, 'four_oh_four', '404 Error', 3, '2016-12-07 23:20:25', '2016-12-07 23:20:25', '94.199.151.22', '', 0, '/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(796, 'four_oh_four', '404 Error', 3, '2016-12-07 23:20:34', '2016-12-07 23:20:34', '94.199.151.22', '', 0, '/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(797, 'four_oh_four', '404 Error', 3, '2016-12-07 23:20:43', '2016-12-07 23:20:43', '94.199.151.22', '', 0, '/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(798, 'four_oh_four', '404 Error', 3, '2016-12-07 23:21:57', '2016-12-07 23:21:57', '94.199.151.22', '', 0, '/hello-world/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(799, 'four_oh_four', '404 Error', 3, '2016-12-07 23:22:06', '2016-12-07 23:22:06', '94.199.151.22', '', 0, '/hello-world/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(800, 'four_oh_four', '404 Error', 3, '2016-12-07 23:22:16', '2016-12-07 23:22:16', '94.199.151.22', '', 0, '/hello-world/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(801, 'four_oh_four', '404 Error', 3, '2016-12-07 23:22:27', '2016-12-07 23:22:27', '94.199.151.22', '', 0, '/hello-world/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(802, 'four_oh_four', '404 Error', 3, '2016-12-07 23:22:44', '2016-12-07 23:22:44', '94.199.151.22', '', 0, '/author/admin/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(803, 'four_oh_four', '404 Error', 3, '2016-12-07 23:22:53', '2016-12-07 23:22:53', '94.199.151.22', '', 0, '/author/admin/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(804, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:03', '2016-12-07 23:23:03', '94.199.151.22', '', 0, '/author/admin/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(805, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:13', '2016-12-07 23:23:13', '94.199.151.22', '', 0, '/author/admin/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(806, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:21', '2016-12-07 23:23:21', '94.199.151.22', '', 0, '/2016/11/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(807, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:30', '2016-12-07 23:23:30', '94.199.151.22', '', 0, '/2016/11/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(808, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:38', '2016-12-07 23:23:38', '94.199.151.22', '', 0, '/2016/11/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(809, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:47', '2016-12-07 23:23:47', '94.199.151.22', '', 0, '/2016/11/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(810, 'four_oh_four', '404 Error', 3, '2016-12-07 23:23:56', '2016-12-07 23:23:56', '94.199.151.22', '', 0, '/category/uncategorized/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(811, 'four_oh_four', '404 Error', 3, '2016-12-07 23:24:04', '2016-12-07 23:24:04', '94.199.151.22', '', 0, '/category/uncategorized/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(812, 'four_oh_four', '404 Error', 3, '2016-12-07 23:24:14', '2016-12-07 23:24:14', '94.199.151.22', '', 0, '/category/uncategorized/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(813, 'four_oh_four', '404 Error', 3, '2016-12-07 23:24:25', '2016-12-07 23:24:25', '94.199.151.22', '', 0, '/category/uncategorized/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(814, 'lockout', 'Host or User Lockout', 10, '2016-12-07 23:24:25', '2016-12-07 23:24:25', '94.199.151.22', '', 0, '', '', 'a:3:{s:7:"expires";s:19:"2016-12-07 23:39:25";s:11:"expires_gmt";s:19:"2016-12-07 23:39:25";s:4:"type";s:12:"four_oh_four";}'),
(815, 'four_oh_four', '404 Error', 3, '2016-12-08 00:36:48', '2016-12-08 00:36:48', '5.9.17.118', '', 0, '/2126/delete35630/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(816, 'four_oh_four', '404 Error', 3, '2016-12-08 07:01:42', '2016-12-08 07:01:42', '91.223.89.100', '', 0, '/sys/Sym.php', 'http://www.paragonnordic.com/', 'a:1:{s:12:"query_string";s:0:"";}'),
(817, 'four_oh_four', '404 Error', 3, '2016-12-08 10:44:09', '2016-12-08 10:44:09', '213.225.32.208', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(818, 'four_oh_four', '404 Error', 3, '2016-12-08 10:44:10', '2016-12-08 10:44:10', '213.225.32.208', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(819, 'four_oh_four', '404 Error', 3, '2016-12-08 10:44:11', '2016-12-08 10:44:11', '213.225.32.208', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(820, 'four_oh_four', '404 Error', 3, '2016-12-08 10:44:11', '2016-12-08 10:44:11', '213.225.32.208', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(821, 'four_oh_four', '404 Error', 3, '2016-12-08 10:44:12', '2016-12-08 10:44:12', '213.225.32.208', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(822, 'four_oh_four', '404 Error', 3, '2016-12-08 10:44:13', '2016-12-08 10:44:13', '213.225.32.208', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(823, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:01', '2016-12-08 16:13:01', '54.174.57.174', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(824, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:05', '2016-12-08 16:13:05', '54.174.57.227', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(825, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:06', '2016-12-08 16:13:06', '54.174.60.183', '', 0, '/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(826, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:07', '2016-12-08 16:13:07', '54.174.60.183', '', 0, '/2016/11/agentur.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(827, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:07', '2016-12-08 16:13:07', '54.174.60.183', '', 0, '/2016/11/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(828, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:08', '2016-12-08 16:13:08', '54.174.60.183', '', 0, '/2016/11/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(829, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:08', '2016-12-08 16:13:08', '54.174.60.183', '', 0, '/2016/11/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(830, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:11', '2016-12-08 16:13:11', '54.174.57.183', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(831, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:14', '2016-12-08 16:13:14', '54.174.54.169', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(832, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:18', '2016-12-08 16:13:18', '54.174.61.194', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(833, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:19', '2016-12-08 16:13:19', '54.174.60.183', '', 0, '/home.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(834, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:19', '2016-12-08 16:13:19', '54.174.60.183', '', 0, '/kontakt.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(835, 'four_oh_four', '404 Error', 3, '2016-12-08 16:13:22', '2016-12-08 16:13:22', '54.174.60.183', '', 0, '/warwirtun.html', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(836, 'four_oh_four', '404 Error', 3, '2016-12-09 05:52:51', '2016-12-09 05:52:51', '91.223.89.100', '', 0, '/tmp/setup.php', 'http://www.google.com/', 'a:1:{s:12:"query_string";s:0:"";}'),
(837, 'four_oh_four', '404 Error', 3, '2016-12-09 10:10:06', '2016-12-09 10:10:06', '163.172.65.228', '', 0, '/2012/11/05/carl-sagan/', '', 'a:1:{s:12:"query_string";s:0:"";}'),
(838, 'backup', 'Database Backup Executed', 3, '2016-12-09 13:02:13', '2016-12-09 13:02:13', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:7:"Success";s:7:"details";s:28:"emailed to backup recipients";}}'),
(839, 'backup', 'Database Backup Executed', 3, '2016-12-09 13:02:13', '2016-12-09 13:02:13', '', '', 0, '', '', 'a:1:{i:0;a:2:{s:6:"status";s:7:"Success";s:7:"details";s:28:"emailed to backup recipients";}}'),
(840, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:33', '2016-12-09 14:26:33', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(841, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:38', '2016-12-09 14:26:38', '113.190.199.75', '', 0, '/home.html', 'http://ponta.at/', 'a:1:{s:12:"query_string";s:0:"";}'),
(842, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:39', '2016-12-09 14:26:39', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(843, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:40', '2016-12-09 14:26:40', '113.190.199.75', '', 0, '/home.html', 'http://ponta.at/home.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(844, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:41', '2016-12-09 14:26:41', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(845, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:41', '2016-12-09 14:26:41', '113.190.199.75', '', 0, '/agentur.html', 'http://ponta.at/home.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(846, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:42', '2016-12-09 14:26:42', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(847, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:46', '2016-12-09 14:26:46', '113.190.199.75', '', 0, '/agentur.html', 'http://ponta.at/', 'a:1:{s:12:"query_string";s:0:"";}'),
(848, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:47', '2016-12-09 14:26:47', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(849, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:48', '2016-12-09 14:26:48', '113.190.199.75', '', 0, '/warwirtun.html', 'http://ponta.at/agentur.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(850, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:49', '2016-12-09 14:26:49', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(851, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:50', '2016-12-09 14:26:50', '113.190.199.75', '', 0, '/kontakt.html', 'http://ponta.at/warwirtun.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(852, 'four_oh_four', '404 Error', 3, '2016-12-09 14:26:51', '2016-12-09 14:26:51', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(853, 'four_oh_four', '404 Error', 3, '2016-12-09 14:35:59', '2016-12-09 14:35:59', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(854, 'four_oh_four', '404 Error', 3, '2016-12-09 14:41:59', '2016-12-09 14:41:59', '113.190.199.75', '', 0, '/home.html', 'http://ponta.at/', 'a:1:{s:12:"query_string";s:0:"";}'),
(855, 'four_oh_four', '404 Error', 3, '2016-12-09 14:42:00', '2016-12-09 14:42:00', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}'),
(856, 'four_oh_four', '404 Error', 3, '2016-12-09 14:42:04', '2016-12-09 14:42:04', '113.190.199.75', '', 0, '/agentur.html', 'http://ponta.at/home.html', 'a:1:{s:12:"query_string";s:0:"";}'),
(857, 'four_oh_four', '404 Error', 3, '2016-12-09 14:42:05', '2016-12-09 14:42:05', '113.190.199.75', '', 0, '/wp-content/themes/ponta.at/img/ticks.png', 'http://ponta.at/wp-content/themes/ponta.at/layouts/layout.css?ver=1.1', 'a:1:{s:12:"query_string";s:0:"";}');

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_itsec_temp`
--

CREATE TABLE `ponta_at_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(20) NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_itsec_temp`
--

INSERT INTO `ponta_at_itsec_temp` (`temp_id`, `temp_type`, `temp_date`, `temp_date_gmt`, `temp_host`, `temp_user`, `temp_username`) VALUES
(367, 'four_oh_four', '2016-12-09 05:52:51', '2016-12-09 05:52:51', '91.223.89.100', NULL, NULL),
(361, 'four_oh_four', '2016-12-08 16:13:07', '2016-12-08 16:13:07', '54.174.60.183', NULL, NULL),
(362, 'four_oh_four', '2016-12-08 16:13:08', '2016-12-08 16:13:08', '54.174.60.183', NULL, NULL),
(363, 'four_oh_four', '2016-12-08 16:13:08', '2016-12-08 16:13:08', '54.174.60.183', NULL, NULL),
(376, 'four_oh_four', '2016-12-09 14:42:04', '2016-12-09 14:42:04', '113.190.199.75', NULL, NULL),
(375, 'four_oh_four', '2016-12-09 14:41:59', '2016-12-09 14:41:59', '113.190.199.75', NULL, NULL),
(359, 'four_oh_four', '2016-12-08 16:13:06', '2016-12-08 16:13:06', '54.174.60.183', NULL, NULL),
(374, 'four_oh_four', '2016-12-09 14:26:50', '2016-12-09 14:26:50', '113.190.199.75', NULL, NULL),
(373, 'four_oh_four', '2016-12-09 14:26:48', '2016-12-09 14:26:48', '113.190.199.75', NULL, NULL),
(372, 'four_oh_four', '2016-12-09 14:26:46', '2016-12-09 14:26:46', '113.190.199.75', NULL, NULL),
(371, 'four_oh_four', '2016-12-09 14:26:41', '2016-12-09 14:26:41', '113.190.199.75', NULL, NULL),
(370, 'four_oh_four', '2016-12-09 14:26:40', '2016-12-09 14:26:40', '113.190.199.75', NULL, NULL),
(369, 'four_oh_four', '2016-12-09 14:26:38', '2016-12-09 14:26:38', '113.190.199.75', NULL, NULL),
(368, 'four_oh_four', '2016-12-09 10:10:06', '2016-12-09 10:10:06', '163.172.65.228', NULL, NULL),
(364, 'four_oh_four', '2016-12-08 16:13:19', '2016-12-08 16:13:19', '54.174.60.183', NULL, NULL),
(365, 'four_oh_four', '2016-12-08 16:13:19', '2016-12-08 16:13:19', '54.174.60.183', NULL, NULL),
(366, 'four_oh_four', '2016-12-08 16:13:22', '2016-12-08 16:13:22', '54.174.60.183', NULL, NULL),
(360, 'four_oh_four', '2016-12-08 16:13:07', '2016-12-08 16:13:07', '54.174.60.183', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_links`
--

CREATE TABLE `ponta_at_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_options`
--

CREATE TABLE `ponta_at_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_options`
--

INSERT INTO `ponta_at_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://ponta.at', 'yes'),
(2, 'home', 'http://ponta.at', 'yes'),
(3, 'blogname', 'Ponta.at', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'TNQ.e250@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:107:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:12:"portfolio/?$";s:29:"index.php?post_type=portfolio";s:42:"portfolio/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:37:"portfolio/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?post_type=portfolio&feed=$matches[1]";s:29:"portfolio/page/([0-9]{1,})/?$";s:47:"index.php?post_type=portfolio&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"portfolio/.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"portfolio/.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"portfolio/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"portfolio/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"portfolio/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:41:"portfolio/.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:24:"portfolio/(.+?)/embed/?$";s:42:"index.php?portfolio=$matches[1]&embed=true";s:28:"portfolio/(.+?)/trackback/?$";s:36:"index.php?portfolio=$matches[1]&tb=1";s:48:"portfolio/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:43:"portfolio/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:48:"index.php?portfolio=$matches[1]&feed=$matches[2]";s:36:"portfolio/(.+?)/page/?([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&paged=$matches[2]";s:43:"portfolio/(.+?)/comment-page-([0-9]{1,})/?$";s:49:"index.php?portfolio=$matches[1]&cpage=$matches[2]";s:32:"portfolio/(.+?)(?:/([0-9]+))?/?$";s:48:"index.php?portfolio=$matches[1]&page=$matches[2]";s:59:"portfolio_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?portfolio_category=$matches[1]&feed=$matches[2]";s:54:"portfolio_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?portfolio_category=$matches[1]&feed=$matches[2]";s:35:"portfolio_category/([^/]+)/embed/?$";s:51:"index.php?portfolio_category=$matches[1]&embed=true";s:47:"portfolio_category/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?portfolio_category=$matches[1]&paged=$matches[2]";s:29:"portfolio_category/([^/]+)/?$";s:40:"index.php?portfolio_category=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:40:"index.php?&page_id=107&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:27:"acf-gallery/acf-gallery.php";i:1;s:41:"acf-link-picker-field/acf-link_picker.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:41:"better-wp-security/better-wp-security.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'ponta.at', 'yes'),
(41, 'stylesheet', 'ponta.at', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '37965', 'yes'),
(49, 'uploads_use_yearmonth_folders', '0', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:41:"better-wp-security/better-wp-security.php";a:2:{i:0;s:10:"ITSEC_Core";i:1;s:12:"on_uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '107', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '37965', 'yes'),
(92, 'ponta_at_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(160, 'theme_mods_twentysixteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1479982816;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(161, 'current_theme', 'Ponta.at', 'yes'),
(162, 'theme_mods_ponta.at', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:7:"primary";i:9;}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(99, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'cron', 'a:5:{i:1481310324;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1481353547;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1481355217;a:2:{s:16:"itsec_purge_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:20:"itsec_purge_lockouts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1481366945;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(116, 'can_compress_scripts', '0', 'no'),
(107, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:2:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.7";s:7:"version";s:3:"4.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}i:1;O:8:"stdClass":11:{s:8:"response";s:10:"autoupdate";s:8:"download";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:57:"https://downloads.wordpress.org/release/wordpress-4.7.zip";s:10:"no_content";s:68:"https://downloads.wordpress.org/release/wordpress-4.7-no-content.zip";s:11:"new_bundled";s:69:"https://downloads.wordpress.org/release/wordpress-4.7-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:3:"4.7";s:7:"version";s:3:"4.7";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";s:9:"new_files";s:1:"1";}}s:12:"last_checked";i:1481275947;s:15:"version_checked";s:5:"4.6.1";s:12:"translations";a:0:{}}', 'no'),
(541, '_site_transient_timeout_theme_roots', '1481297554', 'no'),
(542, '_site_transient_theme_roots', 'a:4:{s:8:"ponta.at";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no'),
(113, '_site_transient_timeout_browser_7ceda488817006bc137257b07a98a431', '1480575948', 'no'),
(114, '_site_transient_browser_7ceda488817006bc137257b07a98a431', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.98";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(538, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(527, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1481294965', 'no'),
(525, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1481338165', 'no'),
(526, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1481338165', 'no'),
(531, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1481294966', 'no'),
(534, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1481338166', 'no'),
(535, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2016/12/vaughan/''>WordPress 4.7 “Vaughan”</a> <span class="rss-date">December 6, 2016</span><div class="rssSummary">Version 4.7 of WordPress, named “Vaughan” in honor of legendary jazz vocalist Sarah &quot;Sassy&quot; Vaughan, is available for download or update in your WordPress dashboard. New features in 4.7 help you get your site set up the way you want it.</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/wpweekly-episode-255-all-about-the-customizer''>WPTavern: WPWeekly Episode 255 – All About the Customizer</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wordcamp-europe-calls-for-host-city-applications-for-2018''>WPTavern: WordCamp Europe Calls for Host City Applications for 2018</a></li><li><a class=''rsswidget'' href=''https://poststatus.com/photos-post-status-publish-wordcamp-us-2016/''>Post Status: Photos from Post Status Publish and WordCamp US 2016</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> Google Analytics Dashboard for WP&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=google-analytics-dashboard-for-wp&amp;_wpnonce=a42db878ec&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install Google Analytics Dashboard for WP">(Install)</a></li></ul></div>', 'no'),
(459, '_site_transient_timeout_available_translations', '1480981611', 'no');
INSERT INTO `ponta_at_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(460, '_site_transient_available_translations', 'a:87:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-05 15:46:21";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-21 10:19:10";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 18:36:09";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 08:38:56";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-11 22:42:10";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-24 13:13:07";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 16:53:20";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-19 23:16:37";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-20 10:29:54";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.4.3";s:7:"updated";s:19:"2016-02-16 15:34:57";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.3/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-11 18:32:36";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.4.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-01 16:18:09";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-29 14:03:59";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:56:13";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-05 15:05:02";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 12:59:43";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.6.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-03 11:40:32";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-09 20:42:31";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 02:18:44";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-20 07:14:07";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 11:54:12";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 22:36:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 23:19:29";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-04 22:04:52";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 15:07:52";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 17:56:31";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-31 08:03:58";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-19 13:48:04";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 12:34:44";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-17 22:11:44";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-22 16:41:36";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-27 18:10:49";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-23 20:20:40";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-15 18:30:48";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-10 18:42:25";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-04 18:29:52";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-02 11:49:52";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-21 15:44:17";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-08 11:09:06";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-25 19:56:49";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-03 13:43:01";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-07 15:12:28";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-29 19:15:19";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2016-02-04 07:13:54";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 05:34:53";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-29 11:28:08";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-02 08:41:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-01 15:23:06";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-29 11:51:34";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 07:18:31";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-11 21:29:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-26 17:38:44";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-05-12 13:55:28";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-13 20:38:52";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 14:18:43";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.13/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 13:09:49";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-14 13:24:10";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-26 10:08:38";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-28 08:58:28";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-23 13:45:11";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-22 09:54:16";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.13";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.13/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-26 20:21:25";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-30 11:15:11";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-21 00:44:33";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-30 19:40:04";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-13 10:00:06";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-11-04 18:38:43";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-14 07:00:01";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-12 16:41:17";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-01 10:58:06";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.6.1/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-12 07:04:13";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-11-27 15:51:36";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-16 10:50:15";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-01 16:07:46";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-10-18 10:43:17";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.6.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-09 01:01:25";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.4.2/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-08-18 13:53:15";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.6.1";s:7:"updated";s:19:"2016-12-05 11:58:02";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.6.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.5.4";s:7:"updated";s:19:"2016-04-17 03:29:01";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.5.4/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'no'),
(530, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1481338166', 'no'),
(528, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1481338166', 'no');
INSERT INTO `ponta_at_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(529, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Dec 2016 14:22:22 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Secure your website with the most comprehensive WordPress security plugin. Firewall, malware scan, blocking, live traffic, login security &#38; more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"Google Analytics by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:113:"Connect Google Analytics with WordPress by adding your Google Analytics tracking code. Get the stats that matter.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:98:"Akismet checks your comments against the Akismet Web service to see if they look like spam or not.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Search Engine (SEO) &#38; Performance Optimization (WPO) via caching. Integrated caching: CDN, Minify, Page, Object, Fragment, Database support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"NextGEN Gallery - WordPress Gallery Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:121:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 16 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"One of the most downloaded WordPress plugins (over 30 million downloads since 2007). Use All in One SEO Pack to optimize your site for Search Engines.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:114:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:107:"Increase your traffic, view your stats, speed up your site, and protect yourself from hackers with Jetpack.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:30:"Clef Two-Factor Authentication";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:48:"https://wordpress.org/plugins/wpclef/#post-47509";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 27 Dec 2012 01:25:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"47509@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:139:"Modern two-factor that people love to use: strong authentication without passwords or tokens; single sign on/off; magical login experience.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Dave Ross";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:127:"Displays Google Analytics reports in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly. Provides tool t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"SiteOrigin Widgets Bundle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/so-widgets-bundle/#post-67824";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 May 2014 14:27:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"67824@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"A collection of all widgets, neatly bundled into a single plugin. It&#039;s also a framework to code your own widgets on top of.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Fri, 09 Dec 2016 14:51:36 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Fri, 09 Dec 2016 14:57:22 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Fri, 09 Dec 2016 14:22:22 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130910210210";}', 'no'),
(532, '_transient_timeout_plugin_slugs', '1481381366', 'no'),
(533, '_transient_plugin_slugs', 'a:5:{i:0;s:27:"acf-gallery/acf-gallery.php";i:1;s:41:"acf-link-picker-field/acf-link_picker.php";i:2;s:29:"acf-repeater/acf-repeater.php";i:3;s:34:"advanced-custom-fields-pro/acf.php";i:4;s:42:"better-wp-security1/better-wp-security.php";}', 'no'),
(524, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1481294963', 'no'),
(522, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1481338163', 'no'),
(523, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1481338163', 'no'),
(498, '_transient_timeout_acf_get_remote_plugin_info', '1481280225', 'no'),
(132, 'recently_activated', 'a:0:{}', 'yes'),
(133, 'acf_version', '5.4.8', 'yes'),
(135, '_transient_twentysixteen_categories', '1', 'yes'),
(227, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1480095247', 'no');
INSERT INTO `ponta_at_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(228, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"6110";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3747";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3738";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3244";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2869";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2546";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2229";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2155";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2089";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"2044";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"2025";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1965";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1937";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1756";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1653";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1625";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1469";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1380";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1299";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1296";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1152";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1136";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:4:"1065";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:4:"1027";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1017";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"969";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"964";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"963";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"932";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"929";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"916";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"861";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"851";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"841";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"821";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"788";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"783";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"783";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"770";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"759";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"749";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"743";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"736";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"731";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"725";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"718";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"718";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"710";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"701";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"656";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"652";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"640";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"635";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"629";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"616";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"615";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"614";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"612";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"601";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"585";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"585";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"584";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"580";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"563";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"553";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"549";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"546";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"540";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"540";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"538";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"534";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"522";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"519";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"509";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"507";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"496";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"484";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"471";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"469";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"467";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"462";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"459";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"448";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"447";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"443";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"438";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"436";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"430";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"427";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"426";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"425";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"424";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"422";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"422";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"417";}s:16:"custom-post-type";a:3:{s:4:"name";s:16:"custom post type";s:4:"slug";s:16:"custom-post-type";s:5:"count";s:3:"414";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"413";}}', 'no'),
(520, '_site_transient_timeout_browser_e3e8e563807f1bb7abe3313c26522205', '1481899760', 'no'),
(241, '_site_transient_timeout_browser_c92b2a9ea32e65bfa298975a276bf014', '1480690875', 'no'),
(242, '_site_transient_browser_c92b2a9ea32e65bfa298975a276bf014', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.3.2743.134";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(511, '_site_transient_timeout_itsec_wp_upload_dir', '1481381029', 'no'),
(512, '_site_transient_itsec_wp_upload_dir', 'a:6:{s:4:"path";s:40:"D:\\xampp\\htdocs\\ponta/wp-content/uploads";s:3:"url";s:41:"http://localhost/ponta/wp-content/uploads";s:6:"subdir";s:0:"";s:7:"basedir";s:40:"D:\\xampp\\htdocs\\ponta/wp-content/uploads";s:7:"baseurl";s:41:"http://localhost/ponta/wp-content/uploads";s:5:"error";b:0;}', 'no'),
(144, 'itsec_data', 'a:5:{s:5:"build";i:4044;s:20:"activation_timestamp";i:1479972817;s:17:"already_supported";b:0;s:15:"setup_completed";b:0;s:18:"tooltips_dismissed";b:0;}', 'no'),
(145, 'itsec_free_just_activated', '1', 'no'),
(146, 'itsec_malware', 'a:2:{s:7:"enabled";b:0;s:7:"api_key";s:0:"";}', 'no'),
(147, 'itsec_initials', 'a:0:{}', 'no'),
(148, 'itsec_api_nag', '1', 'no'),
(149, 'itsec_global', 'a:24:{s:18:"notification_email";a:1:{i:0;s:18:"TNQ.e250@gmail.com";}s:12:"backup_email";a:1:{i:0;s:18:"TNQ.e250@gmail.com";}s:15:"lockout_message";s:5:"error";s:20:"user_lockout_message";s:64:"You have been locked out due to too many invalid login attempts.";s:25:"community_lockout_message";s:77:"Your IP address has been flagged as a threat by the iThemes Security network.";s:9:"blacklist";b:1;s:15:"blacklist_count";i:3;s:16:"blacklist_period";i:7;s:19:"email_notifications";b:1;s:14:"lockout_period";i:15;s:18:"lockout_white_list";a:0:{}s:12:"log_rotation";i:14;s:8:"log_type";i:0;s:12:"log_location";s:70:"/var/www/web17/html/ponta-new/wp-content/uploads/ithemes-security/logs";s:14:"allow_tracking";b:0;s:11:"write_files";b:0;s:10:"nginx_file";s:40:"/var/www/web17/html/ponta-new/nginx.conf";s:24:"infinitewp_compatibility";b:0;s:11:"did_upgrade";b:0;s:9:"lock_file";b:0;s:12:"digest_email";b:0;s:14:"proxy_override";b:0;s:14:"hide_admin_bar";b:0;s:8:"log_info";s:39:"ponta-at-XTcYiNI8XfcZhQIWuFttKA38wPx7pq";}', 'no'),
(150, 'itsec_temp_whitelist_ip', 'a:1:{s:14:"213.225.32.208";i:1481316374;}', 'no'),
(152, 'itsec-storage', 'a:5:{s:6:"backup";a:9:{s:9:"all_sites";b:0;s:6:"method";i:1;s:8:"location";s:73:"/var/www/web17/html/ponta-new/wp-content/uploads/ithemes-security/backups";s:6:"retain";i:0;s:3:"zip";b:1;s:7:"exclude";a:3:{i:0;s:9:"itsec_log";i:1;s:10:"itsec_temp";i:2;s:14:"itsec_lockouts";}s:7:"enabled";b:0;s:8:"interval";i:3;s:8:"last_run";i:1481288533;}s:6:"global";a:27:{s:18:"notification_email";a:1:{i:0;s:18:"TNQ.e250@gmail.com";}s:12:"backup_email";a:1:{i:0;s:18:"TNQ.e250@gmail.com";}s:15:"lockout_message";s:5:"error";s:20:"user_lockout_message";s:64:"You have been locked out due to too many invalid login attempts.";s:25:"community_lockout_message";s:32:"Your IP address has been flagged";s:9:"blacklist";b:1;s:15:"blacklist_count";i:3;s:16:"blacklist_period";i:7;s:19:"email_notifications";b:1;s:14:"lockout_period";i:15;s:18:"lockout_white_list";a:1:{i:1;s:13:"113.160.54.50";}s:12:"log_rotation";i:14;s:8:"log_type";s:8:"database";s:12:"log_location";s:70:"/var/www/web17/html/ponta-new/wp-content/uploads/ithemes-security/logs";s:8:"log_info";s:39:"ponta-at-UpMIFrgNUkKp1IMsVQiWvyZnuofHVc";s:14:"allow_tracking";b:0;s:11:"write_files";b:1;s:10:"nginx_file";s:40:"/var/www/web17/html/ponta-new/nginx.conf";s:24:"infinitewp_compatibility";b:0;s:11:"did_upgrade";b:0;s:9:"lock_file";b:0;s:12:"digest_email";b:0;s:14:"proxy_override";b:0;s:14:"hide_admin_bar";b:0;s:16:"show_error_codes";b:0;s:25:"show_new_dashboard_notice";b:1;s:19:"show_security_check";b:0;}s:19:"network-brute-force";a:5:{s:7:"api_key";s:32:"760KyL2U8Eq8vptao9RLEsECOccp6G6g";s:10:"api_secret";s:128:"4Eqi3584S8twF3QXOfo68EFuhsdCcTIREX2tmeW7c6y39HU1P84PNZVm4X9K2EkI98xC0569Q7cNe9K0GBEFIKizVseBUbT1qVfOH0Wlj4ZD6HbwEhqLmh93k4e69Ox9";s:10:"enable_ban";b:1;s:13:"updates_optin";b:1;s:7:"api_nag";b:0;}s:12:"hide-backend";a:6:{s:7:"enabled";b:1;s:4:"slug";s:10:"pontaadmin";s:12:"theme_compat";b:1;s:17:"theme_compat_slug";s:3:"404";s:16:"post_logout_slug";s:0:"";s:8:"register";s:15:"wp-register-php";}s:16:"wordpress-tweaks";a:11:{s:18:"wlwmanifest_header";b:0;s:14:"edituri_header";b:0;s:12:"comment_spam";b:0;s:11:"file_editor";b:1;s:14:"disable_xmlrpc";i:0;s:22:"allow_xmlrpc_multiauth";b:0;s:11:"safe_jquery";b:0;s:12:"login_errors";b:0;s:21:"force_unique_nicename";b:0;s:27:"disable_unused_author_pages";b:0;s:14:"jquery_version";s:6:"1.12.4";}}', 'no'),
(153, 'itsec_active_modules', 'a:7:{s:9:"ban-users";b:1;s:11:"brute-force";b:1;s:6:"backup";b:1;s:19:"network-brute-force";b:1;s:16:"strong-passwords";b:1;s:16:"wordpress-tweaks";b:1;s:13:"404-detection";b:1;}', 'no'),
(171, '_site_transient_timeout_browser_0f1c79818040d6247bc7af177e1dabb8', '1480591543', 'no'),
(172, '_site_transient_browser_0f1c79818040d6247bc7af177e1dabb8', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(424, 'portfolio_category_children', 'a:1:{i:2;a:1:{i:0;i:8;}}', 'yes'),
(399, '_site_transient_timeout_browser_6220472ec1cbd25bca94ccda8e719a92', '1481478839', 'no'),
(400, '_site_transient_browser_6220472ec1cbd25bca94ccda8e719a92', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"54.0.2840.99";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(268, 'category_children', 'a:0:{}', 'yes'),
(521, '_site_transient_browser_e3e8e563807f1bb7abe3313c26522205', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"52.3.2743.138";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(499, '_transient_acf_get_remote_plugin_info', 'a:12:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:5:"5.5.2";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.7.0";s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:9:"changelog";s:229:"<h4>5.5.2</h4><ul><li>Tab field: Fixed bug causing value loading issues for field''s with the same name</li><li>Repeater field: Fixed bug in <code>collapsed</code> setting where field key was shown instead of field label</li></ul>";s:14:"upgrade_notice";s:0:"";}', 'no'),
(517, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481295756;s:7:"checked";a:4:{s:8:"ponta.at";s:5:"1.0.0";s:13:"twentyfifteen";s:3:"1.6";s:14:"twentyfourteen";s:3:"1.8";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:2:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:59:"https://downloads.wordpress.org/theme/twentyfifteen.1.7.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:60:"https://downloads.wordpress.org/theme/twentyfourteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'no'),
(518, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1481275950;s:8:"response";a:2:{s:41:"better-wp-security/better-wp-security.php";O:8:"stdClass":9:{s:2:"id";s:5:"18308";s:4:"slug";s:18:"better-wp-security";s:6:"plugin";s:41:"better-wp-security/better-wp-security.php";s:11:"new_version";s:5:"5.9.0";s:3:"url";s:49:"https://wordpress.org/plugins/better-wp-security/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/better-wp-security.5.9.0.zip";s:14:"upgrade_notice";s:93:"Version 5.9.0 adds a new feature to block REST API requests. It is recommended for all users.";s:6:"tested";s:3:"4.7";s:13:"compatibility";O:8:"stdClass":1:{s:6:"scalar";O:8:"stdClass":1:{s:6:"scalar";b:0;}}}s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:5:"5.5.2";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:1:{s:41:"acf-link-picker-field/acf-link_picker.php";O:8:"stdClass":6:{s:2:"id";s:5:"64298";s:4:"slug";s:21:"acf-link-picker-field";s:6:"plugin";s:41:"acf-link-picker-field/acf-link_picker.php";s:11:"new_version";s:5:"1.2.8";s:3:"url";s:52:"https://wordpress.org/plugins/acf-link-picker-field/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/acf-link-picker-field.zip";}}}', 'no'),
(563, '_transient_is_multi_author', '0', 'yes'),
(564, '_transient_ponta_at_categories', '1', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_postmeta`
--

CREATE TABLE `ponta_at_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_postmeta`
--

INSERT INTO `ponta_at_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1480095108:1'),
(4, 10, '_wp_attached_file', 'GOPR2793.jpg'),
(5, 10, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2592;s:6:"height";i:1944;s:4:"file";s:12:"GOPR2793.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"GOPR2793-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"GOPR2793-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"GOPR2793-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"GOPR2793-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:0:"";s:6:"camera";s:4:"HERO";s:7:"caption";s:12:"DCIM101GOPRO";s:17:"created_timestamp";s:10:"1391504444";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"5";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:18:"0.0066800267201069";s:5:"title";s:12:"DCIM101GOPRO";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(6, 9, '_edit_last', '1'),
(7, 9, 'item_0_title', 'Test 1'),
(8, 9, '_item_0_title', 'field_5836c81ff2660'),
(9, 9, 'item_0_image', 'a:1:{i:0;s:2:"10";}'),
(10, 9, '_item_0_image', 'field_5836c84ef2661'),
(11, 9, 'item_0_link', ''),
(12, 9, '_item_0_link', 'field_5836c894f2662'),
(13, 9, 'item', '1'),
(14, 9, '_item', 'field_5836c5bef265f'),
(15, 11, 'item_0_title', 'Test 1'),
(16, 11, '_item_0_title', 'field_5836c81ff2660'),
(17, 11, 'item_0_image', 'a:1:{i:0;s:2:"10";}'),
(18, 11, '_item_0_image', 'field_5836c84ef2661'),
(19, 11, 'item_0_link', ''),
(20, 11, '_item_0_link', 'field_5836c894f2662'),
(21, 11, 'item', '1'),
(22, 11, '_item', 'field_5836c5bef265f'),
(23, 9, '_edit_lock', '1480267487:1'),
(24, 24, '_edit_last', '1'),
(25, 24, '_edit_lock', '1480084909:1'),
(26, 9, 'hover_image_portfolio', '10'),
(27, 9, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(28, 9, 'gallery_portfolio', 'a:1:{i:0;s:2:"10";}'),
(29, 9, '_gallery_portfolio', 'field_58384e760cf96'),
(30, 9, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(31, 9, '_link', 'field_58384eb40cf97'),
(32, 9, 'width', '1'),
(33, 9, '_width', 'field_58384eda0cf98'),
(34, 31, 'item_0_title', 'Test 1'),
(35, 31, '_item_0_title', 'field_5836c81ff2660'),
(36, 31, 'item_0_image', 'a:1:{i:0;s:2:"10";}'),
(37, 31, '_item_0_image', 'field_5836c84ef2661'),
(38, 31, 'item_0_link', ''),
(39, 31, '_item_0_link', 'field_5836c894f2662'),
(40, 31, 'item', '1'),
(41, 31, '_item', 'field_5836c5bef265f'),
(42, 31, 'hover_image_portfolio', '10'),
(43, 31, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(44, 31, 'gallery_portfolio', 'a:1:{i:0;s:2:"10";}'),
(45, 31, '_gallery_portfolio', 'field_58384e760cf96'),
(46, 31, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(47, 31, '_link', 'field_58384eb40cf97'),
(48, 31, 'width', '1'),
(49, 31, '_width', 'field_58384eda0cf98'),
(50, 9, '_thumbnail_id', '32'),
(51, 32, '_wp_attached_file', '1.jpg'),
(52, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:5:"1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(53, 34, '_edit_last', '1'),
(54, 34, '_edit_lock', '1480091377:1'),
(55, 35, '_wp_attached_file', '6769ef5117965.56021440ed002.jpg'),
(56, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:595;s:6:"height";i:595;s:4:"file";s:31:"6769ef5117965.56021440ed002.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"6769ef5117965.56021440ed002-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:39:"6769ef5117965.56021440ed002-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(57, 36, '_wp_attached_file', '1-1.jpg'),
(58, 36, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:7:"1-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(59, 37, '_wp_attached_file', '2.jpg'),
(60, 37, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:5:"2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(61, 38, '_wp_attached_file', '3.jpg'),
(62, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:5:"3.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"3-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(63, 34, '_thumbnail_id', '35'),
(64, 34, 'hover_image_portfolio', '35'),
(65, 34, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(66, 34, 'gallery_portfolio', 'a:3:{i:0;s:2:"36";i:1;s:2:"37";i:2;s:2:"38";}'),
(67, 34, '_gallery_portfolio', 'field_58384e760cf96'),
(68, 34, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(69, 34, '_link', 'field_58384eb40cf97'),
(70, 34, 'width', '1'),
(71, 34, '_width', 'field_58384eda0cf98'),
(72, 39, 'hover_image_portfolio', '35'),
(73, 39, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(74, 39, 'gallery_portfolio', 'a:3:{i:0;s:2:"36";i:1;s:2:"37";i:2;s:2:"38";}'),
(75, 39, '_gallery_portfolio', 'field_58384e760cf96'),
(76, 39, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(77, 39, '_link', 'field_58384eb40cf97'),
(78, 39, 'width', '1'),
(79, 39, '_width', 'field_58384eda0cf98'),
(80, 40, '_edit_last', '1'),
(81, 40, '_edit_lock', '1480091369:1'),
(82, 41, '_wp_attached_file', 'miller-branding-cd-design.jpg'),
(83, 41, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1000;s:6:"height";i:695;s:4:"file";s:29:"miller-branding-cd-design.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"miller-branding-cd-design-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:37:"miller-branding-cd-design-300x209.jpg";s:5:"width";i:300;s:6:"height";i:209;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:37:"miller-branding-cd-design-768x534.jpg";s:5:"width";i:768;s:6:"height";i:534;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(84, 40, 'hover_image_portfolio', '41'),
(85, 40, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(86, 40, 'gallery_portfolio', 'a:6:{i:0;s:2:"41";i:1;s:2:"38";i:2;s:2:"37";i:3;s:2:"36";i:4;s:2:"35";i:5;s:2:"32";}'),
(87, 40, '_gallery_portfolio', 'field_58384e760cf96'),
(88, 40, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(89, 40, '_link', 'field_58384eb40cf97'),
(90, 40, 'width', '1'),
(91, 40, '_width', 'field_58384eda0cf98'),
(92, 42, 'hover_image_portfolio', '41'),
(93, 42, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(94, 42, 'gallery_portfolio', 'a:6:{i:0;s:2:"41";i:1;s:2:"38";i:2;s:2:"37";i:3;s:2:"36";i:4;s:2:"35";i:5;s:2:"32";}'),
(95, 42, '_gallery_portfolio', 'field_58384e760cf96'),
(96, 42, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(97, 42, '_link', 'field_58384eb40cf97'),
(98, 42, 'width', '1'),
(99, 42, '_width', 'field_58384eda0cf98'),
(100, 40, '_thumbnail_id', '41'),
(101, 45, '_edit_last', '1'),
(102, 45, '_edit_lock', '1480091418:1'),
(103, 46, '_wp_attached_file', '11a78750cf119d621005ae5cfb2b392c.jpg'),
(104, 46, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:667;s:4:"file";s:36:"11a78750cf119d621005ae5cfb2b392c.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:44:"11a78750cf119d621005ae5cfb2b392c-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:44:"11a78750cf119d621005ae5cfb2b392c-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(105, 45, '_thumbnail_id', '46'),
(106, 45, 'hover_image_portfolio', '46'),
(107, 45, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(108, 45, 'gallery_portfolio', 'a:5:{i:0;s:2:"46";i:1;s:2:"32";i:2;s:2:"36";i:3;s:2:"38";i:4;s:2:"41";}'),
(109, 45, '_gallery_portfolio', 'field_58384e760cf96'),
(110, 45, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(111, 45, '_link', 'field_58384eb40cf97'),
(112, 45, 'width', '1'),
(113, 45, '_width', 'field_58384eda0cf98'),
(114, 47, 'hover_image_portfolio', '46'),
(115, 47, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(116, 47, 'gallery_portfolio', 'a:5:{i:0;s:2:"46";i:1;s:2:"32";i:2;s:2:"36";i:3;s:2:"38";i:4;s:2:"41";}'),
(117, 47, '_gallery_portfolio', 'field_58384e760cf96'),
(118, 47, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(119, 47, '_link', 'field_58384eb40cf97'),
(120, 47, 'width', '1'),
(121, 47, '_width', 'field_58384eda0cf98'),
(122, 49, '_wp_attached_file', '7rifLeOl.jpg'),
(123, 49, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:898;s:6:"height";i:898;s:4:"file";s:12:"7rifLeOl.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"7rifLeOl-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"7rifLeOl-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"7rifLeOl-768x768.jpg";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(124, 48, '_edit_last', '1'),
(125, 48, '_thumbnail_id', '49'),
(126, 48, 'hover_image_portfolio', '49'),
(127, 48, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(128, 48, 'gallery_portfolio', 'a:5:{i:0;s:2:"49";i:1;s:2:"46";i:2;s:2:"41";i:3;s:2:"38";i:4;s:2:"37";}'),
(129, 48, '_gallery_portfolio', 'field_58384e760cf96'),
(130, 48, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(131, 48, '_link', 'field_58384eb40cf97'),
(132, 48, 'width', '1'),
(133, 48, '_width', 'field_58384eda0cf98'),
(134, 50, 'hover_image_portfolio', '49'),
(135, 50, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(136, 50, 'gallery_portfolio', 'a:5:{i:0;s:2:"49";i:1;s:2:"46";i:2;s:2:"41";i:3;s:2:"38";i:4;s:2:"37";}'),
(137, 50, '_gallery_portfolio', 'field_58384e760cf96'),
(138, 50, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(139, 50, '_link', 'field_58384eb40cf97'),
(140, 50, 'width', '1'),
(141, 50, '_width', 'field_58384eda0cf98'),
(142, 48, '_edit_lock', '1480091451:1'),
(143, 51, '_edit_last', '1'),
(144, 51, '_edit_lock', '1480091537:1'),
(145, 52, '_wp_attached_file', '2-1.jpg'),
(146, 52, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:7:"2-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"2-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(147, 53, '_wp_attached_file', '1-2.jpg'),
(148, 53, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:7:"1-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"1-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"1-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(149, 54, '_wp_attached_file', '2-2.jpg'),
(150, 54, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:7:"2-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"2-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"2-2-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(151, 55, '_wp_attached_file', '3-1.jpg'),
(152, 55, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:7:"3-1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:15:"3-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"3-1-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(153, 56, '_wp_attached_file', '4.jpg'),
(154, 56, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:5:"4.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"4-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(155, 57, '_wp_attached_file', '5.jpg'),
(156, 57, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:300;s:4:"file";s:5:"5.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:13:"5-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:13:"5-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(157, 51, '_thumbnail_id', '52'),
(158, 51, 'hover_image_portfolio', '52'),
(159, 51, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(160, 51, 'gallery_portfolio', 'a:5:{i:0;s:2:"53";i:1;s:2:"54";i:2;s:2:"55";i:3;s:2:"56";i:4;s:2:"57";}'),
(161, 51, '_gallery_portfolio', 'field_58384e760cf96'),
(162, 51, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(163, 51, '_link', 'field_58384eb40cf97'),
(164, 51, 'width', '1'),
(165, 51, '_width', 'field_58384eda0cf98'),
(166, 58, 'hover_image_portfolio', '52'),
(167, 58, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(168, 58, 'gallery_portfolio', 'a:5:{i:0;s:2:"53";i:1;s:2:"54";i:2;s:2:"55";i:3;s:2:"56";i:4;s:2:"57";}'),
(169, 58, '_gallery_portfolio', 'field_58384e760cf96'),
(170, 58, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(171, 58, '_link', 'field_58384eb40cf97'),
(172, 58, 'width', '1'),
(173, 58, '_width', 'field_58384eda0cf98'),
(174, 59, '_edit_last', '1'),
(175, 59, '_edit_lock', '1480092221:1'),
(176, 60, '_wp_attached_file', 'flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530.jpg'),
(177, 60, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:1390;s:4:"file";s:99:"flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:107:"flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:107:"flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530-281x300.jpg";s:5:"width";i:281;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:107:"flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530-768x821.jpg";s:5:"width";i:768;s:6:"height";i:821;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:108:"flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530-958x1024.jpg";s:5:"width";i:958;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:30:"(c) Serkorkin | Dreamstime.com";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(178, 59, '_thumbnail_id', '60'),
(179, 59, 'hover_image_portfolio', '60'),
(180, 59, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(181, 59, 'gallery_portfolio', 'a:7:{i:0;s:2:"60";i:1;s:2:"57";i:2;s:2:"56";i:3;s:2:"55";i:4;s:2:"54";i:5;s:2:"53";i:6;s:2:"52";}'),
(182, 59, '_gallery_portfolio', 'field_58384e760cf96'),
(183, 59, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(184, 59, '_link', 'field_58384eb40cf97'),
(185, 59, 'width', '1'),
(186, 59, '_width', 'field_58384eda0cf98'),
(187, 61, 'hover_image_portfolio', '60'),
(188, 61, '_hover_image_portfolio', 'field_58384dac3f3c0'),
(189, 61, 'gallery_portfolio', 'a:7:{i:0;s:2:"60";i:1;s:2:"57";i:2;s:2:"56";i:3;s:2:"55";i:4;s:2:"54";i:5;s:2:"53";i:6;s:2:"52";}'),
(190, 61, '_gallery_portfolio', 'field_58384e760cf96'),
(191, 61, 'link', 'a:4:{s:3:"url";s:0:"";s:5:"title";s:0:"";s:6:"target";s:0:"";s:6:"postid";s:0:"";}'),
(192, 61, '_link', 'field_58384eb40cf97'),
(193, 61, 'width', '1'),
(194, 61, '_width', 'field_58384eda0cf98'),
(195, 2, '_edit_lock', '1480267475:1'),
(196, 63, '_edit_last', '1'),
(197, 63, '_edit_lock', '1480880159:1'),
(198, 72, '_wp_attached_file', 'banner.jpg'),
(199, 72, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1887;s:6:"height";i:294;s:4:"file";s:10:"banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"banner-300x47.jpg";s:5:"width";i:300;s:6:"height";i:47;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"banner-768x120.jpg";s:5:"width";i:768;s:6:"height";i:120;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"banner-1024x160.jpg";s:5:"width";i:1024;s:6:"height";i:160;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(200, 71, '_edit_last', '1'),
(201, 71, '_wp_page_template', 'page-contact.php'),
(202, 71, 'page_image', '72'),
(203, 71, '_page_image', 'field_58445851cd7e0'),
(204, 71, 'mobile', '0000'),
(205, 71, '_mobile', 'field_5844632a8a1d4'),
(206, 71, 'address', '1 ho tung mau'),
(207, 71, '_address', 'field_5844633f8a1d5'),
(208, 71, 'email', 'example@gmail.com'),
(209, 71, '_email', 'field_5844634d8a1d6'),
(210, 71, 'text_block_1', ''),
(211, 71, '_text_block_1', 'field_584463cc4aea9'),
(212, 71, 'text_block_2', ''),
(213, 71, '_text_block_2', 'field_584463fb4aeaa'),
(214, 71, 'text_block_3', ''),
(215, 71, '_text_block_3', 'field_5844640b4aeab'),
(216, 73, 'page_image', '72'),
(217, 73, '_page_image', 'field_58445851cd7e0'),
(218, 73, 'mobile', '0000'),
(219, 73, '_mobile', 'field_5844632a8a1d4'),
(220, 73, 'address', '1 ho tung mau'),
(221, 73, '_address', 'field_5844633f8a1d5'),
(222, 73, 'email', 'example@gmail.com'),
(223, 73, '_email', 'field_5844634d8a1d6'),
(224, 73, 'text_block_1', ''),
(225, 73, '_text_block_1', 'field_584463cc4aea9'),
(226, 73, 'text_block_2', ''),
(227, 73, '_text_block_2', 'field_584463fb4aeaa'),
(228, 73, 'text_block_3', ''),
(229, 73, '_text_block_3', 'field_5844640b4aeab'),
(230, 71, '_edit_lock', '1481299434:1'),
(231, 71, 'first_content', 'Erzählen Sie uns über Ihr Vorhaben, Ihre Website- oder App-Idee. Vielleicht sind wir der Partner, den Sie schon lange suchen? Rufen Sie uns an, schreiben Sie uns ein E-Mail oder <a class="underline colorLink " href="#">chatten Sie mit uns!</a>'),
(232, 71, '_first_content', 'field_58446516d8a88'),
(233, 75, 'page_image', '72'),
(234, 75, '_page_image', 'field_58445851cd7e0'),
(235, 75, 'mobile', '0000'),
(236, 75, '_mobile', 'field_5844632a8a1d4'),
(237, 75, 'address', '1 ho tung mau'),
(238, 75, '_address', 'field_5844633f8a1d5'),
(239, 75, 'email', 'example@gmail.com'),
(240, 75, '_email', 'field_5844634d8a1d6'),
(241, 75, 'text_block_1', ''),
(242, 75, '_text_block_1', 'field_584463cc4aea9'),
(243, 75, 'text_block_2', ''),
(244, 75, '_text_block_2', 'field_584463fb4aeaa'),
(245, 75, 'text_block_3', ''),
(246, 75, '_text_block_3', 'field_5844640b4aeab'),
(247, 75, 'first_content', 'Erzählen Sie uns über Ihr Vorhaben, Ihre Website- oder App-Idee. Vielleicht sind wir der Partner, den Sie schon lange suchen? Rufen Sie uns an, schreiben Sie uns ein E-Mail oder <a class="underline colorLink " href="#">chatten Sie mit uns!</a>'),
(248, 75, '_first_content', 'field_58446516d8a88'),
(249, 76, '_edit_last', '1'),
(250, 76, '_edit_lock', '1480881985:1'),
(251, 78, '_edit_last', '1'),
(252, 78, '_edit_lock', '1481299287:1'),
(253, 78, '_wp_page_template', 'page-what-we-make.php'),
(254, 78, 'category', 'a:6:{i:0;s:1:"2";i:1;s:1:"8";i:2;s:1:"4";i:3;s:1:"3";i:4;s:1:"6";i:5;s:1:"5";}'),
(255, 78, '_category', 'field_584470cb5277b'),
(256, 79, 'category', ''),
(257, 79, '_category', 'field_584470cb5277b'),
(258, 80, 'category', 'a:6:{i:0;s:1:"2";i:1;s:1:"8";i:2;s:1:"4";i:3;s:1:"3";i:4;s:1:"6";i:5;s:1:"5";}'),
(259, 80, '_category', 'field_584470cb5277b'),
(260, 81, '_edit_last', '1'),
(261, 81, '_edit_lock', '1480983620:1'),
(262, 92, '_edit_last', '1'),
(263, 92, '_edit_lock', '1481299205:1'),
(264, 93, '_wp_attached_file', 'img1.jpg'),
(265, 93, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1197;s:6:"height";i:402;s:4:"file";s:8:"img1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"img1-300x101.jpg";s:5:"width";i:300;s:6:"height";i:101;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img1-768x258.jpg";s:5:"width";i:768;s:6:"height";i:258;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img1-1024x344.jpg";s:5:"width";i:1024;s:6:"height";i:344;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(266, 92, '_wp_page_template', 'page-agency.php'),
(267, 92, 'items_0_title', 'WER WIR SIND'),
(268, 92, '_items_0_title', 'field_5845c899051cd'),
(269, 92, 'items_0_image', '93'),
(270, 92, '_items_0_image', 'field_5845c8a1051ce'),
(271, 92, 'items_0_content', 'Wir sind ein erfahrenes und eingespieltes Team aus leidenschaftlichen Designern und Entwicklern die quer über den Globus verteilt arbeiten - mit Homebase Maria Rain. Wir konzipieren, gestalten und entwickeln responsive Webseiten, Apps, Interfaces, Corporate Identities und vieles mehr...'),
(272, 92, '_items_0_content', 'field_5845c8b9051cf'),
(273, 92, 'items', '4'),
(274, 92, '_items', 'field_5845c84e051cc'),
(275, 92, 'email', 'info@ponta.at'),
(276, 92, '_email', 'field_5845c90241324'),
(277, 92, 'phone', '+43 664 8228888'),
(278, 92, '_phone', 'field_5845c90b41325'),
(279, 92, 'skype', 'Skype'),
(280, 92, '_skype', 'field_5845c91141326'),
(281, 92, 'customer', '3'),
(282, 92, '_customer', 'field_5845d16cb10ef'),
(283, 94, 'items_0_title', 'WER WIR SIND'),
(284, 94, '_items_0_title', 'field_5845c899051cd'),
(285, 94, 'items_0_image', 'a:1:{i:0;s:2:"93";}'),
(286, 94, '_items_0_image', 'field_5845c8a1051ce'),
(287, 94, 'items_0_content', 'Wir sind ein erfahrenes und eingespieltes Team aus leidenschaftlichen Designern und Entwicklern die quer über den Globus verteilt arbeiten - mit Homebase Maria Rain. Wir konzipieren, gestalten und entwickeln responsive Webseiten, Apps, Interfaces, Corporate Identities und vieles mehr...'),
(288, 94, '_items_0_content', 'field_5845c8b9051cf'),
(289, 94, 'items', '1'),
(290, 94, '_items', 'field_5845c84e051cc'),
(291, 94, 'email', ''),
(292, 94, '_email', 'field_5845c90241324'),
(293, 94, 'phone', ''),
(294, 94, '_phone', 'field_5845c90b41325'),
(295, 94, 'skype', ''),
(296, 94, '_skype', 'field_5845c91141326'),
(297, 94, 'customer', ''),
(298, 94, '_customer', 'field_5845d16cb10ef'),
(299, 95, '_wp_attached_file', 'img2.jpg'),
(300, 95, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1237;s:6:"height";i:251;s:4:"file";s:8:"img2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"img2-300x61.jpg";s:5:"width";i:300;s:6:"height";i:61;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img2-768x156.jpg";s:5:"width";i:768;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img2-1024x208.jpg";s:5:"width";i:1024;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(301, 96, '_wp_attached_file', 'img3.jpg'),
(302, 96, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1238;s:6:"height";i:255;s:4:"file";s:8:"img3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"img3-300x62.jpg";s:5:"width";i:300;s:6:"height";i:62;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img3-768x158.jpg";s:5:"width";i:768;s:6:"height";i:158;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img3-1024x211.jpg";s:5:"width";i:1024;s:6:"height";i:211;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 97, '_wp_attached_file', 'img4.jpg'),
(304, 97, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1239;s:6:"height";i:252;s:4:"file";s:8:"img4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"img4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:15:"img4-300x61.jpg";s:5:"width";i:300;s:6:"height";i:61;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"img4-768x156.jpg";s:5:"width";i:768;s:6:"height";i:156;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"img4-1024x208.jpg";s:5:"width";i:1024;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(305, 98, '_wp_attached_file', 'woman.png'),
(306, 98, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:200;s:6:"height";i:200;s:4:"file";s:9:"woman.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"woman-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(307, 99, '_wp_attached_file', 'barack-obama.png'),
(308, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:300;s:6:"height";i:200;s:4:"file";s:16:"barack-obama.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"barack-obama-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"barack-obama-300x200.png";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(309, 92, 'items_1_title', 'UNSERE MISSION'),
(310, 92, '_items_1_title', 'field_5845c899051cd'),
(311, 92, 'items_1_image', '95'),
(312, 92, '_items_1_image', 'field_5845c8a1051ce'),
(313, 92, 'items_1_content', 'Unsere Mission ist einfach: Wir helfen unseren Kunden Ihren Markt zu dominieren, die Welt zu erobern. Dies tun wir, indem wir sie mit großartig designten und hochfunktionalen digitalen Werkzeugen ausstatten.'),
(314, 92, '_items_1_content', 'field_5845c8b9051cf'),
(315, 92, 'items_2_title', 'SUBSTANZ STATT EFFEKTE'),
(316, 92, '_items_2_title', 'field_5845c899051cd'),
(317, 92, 'items_2_image', '96'),
(318, 92, '_items_2_image', 'field_5845c8a1051ce'),
(319, 92, 'items_2_content', 'Design erfüllt in erster Linie einen Zweck. Dieser Zweck enthüllt sich manchmal erst nachdem man das zehnte Mal „warum“ gefragt hat. Eben so lange, bis man ein tiefes Verständnis für die Marke, die Kultur, das Produkt und die Kunden entwickelt hat. Wir sind Überzeugungstäter. Wenn wir uns mit dem Zweck nicht identifizieren können, machen wir das Projekt nicht. Ausserdem: Marken und Markenbotschaften müssen auf Wahrheit gegründet sein - nicht erfundene Geschichten. Es muss nicht nur Authentisch sein - sondern auch Ehrlich.'),
(320, 92, '_items_2_content', 'field_5845c8b9051cf'),
(321, 92, 'items_3_title', 'SUBSTANZ STATT EFFEKTE'),
(322, 92, '_items_3_title', 'field_5845c899051cd'),
(323, 92, 'items_3_image', '97'),
(324, 92, '_items_3_image', 'field_5845c8a1051ce'),
(325, 92, 'items_3_content', '<section><figure><figcaption class="font16 fontLight">\r\n<div class="row">\r\n<div class="col-md-offset-2 col-md-8">Wir glauben an harte, ehrliche Arbeit. Erfolg erfolgt. Da gibt es keine Abkürzungen. Deshalb sind wir bereit mit unseren Kunden die Extra Meile zu gehen.</div>\r\n</div>\r\n</figcaption></figure></section>'),
(326, 92, '_items_3_content', 'field_5845c8b9051cf'),
(327, 92, 'customer_0_image', '98'),
(328, 92, '_customer_0_image', 'field_5845d178b10f0'),
(329, 92, 'customer_0_comment', 'Robert Ponta ist ein großartiger Partner in allen Belangen des METRAS Marketings. RP hat uns mit seiner Kreativität und technischen Expertise viele tolle und innovative Lösungen bereitgestellt. Unsere Homepage, Flyer, Visitenkarten, Programmhefte und nicht zuletzt die METRAS-APP hilft uns jeden Tag Kunden von unserer Dienstleistung zu überzeugen. Somit ist RP nicht nur ein Lieferant, sondern mittlerweile zu einem Partner meines Unternehmens geworden." - Werner Weninger, METRAS'),
(330, 92, '_customer_0_comment', 'field_5845d19cb10f1'),
(331, 92, 'customer_1_image', '99'),
(332, 92, '_customer_1_image', 'field_5845d178b10f0'),
(333, 92, 'customer_1_comment', 'Alexander Windbichler, ANEXIA - „Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.“'),
(334, 92, '_customer_1_comment', 'field_5845d19cb10f1'),
(335, 92, 'customer_2_image', '98'),
(336, 92, '_customer_2_image', 'field_5845d178b10f0'),
(337, 92, 'customer_2_comment', 'Wir glauben an harte, ehrliche Arbeit. Erfolg erfolgt. Da gibt es keine Abkürzungen. Deshalb sind wir bereit mit unseren Kunden die Extra Meile zu gehen.'),
(338, 92, '_customer_2_comment', 'field_5845d19cb10f1'),
(339, 100, 'items_0_title', 'WER WIR SIND'),
(340, 100, '_items_0_title', 'field_5845c899051cd'),
(341, 100, 'items_0_image', '93'),
(342, 100, '_items_0_image', 'field_5845c8a1051ce'),
(343, 100, 'items_0_content', 'Wir sind ein erfahrenes und eingespieltes Team aus leidenschaftlichen Designern und Entwicklern die quer über den Globus verteilt arbeiten - mit Homebase Maria Rain. Wir konzipieren, gestalten und entwickeln responsive Webseiten, Apps, Interfaces, Corporate Identities und vieles mehr...'),
(344, 100, '_items_0_content', 'field_5845c8b9051cf'),
(345, 100, 'items', '4'),
(346, 100, '_items', 'field_5845c84e051cc'),
(347, 100, 'email', 'info@ponta.at'),
(348, 100, '_email', 'field_5845c90241324'),
(349, 100, 'phone', '+43 664 8228888'),
(350, 100, '_phone', 'field_5845c90b41325'),
(351, 100, 'skype', 'Skype'),
(352, 100, '_skype', 'field_5845c91141326'),
(353, 100, 'customer', '3'),
(354, 100, '_customer', 'field_5845d16cb10ef'),
(355, 100, 'items_1_title', 'UNSERE MISSION'),
(356, 100, '_items_1_title', 'field_5845c899051cd'),
(357, 100, 'items_1_image', '95'),
(358, 100, '_items_1_image', 'field_5845c8a1051ce'),
(359, 100, 'items_1_content', 'Unsere Mission ist einfach: Wir helfen unseren Kunden Ihren Markt zu dominieren, die Welt zu erobern. Dies tun wir, indem wir sie mit großartig designten und hochfunktionalen digitalen Werkzeugen ausstatten.'),
(360, 100, '_items_1_content', 'field_5845c8b9051cf'),
(361, 100, 'items_2_title', 'SUBSTANZ STATT EFFEKTE'),
(362, 100, '_items_2_title', 'field_5845c899051cd'),
(363, 100, 'items_2_image', '96'),
(364, 100, '_items_2_image', 'field_5845c8a1051ce'),
(365, 100, 'items_2_content', 'Design erfüllt in erster Linie einen Zweck. Dieser Zweck enthüllt sich manchmal erst nachdem man das zehnte Mal „warum“ gefragt hat. Eben so lange, bis man ein tiefes Verständnis für die Marke, die Kultur, das Produkt und die Kunden entwickelt hat. Wir sind Überzeugungstäter. Wenn wir uns mit dem Zweck nicht identifizieren können, machen wir das Projekt nicht. Ausserdem: Marken und Markenbotschaften müssen auf Wahrheit gegründet sein - nicht erfundene Geschichten. Es muss nicht nur Authentisch sein - sondern auch Ehrlich.'),
(366, 100, '_items_2_content', 'field_5845c8b9051cf'),
(367, 100, 'items_3_title', 'SUBSTANZ STATT EFFEKTE'),
(368, 100, '_items_3_title', 'field_5845c899051cd'),
(369, 100, 'items_3_image', '97'),
(370, 100, '_items_3_image', 'field_5845c8a1051ce'),
(371, 100, 'items_3_content', '<section><figure><figcaption class="font16 fontLight">\r\n<div class="row">\r\n<div class="col-md-offset-2 col-md-8">Wir glauben an harte, ehrliche Arbeit. Erfolg erfolgt. Da gibt es keine Abkürzungen. Deshalb sind wir bereit mit unseren Kunden die Extra Meile zu gehen.</div>\r\n</div>\r\n</figcaption></figure></section>'),
(372, 100, '_items_3_content', 'field_5845c8b9051cf'),
(373, 100, 'customer_0_image', '98'),
(374, 100, '_customer_0_image', 'field_5845d178b10f0'),
(375, 100, 'customer_0_comment', 'Robert Ponta ist ein großartiger Partner in allen Belangen des METRAS Marketings. RP hat uns mit seiner Kreativität und technischen Expertise viele tolle und innovative Lösungen bereitgestellt. Unsere Homepage, Flyer, Visitenkarten, Programmhefte und nicht zuletzt die METRAS-APP hilft uns jeden Tag Kunden von unserer Dienstleistung zu überzeugen. Somit ist RP nicht nur ein Lieferant, sondern mittlerweile zu einem Partner meines Unternehmens geworden." - Werner Weninger, METRAS'),
(376, 100, '_customer_0_comment', 'field_5845d19cb10f1'),
(377, 100, 'customer_1_image', '99'),
(378, 100, '_customer_1_image', 'field_5845d178b10f0'),
(379, 100, 'customer_1_comment', 'Alexander Windbichler, ANEXIA - „Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum.“'),
(380, 100, '_customer_1_comment', 'field_5845d19cb10f1'),
(381, 100, 'customer_2_image', '98'),
(382, 100, '_customer_2_image', 'field_5845d178b10f0'),
(383, 100, 'customer_2_comment', 'Wir glauben an harte, ehrliche Arbeit. Erfolg erfolgt. Da gibt es keine Abkürzungen. Deshalb sind wir bereit mit unseren Kunden die Extra Meile zu gehen.'),
(384, 100, '_customer_2_comment', 'field_5845d19cb10f1'),
(385, 101, '_menu_item_type', 'custom'),
(386, 101, '_menu_item_menu_item_parent', '0'),
(387, 101, '_menu_item_object_id', '101'),
(388, 101, '_menu_item_object', 'custom'),
(389, 101, '_menu_item_target', ''),
(390, 101, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(391, 101, '_menu_item_xfn', ''),
(392, 101, '_menu_item_url', 'http://localhost/ponta/'),
(393, 101, '_menu_item_orphaned', '1481295196'),
(394, 102, '_menu_item_type', 'post_type'),
(395, 102, '_menu_item_menu_item_parent', '0'),
(396, 102, '_menu_item_object_id', '92'),
(397, 102, '_menu_item_object', 'page'),
(398, 102, '_menu_item_target', ''),
(399, 102, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(400, 102, '_menu_item_xfn', ''),
(401, 102, '_menu_item_url', ''),
(436, 106, '_menu_item_xfn', ''),
(403, 103, '_menu_item_type', 'post_type'),
(404, 103, '_menu_item_menu_item_parent', '0'),
(405, 103, '_menu_item_object_id', '71'),
(406, 103, '_menu_item_object', 'page'),
(407, 103, '_menu_item_target', ''),
(408, 103, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(409, 103, '_menu_item_xfn', ''),
(410, 103, '_menu_item_url', ''),
(412, 104, '_menu_item_type', 'post_type'),
(413, 104, '_menu_item_menu_item_parent', '0'),
(414, 104, '_menu_item_object_id', '2'),
(415, 104, '_menu_item_object', 'page'),
(416, 104, '_menu_item_target', ''),
(417, 104, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(418, 104, '_menu_item_xfn', ''),
(419, 104, '_menu_item_url', ''),
(420, 104, '_menu_item_orphaned', '1481295196'),
(435, 106, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(434, 106, '_menu_item_target', ''),
(433, 106, '_menu_item_object', 'page'),
(432, 106, '_menu_item_object_id', '78'),
(431, 106, '_menu_item_menu_item_parent', '0'),
(430, 106, '_menu_item_type', 'post_type'),
(437, 106, '_menu_item_url', ''),
(439, 107, '_edit_last', '1'),
(440, 107, '_wp_page_template', 'home.php'),
(441, 107, '_edit_lock', '1481298003:1'),
(442, 109, '_edit_last', '1'),
(443, 109, '_edit_lock', '1481299202:1'),
(444, 107, 'dynamic_text_0_text', 'leistungsfähig'),
(445, 107, '_dynamic_text_0_text', 'field_584accfb427df'),
(446, 107, 'dynamic_text_1_text', 'leistungwillig'),
(447, 107, '_dynamic_text_1_text', 'field_584accfb427df'),
(448, 107, 'dynamic_text', '9'),
(449, 107, '_dynamic_text', 'field_584accbfed351'),
(450, 112, 'dynamic_text_0_text', 'leistungsfähig'),
(451, 112, '_dynamic_text_0_text', 'field_584accfb427df'),
(452, 112, 'dynamic_text_1_text', ''),
(453, 112, '_dynamic_text_1_text', 'field_584accfb427df'),
(454, 112, 'dynamic_text', '2'),
(455, 112, '_dynamic_text', 'field_584accbfed351'),
(456, 113, 'dynamic_text_0_text', 'leistungsfähig'),
(457, 113, '_dynamic_text_0_text', 'field_584accfb427df'),
(458, 113, 'dynamic_text_1_text', 'leistungwillig'),
(459, 113, '_dynamic_text_1_text', 'field_584accfb427df'),
(460, 113, 'dynamic_text', '2'),
(461, 113, '_dynamic_text', 'field_584accbfed351'),
(462, 107, 'dynamic_text_2_text', 'pragmatisch'),
(463, 107, '_dynamic_text_2_text', 'field_584accfb427df'),
(464, 107, 'dynamic_text_3_text', 'commited'),
(465, 107, '_dynamic_text_3_text', 'field_584accfb427df'),
(466, 107, 'dynamic_text_4_text', 'strategisch'),
(467, 107, '_dynamic_text_4_text', 'field_584accfb427df'),
(468, 107, 'dynamic_text_5_text', 'beweglich'),
(469, 107, '_dynamic_text_5_text', 'field_584accfb427df'),
(470, 107, 'dynamic_text_6_text', 'kreativ'),
(471, 107, '_dynamic_text_6_text', 'field_584accfb427df'),
(472, 107, 'dynamic_text_7_text', 'schnell'),
(473, 107, '_dynamic_text_7_text', 'field_584accfb427df'),
(474, 107, 'dynamic_text_8_text', 'oho'),
(475, 107, '_dynamic_text_8_text', 'field_584accfb427df'),
(476, 114, 'dynamic_text_0_text', 'leistungsfähig'),
(477, 114, '_dynamic_text_0_text', 'field_584accfb427df'),
(478, 114, 'dynamic_text_1_text', 'leistungwillig'),
(479, 114, '_dynamic_text_1_text', 'field_584accfb427df'),
(480, 114, 'dynamic_text', '9'),
(481, 114, '_dynamic_text', 'field_584accbfed351'),
(482, 114, 'dynamic_text_2_text', 'pragmatisch'),
(483, 114, '_dynamic_text_2_text', 'field_584accfb427df'),
(484, 114, 'dynamic_text_3_text', 'commited'),
(485, 114, '_dynamic_text_3_text', 'field_584accfb427df'),
(486, 114, 'dynamic_text_4_text', 'strategisch'),
(487, 114, '_dynamic_text_4_text', 'field_584accfb427df'),
(488, 114, 'dynamic_text_5_text', 'beweglich'),
(489, 114, '_dynamic_text_5_text', 'field_584accfb427df'),
(490, 114, 'dynamic_text_6_text', 'kreativ'),
(491, 114, '_dynamic_text_6_text', 'field_584accfb427df'),
(492, 114, 'dynamic_text_7_text', 'schnell'),
(493, 114, '_dynamic_text_7_text', 'field_584accfb427df'),
(494, 114, 'dynamic_text_8_text', 'oho'),
(495, 114, '_dynamic_text_8_text', 'field_584accfb427df');

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_posts`
--

CREATE TABLE `ponta_at_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_posts`
--

INSERT INTO `ponta_at_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2016-11-24 07:05:24', '2016-11-24 07:05:24', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-11-24 07:05:24', '2016-11-24 07:05:24', '', 0, 'http://ponta.at/?p=1', 0, 'post', '', 1),
(2, 1, '2016-11-24 07:05:24', '2016-11-24 07:05:24', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://ponta.at/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2016-11-24 07:05:24', '2016-11-24 07:05:24', '', 0, 'http://ponta.at/?page_id=2', 0, 'page', '', 0),
(65, 1, '2016-12-04 18:41:48', '2016-12-04 18:41:48', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:4:"0000";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Mobile', 'mobile', 'publish', 'closed', 'closed', '', 'field_5844632a8a1d4', '', '', '2016-12-04 18:41:48', '2016-12-04 18:41:48', '', 63, 'http://ponta.at/?post_type=acf-field&p=65', 1, 'acf-field', '', 0),
(4, 1, '2016-11-24 11:02:10', '2016-11-24 11:02:10', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"portfolio";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_5836c5a1b8163', '', '', '2016-11-25 15:00:45', '2016-11-25 15:00:45', '', 0, 'http://ponta.at/?post_type=acf-field-group&#038;p=4', 0, 'acf-field-group', '', 0),
(36, 1, '2016-11-25 16:30:37', '2016-11-25 16:30:37', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2016-11-25 16:30:37', '2016-11-25 16:30:37', '', 34, 'http://ponta.at/wp-content/uploads/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2016-11-25 16:30:38', '2016-11-25 16:30:38', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2016-11-25 16:33:10', '2016-11-25 16:33:10', '', 34, 'http://ponta.at/wp-content/uploads/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2016-11-25 16:30:40', '2016-11-25 16:30:40', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2016-11-25 16:30:40', '2016-11-25 16:30:40', '', 34, 'http://ponta.at/wp-content/uploads/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2016-11-25 16:30:46', '2016-11-25 16:30:46', 'CD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/Branding', 'CD/Branding 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2016-11-25 16:30:46', '2016-11-25 16:30:46', '', 34, 'http://ponta.at/34-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2016-11-25 16:31:30', '2016-11-25 16:31:30', 'CD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/Branding', 'CD/Branding2', '', 'publish', 'open', 'closed', '', 'cdbranding2', '', '', '2016-11-25 16:31:38', '2016-11-25 16:31:38', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=40', 0, 'portfolio', '', 0),
(64, 1, '2016-12-04 17:57:18', '2016-12-04 17:57:18', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Page Image', 'page_image', 'publish', 'closed', 'closed', '', 'field_58445851cd7e0', '', '', '2016-12-04 17:57:18', '2016-12-04 17:57:18', '', 63, 'http://ponta.at/?post_type=acf-field&p=64', 0, 'acf-field', '', 0),
(34, 1, '2016-11-25 16:30:46', '2016-11-25 16:30:46', 'CD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/Branding', 'CD/Branding 1', '', 'publish', 'open', 'closed', '', 'cdbranding-1', '', '', '2016-11-25 16:30:46', '2016-11-25 16:30:46', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=34', 0, 'portfolio', '', 0),
(35, 1, '2016-11-25 16:30:22', '2016-11-25 16:30:22', '', '6769ef5117965-56021440ed002', '', 'inherit', 'open', 'closed', '', '6769ef5117965-56021440ed002', '', '', '2016-11-25 16:30:22', '2016-11-25 16:30:22', '', 34, 'http://ponta.at/wp-content/uploads/6769ef5117965.56021440ed002.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2016-12-04 18:41:48', '2016-12-04 18:41:48', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_5844633f8a1d5', '', '', '2016-12-04 18:41:48', '2016-12-04 18:41:48', '', 63, 'http://ponta.at/?post_type=acf-field&p=66', 2, 'acf-field', '', 0),
(31, 1, '2016-11-25 15:42:53', '2016-11-25 15:42:53', 'I''m a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font. I’m a great place for you to tell a story and let your users know a little more about you.', 'SASHA BLAKE', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-11-25 15:42:53', '2016-11-25 15:42:53', '', 9, 'http://ponta.at/9-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2016-11-24 11:08:48', '2016-11-24 11:08:48', 'I''m a paragraph. Click here to add your own text and edit me. It’s easy. Just click “Edit Text” or double click me to add your own content and make changes to the font. I’m a great place for you to tell a story and let your users know a little more about you.', 'SASHA BLAKE', '', 'publish', 'closed', 'closed', '', '9-2', '', '', '2016-11-25 15:58:03', '2016-11-25 15:58:03', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=9', 0, 'portfolio', '', 0),
(10, 1, '2016-11-24 11:04:00', '2016-11-24 11:04:00', '', 'DCIM101GOPRO', 'DCIM101GOPRO', 'inherit', 'open', 'closed', '', 'dcim101gopro', '', '', '2016-11-25 15:42:47', '2016-11-25 15:42:47', '', 0, 'http://ponta.at/wp-content/uploads/GOPR2793.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2016-11-24 11:08:48', '2016-11-24 11:08:48', '', '', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2016-11-24 11:08:48', '2016-11-24 11:08:48', '', 9, 'http://ponta.at/9-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2016-11-25 15:57:58', '2016-11-25 15:57:58', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2016-11-25 16:31:24', '2016-11-25 16:31:24', '', 9, 'http://ponta.at/wp-content/uploads/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2016-11-25 14:44:04', '2016-11-25 14:44:04', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:9:"portfolio";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Hover Image Portfolio', 'hover-image-portfolio', 'publish', 'closed', 'closed', '', 'group_58384cbe1d2df', '', '', '2016-11-25 14:44:04', '2016-11-25 14:44:04', '', 0, 'http://ponta.at/?post_type=acf-field-group&#038;p=24', 0, 'acf-field-group', '', 0),
(25, 1, '2016-11-25 14:44:04', '2016-11-25 14:44:04', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:71:"Second feature image. I will be show when user hover to the main image.";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:4:"full";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Hover Image Portfolio', 'hover_image_portfolio', 'publish', 'closed', 'closed', '', 'field_58384dac3f3c0', '', '', '2016-11-25 14:44:04', '2016-11-25 14:44:04', '', 24, 'http://ponta.at/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(27, 1, '2016-11-25 15:00:45', '2016-11-25 15:00:45', 'a:16:{s:4:"type";s:7:"gallery";s:12:"instructions";s:32:"Image Gallery of this portfolio.";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"insert";s:6:"append";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Gallery', 'gallery_portfolio', 'publish', 'closed', 'closed', '', 'field_58384e760cf96', '', '', '2016-11-25 15:00:45', '2016-11-25 15:00:45', '', 4, 'http://ponta.at/?post_type=acf-field&p=27', 0, 'acf-field', '', 0),
(28, 1, '2016-11-25 15:00:45', '2016-11-25 15:00:45', 'a:5:{s:4:"type";s:11:"link_picker";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:17:"conditional_logic";i:0;}', 'Link', 'link', 'publish', 'closed', 'closed', '', 'field_58384eb40cf97', '', '', '2016-11-25 15:00:45', '2016-11-25 15:00:45', '', 4, 'http://ponta.at/?post_type=acf-field&p=28', 1, 'acf-field', '', 0),
(29, 1, '2016-11-25 15:00:45', '2016-11-25 15:00:45', 'a:13:{s:4:"type";s:6:"select";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:7:"choices";a:6:{i:1;s:9:"1/6 Width";i:2;s:9:"2/6 Width";i:3;s:9:"3/6 Width";i:4;s:9:"4/6 Width";i:5;s:9:"5/6 Width";i:6;s:10:"Full Width";}s:13:"default_value";a:1:{i:0;i:1;}s:10:"allow_null";i:0;s:8:"multiple";i:0;s:2:"ui";i:1;s:4:"ajax";i:0;s:13:"return_format";s:5:"value";s:17:"conditional_logic";i:0;s:11:"placeholder";s:0:"";}', 'Width', 'width', 'publish', 'closed', 'closed', '', 'field_58384eda0cf98', '', '', '2016-11-25 15:00:45', '2016-11-25 15:00:45', '', 4, 'http://ponta.at/?post_type=acf-field&p=29', 2, 'acf-field', '', 0),
(41, 1, '2016-11-25 16:31:12', '2016-11-25 16:31:12', '', 'miller-branding-cd-design', '', 'inherit', 'open', 'closed', '', 'miller-branding-cd-design', '', '', '2016-11-25 16:32:33', '2016-11-25 16:32:33', '', 40, 'http://ponta.at/wp-content/uploads/miller-branding-cd-design.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2016-11-25 16:31:30', '2016-11-25 16:31:30', 'CD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/BrandingCD/Branding', 'CD/Branding2', '', 'inherit', 'closed', 'closed', '', '40-revision-v1', '', '', '2016-11-25 16:31:30', '2016-11-25 16:31:30', '', 40, 'http://ponta.at/40-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2016-12-04 17:57:18', '2016-12-04 17:57:18', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:16:"page-contact.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";a:2:{i:0;s:8:"comments";i:1;s:6:"author";}s:11:"description";s:0:"";}', 'Contact Page', 'contact-page', 'publish', 'closed', 'closed', '', 'group_58445842d350b', '', '', '2016-12-04 18:49:33', '2016-12-04 18:49:33', '', 0, 'http://ponta.at/?post_type=acf-field-group&#038;p=63', 0, 'acf-field-group', '', 0),
(62, 1, '2016-12-04 17:54:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2016-12-04 17:54:00', '0000-00-00 00:00:00', '', 0, 'http://ponta.at/?p=62', 0, 'post', '', 0),
(45, 1, '2016-11-25 16:32:39', '2016-11-25 16:32:39', '<ul id="filters" class="clearfix">\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li></li>\r\n</ul>', 'Illustrator1', '', 'publish', 'open', 'closed', '', 'illustrator1', '', '', '2016-11-25 16:32:39', '2016-11-25 16:32:39', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=45', 0, 'portfolio', '', 0),
(46, 1, '2016-11-25 16:32:19', '2016-11-25 16:32:19', '', '11a78750cf119d621005ae5cfb2b392c', '', 'inherit', 'open', 'closed', '', '11a78750cf119d621005ae5cfb2b392c', '', '', '2016-11-25 16:32:19', '2016-11-25 16:32:19', '', 45, 'http://ponta.at/wp-content/uploads/11a78750cf119d621005ae5cfb2b392c.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2016-11-25 16:32:39', '2016-11-25 16:32:39', '<ul id="filters" class="clearfix">\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li></li>\r\n</ul>', 'Illustrator1', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2016-11-25 16:32:39', '2016-11-25 16:32:39', '', 45, 'http://ponta.at/45-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2016-11-25 16:33:13', '2016-11-25 16:33:13', '<ul id="filters" class="clearfix">\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li></li>\r\n</ul>', 'Illustrator2', '', 'publish', 'open', 'closed', '', 'illustrator2', '', '', '2016-11-25 16:33:13', '2016-11-25 16:33:13', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=48', 0, 'portfolio', '', 0),
(49, 1, '2016-11-25 16:32:57', '2016-11-25 16:32:57', '', '7rifleol', '', 'inherit', 'open', 'closed', '', '7rifleol', '', '', '2016-11-25 16:32:57', '2016-11-25 16:32:57', '', 48, 'http://ponta.at/wp-content/uploads/7rifLeOl.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2016-11-25 16:33:13', '2016-11-25 16:33:13', '<ul id="filters" class="clearfix">\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li><span class="filter" data-filter=".4">Illustrator</span></li>\r\n 	<li></li>\r\n</ul>', 'Illustrator2', '', 'inherit', 'closed', 'closed', '', '48-revision-v1', '', '', '2016-11-25 16:33:13', '2016-11-25 16:33:13', '', 48, 'http://ponta.at/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2016-11-25 16:34:09', '2016-11-25 16:34:09', '<ul id="filters" class="clearfix">\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li></li>\r\n</ul>', 'Print Design1', '', 'publish', 'open', 'closed', '', 'print-design1', '', '', '2016-11-25 16:34:09', '2016-11-25 16:34:09', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=51', 0, 'portfolio', '', 0),
(52, 1, '2016-11-25 16:33:42', '2016-11-25 16:33:42', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2016-11-25 16:35:23', '2016-11-25 16:35:23', '', 51, 'http://ponta.at/wp-content/uploads/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2016-11-25 16:33:57', '2016-11-25 16:33:57', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2016-11-25 16:33:57', '2016-11-25 16:33:57', '', 51, 'http://ponta.at/wp-content/uploads/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2016-11-25 16:34:00', '2016-11-25 16:34:00', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2016-11-25 16:34:00', '2016-11-25 16:34:00', '', 51, 'http://ponta.at/wp-content/uploads/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2016-11-25 16:34:01', '2016-11-25 16:34:01', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2016-11-25 16:34:01', '2016-11-25 16:34:01', '', 51, 'http://ponta.at/wp-content/uploads/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2016-11-25 16:34:02', '2016-11-25 16:34:02', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2016-11-25 16:34:02', '2016-11-25 16:34:02', '', 51, 'http://ponta.at/wp-content/uploads/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(57, 1, '2016-11-25 16:34:04', '2016-11-25 16:34:04', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2016-11-25 16:34:04', '2016-11-25 16:34:04', '', 51, 'http://ponta.at/wp-content/uploads/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(58, 1, '2016-11-25 16:34:09', '2016-11-25 16:34:09', '<ul id="filters" class="clearfix">\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li><span class="filter" data-filter=".3">Print Design</span></li>\r\n 	<li></li>\r\n</ul>', 'Print Design1', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2016-11-25 16:34:09', '2016-11-25 16:34:09', '', 51, 'http://ponta.at/51-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2016-11-25 16:35:33', '2016-11-25 16:35:33', 'ux and interface 1ux and interface 1ux and interface 1ux and interface 1ux and interface 1ux and interface 1', 'ux and interface 1', '', 'publish', 'open', 'closed', '', 'ux-and-interface-1', '', '', '2016-11-25 16:35:33', '2016-11-25 16:35:33', '', 0, 'http://ponta.at/?post_type=portfolio&#038;p=59', 0, 'portfolio', '', 0),
(60, 1, '2016-11-25 16:35:14', '2016-11-25 16:35:14', '', 'flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530', '', 'inherit', 'open', 'closed', '', 'flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530', '', '', '2016-11-25 16:35:14', '2016-11-25 16:35:14', '', 59, 'http://ponta.at/wp-content/uploads/flat-mobile-interface-design-elements-concept-icons-set-vector-format-various-projects-33599530.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 1, '2016-11-25 16:35:33', '2016-11-25 16:35:33', 'ux and interface 1ux and interface 1ux and interface 1ux and interface 1ux and interface 1ux and interface 1', 'ux and interface 1', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2016-11-25 16:35:33', '2016-11-25 16:35:33', '', 59, 'http://ponta.at/59-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2016-12-04 18:41:48', '2016-12-04 18:41:48', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:17:"example@gmail.com";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5844634d8a1d6', '', '', '2016-12-04 18:41:48', '2016-12-04 18:41:48', '', 63, 'http://ponta.at/?post_type=acf-field&p=67', 3, 'acf-field', '', 0),
(74, 1, '2016-12-04 18:49:33', '2016-12-04 18:49:33', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:17:"conditional_logic";i:0;}', 'First Content', 'first_content', 'publish', 'closed', 'closed', '', 'field_58446516d8a88', '', '', '2016-12-04 18:49:33', '2016-12-04 18:49:33', '', 63, 'http://ponta.at/?post_type=acf-field&p=74', 4, 'acf-field', '', 0),
(71, 1, '2016-12-04 18:47:28', '2016-12-04 18:47:28', '<section>\r\n<p class="text-contact text-notice font16 fontLight">Offen gesagt - wir können es kaum erwarten Sie und Ihr Projekt kennen zu lernen! Vereinbaren Sie noch heute einen Termin mit uns, gerne kommen wir auch zu Ihnen!</p>\r\n<p class="text-contact text-notice font16 fontLight"></p>\r\n\r\n</section><section>\r\n<h2>SIE GLAUBEN, SIE WÄREN NOCH NICHT SO WEIT?</h2>\r\n<p class="text-contact font16 fontLight">Ihr Projekt steckt noch zum Großteil in Ihrem Kopf und Sie möchten sich noch besser vorbereiten?\r\n\r\nKeine Sorge, es ist nie zu früh uns zu kontaktieren. Wir unterstützen Sie dabei Ihre Ideen zu konkretisieren und zu verfeinern und einen Überblick über den Investitions- und Zeitbedarf Ihres Projektes zu gewinnen. Unsere Unterstützung geht weit über Gestaltungsarbeit hinaus - wir sind mit Herz und Seele dabei. Rufen Sie jetzt an - sie können nur gewinnen.\r\n\r\nGerne senden wir Ihnen unverbindlich einige Arbeitsblätter mit passenden Fragen und kreativen Hilfestellungen für Ihre Projektidee zu.</p>\r\n\r\n</section>', 'contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2016-12-04 18:50:30', '2016-12-04 18:50:30', '', 0, 'http://ponta.at/?page_id=71', 0, 'page', '', 0),
(72, 1, '2016-12-04 18:47:02', '2016-12-04 18:47:02', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2016-12-04 18:47:06', '2016-12-04 18:47:06', '', 71, 'http://ponta.at/wp-content/uploads/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2016-12-04 18:47:28', '2016-12-04 18:47:28', '', 'contact', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-12-04 18:47:28', '2016-12-04 18:47:28', '', 71, 'http://ponta.at/71-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-12-04 18:50:30', '2016-12-04 18:50:30', '<section>\r\n<p class="text-contact text-notice font16 fontLight">Offen gesagt - wir können es kaum erwarten Sie und Ihr Projekt kennen zu lernen! Vereinbaren Sie noch heute einen Termin mit uns, gerne kommen wir auch zu Ihnen!</p>\r\n<p class="text-contact text-notice font16 fontLight"></p>\r\n\r\n</section><section>\r\n<h2>SIE GLAUBEN, SIE WÄREN NOCH NICHT SO WEIT?</h2>\r\n<p class="text-contact font16 fontLight">Ihr Projekt steckt noch zum Großteil in Ihrem Kopf und Sie möchten sich noch besser vorbereiten?\r\n\r\nKeine Sorge, es ist nie zu früh uns zu kontaktieren. Wir unterstützen Sie dabei Ihre Ideen zu konkretisieren und zu verfeinern und einen Überblick über den Investitions- und Zeitbedarf Ihres Projektes zu gewinnen. Unsere Unterstützung geht weit über Gestaltungsarbeit hinaus - wir sind mit Herz und Seele dabei. Rufen Sie jetzt an - sie können nur gewinnen.\r\n\r\nGerne senden wir Ihnen unverbindlich einige Arbeitsblätter mit passenden Fragen und kreativen Hilfestellungen für Ihre Projektidee zu.</p>\r\n\r\n</section>', 'contact', '', 'inherit', 'closed', 'closed', '', '71-revision-v1', '', '', '2016-12-04 18:50:30', '2016-12-04 18:50:30', '', 71, 'http://ponta.at/71-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2016-12-04 19:39:19', '2016-12-04 19:39:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:21:"page-what-we-make.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'what we make page', 'what-we-make-page', 'publish', 'closed', 'closed', '', 'group_584470afe5dea', '', '', '2016-12-04 19:41:54', '2016-12-04 19:41:54', '', 0, 'http://ponta.at/?post_type=acf-field-group&#038;p=76', 0, 'acf-field-group', '', 0),
(77, 1, '2016-12-04 19:39:19', '2016-12-04 19:39:19', 'a:13:{s:4:"type";s:8:"taxonomy";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:8:"taxonomy";s:18:"portfolio_category";s:10:"field_type";s:8:"checkbox";s:10:"allow_null";i:0;s:8:"add_term";i:1;s:10:"save_terms";i:0;s:10:"load_terms";i:0;s:13:"return_format";s:2:"id";s:17:"conditional_logic";i:0;s:8:"multiple";i:0;}', 'Category', 'category', 'publish', 'closed', 'closed', '', 'field_584470cb5277b', '', '', '2016-12-04 19:41:54', '2016-12-04 19:41:54', '', 76, 'http://ponta.at/?post_type=acf-field&#038;p=77', 0, 'acf-field', '', 0),
(78, 1, '2016-12-04 19:41:11', '2016-12-04 19:41:11', '', 'What We Make', '', 'publish', 'closed', 'closed', '', 'what-we-make', '', '', '2016-12-09 16:03:18', '2016-12-09 16:03:18', '', 0, 'http://ponta.at/?page_id=78', 0, 'page', '', 0),
(79, 1, '2016-12-04 19:41:11', '2016-12-04 19:41:11', '', 'What We Make', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2016-12-04 19:41:11', '2016-12-04 19:41:11', '', 78, 'http://ponta.at/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2016-12-04 19:42:41', '2016-12-04 19:42:41', '', 'What We Make', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2016-12-04 19:42:41', '2016-12-04 19:42:41', '', 78, 'http://ponta.at/78-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2016-12-05 20:06:38', '2016-12-05 20:06:38', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:15:"page-agency.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Page Agency', 'page-agency', 'publish', 'closed', 'closed', '', 'group_5845c846ab4df', '', '', '2016-12-05 20:47:22', '2016-12-05 20:47:22', '', 0, 'http://ponta.at/?post_type=acf-field-group&#038;p=81', 0, 'acf-field-group', '', 0),
(82, 1, '2016-12-05 20:06:38', '2016-12-05 20:06:38', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";i:0;}', 'Items', 'items', 'publish', 'closed', 'closed', '', 'field_5845c84e051cc', '', '', '2016-12-05 20:06:38', '2016-12-05 20:06:38', '', 81, 'http://ponta.at/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 1, '2016-12-05 20:06:38', '2016-12-05 20:06:38', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_5845c899051cd', '', '', '2016-12-05 20:06:38', '2016-12-05 20:06:38', '', 82, 'http://ponta.at/?post_type=acf-field&p=83', 0, 'acf-field', '', 0),
(84, 1, '2016-12-05 20:06:38', '2016-12-05 20:06:38', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5845c8a1051ce', '', '', '2016-12-05 20:47:22', '2016-12-05 20:47:22', '', 82, 'http://ponta.at/?post_type=acf-field&#038;p=84', 1, 'acf-field', '', 0),
(85, 1, '2016-12-05 20:06:38', '2016-12-05 20:06:38', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;s:17:"conditional_logic";i:0;}', 'Content', 'content', 'publish', 'closed', 'closed', '', 'field_5845c8b9051cf', '', '', '2016-12-05 20:06:38', '2016-12-05 20:06:38', '', 82, 'http://ponta.at/?post_type=acf-field&p=85', 2, 'acf-field', '', 0),
(86, 1, '2016-12-05 20:07:57', '2016-12-05 20:07:57', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5845c90241324', '', '', '2016-12-05 20:07:57', '2016-12-05 20:07:57', '', 81, 'http://ponta.at/?post_type=acf-field&p=86', 1, 'acf-field', '', 0),
(87, 1, '2016-12-05 20:07:57', '2016-12-05 20:07:57', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Phone', 'phone', 'publish', 'closed', 'closed', '', 'field_5845c90b41325', '', '', '2016-12-05 20:07:57', '2016-12-05 20:07:57', '', 81, 'http://ponta.at/?post_type=acf-field&p=87', 2, 'acf-field', '', 0),
(88, 1, '2016-12-05 20:07:57', '2016-12-05 20:07:57', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";s:17:"conditional_logic";i:0;}', 'Skype', 'skype', 'publish', 'closed', 'closed', '', 'field_5845c91141326', '', '', '2016-12-05 20:07:57', '2016-12-05 20:07:57', '', 81, 'http://ponta.at/?post_type=acf-field&p=88', 3, 'acf-field', '', 0),
(89, 1, '2016-12-05 20:44:44', '2016-12-05 20:44:44', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";s:17:"conditional_logic";i:0;}', 'Customer', 'customer', 'publish', 'closed', 'closed', '', 'field_5845d16cb10ef', '', '', '2016-12-05 20:44:44', '2016-12-05 20:44:44', '', 81, 'http://ponta.at/?post_type=acf-field&p=89', 4, 'acf-field', '', 0),
(90, 1, '2016-12-05 20:44:44', '2016-12-05 20:44:44', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";s:17:"conditional_logic";i:0;}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_5845d178b10f0', '', '', '2016-12-05 20:44:44', '2016-12-05 20:44:44', '', 89, 'http://ponta.at/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2016-12-05 20:44:44', '2016-12-05 20:44:44', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";s:17:"conditional_logic";i:0;}', 'Comment', 'comment', 'publish', 'closed', 'closed', '', 'field_5845d19cb10f1', '', '', '2016-12-05 20:44:44', '2016-12-05 20:44:44', '', 89, 'http://ponta.at/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2016-12-05 20:46:45', '2016-12-05 20:46:45', '', 'Agency', '', 'publish', 'closed', 'closed', '', 'agency', '', '', '2016-12-05 20:52:24', '2016-12-05 20:52:24', '', 0, 'http://ponta.at/?page_id=92', 0, 'page', '', 0),
(93, 1, '2016-12-05 20:46:21', '2016-12-05 20:46:21', '', 'img1', '', 'inherit', 'open', 'closed', '', 'img1', '', '', '2016-12-05 20:47:38', '2016-12-05 20:47:38', '', 92, 'http://ponta.at/wp-content/uploads/img1.jpg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2016-12-05 20:46:45', '2016-12-05 20:46:45', '', 'Agency', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-12-05 20:46:45', '2016-12-05 20:46:45', '', 92, 'http://ponta.at/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-12-05 20:49:24', '2016-12-05 20:49:24', '', 'img2', '', 'inherit', 'open', 'closed', '', 'img2', '', '', '2016-12-05 20:49:29', '2016-12-05 20:49:29', '', 92, 'http://ponta.at/wp-content/uploads/img2.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2016-12-05 20:49:48', '2016-12-05 20:49:48', '', 'img3', '', 'inherit', 'open', 'closed', '', 'img3', '', '', '2016-12-05 20:49:50', '2016-12-05 20:49:50', '', 92, 'http://ponta.at/wp-content/uploads/img3.jpg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2016-12-05 20:50:07', '2016-12-05 20:50:07', '', 'img4', '', 'inherit', 'open', 'closed', '', 'img4', '', '', '2016-12-05 20:50:09', '2016-12-05 20:50:09', '', 92, 'http://ponta.at/wp-content/uploads/img4.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2016-12-05 20:51:34', '2016-12-05 20:51:34', '', 'woman', '', 'inherit', 'open', 'closed', '', 'woman', '', '', '2016-12-05 20:52:14', '2016-12-05 20:52:14', '', 92, 'http://ponta.at/wp-content/uploads/woman.png', 0, 'attachment', 'image/png', 0),
(99, 1, '2016-12-05 20:51:54', '2016-12-05 20:51:54', '', 'barack-obama', '', 'inherit', 'open', 'closed', '', 'barack-obama', '', '', '2016-12-05 20:51:57', '2016-12-05 20:51:57', '', 92, 'http://ponta.at/wp-content/uploads/barack-obama.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2016-12-05 20:52:24', '2016-12-05 20:52:24', '', 'Agency', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2016-12-05 20:52:24', '2016-12-05 20:52:24', '', 92, 'http://ponta.at/92-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2016-12-09 14:53:16', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 14:53:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/ponta/?p=101', 1, 'nav_menu_item', '', 0),
(102, 1, '2016-12-09 14:55:17', '2016-12-09 14:55:17', ' ', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2016-12-09 15:04:20', '2016-12-09 15:04:20', '', 0, 'http://localhost/ponta/?p=102', 1, 'nav_menu_item', '', 0),
(103, 1, '2016-12-09 14:55:17', '2016-12-09 14:55:17', ' ', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2016-12-09 15:04:20', '2016-12-09 15:04:20', '', 0, 'http://localhost/ponta/?p=103', 3, 'nav_menu_item', '', 0),
(104, 1, '2016-12-09 14:53:16', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2016-12-09 14:53:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/ponta/?p=104', 1, 'nav_menu_item', '', 0),
(107, 1, '2016-12-09 15:04:54', '2016-12-09 15:04:54', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2016-12-09 15:40:15', '2016-12-09 15:40:15', '', 0, 'http://localhost/ponta/?page_id=107', 0, 'page', '', 0),
(106, 1, '2016-12-09 15:04:20', '2016-12-09 15:04:20', ' ', '', '', 'publish', 'closed', 'closed', '', '106', '', '', '2016-12-09 15:04:20', '2016-12-09 15:04:20', '', 0, 'http://localhost/ponta/?p=106', 2, 'nav_menu_item', '', 0),
(108, 1, '2016-12-09 15:04:54', '2016-12-09 15:04:54', '', 'home', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2016-12-09 15:04:54', '2016-12-09 15:04:54', '', 107, 'http://localhost/ponta/107-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2016-12-09 15:25:41', '2016-12-09 15:25:41', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:3:"107";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'home', 'home', 'publish', 'closed', 'closed', '', 'group_584accaddd388', '', '', '2016-12-09 15:26:30', '2016-12-09 15:26:30', '', 0, 'http://localhost/ponta/?post_type=acf-field-group&#038;p=109', 0, 'acf-field-group', '', 0),
(110, 1, '2016-12-09 15:25:41', '2016-12-09 15:25:41', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Dynamic Text', 'dynamic_text', 'publish', 'closed', 'closed', '', 'field_584accbfed351', '', '', '2016-12-09 15:25:41', '2016-12-09 15:25:41', '', 109, 'http://localhost/ponta/?post_type=acf-field&p=110', 0, 'acf-field', '', 0),
(111, 1, '2016-12-09 15:26:30', '2016-12-09 15:26:30', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'text', 'text', 'publish', 'closed', 'closed', '', 'field_584accfb427df', '', '', '2016-12-09 15:26:30', '2016-12-09 15:26:30', '', 110, 'http://localhost/ponta/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2016-12-09 15:36:26', '2016-12-09 15:36:26', '', 'home', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2016-12-09 15:36:26', '2016-12-09 15:36:26', '', 107, 'http://localhost/ponta/107-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2016-12-09 15:38:24', '2016-12-09 15:38:24', '', 'home', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2016-12-09 15:38:24', '2016-12-09 15:38:24', '', 107, 'http://localhost/ponta/107-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2016-12-09 15:40:15', '2016-12-09 15:40:15', '', 'home', '', 'inherit', 'closed', 'closed', '', '107-revision-v1', '', '', '2016-12-09 15:40:15', '2016-12-09 15:40:15', '', 107, 'http://localhost/ponta/107-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_termmeta`
--

CREATE TABLE `ponta_at_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_terms`
--

CREATE TABLE `ponta_at_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_terms`
--

INSERT INTO `ponta_at_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'CD/Branding', 'cdbranding', 0),
(3, 'Print Design', 'print-design', 0),
(4, 'Illustrator', 'illustrator', 0),
(5, 'Webentwicklung', 'webentwicklung', 0),
(6, 'UX &amp; Interface', 'ux-interface', 0),
(8, 'KO', 'ko', 0),
(9, 'Main menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_term_relationships`
--

CREATE TABLE `ponta_at_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_term_relationships`
--

INSERT INTO `ponta_at_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(9, 2, 0),
(34, 2, 0),
(40, 2, 0),
(45, 4, 0),
(48, 4, 0),
(51, 3, 0),
(59, 6, 0),
(102, 9, 0),
(103, 9, 0),
(106, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_term_taxonomy`
--

CREATE TABLE `ponta_at_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_term_taxonomy`
--

INSERT INTO `ponta_at_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'portfolio_category', '', 0, 3),
(3, 3, 'portfolio_category', '', 0, 1),
(4, 4, 'portfolio_category', '', 0, 2),
(5, 5, 'portfolio_category', '', 0, 0),
(6, 6, 'portfolio_category', '', 0, 1),
(8, 8, 'portfolio_category', '', 2, 0),
(9, 9, 'nav_menu', '', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_usermeta`
--

CREATE TABLE `ponta_at_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_usermeta`
--

INSERT INTO `ponta_at_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'ponta_at_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'ponta_at_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:"31e88b8b0a4d10e1b4f9b5ae4603c66c11e49d7b154ead1c3ff6331bbbcb6e04";a:4:{s:10:"expiration";i:1481296125;s:2:"ip";s:13:"113.20.117.39";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1480086525;}s:64:"97828e87df12895d7449f94892be5e252f0402fda21e9c8782d8a3c715a473b0";a:4:{s:10:"expiration";i:1481467179;s:2:"ip";s:13:"113.20.117.39";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1480257579;}s:64:"43cc076dc164b745449f9745b7d87d30414773130e88b35efe53701050744cc4";a:4:{s:10:"expiration";i:1481468843;s:2:"ip";s:14:"116.107.154.49";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.138 Chrome/52.3.2743.138 Safari/537.36";s:5:"login";i:1480259243;}s:64:"dd35e8ab9c347d1e366ab251cc18db3da0e164402d2124b7e1d680a30e1a1d66";a:4:{s:10:"expiration";i:1481477210;s:2:"ip";s:14:"213.225.15.185";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/54.0.2840.99 Safari/537.36";s:5:"login";i:1480267610;}s:64:"0360be50f703814ab9ef71b3ac099f93694efde3f78762bd7dd8334e04b0e259";a:4:{s:10:"expiration";i:1482504559;s:2:"ip";s:3:"::1";s:2:"ua";s:127:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/58.3.138 Chrome/52.3.2743.138 Safari/537.36";s:5:"login";i:1481294959;}}'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:23:"add-post-type-portfolio";i:1;s:12:"add-post_tag";i:2;s:22:"add-portfolio_category";}'),
(26, 1, 'nav_menu_recently_edited', '9'),
(15, 1, 'ponta_at_dashboard_quick_press_last_post_id', '62'),
(17, 1, 'itsec_user_activity_last_seen', '1481230802'),
(18, 1, 'itsec-settings-view', 'grid'),
(19, 1, 'acf_user_settings', 'a:0:{}'),
(20, 1, 'ponta_at_user-settings', 'libraryContent=browse&editor=tinymce'),
(21, 1, 'ponta_at_user-settings-time', '1481295190'),
(22, 1, 'closedpostboxes_portfolio', 'a:0:{}'),
(23, 1, 'metaboxhidden_portfolio', 'a:6:{i:0;s:11:"postexcerpt";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `ponta_at_users`
--

CREATE TABLE `ponta_at_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ponta_at_users`
--

INSERT INTO `ponta_at_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BNttD4ocFByN9evzUJ746rs/uNV6l10', 'admin', 'TNQ.e250@gmail.com', '', '2016-11-24 07:05:24', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ponta_at_commentmeta`
--
ALTER TABLE `ponta_at_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ponta_at_comments`
--
ALTER TABLE `ponta_at_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `ponta_at_itsec_lockouts`
--
ALTER TABLE `ponta_at_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Indexes for table `ponta_at_itsec_log`
--
ALTER TABLE `ponta_at_itsec_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_type` (`log_type`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `ponta_at_itsec_temp`
--
ALTER TABLE `ponta_at_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Indexes for table `ponta_at_links`
--
ALTER TABLE `ponta_at_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `ponta_at_options`
--
ALTER TABLE `ponta_at_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `ponta_at_postmeta`
--
ALTER TABLE `ponta_at_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ponta_at_posts`
--
ALTER TABLE `ponta_at_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `ponta_at_termmeta`
--
ALTER TABLE `ponta_at_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ponta_at_terms`
--
ALTER TABLE `ponta_at_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `ponta_at_term_relationships`
--
ALTER TABLE `ponta_at_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `ponta_at_term_taxonomy`
--
ALTER TABLE `ponta_at_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `ponta_at_usermeta`
--
ALTER TABLE `ponta_at_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `ponta_at_users`
--
ALTER TABLE `ponta_at_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ponta_at_commentmeta`
--
ALTER TABLE `ponta_at_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ponta_at_comments`
--
ALTER TABLE `ponta_at_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `ponta_at_itsec_lockouts`
--
ALTER TABLE `ponta_at_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `ponta_at_itsec_log`
--
ALTER TABLE `ponta_at_itsec_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=858;
--
-- AUTO_INCREMENT for table `ponta_at_itsec_temp`
--
ALTER TABLE `ponta_at_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;
--
-- AUTO_INCREMENT for table `ponta_at_links`
--
ALTER TABLE `ponta_at_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ponta_at_options`
--
ALTER TABLE `ponta_at_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;
--
-- AUTO_INCREMENT for table `ponta_at_postmeta`
--
ALTER TABLE `ponta_at_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=496;
--
-- AUTO_INCREMENT for table `ponta_at_posts`
--
ALTER TABLE `ponta_at_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `ponta_at_termmeta`
--
ALTER TABLE `ponta_at_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `ponta_at_terms`
--
ALTER TABLE `ponta_at_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ponta_at_term_taxonomy`
--
ALTER TABLE `ponta_at_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `ponta_at_usermeta`
--
ALTER TABLE `ponta_at_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `ponta_at_users`
--
ALTER TABLE `ponta_at_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
