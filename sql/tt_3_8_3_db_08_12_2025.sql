-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 08, 2025 at 04:26 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 7.2.30

START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tt_v_3_8_3_db`
--
CREATE DATABASE IF NOT EXISTS `tt_v_3_8_3_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE tt_v_3_8_3_db;

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:14 PM
--

DROP TABLE IF EXISTS `announce`;
CREATE TABLE IF NOT EXISTS `announce` (
  `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `torrent` int(10) UNSIGNED NOT NULL,
  `seeders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `leechers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `online` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `torrent` (`torrent`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `announce`
--

TRUNCATE TABLE `announce`;
-- --------------------------------------------------------

--
-- Table structure for table `bans`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
-- Last check: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `bans`;
CREATE TABLE IF NOT EXISTS `bans` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `added` datetime DEFAULT NULL,
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `first` varchar(39) DEFAULT NULL,
  `last` varchar(39) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `first_last` (`first`,`last`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `bans`
--

TRUNCATE TABLE `bans`;
-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `blocks`;
CREATE TABLE IF NOT EXISTS `blocks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `named` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(3) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `blocks`
--

TRUNCATE TABLE `blocks`;
--
-- Dumping data for table `blocks`
--

INSERT DELAYED IGNORE INTO `blocks` (`id`, `named`, `name`, `position`, `description`, `enabled`, `sort`) VALUES
(1, 'donate', 'donate', 'right', 'PAYPAL', 0, 0),
(2, 'invite', 'invite', 'right', 'Description here...', 0, 0),
(3, 'Main Navigation', 'navigate', 'right', 'Description here...', 1, 1),
(4, 'Login Block', 'login', 'left', 'Description here...', 1, 1),
(5, 'rss', 'rss', 'right', 'rss', 1, 2),
(6, 'latestuploads', 'latestuploads', 'right', 'Description here...', 1, 3),
(8, 'serverload', 'serverload', 'right', 'Description here...', 0, 0),
(9, 'usersonline', 'usersonline', 'left', 'Description here...', 1, 2),
(10, 'Main Category', 'maincats', 'left', 'Description here...', 1, 3),
(11, 'simplesearch', 'simplesearch', 'right', 'Description here...', 0, 0),
(12, 'advancesearch', 'advancesearch', 'middle', 'Description here...', 0, 0),
(13, 'latestimages', 'latestimages', 'right', 'Description here...', 0, 0),
(14, 'mostactivetorrents', 'mostactivetorrents', 'left', 'Description here...', 0, 0),
(15, 'scrollingnews', 'scrollingnews', 'right', 'Description here...', 0, 0),
(16, 'newestmember', 'newestmember', 'left', 'Description here...', 1, 4),
(17, 'polls', 'polls', 'right', 'Description here...', 0, 0),
(18, 'seedwanted', 'seedwanted', 'right', 'Description here...', 0, 0),
(19, 'Theme & Language', 'themelang', 'left', 'Description here...', 0, 0),
(20, 'Powered By', 'poweredby', 'right', 'Description here...', 0, 0),
(21, 'admincp', 'admincp', 'left', '', 0, 0),
(22, 'imdb', 'imdb', 'right', 'IMDB search block', 0, 0),
(27, 'usersonlinetoday', 'usersonlinetoday', 'right', '', 1, 4),
(29, 'foldermonitor', 'foldermonitor', 'right', '', 0, 0),
(30, 'pornhub', 'pornhub', 'right', 'porn', 0, 0),
(31, 'porn', 'porn', 'right', '', 0, 0),
(33, 'clock-calendar', 'clock-callender', 'right', '', 0, 0),
(34, 'Google', 'Google', 'right', '', 0, 0),
(35, 'youtube', 'youtube', 'right', 'YOUTUBE', 0, 0),
(36, 'lastups-scroll', 'lastups-scroll', 'right', '', 0, 0),
(37, 'advancestats', 'advancestats', 'right', '', 0, 0),
(38, 'latestrequest', 'latestrequest', 'right', 'Request block fuckers', 0, 0),
(39, 'radio', 'radio', 'right', '', 0, 0),
(40, 'dvd release dates', 'dvddates', 'right', 'Dvd release dates', 0, 0),
(41, 'announcements', 'announcements', 'middle', 'ANNOUNCEMENTS PM', 0, 0),
(44, 'teamspeak', 'teamspeak', 'right', 'TEAMSPEAK', 0, 0),
(45, 'activetransfer', 'activetransfer', 'right', '', 0, 0),
(46, 'TESTusersonline', 'TESTusersonline', 'left', '', 0, 0),
(49, 'arma3', 'arma3', 'right', '', 0, 0),
(48, 'arma3ARMAGEDDON', 'arma3ARMAGEDDON', 'right', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `sort_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT '',
  `subcat` char(3) NOT NULL DEFAULT 'no',
  `parent_cat` varchar(15) NOT NULL DEFAULT '',
  `sub_sort` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `parent_cat-name` (`parent_cat`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `categories`
--

TRUNCATE TABLE `categories`;
--
-- Dumping data for table `categories`
--

INSERT DELAYED IGNORE INTO `categories` (`id`, `name`, `sort_index`, `image`, `subcat`, `parent_cat`, `sub_sort`) VALUES
(2, 'OTHER', 1, '1.png', 'yes', 'OTHER', '2'),
(6, 'SERIE', 2, '33.png', 'yes', 'SERIE 720p', '6'),
(18, 'FILM', 3, '31.png', 'yes', 'FILM 1080p', '18'),
(22, 'MP3-FLAC', 7, '01.png', 'yes', 'MUSIC', '22'),
(53, 'FILM', 10, '4K.png', 'no', 'FILM 4K', ''),
(55, 'FILM', 8, '17.png', 'no', 'FILM 720p', ''),
(57, 'SERIE', 5, '4K.png', 'no', 'SERIE 4K', ''),
(61, 'SERIE', 11, '34.png', 'no', 'SERIE 1080p', '');

-- --------------------------------------------------------

--
-- Table structure for table `censor`
--
-- Creation: Dec 02, 2025 at 10:17 AM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `censor`;
CREATE TABLE IF NOT EXISTS `censor` (
  `word` varchar(25) NOT NULL DEFAULT '',
  `censor` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `censor`
--

TRUNCATE TABLE `censor`;
-- --------------------------------------------------------

--
-- Table structure for table `comments`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:19 PM
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `torrent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `text` text NOT NULL,
  `news` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user` (`user`),
  KEY `torrent` (`torrent`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `comments`
--

TRUNCATE TABLE `comments`;
--
-- Dumping data for table `comments`
--

INSERT DELAYED IGNORE INTO `comments` (`id`, `user`, `torrent`, `added`, `text`, `news`) VALUES
(1, 1, 1, '2025-09-29 19:55:41', '1-st comment', 0),
(2, 1, 8, '2025-10-17 14:44:01', 'First comment on this torrent...', 0),
(3, 1, 2, '2025-12-02 19:09:53', 'Comment #1 on torrent #2', 0),
(4, 1, 1, '2025-12-08 16:19:20', ' B) ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `completed`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:13 PM
--

DROP TABLE IF EXISTS `completed`;
CREATE TABLE IF NOT EXISTS `completed` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(10) NOT NULL DEFAULT 0,
  `torrentid` int(10) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid_torrentid` (`userid`,`torrentid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `completed`
--

TRUNCATE TABLE `completed`;
-- --------------------------------------------------------

--
-- Table structure for table `countries`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `countries`;
CREATE TABLE IF NOT EXISTS `countries` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `flagpic` varchar(50) DEFAULT NULL,
  `domain` char(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `countries`
--

TRUNCATE TABLE `countries`;
--
-- Dumping data for table `countries`
--

INSERT DELAYED IGNORE INTO `countries` (`id`, `name`, `flagpic`, `domain`) VALUES
(1, 'Sweden', 'sweden.png', 'SE'),
(2, 'United States of America', 'usa.png', 'US'),
(3, 'Russia', 'russia.png', 'RU'),
(4, 'Finland', 'finland.png', 'FI'),
(5, 'Canada', 'canada.png', 'CA'),
(6, 'France', 'france.png', 'FR'),
(7, 'Germany', 'germany.png', 'DE'),
(8, 'China', 'china.png', 'CN'),
(9, 'Italy', 'italy.png', 'IT'),
(10, 'Denmark', 'denmark.png', 'DK'),
(11, 'Norway', 'norway.png', 'NO'),
(12, 'United Kingdom', 'uk.png', 'UK'),
(13, 'Ireland', 'ireland.png', 'IE'),
(14, 'Poland', 'poland.png', 'PL'),
(15, 'Netherlands', 'netherlands.png', 'NL'),
(16, 'Belgium', 'belgium.png', 'BE'),
(17, 'Japan', 'japan.png', 'JP'),
(18, 'Brazil', 'brazil.png', 'BR'),
(19, 'Argentina', 'argentina.png', 'AR'),
(20, 'Australia', 'australia.png', 'AU'),
(21, 'New Zealand', 'newzealand.png', 'NZ'),
(23, 'Spain', 'spain.png', 'ES'),
(24, 'Portugal', 'portugal.png', 'PT'),
(25, 'Mexico', 'mexico.png', 'MX'),
(26, 'Singapore', 'singapore.png', 'SG'),
(29, 'South Africa', 'southafrica.png', 'ZA'),
(30, 'South Korea', 'southkorea.png', 'KR'),
(31, 'Jamaica', 'jamaica.png', 'JM'),
(32, 'Luxembourg', 'luxembourg.png', 'LU'),
(33, 'Hong Kong', 'hongkong.png', 'HK'),
(34, 'Belize', 'belize.png', 'BZ'),
(35, 'Algeria', 'algeria.png', 'DZ'),
(36, 'Angola', 'angola.png', 'AO'),
(37, 'Austria', 'austria.png', 'AT'),
(38, 'Yugoslavia', 'yugoslavia.png', 'YU'),
(39, 'Western Samoa', 'westernsamoa.png', 'WS'),
(40, 'Malaysia', 'malaysia.png', 'MY'),
(41, 'Dominican Republic', 'dominicanrep.png', 'DO'),
(42, 'Greece', 'greece.png', 'GR'),
(43, 'Guatemala', 'guatemala.png', 'GT'),
(44, 'Israel', 'israel.png', 'IL'),
(45, 'Pakistan', 'pakistan.png', 'PK'),
(46, 'Czech Republic', 'czechrep.png', 'CZ'),
(47, 'Serbia', 'serbia.png', 'YU'),
(48, 'Seychelles', 'seychelles.png', 'SC'),
(49, 'Taiwan', 'taiwan.png', 'TW'),
(50, 'Puerto Rico', 'puertorico.png', 'PR'),
(51, 'Chile', 'chile.png', 'CL'),
(52, 'Cuba', 'cuba.png', 'CU'),
(53, 'Congo', 'congo.png', 'CG'),
(54, 'Afghanistan', 'afghanistan.png', 'AF'),
(55, 'Turkey', 'turkey.png', 'TR'),
(56, 'Uzbekistan', 'uzbekistan.png', 'UZ'),
(57, 'Switzerland', 'switzerland.png', 'CH'),
(58, 'Kiribati', 'kiribati.png', 'KI'),
(59, 'Philippines', 'philippines.png', 'PH'),
(60, 'Burkina Faso', 'burkinafaso.png', 'BF'),
(61, 'Nigeria', 'nigeria.png', 'NG'),
(62, 'Iceland', 'iceland.png', 'IS'),
(63, 'Nauru', 'nauru.png', 'NR'),
(64, 'Slovenia', 'slovenia.png', 'SI'),
(65, 'Albania', 'albania.png', 'AL'),
(66, 'Turkmenistan', 'turkmenistan.png', 'TM'),
(67, 'Bosnia Herzegovina', 'bosniaherzegovina.png', 'BA'),
(68, 'Andorra', 'andorra.png', 'AD'),
(69, 'Lithuania', 'lithuania.png', 'LT'),
(70, 'India', 'india.png', 'IN'),
(71, 'Netherlands Antilles', 'nethantilles.png', 'AN'),
(72, 'Ukraine', 'ukraine.png', 'UA'),
(73, 'Venezuela', 'venezuela.png', 'VE'),
(74, 'Hungary', 'hungary.png', 'HU'),
(75, 'Romania', 'romania.png', 'RO'),
(76, 'Vanuatu', 'vanuatu.png', 'VU'),
(77, 'Vietnam', 'vietnam.png', 'VN'),
(78, 'Trinidad &amp; Tobago', 'trinidadandtobago.png', 'TT'),
(79, 'Honduras', 'honduras.png', 'HN'),
(80, 'Kyrgyzstan', 'kyrgyzstan.png', 'KG'),
(81, 'Ecuador', 'ecuador.png', 'EC'),
(82, 'Bahamas', 'bahamas.png', 'BS'),
(83, 'Peru', 'peru.png', 'PE'),
(84, 'Cambodia', 'cambodia.png', 'KH'),
(85, 'Barbados', 'barbados.png', 'BB'),
(86, 'Bangladesh', 'bangladesh.png', 'BD'),
(87, 'Laos', 'laos.png', 'LA'),
(88, 'Uruguay', 'uruguay.png', 'UY'),
(89, 'Antigua Barbuda', 'antiguabarbuda.png', 'AG'),
(90, 'Paraguay', 'paraguay.png', 'PY'),
(92, 'Union of Soviet Socialist Republics', 'ussr.png', 'SU'),
(93, 'Thailand', 'thailand.png', 'TH'),
(94, 'Senegal', 'senegal.png', 'SN'),
(95, 'Togo', 'togo.png', 'TG'),
(96, 'North Korea', 'northkorea.png', 'KP'),
(97, 'Croatia', 'croatia.png', 'HR'),
(98, 'Estonia', 'estonia.png', 'EE'),
(99, 'Colombia', 'colombia.png', 'CO'),
(100, 'England', 'england.png', 'GB'),
(101, 'Egypt', 'egypt.png', 'EG');

-- --------------------------------------------------------

--
-- Table structure for table `email_bans`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `email_bans`;
CREATE TABLE IF NOT EXISTS `email_bans` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `mail_domain` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `email_bans`
--

TRUNCATE TABLE `email_bans`;
-- --------------------------------------------------------

--
-- Table structure for table `faq`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `faq`;
CREATE TABLE IF NOT EXISTS `faq` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` set('categ','item') NOT NULL DEFAULT 'item',
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `flag` set('0','1','2','3') NOT NULL DEFAULT '1',
  `categ` int(10) NOT NULL DEFAULT 0,
  `order` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `faq`
--

TRUNCATE TABLE `faq`;
-- --------------------------------------------------------

--
-- Table structure for table `files`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:13 PM
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `torrent` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `filesize` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `torrent` (`torrent`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `files`
--

TRUNCATE TABLE `files`;
-- --------------------------------------------------------

--
-- Table structure for table `forumcats`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `forumcats`;
CREATE TABLE IF NOT EXISTS `forumcats` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `forumcats`
--

TRUNCATE TABLE `forumcats`;
--
-- Dumping data for table `forumcats`
--

INSERT DELAYED IGNORE INTO `forumcats` (`id`, `name`, `sort`) VALUES
(1, 'Bugs in TT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forum_forums`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `forum_forums`;
CREATE TABLE IF NOT EXISTS `forum_forums` (
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `minclassread` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `minclasswrite` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `guest_read` enum('yes','no') DEFAULT 'yes',
  `category` tinyint(2) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `forum_forums`
--

TRUNCATE TABLE `forum_forums`;
--
-- Dumping data for table `forum_forums`
--

INSERT DELAYED IGNORE INTO `forum_forums` (`sort`, `id`, `name`, `description`, `minclassread`, `minclasswrite`, `guest_read`, `category`) VALUES
(1, 1, 'Global test Forum', 'Just Forum testing from ACP', 1, 1, 'yes', 0),
(2, 2, 'New relese of TT', 'Discusion about new update of TT script, test from ACP', 1, 1, 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
-- Last check: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `forum_posts`;
CREATE TABLE IF NOT EXISTS `forum_posts` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `editedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editedat` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topicid` (`topicid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `forum_posts`
--

TRUNCATE TABLE `forum_posts`;
-- --------------------------------------------------------

--
-- Table structure for table `forum_readposts`
--
-- Creation: Dec 02, 2025 at 05:57 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `forum_readposts`;
CREATE TABLE IF NOT EXISTS `forum_readposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpostread` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userid` (`id`),
  KEY `topicid` (`topicid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `forum_readposts`
--

TRUNCATE TABLE `forum_readposts`;
-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--
-- Creation: Dec 02, 2025 at 05:57 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `forum_topics`;
CREATE TABLE IF NOT EXISTS `forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(40) DEFAULT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `forumid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `moved` enum('yes','no') NOT NULL DEFAULT 'no',
  `sticky` enum('yes','no') NOT NULL DEFAULT 'no',
  `views` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `subject` (`subject`),
  KEY `lastpost` (`lastpost`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `forum_topics`
--

TRUNCATE TABLE `forum_topics`;
-- --------------------------------------------------------

--
-- Table structure for table `groups`
--
-- Creation: Dec 02, 2025 at 05:57 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(10) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT '',
  `view_torrents` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_torrents` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete_torrents` enum('yes','no') NOT NULL DEFAULT 'no',
  `view_users` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_users` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete_users` enum('yes','no') NOT NULL DEFAULT 'no',
  `view_news` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_news` enum('yes','no') NOT NULL DEFAULT 'no',
  `delete_news` enum('yes','no') NOT NULL DEFAULT 'no',
  `can_upload` enum('yes','no') NOT NULL DEFAULT 'no',
  `can_download` enum('yes','no') NOT NULL DEFAULT 'yes',
  `view_forum` enum('yes','no') NOT NULL DEFAULT 'yes',
  `edit_forum` enum('yes','no') NOT NULL DEFAULT 'yes',
  `delete_forum` enum('yes','no') NOT NULL DEFAULT 'no',
  `control_panel` enum('yes','no') NOT NULL DEFAULT 'no',
  `staff_page` enum('yes','no') NOT NULL DEFAULT 'no',
  `staff_public` enum('yes','no') NOT NULL DEFAULT 'no',
  `staff_sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  UNIQUE KEY `base` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `groups`
--

TRUNCATE TABLE `groups`;
--
-- Dumping data for table `groups`
--

INSERT DELAYED IGNORE INTO `groups` (`group_id`, `level`, `view_torrents`, `edit_torrents`, `delete_torrents`, `view_users`, `edit_users`, `delete_users`, `view_news`, `edit_news`, `delete_news`, `can_upload`, `can_download`, `view_forum`, `edit_forum`, `delete_forum`, `control_panel`, `staff_page`, `staff_public`, `staff_sort`) VALUES
(1, 'Member', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 7),
(2, 'Power User', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 6),
(3, 'VIP', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'no', 'no', 5),
(4, 'Uploader', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 'no', 'yes', 'no', 4),
(5, 'Moderator', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 3),
(6, 'Super Moderator', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 2),
(7, 'Administrator', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 1),
(8, 'Site Owner', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 8);

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--
-- Creation: Dec 02, 2025 at 05:58 PM
-- Last update: Dec 08, 2025 at 04:12 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `guests`;
CREATE TABLE IF NOT EXISTS `guests` (
  `ip` varchar(39) NOT NULL DEFAULT '',
  `time` decimal(20,0) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`ip`),
  UNIQUE KEY `IP` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `guests`
--

TRUNCATE TABLE `guests`;
-- --------------------------------------------------------

--
-- Table structure for table `languages`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `languages`
--

TRUNCATE TABLE `languages`;
--
-- Dumping data for table `languages`
--

INSERT DELAYED IGNORE INTO `languages` (`id`, `uri`, `name`) VALUES
(1, 'english.php', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--
-- Creation: Dec 02, 2025 at 05:59 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `log`;
CREATE TABLE IF NOT EXISTS `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `added` datetime DEFAULT NULL,
  `txt` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `log`
--

TRUNCATE TABLE `log`;
-- --------------------------------------------------------

--
-- Table structure for table `messages`
--
-- Creation: Dec 02, 2025 at 05:59 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `receiver` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `unread` enum('yes','no') NOT NULL DEFAULT 'yes',
  `poster` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `subject` text NOT NULL DEFAULT '',
  `location` enum('in','out','both','draft','template') NOT NULL DEFAULT 'in',
  PRIMARY KEY (`id`),
  KEY `receiver` (`receiver`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `messages`
--

TRUNCATE TABLE `messages`;
-- --------------------------------------------------------

--
-- Table structure for table `news`
--
-- Creation: Dec 02, 2025 at 05:59 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `added` (`added`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `news`
--

TRUNCATE TABLE `news`;
-- --------------------------------------------------------

--
-- Table structure for table `peers`
--
-- Creation: Dec 02, 2025 at 05:59 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `peers`;
CREATE TABLE IF NOT EXISTS `peers` (
  `id` int(10) UNSIGNED NOT NULL,
  `torrent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `peer_id` varchar(40) NOT NULL DEFAULT '',
  `ip` varchar(64) NOT NULL DEFAULT '',
  `port` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `to_go` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `seeder` enum('yes','no') NOT NULL DEFAULT 'no',
  `started` datetime DEFAULT NULL,
  `last_action` datetime DEFAULT NULL,
  `connectable` enum('yes','no') NOT NULL DEFAULT 'yes',
  `client` varchar(60) NOT NULL DEFAULT '',
  `userid` varchar(32) NOT NULL DEFAULT '',
  `passkey` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `torrent_peer_id` (`torrent`,`peer_id`),
  KEY `torrent` (`torrent`),
  KEY `torrent_seeder` (`torrent`,`seeder`),
  KEY `last_action` (`last_action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `peers`
--

TRUNCATE TABLE `peers`;
-- --------------------------------------------------------

--
-- Table structure for table `pollanswers`
--
-- Creation: Dec 02, 2025 at 05:59 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `pollanswers`;
CREATE TABLE IF NOT EXISTS `pollanswers` (
  `id` int(10) UNSIGNED NOT NULL,
  `pollid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`),
  KEY `selection` (`selection`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `pollanswers`
--

TRUNCATE TABLE `pollanswers`;
-- --------------------------------------------------------

--
-- Table structure for table `polls`
--
-- Creation: Dec 02, 2025 at 05:59 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `polls`;
CREATE TABLE IF NOT EXISTS `polls` (
  `id` int(10) UNSIGNED NOT NULL,
  `added` datetime DEFAULT NULL,
  `question` varchar(255) NOT NULL DEFAULT '',
  `option0` varchar(40) NOT NULL DEFAULT '',
  `option1` varchar(40) NOT NULL DEFAULT '',
  `option2` varchar(40) NOT NULL DEFAULT '',
  `option3` varchar(40) NOT NULL DEFAULT '',
  `option4` varchar(40) NOT NULL DEFAULT '',
  `option5` varchar(40) NOT NULL DEFAULT '',
  `option6` varchar(40) NOT NULL DEFAULT '',
  `option7` varchar(40) NOT NULL DEFAULT '',
  `option8` varchar(40) NOT NULL DEFAULT '',
  `option9` varchar(40) NOT NULL DEFAULT '',
  `option10` varchar(40) NOT NULL DEFAULT '',
  `option11` varchar(40) NOT NULL DEFAULT '',
  `option12` varchar(40) NOT NULL DEFAULT '',
  `option13` varchar(40) NOT NULL DEFAULT '',
  `option14` varchar(40) NOT NULL DEFAULT '',
  `option15` varchar(40) NOT NULL DEFAULT '',
  `option16` varchar(40) NOT NULL DEFAULT '',
  `option17` varchar(40) NOT NULL DEFAULT '',
  `option18` varchar(40) NOT NULL DEFAULT '',
  `option19` varchar(40) NOT NULL DEFAULT '',
  `sort` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `polls`
--

TRUNCATE TABLE `polls`;
-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--
-- Creation: Dec 02, 2025 at 06:00 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `ratings`;
CREATE TABLE IF NOT EXISTS `ratings` (
  `torrent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  PRIMARY KEY (`torrent`,`user`),
  KEY `user` (`user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `ratings`
--

TRUNCATE TABLE `ratings`;
--
-- Dumping data for table `ratings`
--

INSERT DELAYED IGNORE INTO `ratings` (`torrent`, `user`, `rating`, `added`) VALUES
(1, 3, 5, '2025-10-12 19:43:02'),
(8, 1, 5, '2025-10-30 12:04:16'),
(9, 1, 5, '2025-10-30 13:41:50'),
(9, 3, 5, '2025-10-30 23:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--
-- Creation: Dec 02, 2025 at 06:00 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `reports`;
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `votedfor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `votedfor_xtra` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` enum('torrent','user','forum','comment','other') NOT NULL DEFAULT 'torrent',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `dealtby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dealtwith` tinyint(1) NOT NULL DEFAULT 0,
  `complete` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `reports`
--

TRUNCATE TABLE `reports`;
-- --------------------------------------------------------

--
-- Table structure for table `rules`
--
-- Creation: Dec 02, 2025 at 06:01 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `rules`;
CREATE TABLE IF NOT EXISTS `rules` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `public` enum('yes','no') NOT NULL DEFAULT 'yes',
  `class` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `rules`
--

TRUNCATE TABLE `rules`;
-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--
-- Creation: Dec 02, 2025 at 02:09 PM
-- Last update: Dec 08, 2025 at 04:18 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `shoutbox`;
CREATE TABLE IF NOT EXISTS `shoutbox` (
  `msgid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL DEFAULT '0',
  `message` text DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `userid` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `room` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`msgid`),
  KEY `msgid` (`msgid`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Truncate table before insert `shoutbox`
--

TRUNCATE TABLE `shoutbox`;
--
-- Dumping data for table `shoutbox`
--

INSERT DELAYED IGNORE INTO `shoutbox` (`msgid`, `user`, `message`, `date`, `userid`, `room`) VALUES
(1, 'Admin', ' :ok: ', '2025-12-02 14:09:39', 1, 0),
(2, 'Admin', ' :senile: ', '2025-12-02 14:14:59', 1, 0),
(3, 'Admin', ' :read: ', '2025-12-02 14:15:13', 1, 0),
(4, 'Admin', ' :ok: ', '2025-12-02 14:51:31', 1, 0),
(5, 'Admin', ' :w00t: ', '2025-12-08 16:18:21', 1, 0),
(6, 'Admin', ' :t-up: ', '2025-12-08 16:18:27', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sqlerr`
--
-- Creation: Dec 08, 2025 at 04:10 PM
-- Last update: Dec 08, 2025 at 04:10 PM
-- Last check: Dec 08, 2025 at 04:10 PM
--

DROP TABLE IF EXISTS `sqlerr`;
CREATE TABLE IF NOT EXISTS `sqlerr` (
  `id` int(10) UNSIGNED NOT NULL,
  `txt` text NOT NULL DEFAULT '',
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `sqlerr`
--

TRUNCATE TABLE `sqlerr`;
-- --------------------------------------------------------

--
-- Table structure for table `stylesheets`
--
-- Creation: Dec 02, 2025 at 06:03 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `stylesheets`;
CREATE TABLE IF NOT EXISTS `stylesheets` (
  `id` int(10) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `stylesheets`
--

TRUNCATE TABLE `stylesheets`;
--
-- Dumping data for table `stylesheets`
--

INSERT DELAYED IGNORE INTO `stylesheets` (`id`, `uri`, `name`) VALUES
(1, 'default', 'default'),
(113, 'Dark Gray', 'GRAY');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--
-- Creation: Dec 02, 2025 at 06:03 PM
-- Last update: Dec 08, 2025 at 04:23 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `tasks`;
CREATE TABLE IF NOT EXISTS `tasks` (
  `task` varchar(20) NOT NULL DEFAULT '',
  `last_time` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `tasks`
--

TRUNCATE TABLE `tasks`;
--
-- Dumping data for table `tasks`
--

INSERT DELAYED IGNORE INTO `tasks` (`task`, `last_time`) VALUES
('cleanup', 1765211013);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--
-- Creation: Dec 02, 2025 at 06:03 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(10) NOT NULL,
  `added` datetime DEFAULT NULL,
  `owner` int(10) NOT NULL DEFAULT 0,
  `info` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `teams`
--

TRUNCATE TABLE `teams`;
-- --------------------------------------------------------

--
-- Table structure for table `torrentlang`
--
-- Creation: Dec 02, 2025 at 06:04 PM
-- Last update: Dec 08, 2025 at 04:09 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `torrentlang`;
CREATE TABLE IF NOT EXISTS `torrentlang` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `torrentlang`
--

TRUNCATE TABLE `torrentlang`;
--
-- Dumping data for table `torrentlang`
--

INSERT DELAYED IGNORE INTO `torrentlang` (`id`, `name`, `image`, `sort_index`) VALUES
(1, 'English', 'english.gif', 1),
(2, 'French', 'french.jpg', 1),
(3, 'German', 'german.jpg', 1),
(4, 'Italian', 'italian.jpg', 1),
(5, 'Japanese', 'japanese.jpg', 1),
(6, 'Spanish', 'spanish.jpg', 1),
(7, 'Russian', 'russian.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `torrents`
--
-- Creation: Dec 02, 2025 at 05:02 PM
-- Last update: Dec 08, 2025 at 04:24 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `torrents`;
CREATE TABLE IF NOT EXISTS `torrents` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `info_hash` varchar(40) DEFAULT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `save_as` varchar(255) NOT NULL DEFAULT '',
  `descr` text NOT NULL,
  `poster` varchar(255) DEFAULT NULL,
  `poster2` varchar(255) DEFAULT NULL,
  `category` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `size` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `type` enum('single','multi') NOT NULL DEFAULT 'single',
  `numfiles` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comments` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `views` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `leechers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `seeders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `last_action` datetime DEFAULT NULL,
  `visible` enum('yes','no') NOT NULL DEFAULT 'yes',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `owner` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `anon` enum('yes','no') NOT NULL DEFAULT 'no',
  `numratings` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ratingsum` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `nfo` enum('yes','no') NOT NULL DEFAULT 'no',
  `announce` varchar(255) NOT NULL DEFAULT '',
  `external` enum('yes','no') NOT NULL DEFAULT 'no',
  `torrentlang` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `freeleech` enum('0','1') NOT NULL DEFAULT '0',
  `imdb` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `info_hash` (`info_hash`(20)),
  KEY `owner` (`owner`),
  KEY `visible` (`visible`),
  KEY `category_visible` (`category`,`visible`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Truncate table before insert `torrents`
--

TRUNCATE TABLE `torrents`;
--
-- Dumping data for table `torrents`
--

INSERT DELAYED IGNORE INTO `torrents` (`id`, `info_hash`, `name`, `filename`, `save_as`, `descr`, `poster`, `poster2`, `category`, `size`, `added`, `type`, `numfiles`, `comments`, `views`, `hits`, `times_completed`, `leechers`, `seeders`, `last_action`, `visible`, `banned`, `owner`, `anon`, `numratings`, `ratingsum`, `nfo`, `announce`, `external`, `torrentlang`, `freeleech`, `imdb`) VALUES
(1, '7753001c46ff8f4ebd77444082de396c77b41b18', 'Besa.S01.1080p.HDTV.x264.[ExYuSubs]', 'Besa.S01.1080p.HDTV.x264.[ExYuSubs].torrent', 'Besa.S01.1080p.HDTV.x264.[ExYuSubs].torrent', '================================================================================\r\nAbout UL .........: https://pirates-forum.org/private.php?action=send&uid=157351\r\n================================================================================\r\n\r\nDruga sezona serije â€žBesaâ€œ nastavlja se tri godine kasnije poÅ¡to je UroÅ¡ PeriÄ‡ primio poslednji zadatak od Å¡efa albanske mafije Dardana BeriÅ¡e: da ubije inspektora Petrita Kocija kako bi iskupio sopstveni Å¾ivot. \r\n\r\nUroÅ¡ PeriÄ‡ i njegova porodica nalaze se na potpuno neoÄekivanom mestu, dok su Å¡ef mafije Dardan BeriÅ¡a i inspektor Interpola Petrit Koci smeÅ¡teni u neoÄekivane zaplete i sitiacije. \r\n\r\nUprkos oÄevoj zabrani, Driton BeriÅ¡a Å¾eljan osvete vraÄ‡a se u Ulcinj i pokereÄ‡e niz dogadjaja koji Ä‡e nametnuti dilemu da li je uvek moguÄ‡e odrÅ¾ati datu reÄ i zaÅ¡titi porodicu.\r\n\r\n\r\n===========| Regards to parasites called MATEO |=================', 'https://m.media-amazon.com/images/M/MV5BY2E4Zjc3MGEtYWJjNC00MDgxLTg3OWUtZGZkN2ZiNDhhZjFiXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 'https://m.media-amazon.com/images/M/MV5BNGViMDM5NTItMGY5Zi00OTUyLWI1ZWYtMmRkNjExZDlkMDg4XkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 61, 7843496412, '2025-12-02 17:08:54', 'single', 11, 2, 5, 3, 0, 0, 0, '2025-12-08 16:24:58', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://macak-louie.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt9170318'),
(2, 'dca9e16333d1936e745b435bc4466edbc7b5e1fd', 'Besa.S02.1080p.HDTV.x264.[ExYuSubs]', 'Besa.S02.1080p.HDTV.x264.[ExYuSubs].torrent', 'Besa.S02.1080p.HDTV.x264.[ExYuSubs].torrent', '================================================================================\r\nAbout UL .........: https://pirates-forum.org/private.php?action=send&uid=157351\r\n================================================================================\r\n\r\nDruga sezona serije â€žBesaâ€œ nastavlja se tri godine kasnije poÅ¡to je UroÅ¡ PeriÄ‡ primio poslednji zadatak od Å¡efa albanske mafije Dardana BeriÅ¡e: da ubije inspektora Petrita Kocija kako bi iskupio sopstveni Å¾ivot. \r\n\r\nUroÅ¡ PeriÄ‡ i njegova porodica nalaze se na potpuno neoÄekivanom mestu, dok su Å¡ef mafije Dardan BeriÅ¡a i inspektor Interpola Petrit Koci smeÅ¡teni u neoÄekivane zaplete i sitiacije. \r\n\r\nUprkos oÄevoj zabrani, Driton BeriÅ¡a Å¾eljan osvete vraÄ‡a se u Ulcinj i pokereÄ‡e niz dogadjaja koji Ä‡e nametnuti dilemu da li je uvek moguÄ‡e odrÅ¾ati datu reÄ i zaÅ¡titi porodicu.\r\n\r\n\r\n===========| Regards to parasites called MATEO |=================', 'https://m.media-amazon.com/images/M/MV5BY2E4Zjc3MGEtYWJjNC00MDgxLTg3OWUtZGZkN2ZiNDhhZjFiXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 'https://m.media-amazon.com/images/M/MV5BNGViMDM5NTItMGY5Zi00OTUyLWI1ZWYtMmRkNjExZDlkMDg4XkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 61, 17374237822, '2025-12-02 17:11:37', 'single', 11, 1, 4, 2, 0, 0, 0, '2025-12-08 16:21:30', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://macak-louie.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt9170318');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--
-- Creation: Dec 02, 2025 at 10:18 AM
-- Last update: Dec 08, 2025 at 04:23 PM
-- Last check: Dec 08, 2025 at 04:09 PM
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(40) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `secret` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `email` varchar(80) NOT NULL DEFAULT '',
  `status` enum('pending','confirmed') NOT NULL DEFAULT 'pending',
  `added` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_access` datetime DEFAULT NULL,
  `editsecret` varchar(20) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `privacy` enum('strong','normal','low') NOT NULL DEFAULT 'normal',
  `stylesheet` int(10) DEFAULT 1,
  `language` varchar(20) NOT NULL DEFAULT '1',
  `info` text DEFAULT NULL,
  `acceptpms` enum('yes','no') NOT NULL DEFAULT 'yes',
  `ip` varchar(39) NOT NULL DEFAULT '',
  `class` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `avatar` varchar(100) NOT NULL DEFAULT '',
  `uploaded` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `downloaded` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(30) NOT NULL DEFAULT '',
  `donated` int(5) UNSIGNED NOT NULL DEFAULT 0,
  `country` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `notifs` varchar(100) NOT NULL DEFAULT '',
  `enabled` varchar(10) NOT NULL DEFAULT 'yes',
  `modcomment` text DEFAULT NULL,
  `gender` varchar(6) NOT NULL DEFAULT '',
  `client` varchar(25) NOT NULL DEFAULT '',
  `age` int(3) NOT NULL DEFAULT 0,
  `warned` char(3) NOT NULL DEFAULT 'no',
  `signature` varchar(200) NOT NULL DEFAULT '',
  `last_browse` int(11) NOT NULL DEFAULT 0,
  `forumbanned` char(3) NOT NULL DEFAULT 'no',
  `invited_by` int(10) NOT NULL DEFAULT 0,
  `invitees` varchar(100) NOT NULL DEFAULT '',
  `invites` smallint(5) NOT NULL DEFAULT 0,
  `invitedate` datetime DEFAULT NULL,
  `commentpm` enum('yes','no') NOT NULL DEFAULT 'yes',
  `passkey` varchar(32) NOT NULL DEFAULT '',
  `page` text DEFAULT NULL,
  `team` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `tzoffset` int(4) DEFAULT 0,
  `hideshoutbox` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci PACK_KEYS=0;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT DELAYED IGNORE INTO `users` (`id`, `username`, `password`, `secret`, `email`, `status`, `added`, `last_login`, `last_access`, `editsecret`, `privacy`, `stylesheet`, `language`, `info`, `acceptpms`, `ip`, `class`, `avatar`, `uploaded`, `downloaded`, `title`, `donated`, `country`, `notifs`, `enabled`, `modcomment`, `gender`, `client`, `age`, `warned`, `signature`, `last_browse`, `forumbanned`, `invited_by`, `invitees`, `invites`, `invitedate`, `commentpm`, `passkey`, `page`, `team`, `tzoffset`, `hideshoutbox`) VALUES
(1, 'Admin', '7af2d10b73ab7cd8f603937f7697cb5fe432c7ff', 'WqDl1iMVdYvAlOhjqvUn', 'info@exyusubs.com', 'confirmed', '2025-09-29 19:04:10', '2025-12-02 16:23:05', '2025-12-08 16:23:46', '', 'normal', 1, '1', NULL, 'yes', '194.26.211.21', 8, 'https://maxvonsydow.eu.org/avatars/1.jpg', 4301546756, 1077031554, 'Owner', 0, 20, '', 'yes', '  ', 'Male', 'Shazam', 33, 'no', 'Just a an human bean', 1765211026, 'no', 0, '8 ', 9, NULL, 'no', '7ac092796ee9af5533fe05fb661283a8', '/home/macak/public_html/torrents.php', 0, 0, 'no');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts` ADD FULLTEXT KEY `body` (`body`);

--
-- Indexes for table `torrents`
--
ALTER TABLE `torrents` ADD FULLTEXT KEY `name` (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
