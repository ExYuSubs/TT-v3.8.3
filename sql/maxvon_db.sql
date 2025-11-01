-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 31, 2025 at 11:28 PM
-- Server version: 10.11.14-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maxvon_db`
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
(1, 'http://tracker.openbittorrent.com:80/announce', 1, 0, 0, 0, 'no'),
(2, 'http://tracker.opentrackr.org:1337/announce', 1, 0, 0, 0, 'no'),
(3, 'https://tracker1.520.jp:443/announce', 1, 0, 0, 0, 'yes'),
(4, 'https://tracker.tamersunion.org:443/announce', 1, 12, 1, 0, 'yes'),
(5, 'https://tracker.imgoingto.icu:443/announce', 1, 0, 0, 0, 'no'),
(6, 'http://nyaa.tracker.wf:7777/announce', 1, 0, 0, 0, 'no'),
(7, 'https://maxvonsydow.eu.org/announce.php', 2, 0, 0, 0, 'yes'),
(8, 'https://tracker.lilithraws.org:443/announce', 3, 0, 0, 0, 'yes'),
(9, 'https://tracker.yemekyedim.com:443/announce', 3, 0, 0, 0, 'yes'),
(10, 'https://trackers.mlsub.net:443/announce', 3, 0, 0, 0, 'yes'),
(11, 'http://bt.desol.one:2710/announce', 3, 0, 0, 0, 'no'),
(12, 'http://bt.okmp3.ru:2710/announce', 3, 0, 0, 0, 'no'),
(13, 'http://tracker.bt4g.com:2095/announce', 3, 471, 48, 714, 'yes'),
(14, 'http://tracker.renfei.net:8080/announce', 3, 0, 0, 0, 'no'),
(15, 'http://retracker.local/announce', 3, 0, 0, 0, 'no'),
(16, 'http://tracker.grepler.com:6969/announce', 3, 0, 0, 0, 'no'),
(17, 'http://h4.trakx.nibba.trade:80/announce', 3, 0, 0, 0, 'no'),
(18, 'https://maxvonsydow.eu.org/announce.php', 4, 0, 0, 0, 'yes'),
(19, 'https://maxvonsydow.eu.org/announce.php', 5, 0, 0, 0, 'yes'),
(20, 'https://maxvonsydow.eu.org/announce.php', 6, 0, 0, 0, 'yes'),
(21, 'https://maxvonsydow.eu.org/announce.php', 7, 0, 0, 0, 'yes'),
(22, 'https://maxvonsydow.eu.org/announce.php', 8, 0, 0, 0, 'yes'),
(23, 'https://maxvonsydow.eu.org/announce.php', 9, 0, 0, 0, 'yes');

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
(2, 'Divx/Xvid', 1, 'Movies_Xvid.png', 'yes', 'Movies', '2'),
(6, 'TV Shows', 2, 'TV_Xvid.png', 'yes', 'TV Shows', '6'),
(18, 'PC', 3, 'appz.png', 'yes', 'Apps', '18'),
(22, 'MP3', 7, 'mp3.png', 'yes', 'Music', '22'),
(53, 'Miscellaneous', 10, 'cat_misc.png', 'no', 'Miscellaneous', ''),
(55, 'Documentaries', 8, 'documentary.png', 'no', 'Documentary', ''),
(57, 'Packs', 5, 'MoviesPacks.png', 'no', 'Movies', ''),
(61, 'TV Packs', 11, 'TVPacks.png', 'no', 'TV Shows', '');

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
(22, 9, 'The.Color.Purple.1985.1080p.BDRip.AV1-FFE.mkv', 4062530038);

-- --------------------------------------------------------

--
-- Table structure for table `forumcats`
--

CREATE TABLE `forumcats` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) NOT NULL DEFAULT '',
  `sort` int(10) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
('37.187.176.128', '1760904603'),
('176.10.137.87', '1761934334'),
('185.39.19.49', '1761514271'),
('205.169.39.57', '1759365858'),
('185.39.19.34', '1761557796'),
('45.89.70.31', '1760912982'),
('185.39.19.43', '1760213664'),
('91.124.17.210', '1759915721'),
('185.39.19.97', '1760339357'),
('34.72.176.129', '1760079629'),
('185.39.19.48', '1760086736'),
('66.249.81.34', '1760093348'),
('205.169.39.14', '1760104159'),
('205.169.39.123', '1760172379'),
('198.16.233.71', '1760180364'),
('35.196.132.85', '1760180534'),
('212.5.158.35', '1760349454'),
('212.39.89.107', '1760279236'),
('92.118.63.236', '1760276148'),
('212.39.89.11', '1760277042'),
('34.254.109.160', '1760278614'),
('212.39.89.83', '1760279307'),
('212.39.89.59', '1760336209'),
('2a01:5a8:31b:49a0:2884:8092:9807:1064', '1760298657'),
('64.71.166.35', '1760289966'),
('212.102.40.17', '1760294584'),
('65.111.10.240', '1760484309'),
('216.26.255.121', '1760484310'),
('45.89.70.30', '1760562421'),
('198.16.211.7', '1760656785'),
('193.142.201.7', '1760773379'),
('216.26.253.3', '1760817353'),
('64.238.204.88', '1760861927'),
('64.238.204.87', '1760882521'),
('205.169.39.58', '1761177025'),
('193.187.128.231', '1761215103'),
('212.103.60.29', '1761241092'),
('205.169.39.86', '1761265081'),
('87.126.208.124', '1761862941'),
('133.242.174.119', '1761348141'),
('34.123.170.104', '1761509680'),
('34.122.147.229', '1761509710'),
('205.169.39.112', '1761637453'),
('35.86.127.97', '1761694965'),
('85.221.150.1', '1761935629'),
('212.39.89.24', '1761953166'),
('205.169.39.28', '1761858211'),
('212.39.89.120', '1761925362'),
('82.192.54.206', '1761939841'),
('212.39.89.0', '1761935959'),
('52.123.138.164', '1761936335'),
('77.110.185.65', '1761944616'),
('67.230.157.160', '1761938627');

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
(14, '2025-10-30 10:55:30', 'Torrent The Color Purple (1985) UHD BDRemux 2160p HDR uploaded by coco'),
(15, '2025-10-30 10:58:26', 'Torrent 9 (The Color Purple (1985) BDRip AV1-FFE) was edited by coco'),
(16, '2025-10-30 22:35:40', '<b>Shout<font color=\'orange\'> This message means that in torrents-details.php you have a closing curly brace } without a matching opening {. PHP stops right there and throws a parse error.</font> Deleted by: coco</b>'),
(17, '2025-10-31 15:46:28', '<b>Shout<font color=\'orange\'> This TT v3.8.3 no Mod IMDB instaled</font> Deleted by: coco</b>'),
(18, '2025-10-31 15:46:32', '<b>Shout<font color=\'orange\'> Give me access to admin panel pls :)</font> Deleted by: coco</b>'),
(19, '2025-10-31 15:46:36', '<b>Shout<font color=\'orange\'> Ohhh I undersend You make changes to IMDB parts, be careful with this parts</font> Deleted by: coco</b>'),
(20, '2025-10-31 18:12:48', 'Shoutbox room 0 cleared by MaxVonSydow'),
(21, '2025-10-31 18:12:48', 'Shoutbox room 1 cleared by MaxVonSydow'),
(22, '2025-10-31 18:12:48', 'Shoutbox room 2 cleared by MaxVonSydow'),
(23, '2025-10-31 18:46:43', '<b>Shout<font color=\'orange\'> [color=#ff0000]This shoutbox room has been cleared[/color]</font> Deleted by: MaxVonSydow</b>'),
(24, '2025-10-31 20:36:33', 'MaxVonSydow has edited user: 5 details'),
(25, '2025-10-31 20:44:33', 'MaxVonSydow has edited user: 4 details'),
(26, '2025-10-31 20:45:38', 'MaxVonSydow has edited user: 1 details');

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

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender`, `receiver`, `added`, `msg`, `unread`, `poster`, `subject`, `location`) VALUES
(2, 0, 2, '2025-10-11 11:59:11', 'Thank you for registering at our tracker! Please remember to keep your ratio at 1.00 or greater :)', 'no', 0, '', 'in'),
(4, 3, 1, '2025-10-12 19:18:18', 'Now everything working like a charm', 'no', 0, 'Site', 'both'),
(5, 0, 4, '2025-10-31 17:38:40', 'Thank you for registering at our tracker! Please remember to keep your ratio at 1.00 or greater :)', 'no', 0, '', 'in'),
(6, 0, 5, '2025-10-31 19:22:12', 'Thank you for registering at our tracker! Please remember to keep your ratio at 1.00 or greater :)', 'no', 0, '', 'in'),
(7, 0, 5, '2025-10-31 20:36:33', 'You have been promoted to \'Power User\' by MaxVonSydow.', 'no', 0, 'Promotion/Demotion Notification', 'in'),
(8, 0, 4, '2025-10-31 20:44:33', 'You have been promoted to \'Power User\' by MaxVonSydow.', 'no', 0, 'Promotion/Demotion Notification', 'in');

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
(37, 8, '-lt0D80-an´8xß2 Èm', '45.87.251.163', 64236, 2154063108, 0, 0, 'yes', '2025-10-26 01:10:05', '2025-10-31 23:25:33', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(38, 7, '-lt0D80-pø­3MÝ(rž×', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-10-26 01:10:13', '2025-10-31 23:26:42', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(39, 6, '-lt0D80-,@þB—§ô1™', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-10-26 01:10:13', '2025-10-31 23:26:33', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(40, 5, '-lt0D80-\Z!yK÷wÃ€¶B', '45.87.251.163', 64236, 0, 0, 0, 'yes', '2025-10-26 01:10:19', '2025-10-31 23:26:42', 'no', 'rtorrent/0.9.8/0.13.8', '1', '7ac092796ee9af5533fe05fb661283a8'),
(53, 8, '-UT2210-b%‰’×v£Ý6', '', 62263, 0, 0, 0, 'yes', '2025-10-31 15:19:32', '2025-10-31 23:20:03', 'no', 'uTorrent/2210(25110)', '1', '7ac092796ee9af5533fe05fb661283a8');

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
(28, 'System', '[color=#ff0000]This shoutbox room has been cleared[/color]', '2025-10-31 18:12:48', 1, 2),
(27, 'System', '[color=#ff0000]This shoutbox room has been cleared[/color]', '2025-10-31 18:12:48', 1, 1),
(29, 'MaxVonSydow', 'Hope it working now ....', '2025-10-31 18:46:37', 1, 0),
(30, 'bitva', 'congratulations great :ok: ', '2025-10-31 19:28:36', 5, 0),
(31, 'MaxVonSydow', 'thanks', '2025-10-31 19:32:47', 1, 0),
(32, 'MaxVonSydow', 'we will share it publicly very soon', '2025-10-31 19:33:21', 1, 0),
(33, 'Bean', 'very nice  :ok: ', '2025-10-31 19:36:47', 4, 0),
(34, 'coco', 'We need fix all undefined index and undefined variables ', '2025-10-31 23:27:49', 3, 0);

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
(1, 'default', 'default'),
(113, 'Dark Gray', 'GRAY');

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
('cleanup', 1761953165);

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
  `image1` text NOT NULL,
  `image2` text NOT NULL,
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
  `freeleech` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `torrents`
--

INSERT INTO `torrents` (`id`, `info_hash`, `name`, `filename`, `save_as`, `descr`, `image1`, `image2`, `category`, `size`, `added`, `type`, `numfiles`, `comments`, `views`, `hits`, `times_completed`, `leechers`, `seeders`, `last_action`, `visible`, `banned`, `owner`, `anon`, `numratings`, `ratingsum`, `nfo`, `announce`, `external`, `torrentlang`, `freeleech`) VALUES
(1, '215205f03ac5dee878b5f5afd1e8cccc69e13f64', 'Blue.Lights.S03.1080p.IP.WEB-DL.H264-SAiNT', 'Blue.Lights.S03.1080p.iP.WEB-DL.H264-SAiNT.torrent', 'Blue.Lights.S03.1080p.iP.WEB-DL.H264-SAiNT.torrent', 'Follows rookie police officers working in Belfast, a city in which being a frontline response cop comes with unique pressures and dangers.', '10.jpg', '11.jpg', 6, 13905921245, '2025-09-29 19:49:45', 'single', 6, 1, 35, 7, 0, 1, 12, '2025-10-12 20:15:34', 'yes', 'no', 1, 'no', 1, 5, 'no', 'udp://tracker.opentrackr.org:1337/announce', 'yes', 1, '0'),
(2, '5355a4b12dc182eb0193c2a47b777f1c31386115', 'Showtrial.S01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb', 'Showtrial.S01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.torrent', 'Showtrial.S01.1080p.AMZN.WEB-DL.DDP2.0.H.264-NTb.torrent', '================================================================================\r\nAbout UL .........: https://pirates-forum.org/private.php?action=send&uid=157351\r\n================================================================================\r\n\r\nTajkun je priÄa o Vladanu SimonoviÄ‡u, tajkunu kog maestralno tumaÄi Dragan BjelogrliÄ‡. Vladan je u javnosti omraÅ¾en zbog bogatstva steÄenog na sumnjiv naÄin, tokom devedesetih godina proÅ¡log veka. \r\n\r\nGodinama je iz senke upravljao svojom moÄ‡nom kompanijom, ali se sve menja kada biva primoran da izaÄ‘e na medijsku svetlost. On postaje progonjen Äovek, prisiljen na drastiÄne mere radi oÄuvanja sebe i svoje porodice. \r\n\r\nVladan ima neprijatelje, i javne i tajne. Vladan se sukobljava i sa onima koji bi trebalo da su mu najbliÅ¾i. Vladan krije, i otkriva tajne. \r\n\r\n\r\n=============================================================\r\nThis torrent keeps alive as long as you seed\r\n=============================================================', '20.png', '21.jpg', 6, 21249340801, '2025-10-07 07:49:47', 'single', 5, 0, 3, 11, 0, 0, 0, '2025-10-07 07:49:47', 'no', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0'),
(3, '090156e6172ab12c7bd338441d1873d4abf63300', 'Play Dirty (2025) WEB-DLRip-AVC', '[rutor.is]Play.Dirty.2025.DUB.MVO.WEB-DLRip-AVC.seleZen.m.torrent', '[rutor.is]Play.Dirty.2025.DUB.MVO.WEB-DLRip-AVC.seleZen.m.torrent', 'Ð˜Ð½Ñ„Ð¾Ñ€Ð¼Ð°Ñ†Ð¸Ñ Ð¾ Ñ„Ð¸Ð»ÑŒÐ¼Ðµ\r\nÐÐ°Ð·Ð²Ð°Ð½Ð¸Ðµ: Ð“Ñ€ÑÐ·Ð½Ð°Ñ Ð¸Ð³Ñ€Ð°\r\nÐžÑ€Ð¸Ð³Ð¸Ð½Ð°Ð»ÑŒÐ½Ð¾Ðµ Ð½Ð°Ð·Ð²Ð°Ð½Ð¸Ðµ: Play Dirty\r\nÐ“Ð¾Ð´ Ð²Ñ‹Ð¿ÑƒÑÐºÐ°: 2025\r\nÐ–Ð°Ð½Ñ€: Ð‘Ð¾ÐµÐ²Ð¸Ðº, ÐºÐ¾Ð¼ÐµÐ´Ð¸Ñ, ÐºÑ€Ð¸Ð¼Ð¸Ð½Ð°Ð»\r\nÐ ÐµÐ¶Ð¸ÑÑÐµÑ€: Ð¨ÐµÐ¹Ð½ Ð‘Ð»ÑÐº\r\nÐ’ Ñ€Ð¾Ð»ÑÑ…: ÐœÐ°Ñ€Ðº Ð£Ð¾Ð»Ð±ÐµÑ€Ð³, Ð›Ð°ÐºÐ¸Ñ‚ Ð¡Ñ‚ÑÐ½Ñ„Ð¸Ð»Ð´, Ð Ð¾Ð·Ð° Ð¡Ð°Ð»Ð°Ð·Ð°Ñ€, ÐšÐ¸Ð³ÑÐ½-ÐœÐ°Ð¹ÐºÐ» ÐšÐ¸, Ð§ÑƒÐºÑƒÐ´Ð¸ Ð˜Ð²ÑƒÐ´Ð¶Ð¸, ÐÑÑ‚ Ð’ÑƒÐ»Ñ„Ñ„, Ð“Ñ€ÐµÑ‚Ñ…ÐµÐ½ ÐœÐ¾Ð», Ð¢Ð¾Ð¼Ð°Ñ Ð”Ð¶ÐµÐ¹Ð½, Ð¢Ð¾Ð½Ð¸ Ð¨ÑÐ»Ð¾ÑƒÐ±, Ð¥ÐµÐ¼ÐºÐ¸ ÐœÐ°Ð´ÐµÑ€Ð°, ÐÐ»ÐµÑ…Ð°Ð½Ð´Ñ€Ð¾ Ð­Ð´Ð´Ð°, ÐšÐ»ÑÑ€ Ð›Ð¾Ð²ÐµÑ€Ð¸Ð½Ð³, Ð§Ð°Ð¹ Ð¥Ð°Ð½ÑÐµÐ½, Ð¡ÐµÐ±Ð°ÑÑ‚ÑŒÑÐ½ ÐšÐ°Ñ€Ñ€', '', '', 2, 1934932566, '2025-10-12 20:17:33', 'single', 1, 0, 27, 8, 714, 48, 471, '2025-10-12 20:43:53', 'yes', 'no', 3, 'no', 0, 0, 'no', 'udp://opentor.net:6969', 'yes', 1, '0'),
(4, 'f2c528226eab17c8d1d1bd5d1ffb5903059f19ca', 'Airplane.1980.720p.BDRip.AV1-FFE', 'Airplane.1980.720p.BDRip.AV1-FFE.torrent', 'Airplane.1980.720p.BDRip.AV1-FFE.torrent', 'Test description\r\nTest description\r\nTest description', '', '', 2, 1390551626, '2025-10-12 20:45:13', 'single', 1, 0, 41, 13, 0, 0, 0, '2025-10-13 13:26:10', 'no', 'no', 3, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0'),
(5, '3e95a6acf9aa63b0a4b507e1baf519b7bd563c34', 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E01.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', '50.jpg', '51.jpg', 6, 1077127944, '2025-10-17 07:23:27', 'single', 2, 0, 4, 1, 0, 0, 1, '2025-10-31 23:26:42', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0'),
(6, 'b7e22def18dff1c799585ec0f9fd2a8c395593da', 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E02.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', '60.jpg', '61.jpg', 6, 1077151735, '2025-10-17 07:24:13', 'single', 2, 0, 2, 1, 0, 0, 1, '2025-10-31 23:26:33', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0'),
(7, '8652ae4fcfd4bf5d53f9c9ede5a83bb6b0b9acd5', 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E03.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', '70.jpg', '71.jpg', 6, 1076992807, '2025-10-17 07:24:29', 'single', 2, 0, 3, 1, 0, 0, 1, '2025-10-31 23:26:42', 'yes', 'no', 1, 'no', 0, 0, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0'),
(8, '6111a03ad2da583a1db6caf4133a29e6ce23d0a3', 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs]', 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Agatha.Christie.Towards.Zero.E04.1080p.WEBRip.x264.[ExYuSubs].torrent', 'Inspector Leach probes the brutal murder of an elderly widow in her Gull\'s Point home. A failed suicide, a false theft charge, an out-of-service hotel lift and a tennis star\'s love life intersect, culminating in a bizarre mass murder plot.', '80.jpg', '81.jpg', 6, 1077031554, '2025-10-17 07:24:51', 'single', 2, 1, 36, 3, 2, 0, 2, '2025-10-31 23:25:33', 'yes', 'no', 1, 'no', 1, 5, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0'),
(9, '7524ba35c413726f3da1da464ead32c307aeb7d8', 'The Color Purple (1985) BDRip AV1-FFE', 'The.Color.Purple.1985.1080p.BDRip.AV1-FFE.torrent', 'The.Color.Purple.1985.1080p.BDRip.AV1-FFE.torrent', 'Ð ÐµÐ¶Ð¸ÑÑŒÐ¾Ñ€: Ð¡Ñ‚Ð¸Ð²ÑŠÐ½ Ð¡Ð¿Ð¸Ð»Ð±ÑŠÑ€Ð³\r\nÐ’ Ñ€Ð¾Ð»Ð¸Ñ‚Ðµ: Ð›Ð¾Ñ€ÑŠÐ½Ñ Ð¤Ð¸ÑˆÐ±ÑŠÑ€Ð½, Ð”Ð°Ð½Ð¸ Ð“Ð»Ð¾ÑƒÐ²ÑŠÑ€, Ð£Ð¿Ð¸ Ð“Ð¾Ð»Ð´Ð±ÑŠÑ€Ð³, ÐœÐ°Ñ€Ð³Ð°Ñ€ÐµÑ‚ Ð•Ð¹Ð²ÑŠÑ€Ð¸, ÐžÐ¿Ñ€Ð° Ð£Ð¸Ð½Ñ„Ñ€Ð¸, Ð£Ð¸Ð»Ð°Ñ€Ð´ ÐŸÑŠÑ…, ÐÐºÐ¾ÑÑƒÐ° Ð‘ÑƒÑÐ¸Ð°, ÐÐ´Ð¾Ð»Ñ„ Ð¡Ð¸Ð¹Ð·ÑŠÑ€, Ð Ðµ Ð”Ð¾Ð½ Ð§Ð¾Ð½, Ð”Ð°Ð½Ð° ÐÐ¹Ð²Ð¸\r\n\r\nÐ–Ð°Ð½Ñ€: Ð”Ñ€Ð°Ð¼Ð°\r\nÐ’Ñ€ÐµÐ¼ÐµÑ‚Ñ€Ð°ÐµÐ½Ðµ: 152 Ð¼Ð¸Ð½ÑƒÑ‚Ð¸\r\n\r\nÐ ÐµÐ·ÑŽÐ¼Ðµ: Ð˜ÑÑ‚Ð¾Ñ€Ð¸Ñ Ð·Ð° Ð¶Ð¸Ð²Ð¾Ñ‚Ð° Ð½Ð° ÐµÐ´Ð½Ð¾ Ð¼Ð¾Ð¼Ð¸Ñ‡Ðµ, Ð·Ð° Ñ‚Ð¾Ð²Ð°, ÐºÐ¾ÐµÑ‚Ð¾ Ð‘Ð¾Ð³ ÑÐµ Ð¾Ð¿Ð¸Ñ‚Ð²Ð° Ð´Ð° ÐºÐ°Ð¶Ðµ Ð½Ð° Ñ…Ð¾Ñ€Ð°Ñ‚Ð° Ð¸ Ð·Ð° Ñ€Ð°Ð·Ð»Ð¸Ñ‡Ð½Ð¸Ñ‚Ðµ Ð½Ð°Ñ‡Ð¸Ð½Ð¸, Ð¿Ð¾ ÐºÐ¾Ð¸Ñ‚Ð¾ Ñ‚Ðµ Ñ€Ð°Ð·Ð±Ð¸Ñ€Ð°Ñ‚ Ð¿Ð¾ÑÐ»Ð°Ð½Ð¸ÑÑ‚Ð° Ð¼Ñƒ.\r\nÐ¤Ð¸Ð»Ð¼ÑŠÑ‚ Ð¿Ñ€ÐµÐ´ÑÑ‚Ð°Ð²Ñ Ð¡ÐµÐ»Ð¸, Ð¼Ð»Ð°Ð´Ð¾ Ñ‡ÐµÑ€Ð½Ð¾ÐºÐ¾Ð¶Ð¾ Ð¼Ð¾Ð¼Ð¸Ñ‡Ðµ, Ð¾Ñ‚ Ð½Ð°Ñ‡Ð°Ð»Ð¾Ñ‚Ð¾ Ð½Ð° 1900 Ð³Ð¾Ð´Ð¸Ð½Ð°. Ð¢Ñ Ðµ 14-Ð³Ð¾Ð´Ð¸ÑˆÐ½Ð° Ð¸ Ð±Ñ€ÐµÐ¼ÐµÐ½Ð½Ð° Ð¾Ñ‚ ÑÐ²Ð¾Ñ Ð±Ð°Ñ‰Ð°. ÐžÑ‚Ñ‚ÑƒÐº Ð·Ð°Ð¿Ð¾Ñ‡Ð²Ð° Ð¸ÑÑ‚Ð¾Ñ€Ð¸ÑÑ‚Ð° Ð½Ð° Ð½ÐµÐ¹Ð½Ð¸Ñ Ð¸Ð·ÐºÑƒÐ¿Ð¸Ñ‚ÐµÐ»ÐµÐ½ Ð¸ Ñ‚ÐµÐ¶ÑŠÐº Ð¶Ð¸Ð²Ð¾Ñ‚ Ð¿Ñ€ÐµÐ· ÑÐ»ÐµÐ´Ð²Ð°Ñ‰Ð¸Ñ‚Ðµ 30 Ð³Ð¾Ð´Ð¸Ð½Ð¸.', '90.jpg', '', 2, 4062530038, '2025-10-30 10:55:30', 'single', 1, 0, 10, 1, 0, 0, 0, '2025-10-30 22:56:50', 'no', 'no', 3, 'no', 2, 10, 'no', 'https://maxvonsydow.eu.org/announce.php', 'no', 1, '0');

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
(1, 'MaxVonSydow', 'b82fb528883dce23cf6498119d06511b3c62fe1a', '9p5XqNQjFfS6av41lo7W', 'exyusubs@protonmail.com', 'confirmed', '2025-09-29 19:04:10', '2025-10-31 18:12:30', '2025-10-31 23:28:24', '', 'normal', 1, '1', NULL, 'yes', '176.10.137.87', 7, '', 4301546756, 1077031554, 'Owner', 0, 20, '', 'yes', '  ', 'Male', 'Shazam', 33, 'no', 'Just a an human bean', 1761953092, 'no', 0, '', 0, NULL, 'no', '7ac092796ee9af5533fe05fb661283a8', '/home/maxvon/public_html/shoutbox.php', 0, 0, 'no'),
(2, 'spiritblue', '5a84995faca4d9a9ea858517898d6c03d1e3283f', 'jRm0HnyfTBprpBHnFFvD', 'ytiloup@hotmail.com', 'confirmed', '2025-10-11 11:59:11', '2025-10-17 00:09:30', '2025-10-17 00:11:56', '', 'normal', 1, '1', NULL, 'yes', '198.16.211.7', 6, '', 2147483648, 0, '', 0, 5, '', 'yes', NULL, 'Male', 'qBittorrent', 56, 'no', '', 1760656261, 'no', 0, '', 0, NULL, 'yes', '', '/home/maxvon/public_html/account-logout.php', 0, 0, 'no'),
(3, 'coco', '089d11cb5bf9ffc8c63afe6785defc90b629a234', 'Wv8UyTkwxz4PWN3yVNiT', 'mondeo1706@gmail.com', 'confirmed', '2025-10-12 11:47:00', '2025-10-31 23:26:26', '2025-10-31 23:28:30', '', 'strong', 1, '1', NULL, 'yes', '212.39.89.24', 6, '', 2147483648, 0, '', 0, 68, '', 'yes', NULL, 'Male', '', 49, 'no', '', 1761953186, 'no', 0, '', 0, NULL, 'no', '5058f24a0d91c9c7e3a8fb44ae4e72e9', '/home/maxvon/public_html/shoutbox.php', 0, 0, 'no'),
(4, 'Bean', '932b1c5dbfdb13e986b869d07ab56a8806adb8fa', 'g073FTEfECkw5RmFD4xr', 'sihq.sytes@gmail.com', 'confirmed', '2025-10-31 17:38:40', '2025-10-31 19:44:04', '2025-10-31 21:42:19', '', 'normal', 1, '1', NULL, 'yes', '82.192.54.206', 2, '', 5368709120, 0, '', 0, 64, '', 'yes', '  ', 'Male', 'uTorrent', 56, 'no', '', 1761946932, 'no', 0, '', 0, NULL, 'no', '', '/home/maxvon/public_html/account-details.php', 0, 0, 'no'),
(5, 'bitva', 'db6f2c2081184cbd114e1e4dc5fab2dd9c99a462', 'KAMu63GV09LBHpsARqu7', 'krizsi1966@gmail.com', 'confirmed', '2025-10-31 19:22:12', '2025-10-31 20:47:50', '2025-10-31 21:03:36', '', 'normal', 1, '1', NULL, 'yes', '77.110.185.65', 2, '', 5368709120, 1077031554, '', 0, 74, '', 'yes', '$user[\"modcomment\"]', 'Male', 'qtorrent', 58, 'no', '', 1761944569, 'no', 0, '', 0, NULL, 'no', '2132afd389db2692df8004745a9cbbad', '/home/maxvon/public_html/account-logout.php', 0, 60, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` int(10) NOT NULL,
  `userid` int(10) NOT NULL DEFAULT 0,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `added` datetime DEFAULT NULL,
  `expiry` datetime DEFAULT NULL,
  `warnedby` int(10) NOT NULL DEFAULT 0,
  `type` varchar(10) NOT NULL DEFAULT '',
  `active` enum('yes','no') DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announce`
--
ALTER TABLE `announce`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torrent` (`torrent`);

--
-- Indexes for table `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `first_last` (`first`,`last`);

--
-- Indexes for table `blocks`
--
ALTER TABLE `blocks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `position_enabled` (`position`,`enabled`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parent_cat-name` (`parent_cat`,`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`),
  ADD KEY `torrent` (`torrent`);

--
-- Indexes for table `completed`
--
ALTER TABLE `completed`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userid_torrentid` (`userid`,`torrentid`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_bans`
--
ALTER TABLE `email_bans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `torrent` (`torrent`);

--
-- Indexes for table `forumcats`
--
ALTER TABLE `forumcats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_forums`
--
ALTER TABLE `forum_forums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forum_posts`
--
ALTER TABLE `forum_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `userid` (`userid`);
ALTER TABLE `forum_posts` ADD FULLTEXT KEY `body` (`body`);

--
-- Indexes for table `forum_readposts`
--
ALTER TABLE `forum_readposts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`id`),
  ADD KEY `topicid` (`topicid`);

--
-- Indexes for table `forum_topics`
--
ALTER TABLE `forum_topics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `subject` (`subject`),
  ADD KEY `lastpost` (`lastpost`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD UNIQUE KEY `base` (`group_id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD UNIQUE KEY `IP` (`ip`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added` (`added`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receiver` (`receiver`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `added` (`added`);

--
-- Indexes for table `peers`
--
ALTER TABLE `peers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `torrent_peer_id` (`torrent`,`peer_id`),
  ADD KEY `torrent` (`torrent`),
  ADD KEY `torrent_seeder` (`torrent`,`seeder`),
  ADD KEY `last_action` (`last_action`);

--
-- Indexes for table `pollanswers`
--
ALTER TABLE `pollanswers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pollid` (`pollid`),
  ADD KEY `selection` (`selection`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`torrent`,`user`),
  ADD KEY `user` (`user`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shoutbox`
--
ALTER TABLE `shoutbox`
  ADD PRIMARY KEY (`msgid`);

--
-- Indexes for table `sqlerr`
--
ALTER TABLE `sqlerr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stylesheets`
--
ALTER TABLE `stylesheets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `torrentlang`
--
ALTER TABLE `torrentlang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `torrents`
--
ALTER TABLE `torrents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `info_hash` (`info_hash`(20)),
  ADD KEY `owner` (`owner`),
  ADD KEY `visible` (`visible`),
  ADD KEY `category_visible` (`category`,`visible`);
ALTER TABLE `torrents` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `status_added` (`status`,`added`),
  ADD KEY `ip` (`ip`),
  ADD KEY `uploaded` (`uploaded`),
  ADD KEY `downloaded` (`downloaded`),
  ADD KEY `country` (`country`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announce`
--
ALTER TABLE `announce`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blocks`
--
ALTER TABLE `blocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `completed`
--
ALTER TABLE `completed`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `email_bans`
--
ALTER TABLE `email_bans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `forumcats`
--
ALTER TABLE `forumcats`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_forums`
--
ALTER TABLE `forum_forums`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_posts`
--
ALTER TABLE `forum_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_readposts`
--
ALTER TABLE `forum_readposts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forum_topics`
--
ALTER TABLE `forum_topics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `peers`
--
ALTER TABLE `peers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `pollanswers`
--
ALTER TABLE `pollanswers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `polls`
--
ALTER TABLE `polls`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shoutbox`
--
ALTER TABLE `shoutbox`
  MODIFY `msgid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `sqlerr`
--
ALTER TABLE `sqlerr`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stylesheets`
--
ALTER TABLE `stylesheets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `torrentlang`
--
ALTER TABLE `torrentlang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `torrents`
--
ALTER TABLE `torrents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
