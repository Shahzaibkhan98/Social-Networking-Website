-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 16, 2019 at 05:57 PM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s_network`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `com_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `datee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`com_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`com_id`, `post_id`, `user_id`, `comment`, `comment_author`, `datee`) VALUES
(1, 10, 1, 'Hello										', 'ali_sher_595642', '2019-01-27 07:54:57'),
(2, 10, 1, 'How are you?							', 'ali_sher_595642', '2019-01-27 08:00:06'),
(3, 6, 2, 'Hi										', 'ali_sher_595642', '2019-01-27 08:05:25'),
(4, 10, 1, 'hello!', 'shahzaib_khan_678466', '2019-01-28 03:09:26'),
(5, 3, 2, 'Bharwa', 'shahzaib_khan_678466', '2019-01-28 03:42:10'),
(6, 11, 2, 'nice pic', 'shahzaib_khan_678466', '2019-01-28 05:27:30');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_content` varchar(255) NOT NULL,
  `upload_image` varchar(255) NOT NULL,
  `post_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `post_content`, `upload_image`, `post_date`) VALUES
(11, 2, 'hello', 'EquinoxSunset_Christen_1852.jpg.57', '2019-01-28 03:49:34'),
(3, 2, 'Hello!', 'skamath-HD-Wallpapers1.jpg.88', '2019-01-26 07:50:44'),
(4, 2, 'Winter!', 'winter-wall-08.jpg.54', '2019-01-26 08:12:33'),
(14, 2, 'Hello Everyone!!!', '', '2019-01-29 14:22:45'),
(12, 2, 'No', '1_V-rl7xDCqZUBc98Z4QRhGQ.jpeg.9', '2019-01-29 04:56:37'),
(9, 1, 'No', 'view-wallpaper_6014380.jpg.38', '2019-01-26 16:17:49'),
(10, 1, 'I am Ali', '', '2019-01-26 16:18:00'),
(15, 1, 'Something!!!', 'view-wallpaper_6014380.jpg.70', '2019-01-29 14:27:21'),
(16, 2, 'Ashar ALi', '', '2019-02-08 09:13:56');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `user_name` text NOT NULL,
  `describe_user` varchar(255) NOT NULL,
  `relationship` text NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_country` text NOT NULL,
  `user_gender` varchar(255) NOT NULL,
  `user_birthday` text NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_cover` varchar(255) NOT NULL,
  `user_reg_date` timestamp NOT NULL,
  `status` varchar(255) NOT NULL,
  `posts` varchar(255) NOT NULL,
  `recovery_account` varchar(255) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `f_name`, `l_name`, `user_name`, `describe_user`, `relationship`, `user_pass`, `user_email`, `user_country`, `user_gender`, `user_birthday`, `user_image`, `user_cover`, `user_reg_date`, `status`, `posts`, `recovery_account`) VALUES
(1, 'Ali', 'Sher', 'ali_sher_595642', 'Hello I am ali sher', 'Single', '123456789', 'alisher@gmail.com', 'United States', 'Male', '1999-03-05', 'head_sun_flower.jpg.16', 'head_turqoise.jpg.2', '2019-01-22 18:12:36', 'verified', 'yes', 'Mazher'),
(2, 'Shahzaib', 'Khan', 'shahzaib_khan_678466', 'Hello Coding Cafe.This is my default status!', 'Single', '123456789', 'shahzaibkhan@gmail.com', 'Pakistan', 'Male', '1998-02-04', 'head_turqoise.jpg', 'surreal-winter-landscape-1366x768.jpg.18', '2019-01-22 18:17:22', 'verified', 'yes', 'Iwanttoputading intheuniverse.'),
(3, 'Ali', 'Khan', 'ali_khan_66528', 'Hello Coding Cafe.This is my default status!', '...', '123456789', 'alikhan@gmail.com', 'Pakistan', 'Male', '1992-12-02', 'head_red.jpg', 'default_cover.jpg', '2019-01-22 18:19:07', 'verified', 'no', 'Iwanttoputading intheuniverse.'),
(4, 'Amir', 'Khan', 'amir_khan_937500', 'Hello Coding Cafe.This is my default status!', '...', '123456789', 'amirkhan@gmail.com', 'Pakistan', 'Male', '2001-01-01', 'head_sun_flower.jpg', 'default_cover.jpg', '2019-01-22 18:32:07', 'verified', 'no', 'Iwanttoputading intheuniverse.');

-- --------------------------------------------------------

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
CREATE TABLE IF NOT EXISTS `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_to` int(11) NOT NULL,
  `user_from` int(11) NOT NULL,
  `msg_body` varchar(200) NOT NULL,
  `datee` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `msg_seen` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_messages`
--

INSERT INTO `user_messages` (`id`, `user_to`, `user_from`, `msg_body`, `datee`, `msg_seen`) VALUES
(1, 1, 2, 'Hello!!!', '2019-01-28 16:22:59', 'no'),
(2, 1, 2, 'How are you?', '2019-01-28 16:33:02', 'no'),
(3, 1, 2, 'How are you?', '2019-01-28 16:33:06', 'no'),
(4, 1, 2, 'hi!', '2019-01-28 16:33:35', 'no'),
(5, 2, 1, 'hi!!!!', '2019-01-28 17:24:53', 'no'),
(6, 2, 1, 'hi!!!!', '2019-01-28 17:25:06', 'no'),
(7, 2, 1, 'hello!!!!!!!!!!', '2019-01-28 17:25:37', 'no'),
(8, 1, 1, 'hi', '2019-01-28 17:26:48', 'no'),
(9, 2, 1, 'how r u?', '2019-01-28 17:29:05', 'no'),
(10, 1, 2, 'hello', '2019-01-29 04:50:18', 'no'),
(11, 1, 2, 'hello', '2019-01-29 04:50:27', 'no'),
(12, 2, 1, 'vsdjhgjdAS', '2019-02-01 09:23:40', 'no'),
(13, 4, 2, 'hello', '2019-02-08 09:15:15', 'no');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
