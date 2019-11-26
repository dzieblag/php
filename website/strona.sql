-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 26, 2019 at 04:14 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `strona`
--

-- --------------------------------------------------------

--
-- Table structure for table `childstrony`
--

CREATE TABLE IF NOT EXISTS `childstrony` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentid` int(11) NOT NULL,
  `tytul` varchar(15) NOT NULL,
  `tresc` text,
  `data_utw` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_mod` timestamp NULL DEFAULT NULL,
  `publikacja` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `childstrony`
--

INSERT INTO `childstrony` (`id`, `parentid`, `tytul`, `tresc`, `data_utw`, `data_mod`, `publikacja`) VALUES
(14, 15, 'child', 'child', '2019-11-20 18:25:51', NULL, 1),
(15, 16, 'test3', 'test3', '2019-11-22 10:46:56', NULL, 1),
(13, 7, 'testowy', 'testowy', '2019-11-20 17:44:30', '2019-11-22 10:46:09', 1);

-- --------------------------------------------------------

--
-- Table structure for table `komentarze`
--

CREATE TABLE IF NOT EXISTS `komentarze` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_news` int(11) NOT NULL,
  `tresc` text NOT NULL,
  `autor` varchar(15) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `komentarze`
--

INSERT INTO `komentarze` (`id`, `id_news`, `tresc`, `autor`, `time`) VALUES
(1, 19, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'Admin', '2019-10-07 15:33:59'),
(2, 19, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'User', '2019-10-07 15:40:11'),
(3, 19, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'Admin', '2019-10-07 15:47:39'),
(4, 18, '.,k gjdflkgj dgjkjfgjg hlkfjlk  jlkjglk jgjkfdj klfdjkl jkhjg kfjskgdj gjkfklg s', 'User', '2019-10-07 15:47:39'),
(5, 18, 'test', 'test', '2019-10-09 14:44:31'),
(26, 18, 'to jest komentarz ze sÅ‚owem dupa jasna kurde maÄ‡.', 'user', '2019-10-09 17:44:52'),
(7, 18, 'hsghsdg " uhjsdjshd', 'fjdj "dfhjdh', '2019-10-09 14:46:22'),
(8, 17, ' test <b>test</b> <u>tekst</u>', 'test', '2019-10-09 15:21:03'),
(9, 17, 'fgfhdgf''kdj kdkf', 'jdhj', '2019-10-09 15:22:27'),
(10, 17, 'jk hjdf ''hfgdhfg'' dhdjhfjdhfj"jdfh djf"', 'qfdfkj', '2019-10-09 15:22:50'),
(11, 17, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'hjghg', '2019-10-09 15:23:14'),
(12, 17, 'ghhghg', 'ghgh', '2019-10-09 15:24:46'),
(13, 19, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'gfgf', '2019-10-09 15:31:50'),
(14, 16, 'jdkjfkjfghjkdf kjh vkjd fhkj', '', '2019-10-09 15:32:07'),
(15, 16, 'jfjfj', 'admin', '2019-10-09 15:33:56'),
(16, 15, 'hdfghdgfhdg', 'jhdsg f fjhsdgf', '2019-10-09 15:34:45'),
(17, 15, 'test', 'test', '2019-10-09 16:30:50'),
(29, 19, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'admin', '2019-10-21 14:46:14'),
(28, 18, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'user', '2019-10-09 18:01:46'),
(27, 18, 'Komentarz zostaÅ‚ usuniÄ™ty z powodu zÅ‚amania regulaminu.', 'user', '2019-10-09 18:01:32'),
(24, 18, 'hghfghgh', 'user]', '2019-10-09 17:16:29'),
(25, 18, 'ghghgh', 'user', '2019-10-09 17:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `ksiega`
--

CREATE TABLE IF NOT EXISTS `ksiega` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nick` text NOT NULL,
  `tresc` text,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=49 ;

--
-- Dumping data for table `ksiega`
--

