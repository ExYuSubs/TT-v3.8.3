-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 08, 2025 at 10:24 PM
-- Server version: 10.11.15-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `your_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `announce`
--

CREATE TABLE `announce` (
  `id` int(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `torrent` int(10) UNSIGNED NOT NULL,
  `seeders` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `leechers` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_completed` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `online` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announce`
--

INSERT INTO `announce` (`id`, `url`, `torrent`, `seeders`, `leechers`, `times_completed`, `online`) VALUES
(1, 'http://tracker.openbittorrent.com:80/announce', 1, 0, 0, 0, 'yes'),
(2, 'http://tracker.opentrackr.org:1337/announce', 1, 0, 0, 0, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `bans`
--

CREATE TABLE `bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `added` datetime DEFAULT NULL,
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `first` varchar(39) DEFAULT NULL,
  `last` varchar(39) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blocks`
--

CREATE TABLE `blocks` (
  `id` int(11) NOT NULL,
  `named` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `position` varchar(10) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(3) NOT NULL DEFAULT 0,
  `sort` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blocks`
--

INSERT INTO `blocks` (`id`, `named`, `name`, `position`, `description`, `enabled`, `sort`) VALUES
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

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `sort_index` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL DEFAULT '',
  `subcat` char(3) NOT NULL DEFAULT 'no',
  `parent_cat` varchar(15) NOT NULL DEFAULT '',
  `sub_sort` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sort_index`, `image`, `subcat`, `parent_cat`, `sub_sort`) VALUES
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

CREATE TABLE `censor` (
  `word` varchar(25) NOT NULL DEFAULT '',
  `censor` varchar(25) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `torrent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `text` text NOT NULL,
  `news` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user`, `torrent`, `added`, `text`, `news`) VALUES
(1, 1, 1, '2025-09-29 19:55:41', '1-st comment', 0),
(2, 1, 8, '2025-10-17 14:44:01', 'First comment on this torrent...', 0);

-- --------------------------------------------------------

--
-- Table structure for table `completed`
--

CREATE TABLE `completed` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) NOT NULL DEFAULT 0,
  `torrentid` int(10) NOT NULL DEFAULT 0,
  `date` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `completed`
--

INSERT INTO `completed` (`id`, `userid`, `torrentid`, `date`) VALUES
(1, 1, 8, '2025-10-17 11:47:10'),
(2, 5, 8, '2025-10-31 20:53:21');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `flagpic` varchar(50) DEFAULT NULL,
  `domain` char(3) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `flagpic`, `domain`) VALUES
(1, 'Sweden', 'sweden.gif', 'SE'),
(2, 'United States of America', 'usa.gif', 'US'),
(3, 'Russia', 'russia.gif', 'RU'),
(4, 'Finland', 'finland.gif', 'FI'),
(5, 'Canada', 'canada.gif', 'CA'),
(6, 'France', 'france.gif', 'FR'),
(7, 'Germany', 'germany.gif', 'DE'),
(8, 'China', 'china.gif', 'CN'),
(9, 'Italy', 'italy.gif', 'IT'),
(10, 'Denmark', 'denmark.gif', 'DK'),
(11, 'Norway', 'norway.gif', 'NO'),
(12, 'United Kingdom', 'uk.gif', 'UK'),
(13, 'Ireland', 'ireland.gif', 'IE'),
(14, 'Poland', 'poland.gif', 'PL'),
(15, 'Netherlands', 'netherlands.gif', 'NL'),
(16, 'Belgium', 'belgium.gif', 'BE'),
(17, 'Japan', 'japan.gif', 'JP'),
(18, 'Brazil', 'brazil.gif', 'BR'),
(19, 'Argentina', 'argentina.gif', 'AR'),
(20, 'Australia', 'australia.gif', 'AU'),
(21, 'New Zealand', 'newzealand.gif', 'NZ'),
(23, 'Spain', 'spain.gif', 'ES'),
(24, 'Portugal', 'portugal.gif', 'PT'),
(25, 'Mexico', 'mexico.gif', 'MX'),
(26, 'Singapore', 'singapore.gif', 'SG'),
(29, 'South Africa', 'southafrica.gif', 'ZA'),
(30, 'South Korea', 'southkorea.gif', 'KR'),
(31, 'Jamaica', 'jamaica.gif', 'JM'),
(32, 'Luxembourg', 'luxembourg.gif', 'LU'),
(33, 'Hong Kong', 'hongkong.gif', 'HK'),
(34, 'Belize', 'belize.gif', 'BZ'),
(35, 'Algeria', 'algeria.gif', 'DZ'),
(36, 'Angola', 'angola.gif', 'AO'),
(37, 'Austria', 'austria.gif', 'AT'),
(38, 'Yugoslavia', 'yugoslavia.gif', 'YU'),
(39, 'Western Samoa', 'westernsamoa.gif', 'WS'),
(40, 'Malaysia', 'malaysia.gif', 'MY'),
(41, 'Dominican Republic', 'dominicanrep.gif', 'DO'),
(42, 'Greece', 'greece.gif', 'GR'),
(43, 'Guatemala', 'guatemala.gif', 'GT'),
(44, 'Israel', 'israel.gif', 'IL'),
(45, 'Pakistan', 'pakistan.gif', 'PK'),
(46, 'Czech Republic', 'czechrep.gif', 'CZ'),
(47, 'Serbia', 'serbia.gif', 'YU'),
(48, 'Seychelles', 'seychelles.gif', 'SC'),
(49, 'Taiwan', 'taiwan.gif', 'TW'),
(50, 'Puerto Rico', 'puertorico.gif', 'PR'),
(51, 'Chile', 'chile.gif', 'CL'),
(52, 'Cuba', 'cuba.gif', 'CU'),
(53, 'Congo', 'congo.gif', 'CG'),
(54, 'Afghanistan', 'afghanistan.gif', 'AF'),
(55, 'Turkey', 'turkey.gif', 'TR'),
(56, 'Uzbekistan', 'uzbekistan.gif', 'UZ'),
(57, 'Switzerland', 'switzerland.gif', 'CH'),
(58, 'Kiribati', 'kiribati.gif', 'KI'),
(59, 'Philippines', 'philippines.gif', 'PH'),
(60, 'Burkina Faso', 'burkinafaso.gif', 'BF'),
(61, 'Nigeria', 'nigeria.gif', 'NG'),
(62, 'Iceland', 'iceland.gif', 'IS'),
(63, 'Nauru', 'nauru.gif', 'NR'),
(64, 'Slovenia', 'slovenia.gif', 'SI'),
(65, 'Albania', 'albania.gif', 'AL'),
(66, 'Turkmenistan', 'turkmenistan.gif', 'TM'),
(67, 'Bosnia Herzegovina', 'bosniaherzegovina.gif', 'BA'),
(68, 'Andorra', 'andorra.gif', 'AD'),
(69, 'Lithuania', 'lithuania.gif', 'LT'),
(70, 'India', 'india.gif', 'IN'),
(71, 'Netherlands Antilles', 'nethantilles.gif', 'AN'),
(72, 'Ukraine', 'ukraine.gif', 'UA'),
(73, 'Venezuela', 'venezuela.gif', 'VE'),
(74, 'Hungary', 'hungary.gif', 'HU'),
(75, 'Romania', 'romania.gif', 'RO'),
(76, 'Vanuatu', 'vanuatu.gif', 'VU'),
(77, 'Vietnam', 'vietnam.gif', 'VN'),
(78, 'Trinidad &amp; Tobago', 'trinidadandtobago.gif', 'TT'),
(79, 'Honduras', 'honduras.gif', 'HN'),
(80, 'Kyrgyzstan', 'kyrgyzstan.gif', 'KG'),
(81, 'Ecuador', 'ecuador.gif', 'EC'),
(82, 'Bahamas', 'bahamas.gif', 'BS'),
(83, 'Peru', 'peru.gif', 'PE'),
(84, 'Cambodia', 'cambodia.gif', 'KH'),
(85, 'Barbados', 'barbados.gif', 'BB'),
(86, 'Bangladesh', 'bangladesh.gif', 'BD'),
(87, 'Laos', 'laos.gif', 'LA'),
(88, 'Uruguay', 'uruguay.gif', 'UY'),
(89, 'Antigua Barbuda', 'antiguabarbuda.gif', 'AG'),
(90, 'Paraguay', 'paraguay.gif', 'PY'),
(92, 'Union of Soviet Socialist Republics', 'ussr.gif', 'SU'),
(93, 'Thailand', 'thailand.gif', 'TH'),
(94, 'Senegal', 'senegal.gif', 'SN'),
(95, 'Togo', 'togo.gif', 'TG'),
(96, 'North Korea', 'northkorea.gif', 'KP'),
(97, 'Croatia', 'croatia.gif', 'HR'),
(98, 'Estonia', 'estonia.gif', 'EE'),
(99, 'Colombia', 'colombia.gif', 'CO'),
(100, 'England', 'england.gif', 'GB'),
(101, 'Egypt', 'egypt.gif', 'EG');

-- --------------------------------------------------------

--
-- Table structure for table `email_bans`
--

CREATE TABLE `email_bans` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `comment` varchar(255) NOT NULL DEFAULT '',
  `mail_domain` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faq`