INSERT INTO `ksiega` (`id`, `nick`, `tresc`, `data`) VALUES
(30, 'admin', 'Wpisz tutaj komentarz na temat strony', '2019-11-25 16:34:20'),
(31, 'piter', 'gaszka', '2019-11-25 16:39:55'),
(32, 'Qurwa', 'Qurwa', '2019-11-25 16:41:56'),
(33, 'admin', 'Qurwa\r\n', '2019-11-25 16:42:12'),
(34, '??', 'Wpisz tutaj komentarz na temat strony', '2019-11-25 16:46:02'),
(48, 'zxc', 'Wpisz tutaj komentarz na temat strony', '2019-11-25 17:03:21'),
(45, 'admin', 'Wpisz tutaj komentarz na temat strony', '2019-11-25 17:00:37'),
(47, 'admin', 'asdzxdczdas', '2019-11-25 17:02:46');

-- --------------------------------------------------------

--
-- Table structure for table `log_log`
--

CREATE TABLE IF NOT EXISTS `log_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user` varchar(15) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `akcja` varchar(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=56 ;

--
-- Dumping data for table `log_log`
--

INSERT INTO `log_log` (`id`, `data`, `user`, `ip`, `akcja`) VALUES
(1, '2019-10-30 14:41:08', 'admin', '192.168.7.42', 'logout'),
(2, '2019-10-30 14:41:14', 'admin', '192.168.7.42', 'login'),
(3, '2019-10-30 14:41:17', 'admin', '192.168.7.42', 'logout'),
(4, '2019-10-30 14:41:22', 'admin', '192.168.7.42', 'error'),
(5, '2019-10-30 14:41:47', 'user', '192.168.7.42', 'login'),
(6, '2019-10-30 14:41:51', 'user', '192.168.7.42', 'logout'),
(7, '2019-10-30 14:41:57', '', '192.168.7.42', 'error'),
(8, '2019-10-30 14:43:21', 'admin', '192.168.7.42', 'login'),
(9, '2019-10-30 17:19:52', 'admin', '192.168.7.42', 'logout'),
(10, '2019-10-30 17:19:56', 'user', '192.168.7.42', 'login'),
(11, '2019-10-30 17:19:58', 'user', '192.168.7.42', 'logout'),
(12, '2019-10-30 17:20:03', 'admin', '192.168.7.42', 'login'),
(13, '2019-11-10 11:05:41', 'admin', '::1', 'login'),
(14, '2019-11-18 17:00:25', 'admin', '::1', 'error'),
(15, '2019-11-18 17:00:29', 'admin', '::1', 'login'),
(16, '2019-11-20 14:16:51', 'admin', '::1', 'login'),
(17, '2019-11-20 14:17:30', 'admin', '::1', 'login'),
(18, '2019-11-20 14:17:39', 'admin', '::1', 'login'),
(19, '2019-11-20 14:17:48', 'admin', '::1', 'login'),
(20, '2019-11-20 14:17:54', 'admin', '::1', 'login'),
(21, '2019-11-20 14:18:01', 'admin', '::1', 'login'),
(22, '2019-11-20 14:18:08', 'admin', '::1', 'login'),
(23, '2019-11-20 14:32:19', 'admin', '::1', 'logout'),
(24, '2019-11-20 14:32:42', 'admin', '::1', 'login'),
(25, '2019-11-20 14:57:58', 'admin', '::1', 'logout'),
(26, '2019-11-20 14:58:02', 'admin', '::1', 'login'),
(27, '2019-11-20 14:58:15', 'admin', '::1', 'logout'),
(28, '2019-11-20 14:58:16', 'admin', '::1', 'login'),
(29, '2019-11-20 15:08:00', 'admin', '::1', 'logout'),
(30, '2019-11-20 15:10:59', 'admin', '::1', 'login'),
(31, '2019-11-20 15:11:22', 'admin', '::1', 'login'),
(32, '2019-11-20 15:11:31', 'admin', '::1', 'login'),
(33, '2019-11-20 15:11:48', 'admin', '::1', 'login'),
(34, '2019-11-20 15:11:51', 'admin', '::1', 'login'),
(35, '2019-11-20 15:12:09', 'admin', '::1', 'login'),
(36, '2019-11-20 15:12:36', 'admin', '::1', 'login'),
(37, '2019-11-20 15:13:03', 'admin', '::1', 'login'),
(38, '2019-11-20 18:27:40', 'admin', '::1', 'logout'),
(39, '2019-11-20 18:27:47', 'admin', '::1', 'login'),
(40, '2019-11-20 20:29:24', 'admin', '::1', 'logout'),
(41, '2019-11-20 20:30:40', 'admin', '::1', 'login'),
(42, '2019-11-20 20:30:44', 'admin', '::1', 'logout'),
(43, '2019-11-22 10:42:56', 'admin', '::1', 'login'),
(44, '2019-11-22 10:43:05', 'admin', '::1', 'logout'),
(45, '2019-11-22 10:43:31', 'admin', '::1', 'login'),
(46, '2019-11-25 16:02:48', 'admin', '::1', 'login'),
(47, '2019-11-25 16:08:01', 'admin', '::1', 'logout'),
(48, '2019-11-25 16:12:12', 'admin', '::1', 'login'),
(49, '2019-11-25 16:14:30', 'admin', '::1', 'logout'),
(50, '2019-11-25 16:31:32', 'admin', '::1', 'login'),
(51, '2019-11-25 16:42:07', 'admin', '::1', 'login'),
(52, '2019-11-25 16:45:49', 'admin', '::1', 'logout'),
(53, '2019-11-25 16:58:26', 'admin', '::1', 'login'),
(54, '2019-11-25 17:02:48', 'admin', '::1', 'logout'),
(55, '2019-11-25 17:03:25', 'admin', '::1', 'login');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temat` text NOT NULL,
  `tresc` text NOT NULL,
  `autor` varchar(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `temat`, `tresc`, `autor`, `date`, `active`) VALUES
(18, 'test', '<span style="font-size: 10pt;"><span style="font-weight: normal;"><span style="font-style: normal;">k<span style="color: rgb(51, 204, 255);">jhjtkj</span></span><span style="color: rgb(51, 204, 255);"><span style="font-style: italic;">hjgkf</span>g</span></span><span style="color: rgb(51, 204, 255);"><span style="font-weight: bold;">jkhlf</span>g<span style="text-decoration-line: line-through;">jklh</span>f kjhj f</span></span><span style="color: rgb(51, 204, 255);"><span style="font-size: -webkit-xxx-large;">gljhl kfg jhl</span><span style="font-size: 10pt;">kjflgh</span></span>', 'admin', '2019-09-23 18:03:37', 1),
(16, 'hfhghjfhgjhfj', 'jhg hjdfkhfj f<br />kjdfhdjkfhjkdhfjk<br />jukehrfjkedhfjkedh<br />yttyt', 'admin', '2019-09-23 17:57:28', 1),
(17, 'trtr', 'dfkjhgjkfdh<br />\r\nkljr lkjrlkt jkjj kl<br />\r\ng kiujfdhkgjh djkghkjfd  <br />\r\ngk jdklgj dfkjgh klgjkhl<br />\r\n dfjkgh jklgjh lkgjh klifj<br />\r\n', 'admin', '2019-09-23 17:59:22', 1),
(14, '2', '`klf jdskj fhdkjf hgkjdfhgkj dfkjg dfkjhg jkfdh g jkdfh kjg hdf kjg hjkdf hgkjdfh jkdfh jkg hdfjkg hjkdfhg kjfdhjk gdfjk gkjfdh', 'admin', '2019-09-23 17:56:29', 0),
(15, 'Temat', 'Tresc\r\njdfhdjfhdjfhjd\r\njdfhjdhfjdhfj', 'admin', '2019-09-23 17:56:47', 1),
(19, 'nowy news', '<div>fj<span style="background-color: rgb(255, 0, 0);">dy fjghs jkfh jkfh jkhjkg fjkjkdf hsdfj kl</span></div><div>&nbsp;j<span style="background-color: rgb(255, 255, 0);">klh jhdfgjh fjhfgjh dfhjksdh jk</span>dfhgkldf</div><div>df <span style="background-color: rgb(51, 102, 255);">kjhf jhhdfjkhf jkdfh fkl df</span>klg <br></div><div>df k<span style="background-color: rgb(153, 153, 153);">dfj hklfg dfjh kldf hgkld</span>fjklgjdfl</div><div><br></div>', 'admin', '2019-09-25 13:57:37', 1);

-- --------------------------------------------------------

--
-- Table structure for table `stat`
--

CREATE TABLE IF NOT EXISTS `stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ses_id` text NOT NULL,
  `time` int(11) NOT NULL,
  `login` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=124 ;

--
-- Dumping data for table `stat`
--

INSERT INTO `stat` (`id`, `ses_id`, `time`, `login`) VALUES
(123, '86vf72r0077a7lkenlda3rji91', 1574781105, 0);

-- --------------------------------------------------------

--
-- Table structure for table `strony`
--

CREATE TABLE IF NOT EXISTS `strony` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tytul` varchar(15) NOT NULL,
  `tresc` text,
  `data_utw` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `data_mod` timestamp NULL DEFAULT NULL,
  `publikacja` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `strony`
--

INSERT INTO `strony` (`id`, `tytul`, `tresc`, `data_utw`, `data_mod`, `publikacja`) VALUES
(7, 'test', 'kjfsdh kfjhkjgf sdkjfkj sdhgkjh fdkjgdh kjhfkj hdkj hsdkjg hkjdfhgkj<br>', '2019-10-23 17:55:44', '2019-11-20 20:21:49', 1),
(15, 'parent', 'parent', '2019-11-20 18:25:34', NULL, 1),
(13, 'asd', 'asd', '2019-11-20 17:39:18', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(10) NOT NULL,
  `pass` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `type` varchar(1) NOT NULL DEFAULT 'u',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user` (`user`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `pass`, `email`, `type`) VALUES
(1, 'user', '$1$NM0.SP..$QxPSZ5U5fWpMrr31LXjZi0', 'user@user.pl', 'u'),
(3, 'ppp', '$1$Mj/.lg3.$xvsAHr1nEA0XZasI22Z3D.', 'ppp@ppp.pl', 'u'),
(4, 'admin', '$1$K65.LS5.$ujuUqNKcXt5VcbAGvKdsx0', 'admin@a.pl', 'a'),
(12, 'uuu', '*F68E1CF74C0EF51ADEE637F18A09446271DDF2E1', 'uuu@uuu.pl', 'u'),
(10, 'tttrere', '$1$5/..o/5.$kMV3v.2/M9d8lO4wQpvhb0', 'jfghsfgsejg', 'u'),
(11, 'aaa', '$1$5i..oe1.$prlQ.haEK3kXEU7y0oOLF.', 'aaa@udfydu', 'u');

-- --------------------------------------------------------

--
-- Table structure for table `wulgaryzmy`
--

CREATE TABLE IF NOT EXISTS `wulgaryzmy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slowo` varchar(15) NOT NULL,
  `cenzura` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slowo` (`slowo`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `wulgaryzmy`
--

INSERT INTO `wulgaryzmy` (`id`, `slowo`, `cenzura`) VALUES
(1, 'kurde', 'k***e'),
(14, 'pedaÅ‚', 'p***l'),
(3, 'kurwa', 'k***a'),
(13, 'Qurwa', 'Q***a'),
(12, 'kÃ³rwa', 'k***a');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