--

CREATE TABLE `faq` (
  `id` int(10) NOT NULL,
  `type` set('categ','item') NOT NULL DEFAULT 'item',
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `flag` set('0','1','2','3') NOT NULL DEFAULT '1',
  `categ` int(10) NOT NULL DEFAULT 0,
  `order` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `torrent` int(10) UNSIGNED NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `filesize` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `torrent`, `path`, `filesize`) VALUES
(1, 1, 'Blue.Lights.S03E06.1080p.iP.WEB-DL.AAC2.0.H.264-SAiNT.mkv', 2628567848),
(2, 1, 'Blue.Lights.S03E02.1080p.iP.WEB-DL.AAC2.0.H.264-SAiNT.mkv', 2391252817),
(3, 1, 'Blue.Lights.S03E03.1080p.iP.WEB-DL.AAC2.0.H.264-SAiNT.mkv', 2437821994),
(4, 1, 'Blue.Lights.S03E04.1080p.iP.WEB-DL.AAC2.0.H.264-SAiNT.mkv', 1991561395),
(5, 1, 'Blue.Lights.S03E05.1080p.iP.WEB-DL.AAC2.0.H.264-SAiNT.mkv', 2348387214),
(6, 1, 'Blue.Lights.S03E01.1080p.iP.WEB-DL.AAC2.0.H.264-SAiNT.mkv', 2108329977),
(7, 2, 'Showtrial.S01E01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.mkv', 4245948700),
(8, 2, 'Showtrial.S01E02.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.mkv', 4235839450),
(9, 2, 'Showtrial.S01E03.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.mkv', 4203684585),
(10, 2, 'Showtrial.S01E04.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.mkv', 4169878912),
(11, 2, 'Showtrial.S01E05.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.mkv', 4393989154),
(12, 3, 'Play.Dirty.2025.DUB.MVO.WEB-DLRip-AVC.seleZen.mkv', 1934932566),
(13, 4, 'Airplane.1980.720p.BDRip.AV1-FFE.mkv', 1390551626),
(14, 5, 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs].mp4', 1077127767),
(15, 5, 'ExYuSubs.nfo', 177),
(16, 6, 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs].mp4', 1077151558),
(17, 6, 'ExYuSubs.nfo', 177),
(18, 7, 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs].mp4', 1076992630),
(19, 7, 'ExYuSubs.nfo', 177),
(20, 8, 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs].mp4', 1077031377),
(21, 8, 'ExYuSubs.nfo', 177),
(22, 9, 'The.Color.Purple.1985.1080p.BDRip.AV1-FFE.mkv', 4062530038),
(31, 10, 'Le.chat.1971.BDRemux.mkv', 17857724684),
(32, 11, 'A.House.of.Dynamite.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 2151904582),
(33, 11, 'ExYuSubs.nfo', 177),
(34, 12, 'ExYuSubs.nfo', 177),
(35, 12, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(38, 14, 'ExYuSubs.nfo', 177),
(39, 14, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(40, 15, 'ExYuSubs.nfo', 177),
(41, 15, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(42, 12, 'ExYuSubs.nfo', 177),
(43, 12, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(44, 13, 'ExYuSubs.nfo', 177),
(45, 13, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(46, 14, 'ExYuSubs.nfo', 177),
(47, 14, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(48, 15, 'ExYuSubs.nfo', 177),
(49, 15, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(50, 16, 'ExYuSubs.nfo', 177),
(51, 16, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(52, 17, 'ExYuSubs.nfo', 177),
(53, 17, 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 1889478578),
(54, 18, 'Ballad.of.a.small.player.2025.1080p.WEBRip.x264.[ExYuSubs].mp4', 2149651974),
(55, 18, 'ExYuSubs.nfo', 177);

-- --------------------------------------------------------

--
-- Table structure for table `forumcats`
--

CREATE TABLE `forumcats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forumcats`
--

INSERT INTO `forumcats` (`id`, `name`, `sort`) VALUES
(1, 'Bugs in TT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `forum_forums`
--

CREATE TABLE `forum_forums` (
  `sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `description` varchar(200) DEFAULT NULL,
  `minclassread` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `minclasswrite` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `guest_read` enum('yes','no') DEFAULT 'yes',
  `category` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `forum_forums`
--

INSERT INTO `forum_forums` (`sort`, `id`, `name`, `description`, `minclassread`, `minclasswrite`, `guest_read`, `category`) VALUES
(1, 1, 'Global test Forum', 'Just Forum testing from ACP', 1, 1, 'yes', 0),
(2, 2, 'New relese of TT', 'Discusion about new update of TT script, test from ACP', 1, 1, 'yes', 0);

-- --------------------------------------------------------

--
-- Table structure for table `forum_posts`
--

CREATE TABLE `forum_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `body` longtext DEFAULT NULL,
  `editedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `editedat` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_readposts`
--

CREATE TABLE `forum_readposts` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `topicid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpostread` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forum_topics`
--

CREATE TABLE `forum_topics` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `subject` varchar(40) DEFAULT NULL,
  `locked` enum('yes','no') NOT NULL DEFAULT 'no',
  `forumid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `lastpost` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `moved` enum('yes','no') NOT NULL DEFAULT 'no',
  `sticky` enum('yes','no') NOT NULL DEFAULT 'no',
  `views` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
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
  `staff_sort` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`group_id`, `level`, `view_torrents`, `edit_torrents`, `delete_torrents`, `view_users`, `edit_users`, `delete_users`, `view_news`, `edit_news`, `delete_news`, `can_upload`, `can_download`, `view_forum`, `edit_forum`, `delete_forum`, `control_panel`, `staff_page`, `staff_public`, `staff_sort`) VALUES
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

CREATE TABLE `guests` (
  `ip` varchar(39) NOT NULL DEFAULT '',
  `time` decimal(20,0) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`ip`, `time`) VALUES
('31.111.111.111', '1760904603');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `uri`, `name`) VALUES
(1, 'english.php', 'English');

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id` int(10) UNSIGNED NOT NULL,
  `added` datetime DEFAULT NULL,
  `txt` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id`, `added`, `txt`) VALUES
(1, '2025-10-30 10:55:30', 'Torrent The Color Purple (1985) UHD BDRemux 2160p HDR uploaded by coco');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `sender` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `receiver` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `unread` enum('yes','no') NOT NULL DEFAULT 'yes',
  `poster` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `subject` text NOT NULL DEFAULT '',
  `location` enum('in','out','both','draft','template') NOT NULL DEFAULT 'in'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `userid` int(11) NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peers`
--

CREATE TABLE `peers` (
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
  `passkey` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peers`
--

INSERT INTO `peers` (`id`, `torrent`, `peer_id`, `ip`, `port`, `uploaded`, `downloaded`, `to_go`, `seeder`, `started`, `last_action`, `connectable`, `client`, `userid`, `passkey`) VALUES
(37, 8, '-lt0D80-an´8xß2 Èm', '45.87.251.163', 64236, 2154063108, 0, 0, 'yes', '2025-10-26 01:10:05', '2025-11-08 22:20:11', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(38, 7, '-lt0D80-pø­3MÝ(rž×', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-10-26 01:10:13', '2025-11-08 22:20:16', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(39, 6, '-lt0D80-,@þB—§ô1™', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-10-26 01:10:13', '2025-11-08 22:20:16', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(40, 5, '-lt0D80-\Z!yK÷wÃ€¶B', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-10-26 01:10:19', '2025-11-08 22:20:14', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(74, 11, '-lt0D80-®cú¨>‚€äz', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-11-05 12:22:40', '2025-11-08 22:22:42', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(83, 18, '-lt0D80-Æÿ ã‰¢¦a', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-11-07 10:49:39', '2025-11-08 22:24:40', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(88, 8, '-UT2210-bh¨Å›ãÿVÙm', '', 62263, 0, 0, 0, 'yes', '2025-11-08 17:23:23', '2025-11-08 22:23:45', 'no', 'uTorrent/2210(25110)', '1', '7ac092796ee9af5533fe05fb661283a8');

-- --------------------------------------------------------

--
-- Table structure for table `pollanswers`
--

CREATE TABLE `pollanswers` (
  `id` int(10) UNSIGNED NOT NULL,
  `pollid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `userid` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `selection` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `polls`
--

CREATE TABLE `polls` (
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
  `sort` enum('yes','no') NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `torrent` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `rating` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `added` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`torrent`, `user`, `rating`, `added`) VALUES
(1, 3, 5, '2025-10-12 19:43:02'),
(8, 1, 5, '2025-10-30 12:04:16'),
(9, 1, 5, '2025-10-30 13:41:50'),
(9, 3, 5, '2025-10-30 23:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `id` int(10) UNSIGNED NOT NULL,
  `addedby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `votedfor` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `votedfor_xtra` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` enum('torrent','user','forum','comment','other') NOT NULL DEFAULT 'torrent',
  `reason` varchar(255) NOT NULL DEFAULT '',
  `dealtby` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `dealtwith` tinyint(1) NOT NULL DEFAULT 0,
  `complete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `public` enum('yes','no') NOT NULL DEFAULT 'yes',
  `class` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoutbox`
--

CREATE TABLE `shoutbox` (
  `msgid` int(10) UNSIGNED NOT NULL,
  `user` varchar(50) NOT NULL DEFAULT '0',
  `message` text DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `userid` int(8) UNSIGNED NOT NULL DEFAULT 0,
  `room` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoutbox`
--

INSERT INTO `shoutbox` (`msgid`, `user`, `message`, `date`, `userid`, `room`) VALUES
(28, 'System', '[color=#ff0000]This shoutbox room has been cleared[/color]', '2025-10-31 18:12:48', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sqlerr`
--

CREATE TABLE `sqlerr` (
  `id` int(10) UNSIGNED NOT NULL,
  `txt` text NOT NULL DEFAULT '',
  `time` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stylesheets`
--

CREATE TABLE `stylesheets` (
  `id` int(10) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stylesheets`
--

INSERT INTO `stylesheets` (`id`, `uri`, `name`) VALUES
(1, 'default', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task` varchar(20) NOT NULL DEFAULT '',
  `last_time` int(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task`, `last_time`) VALUES
('cleanup', 1762632781);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) NOT NULL,
  `added` datetime DEFAULT NULL,
  `owner` int(10) NOT NULL DEFAULT 0,
  `info` text DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `torrentlang`
--

CREATE TABLE `torrentlang` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `sort_index` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `torrentlang`
--

INSERT INTO `torrentlang` (`id`, `name`, `image`, `sort_index`) VALUES
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

CREATE TABLE `torrents` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `imdb` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `torrents`
--

INSERT INTO `torrents` (`id`, `info_hash`, `name`, `filename`, `save_as`, `descr`, `poster`, `poster2`, `category`, `size`, `added`, `type`, `numfiles`, `comments`, `views`, `hits`, `times_completed`, `leechers`, `seeders`, `last_action`, `visible`, `banned`, `owner`, `anon`, `numratings`, `ratingsum`, `nfo`, `announce`, `external`, `torrentlang`, `freeleech`, `imdb`) VALUES
(1, '215205f03ac5dee878b5f5afd1e8cccc69e13f64', 'Blue.Lights.S03.1080p.IP.WEB-DL.H264-SAiNT', 'Blue.Lights.S03.1080p.iP.WEB-DL.H264-SAiNT.torrent', 'Blue.Lights.S03.1080p.iP.WEB-DL.H264-SAiNT.torrent', 'Follows rookie police officers working in Belfast, a city in which being a frontline response cop comes with unique pressures and dangers.', '', '', 61, 13905921245, '2025-09-29 19:49:45', 'single', 6, 1, 56, 7, 0, 0, 0, '2025-11-04 08:49:20', 'yes', 'no', 1, 'no', 1, 5, 'no', 'udp://tracker.opentrackr.org:1337/announce', 'yes', 1, '0', 'https://www.imdb.com/title/tt14466018/'),
(2, '5355a4b12dc182eb0193c2a47b777f1c31386115', 'Showtrial.S01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb', 'Showtrial.S01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.torrent', 'Showtrial.S01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.torrent', '================================================================================\r\nAbout UL .........: https://pirates-forum.org/private.php?action=send&uid=157351\r\n================================================================================\r\n\r\nTajkun je priÃ„Âa o Vladanu SimonoviÃ„â€¡u, tajkunu kog maestralno tumaÃ„Âi Dragan BjelogrliÃ„â€¡. Vladan je u javnosti omraÃ…Â¾en zbog bogatstva steÃ„Âenog na sumnjiv naÃ„Âin, tokom devedesetih godina proÃ…Â¡log veka. \r\n\r\nGodinama je iz senke upravljao svojom moÃ„â€¡nom kompanijom, ali se sve menja kada biva primoran da izaÃ„â€˜e na medijsku svetlost. On postaje progonjen Ã„Âovek, prisiljen na drastiÃ„Âne mere radi oÃ„Âuvanja sebe i svoje porodice. \r\n\r\nVladan ima neprijatelje, i javne i tajne. Vladan se sukobljava i sa onima koji bi trebalo da su mu najbliÃ…Â¾i. Vladan krije, i otkriva tajne. \r\n\r\n\r\n=============================================================\r\nThis torrent keeps alive as long as you seed\r\n=============================================================', '', '', 6, 21249340801, '2025-10-07 07:49:47', 'single', 5, 0, 3, 11, 0, 0, 0, '2025-10-07 07:49:47', 'no', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt11403434/'),
(3, '090156e6172ab12c7bd338441d1873d4abf63300', 'Play Dirty (2025) WEB-DLRip-AVC', '[rutor.is]Play.Dirty.2025.DUB.MVO.WEB-DLRip-AVC.seleZen.m.torrent', '[rutor.is]Play.Dirty.2025.DUB.MVO.WEB-DLRip-AVC.seleZen.m.torrent', 'ÃËœÃÂ½Ã‘â€žÃÂ¾Ã‘â‚¬ÃÂ¼ÃÂ°Ã‘â€ ÃÂ¸Ã‘Â ÃÂ¾ Ã‘â€žÃÂ¸ÃÂ»Ã‘Å’ÃÂ¼ÃÂµ\r\nÃÂÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ: Ãâ€œÃ‘â‚¬Ã‘ÂÃÂ·ÃÂ½ÃÂ°Ã‘Â ÃÂ¸ÃÂ³Ã‘â‚¬ÃÂ°\r\nÃÅ¾Ã‘â‚¬ÃÂ¸ÃÂ³ÃÂ¸ÃÂ½ÃÂ°ÃÂ»Ã‘Å’ÃÂ½ÃÂ¾ÃÂµ ÃÂ½ÃÂ°ÃÂ·ÃÂ²ÃÂ°ÃÂ½ÃÂ¸ÃÂµ: Play Dirty\r\nÃâ€œÃÂ¾ÃÂ´ ÃÂ²Ã‘â€¹ÃÂ¿Ã‘Æ’Ã‘ÂÃÂºÃÂ°: 2025\r\nÃâ€“ÃÂ°ÃÂ½Ã‘â‚¬: Ãâ€˜ÃÂ¾ÃÂµÃÂ²ÃÂ¸ÃÂº, ÃÂºÃÂ¾ÃÂ¼ÃÂµÃÂ´ÃÂ¸Ã‘Â, ÃÂºÃ‘â‚¬ÃÂ¸ÃÂ¼ÃÂ¸ÃÂ½ÃÂ°ÃÂ»\r\nÃÂ ÃÂµÃÂ¶ÃÂ¸Ã‘ÂÃ‘ÂÃÂµÃ‘â‚¬: ÃÂ¨ÃÂµÃÂ¹ÃÂ½ Ãâ€˜ÃÂ»Ã‘ÂÃÂº\r\nÃâ€™ Ã‘â‚¬ÃÂ¾ÃÂ»Ã‘ÂÃ‘â€¦: ÃÅ“ÃÂ°Ã‘â‚¬ÃÂº ÃÂ£ÃÂ¾ÃÂ»ÃÂ±ÃÂµÃ‘â‚¬ÃÂ³, Ãâ€ºÃÂ°ÃÂºÃÂ¸Ã‘â€š ÃÂ¡Ã‘â€šÃ‘ÂÃÂ½Ã‘â€žÃÂ¸ÃÂ»ÃÂ´, ÃÂ ÃÂ¾ÃÂ·ÃÂ° ÃÂ¡ÃÂ°ÃÂ»ÃÂ°ÃÂ·ÃÂ°Ã‘â‚¬, ÃÅ¡ÃÂ¸ÃÂ³Ã‘ÂÃÂ½-ÃÅ“ÃÂ°ÃÂ¹ÃÂºÃÂ» ÃÅ¡ÃÂ¸, ÃÂ§Ã‘Æ’ÃÂºÃ‘Æ’ÃÂ´ÃÂ¸ ÃËœÃÂ²Ã‘Æ’ÃÂ´ÃÂ¶ÃÂ¸, ÃÂÃ‘ÂÃ‘â€š Ãâ€™Ã‘Æ’ÃÂ»Ã‘â€žÃ‘â€ž, Ãâ€œÃ‘â‚¬ÃÂµÃ‘â€šÃ‘â€¦ÃÂµÃÂ½ ÃÅ“ÃÂ¾ÃÂ», ÃÂ¢ÃÂ¾ÃÂ¼ÃÂ°Ã‘Â Ãâ€ÃÂ¶ÃÂµÃÂ¹ÃÂ½, ÃÂ¢ÃÂ¾ÃÂ½ÃÂ¸ ÃÂ¨Ã‘ÂÃÂ»ÃÂ¾Ã‘Æ’ÃÂ±, ÃÂ¥ÃÂµÃÂ¼ÃÂºÃÂ¸ ÃÅ“ÃÂ°ÃÂ´ÃÂµÃ‘â‚¬ÃÂ°, ÃÂÃÂ»ÃÂµÃ‘â€¦ÃÂ°ÃÂ½ÃÂ´Ã‘â‚¬ÃÂ¾ ÃÂ­ÃÂ´ÃÂ´ÃÂ°, ÃÅ¡ÃÂ»Ã‘ÂÃ‘â‚¬ Ãâ€ºÃÂ¾ÃÂ²ÃÂµÃ‘â‚¬ÃÂ¸ÃÂ½ÃÂ³, ÃÂ§ÃÂ°ÃÂ¹ ÃÂ¥ÃÂ°ÃÂ½Ã‘ÂÃÂµÃÂ½, ÃÂ¡ÃÂµÃÂ±ÃÂ°Ã‘ÂÃ‘â€šÃ‘Å’Ã‘ÂÃÂ½ ÃÅ¡ÃÂ°Ã‘â‚¬Ã‘â‚¬', '', '', 2, 1934932566, '2025-10-12 20:17:33', 'single', 1, 0, 39, 8, 0, 0, 0, '2025-11-06 20:23:53', 'yes', 'no', 3, 'no', 0, 0, 'no', 'udp://opentor.net:6969', 'yes', 1, '0', 'https://www.imdb.com/title/tt18392014/'),
(4, 'f2c528226eab17c8d1d1bd5d1ffb5903059f19ca', 'Airplane.1980.720p.BDRip.AV1-FFE', 'Airplane.1980.720p.BDRip.AV1-FFE.torrent', 'Airplane.1980.720p.BDRip.AV1-FFE.torrent', 'After the crew becomes sick with food poisoning, a neurotic ex-fighter pilot must safely land a commercial airplane full of passengers.', '', '', 2, 1390551626, '2025-10-12 20:45:13', 'single', 1, 0, 41, 13, 0, 0, 0, '2025-10-13 13:26:10', 'no', 'no', 3, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt0080339/'),
(5, '3e95a6acf9aa63b0a4b507e1baf519b7bd563c34', 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', 'https://m.media-amazon.com/images/M/MV5BZGI5Mzk0YjUtNGQ1Yy00ZTZiLTliOTEtYTkxMDZlMmIxZDliXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 'https://m.media-amazon.com/images/M/MV5BY2QwMDYyNGMtNjNiMS00NzA4LTgwYzYtZWFjNjg2YjhkY2UxXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 6, 1077127944, '2025-10-17 07:23:27', 'single', 2, 0, 9, 1, 0, 0, 1, '2025-11-08 22:20:14', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt31438355/'),
(6, 'b7e22def18dff1c799585ec0f9fd2a8c395593da', 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', 'https://m.media-amazon.com/images/M/MV5BODM1M2ExZTUtZjdmYS00NGNiLTkyZjQtN2VjMTMzM2UwZjU0XkEyXkFqcGc@._V1_FMjpg_UX1344_.jpg', 'https://m.media-amazon.com/images/M/MV5BNDFiMDNiNGYtYThhNi00Y2E4LTkwOTYtZDI5OGY1MTc0OTdjXkEyXkFqcGc@._V1_FMjpg_UX1920_.jpg', 6, 1077151735, '2025-10-17 07:24:13', 'single', 2, 0, 8, 1, 0, 0, 1, '2025-11-08 22:20:16', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt31438355/'),
(7, '8652ae4fcfd4bf5d53f9c9ede5a83bb6b0b9acd5', 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', 'https://m.media-amazon.com/images/M/MV5BMzY1NWVhOGEtZDQ5Yy00ZWY5LTkyMzEtNzk4YzgyNTA0OTczXkEyXkFqcGc@._V1_FMjpg_UX1920_.jpg', 'https://m.media-amazon.com/images/M/MV5BMjEwMWM0OTMtNzZkOC00NTlhLWExZDMtYjFkNGY2Y2M3OTZiXkEyXkFqcGc@._V1_FMjpg_UX1920_.jpg', 6, 1076992807, '2025-10-17 07:24:29', 'single', 2, 0, 9, 1, 0, 0, 1, '2025-11-08 22:20:16', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt31438355/'),
(8, '6111a03ad2da583a1db6caf4133a29e6ce23d0a3', 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', 'https://m.media-amazon.com/images/M/MV5BMGFjMTNlNWQtOGZmNi00NDQ2LWJmNmEtYjI2NTUzNDY3NDM0XkEyXkFqcGc@._V1_FMjpg_UX2000_.jpg', 'https://m.media-amazon.com/images/M/MV5BY2QwMDYyNGMtNjNiMS00NzA4LTgwYzYtZWFjNjg2YjhkY2UxXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 6, 1077031554, '2025-10-17 07:24:51', 'single', 2, 1, 57, 3, 2, 0, 2, '2025-11-08 22:23:45', 'yes', 'no', 1, 'no', 1, 5, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt31438355/'),
(9, '7524ba35c413726f3da1da464ead32c307aeb7d8', 'The Color Purple (1985) BDRip AV1-FFE', 'The.Color.Purple.1985.1080p.BDRip.AV1-FFE.torrent', 'The.Color.Purple.1985.1080p.BDRip.AV1-FFE.torrent', 'ÃÂ ÃÂµÃÂ¶ÃÂ¸Ã‘ÂÃ‘Å’ÃÂ¾Ã‘â‚¬: ÃÂ¡Ã‘â€šÃÂ¸ÃÂ²Ã‘Å ÃÂ½ ÃÂ¡ÃÂ¿ÃÂ¸ÃÂ»ÃÂ±Ã‘Å Ã‘â‚¬ÃÂ³\r\nÃâ€™ Ã‘â‚¬ÃÂ¾ÃÂ»ÃÂ¸Ã‘â€šÃÂµ: Ãâ€ºÃÂ¾Ã‘â‚¬Ã‘Å ÃÂ½Ã‘Â ÃÂ¤ÃÂ¸Ã‘Ë†ÃÂ±Ã‘Å Ã‘â‚¬ÃÂ½, Ãâ€ÃÂ°ÃÂ½ÃÂ¸ Ãâ€œÃÂ»ÃÂ¾Ã‘Æ’ÃÂ²Ã‘Å Ã‘â‚¬, ÃÂ£ÃÂ¿ÃÂ¸ Ãâ€œÃÂ¾ÃÂ»ÃÂ´ÃÂ±Ã‘Å Ã‘â‚¬ÃÂ³, ÃÅ“ÃÂ°Ã‘â‚¬ÃÂ³ÃÂ°Ã‘â‚¬ÃÂµÃ‘â€š Ãâ€¢ÃÂ¹ÃÂ²Ã‘Å Ã‘â‚¬ÃÂ¸, ÃÅ¾ÃÂ¿Ã‘â‚¬ÃÂ° ÃÂ£ÃÂ¸ÃÂ½Ã‘â€žÃ‘â‚¬ÃÂ¸, ÃÂ£ÃÂ¸ÃÂ»ÃÂ°Ã‘â‚¬ÃÂ´ ÃÅ¸Ã‘Å Ã‘â€¦, ÃÂÃÂºÃÂ¾Ã‘ÂÃ‘Æ’ÃÂ° Ãâ€˜Ã‘Æ’Ã‘ÂÃÂ¸ÃÂ°, ÃÂÃÂ´ÃÂ¾ÃÂ»Ã‘â€ž ÃÂ¡ÃÂ¸ÃÂ¹ÃÂ·Ã‘Å Ã‘â‚¬, ÃÂ ÃÂµ Ãâ€ÃÂ¾ÃÂ½ ÃÂ§ÃÂ¾ÃÂ½, Ãâ€ÃÂ°ÃÂ½ÃÂ° ÃÂÃÂ¹ÃÂ²ÃÂ¸\r\n\r\nÃâ€“ÃÂ°ÃÂ½Ã‘â‚¬: Ãâ€Ã‘â‚¬ÃÂ°ÃÂ¼ÃÂ°\r\nÃâ€™Ã‘â‚¬ÃÂµÃÂ¼ÃÂµÃ‘â€šÃ‘â‚¬ÃÂ°ÃÂµÃÂ½ÃÂµ: 152 ÃÂ¼ÃÂ¸ÃÂ½Ã‘Æ’Ã‘â€šÃÂ¸\r\n\r\nÃÂ ÃÂµÃÂ·Ã‘Å½ÃÂ¼ÃÂµ: ÃËœÃ‘ÂÃ‘â€šÃÂ¾Ã‘â‚¬ÃÂ¸Ã‘Â ÃÂ·ÃÂ° ÃÂ¶ÃÂ¸ÃÂ²ÃÂ¾Ã‘â€šÃÂ° ÃÂ½ÃÂ° ÃÂµÃÂ´ÃÂ½ÃÂ¾ ÃÂ¼ÃÂ¾ÃÂ¼ÃÂ¸Ã‘â€¡ÃÂµ, ÃÂ·ÃÂ° Ã‘â€šÃÂ¾ÃÂ²ÃÂ°, ÃÂºÃÂ¾ÃÂµÃ‘â€šÃÂ¾ Ãâ€˜ÃÂ¾ÃÂ³ Ã‘ÂÃÂµ ÃÂ¾ÃÂ¿ÃÂ¸Ã‘â€šÃÂ²ÃÂ° ÃÂ´ÃÂ° ÃÂºÃÂ°ÃÂ¶ÃÂµ ÃÂ½ÃÂ° Ã‘â€¦ÃÂ¾Ã‘â‚¬ÃÂ°Ã‘â€šÃÂ° ÃÂ¸ ÃÂ·ÃÂ° Ã‘â‚¬ÃÂ°ÃÂ·ÃÂ»ÃÂ¸Ã‘â€¡ÃÂ½ÃÂ¸Ã‘â€šÃÂµ ÃÂ½ÃÂ°Ã‘â€¡ÃÂ¸ÃÂ½ÃÂ¸, ÃÂ¿ÃÂ¾ ÃÂºÃÂ¾ÃÂ¸Ã‘â€šÃÂ¾ Ã‘â€šÃÂµ Ã‘â‚¬ÃÂ°ÃÂ·ÃÂ±ÃÂ¸Ã‘â‚¬ÃÂ°Ã‘â€š ÃÂ¿ÃÂ¾Ã‘ÂÃÂ»ÃÂ°ÃÂ½ÃÂ¸Ã‘ÂÃ‘â€šÃÂ° ÃÂ¼Ã‘Æ’.\r\nÃÂ¤ÃÂ¸ÃÂ»ÃÂ¼Ã‘Å Ã‘â€š ÃÂ¿Ã‘â‚¬ÃÂµÃÂ´Ã‘ÂÃ‘â€šÃÂ°ÃÂ²Ã‘Â ÃÂ¡ÃÂµÃÂ»ÃÂ¸, ÃÂ¼ÃÂ»ÃÂ°ÃÂ´ÃÂ¾ Ã‘â€¡ÃÂµÃ‘â‚¬ÃÂ½ÃÂ¾ÃÂºÃÂ¾ÃÂ¶ÃÂ¾ ÃÂ¼ÃÂ¾ÃÂ¼ÃÂ¸Ã‘â€¡ÃÂµ, ÃÂ¾Ã‘â€š ÃÂ½ÃÂ°Ã‘â€¡ÃÂ°ÃÂ»ÃÂ¾Ã‘â€šÃÂ¾ ÃÂ½ÃÂ° 1900 ÃÂ³ÃÂ¾ÃÂ´ÃÂ¸ÃÂ½ÃÂ°. ÃÂ¢Ã‘Â ÃÂµ 14-ÃÂ³ÃÂ¾ÃÂ´ÃÂ¸Ã‘Ë†ÃÂ½ÃÂ° ÃÂ¸ ÃÂ±Ã‘â‚¬ÃÂµÃÂ¼ÃÂµÃÂ½ÃÂ½ÃÂ° ÃÂ¾Ã‘â€š Ã‘ÂÃÂ²ÃÂ¾Ã‘Â ÃÂ±ÃÂ°Ã‘â€°ÃÂ°. ÃÅ¾Ã‘â€šÃ‘â€šÃ‘Æ’ÃÂº ÃÂ·ÃÂ°ÃÂ¿ÃÂ¾Ã‘â€¡ÃÂ²ÃÂ° ÃÂ¸Ã‘ÂÃ‘â€šÃÂ¾Ã‘â‚¬ÃÂ¸Ã‘ÂÃ‘â€šÃÂ° ÃÂ½ÃÂ° ÃÂ½ÃÂµÃÂ¹ÃÂ½ÃÂ¸Ã‘Â ÃÂ¸ÃÂ·ÃÂºÃ‘Æ’ÃÂ¿ÃÂ¸Ã‘â€šÃÂµÃÂ»ÃÂµÃÂ½ ÃÂ¸ Ã‘â€šÃÂµÃÂ¶Ã‘Å ÃÂº ÃÂ¶ÃÂ¸ÃÂ²ÃÂ¾Ã‘â€š ÃÂ¿Ã‘â‚¬ÃÂµÃÂ· Ã‘ÂÃÂ»ÃÂµÃÂ´ÃÂ²ÃÂ°Ã‘â€°ÃÂ¸Ã‘â€šÃÂµ 30 ÃÂ³ÃÂ¾ÃÂ´ÃÂ¸ÃÂ½ÃÂ¸.', '', '', 18, 4062530038, '2025-10-30 10:55:30', 'single', 1, 0, 11, 1, 0, 0, 0, '2025-10-30 22:56:50', 'no', 'no', 3, 'no', 2, 10, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://imdb.com/title/tt0088939/'),
(10, '7e6bf19907de9447d59d7c6f4aebf51b78175c3b', 'Le chat (1971) BDRemux 1080p', '[rutor.is]Le.chat.1971.BDRemux.mkv.torrent', '[rutor.is]Le.chat.1971.BDRemux.mkv.torrent', 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ Ñ„Ð¸Ð»ÑŒÐ¼Ðµ\r\nÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ: ÐšÐ¾Ñ‚\r\nÐžÑ€Ð¸Ð³Ð¸Ð½Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ: Le chat\r\nÐ“Ð¾Ð´ Ð²Ñ‹Ð¿ÑƒÑÐºÐ°: 1971\r\nÐ–Ð°Ð½Ñ€: Ð´Ñ€Ð°Ð¼Ð°\r\nÐ ÐµÐ¶Ð¸ÑÑÐµÑ€: ÐŸÑŒÐµÑ€ Ð“Ñ€Ð°Ð½ÑŒÐµ-Ð”ÐµÑ„ÐµÑ€\r\nÐÐºÑ‚ÐµÑ€Ñ‹: Ð–Ð°Ð½ Ð“Ð°Ð±ÐµÐ½, Ð¡Ð¸Ð¼Ð¾Ð½Ð° Ð¡Ð¸Ð½ÑŒÐ¾Ñ€Ðµ, ÐÐ½Ð½Ð¸ ÐšÐ¾Ñ€Ð´Ð¸, Ð–Ð°Ðº Ð Ð¸ÑÐ¿Ð°Ð»ÑŒ, ÐÐ¸ÐºÐ¾Ð»ÑŒ Ð”ÐµÑÐ°Ð¹Ð¸, Ð“Ð°Ñ€Ñ€Ð¸-ÐœÐ°ÐºÑ, ÐÐ½Ð´Ñ€Ðµ Ð ÑƒÐ¹Ðµ, ÐšÐ°Ñ€Ð»Ð¾ ÐÐµÐ»Ð», Ð˜Ð² Ð‘Ð°Ñ€ÑÐ°Ðº, Ð¤Ð»Ð¾Ñ€Ð°Ð½Ñ ÐžÐ³ÐµÐ½Ð¾ÐµÑ€\r\n\r\nÐžÐ¿Ð¸ÑÐ°Ð½Ð¸Ðµ:\r\nÐŸÐ¾ Ñ€Ð¾Ð¼Ð°Ð½Ñƒ Ð–Ð¾Ñ€Ð¶Ð° Ð¡Ð¸Ð¼ÐµÐ½Ð¾Ð½Ð°.\r\nÐšÐ¾Ð³Ð´Ð°-Ñ‚Ð¾ Ð¾Ð½Ð¸ Ð±Ñ‹Ð»Ð¸ ÑÑ‡Ð°ÑÑ‚Ð»Ð¸Ð²Ñ‹. ÐšÐ»ÐµÐ¼Ð°Ð½Ñ Ð¸ Ð–ÑŽÐ»ÑŒÐµÐ½. Ð¢ÐµÐ¿ÐµÑ€ÑŒ Ð¾Ð½Ð¸ ÐµÐ´Ð²Ð° Ð»Ð¸ Ð¼Ð¾Ð³ÑƒÑ‚ Ð¿Ñ€Ð¸Ð¿Ð¾Ð¼Ð½Ð¸Ñ‚ÑŒ Ñ‚Ðµ Ð²Ñ€ÐµÐ¼ÐµÐ½Ð°, ÐºÐ¾Ð³Ð´Ð° Ð² Ð¸Ñ… Ð´Ð¾Ð¼Ðµ Ð³Ð¾ÑÑ‚Ð¸Ð»Ð° Ð»ÑŽÐ±Ð¾Ð²ÑŒ. Ð–ÑŽÐ»ÑŒÐµÐ½ Ð¾Ñ…Ð»Ð°Ð´ÐµÐ» Ðº ÑÐ²Ð¾ÐµÐ¹ Â«Ð°ÐºÑ€Ð¾Ð±Ð°Ñ‚ÐºÐµÂ». Ð Ð¾Ð½Ð° Ð´Ð¾ ÑÐ¸Ñ… Ð¿Ð¾Ñ€ Ð½Ðµ Ð¼Ð¾Ð¶ÐµÑ‚ Ð¿Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ Ð² Ñ‚Ð¾, Ñ‡Ñ‚Ð¾ Ð¸Ñ… ÑÐµÐ¼ÑŒÐ¸ Ð±Ð¾Ð»ÑŒÑˆÐµ Ð½ÐµÑ‚.\r\nÐÐ¾ Ð¾Ð´Ð½Ð°Ð¶Ð´Ñ‹ Ð–ÑŽÐ»ÑŒÐµÐ½ ÑÐ¾Ð²ÐµÑ€ÑˆÐ°ÐµÑ‚ Ð¿Ñ€ÐµÐ´Ð°Ñ‚ÐµÐ»ÑŒÑÑ‚Ð²Ð¾. Ð’ Ð¸Ñ… Ð´Ð¾Ð¼Ðµ Ð¿Ð¾ÑÐ²Ð»ÑÐµÑ‚ÑÑ ÐšÐ¾Ñ‚. Â«Ð¢Ð¾Ð»ÑŒÐºÐ¾ Ð»Ð¸ÑˆÑŒ ÐºÐ¾Ñ‚?Â» â€“ ÑÐºÐ°Ð¶ÐµÑ‚Ðµ Ð²Ñ‹. Ð”Ð°. ÐÐ¾ ÐšÐ»ÐµÐ¼Ð°Ð½Ñ Ð¿Ð¾Ð½Ð¸Ð¼Ð°ÐµÑ‚, Ñ‡Ñ‚Ð¾ Ð² ÐµÐµ Ð´Ð¾Ð¼Ðµ Ð¾Ð±ÑŠÑÐ²Ð¸Ð»ÑÑ Ð´ÑŒÑÐ²Ð¾Ð».', '', '', 18, 17857724684, '2025-11-04 22:31:03', 'single', 1, 0, 8, 1, 0, 0, 0, '2025-11-04 22:32:05', 'yes', 'no', 3, 'no', 0, 0, 'no', 'udp://opentor.net:6969', 'yes', 1, '0', 'https://www.imdb.com/title/tt0066906/'),
(11, 'a7dfc473aada6f8d590b5db0ed88b79d2b867632', 'A.House.of.Dynamite.2025.1080p.WEBRip.x264.[ExYuSubs]', 'A.House.of.Dynamite.2025.1080p.WEBRip.x264.[ExYuSubs].torrent', 'A.House.of.Dynamite.2025.1080p.WEBRip.x264.[ExYuSubs].torrent', '==================|   OPIS  |===========================\r\n\r\nKada se prema SAD-u lansira raketa nepoznatog podrijetla, zapoÄne utrka kako bi se utvrdilo tko je odgovoran i kako reagirati.\r\n \r\n=============================================================\r\nThis torrent keeps alive as long as you seed\r\n=============================================================', 'https://m.media-amazon.com/images/M/MV5BNTdmZWQyZmYtZjZjNS00NThlLWJkOWYtNGQwNTIxMzJhYjliXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 'https://m.media-amazon.com/images/M/MV5BOGZlM2ViM2QtMmQ3Ni00ZDdlLWFjODQtMjg0NWMyMmJlYTMwXkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 18, 2151904759, '2025-11-05 07:39:24', 'single', 2, 0, 5, 1, 0, 0, 1, '2025-11-08 22:22:42', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt32376165/'),
(17, '4f4c50629472d9e2b28220949d409309e5e9d374', 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs]', 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].torrent', 'She.Walks.in.Darkness.2025.1080p.WEBRip.x264.[ExYuSubs].torrent', '==================|   OPIS  |===========================\r\n\r\nMlada agentica ostavi sve za sobom kako bi se preruÅ¡ila u Älanicu ETA-e, riskirajuÄ‡i Å¾ivot da bi razotkrila skroviÅ¡ta terorista na jugu Francuske.\r\n \r\n=============================================================\r\nThis torrent keeps alive as long as you seed\r\n=============================================================', 'https://m.media-amazon.com/images/M/MV5BNWEyZjdmMzUtYzNmNi00OGQ0LWI2NWYtY2Q1YTdiZTNlNzc5XkEyXkFqcGc@._V1_FMjpg_UX2160_.jpg', 'https://m.media-amazon.com/images/M/MV5BOGE2YjUwZDgtMzlmNy00NGMzLWI4OWQtNjdkODJlMjE0MGVhXkEyXkFqcGc@._V1_FMjpg_UX1280_.jpg', 18, 1889478755, '2025-11-05 20:46:45', 'single', 2, 0, 9, 0, 0, 0, 0, '2025-11-06 16:25:24', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://exyusubs.com/announce.php', 'yes', 1, '0', 'https://www.imdb.com/title/tt32129665/'),
(18, 'b7a9ed9423fdf8ab9c83d417ec56118cf8bb0cb9', 'Ballad.of.a.small.player.2025.1080p.WEBRip.x264.[ExYuSubs]', 'Ballad.of.a.small.player.2025.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Ballad.of.a.small.player.2025.1080p.WEBRip.x264.[ExYuSubs].torrent', '\r\nLord Doyle je kockar s visokim ulozima i skriva se u Macauu. Progone ga dugovi, krivnja i proÅ¡lost koju ne moÅ¾e ostaviti iza sebe. Kada upozna tajanstvenu Å¾enu koja mu se Äini kao posljednja prilika za spas, poÄinje priÄa o iskupljenju, slabostima i borbi s vlastitim demonima.\r\n\r\nFilm je snimljen prema istoimenom romanu Lawrencea Osbornea iz 2014. godine.', '', '', 18, 2149652151, '2025-11-07 10:49:14', 'single', 2, 0, 4, 1, 0, 0, 1, '2025-11-08 22:24:40', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0', 'https://www.imdb.com/title/tt32063098/');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
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
  `hideshoutbox` enum('yes','no') NOT NULL DEFAULT 'no'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci PACK_KEYS=0;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `secret`, `email`, `status`, `added`, `last_login`, `last_access`, `editsecret`, `privacy`, `stylesheet`, `language`, `info`, `acceptpms`, `ip`, `class`, `avatar`, `uploaded`, `downloaded`, `title`, `donated`, `country`, `notifs`, `enabled`, `modcomment`, `gender`, `client`, `age`, `warned`, `signature`, `last_browse`, `forumbanned`, `invited_by`, `invitees`, `invites`, `invitedate`, `commentpm`, `passkey`, `page`, `team`, `tzoffset`, `hideshoutbox`) VALUES
(1, 'Max', 'fe1a', 'fela', 'max@mail.com', 'confirmed', '2025-09-29 19:04:10', '2025-10-31 18:12:30', '2025-11-08 20:20:09', '', 'normal', 1, '1', NULL, 'yes', '111.11.111.11', 8, 'https://maxvonsydow.eu.org/avatars/1.jpg', 4301546756, 1077031554, 'Owner', 0, 20, '', 'yes', '  ', 'Male', 'Shazam', 33, 'no', 'Just a an human bean', 1762632781, 'no', 0, '8 ', 9, NULL, 'no', '7ac092796ee9af5533fe05fb661283a8', '/home/maxvon/public_html/admincp.php', 0, 0, 'no');
