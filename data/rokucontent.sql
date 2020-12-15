-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 15, 2020 at 10:44 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rokucontent`
--

-- --------------------------------------------------------

--
-- Table structure for table `kidcontent`
--

DROP TABLE IF EXISTS `kidcontent`;
CREATE TABLE IF NOT EXISTS `kidcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediatype` varchar(20) NOT NULL,
  `kdthumbnail` varchar(30) NOT NULL,
  `kdName` varchar(50) NOT NULL,
  `kdDesc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kidcontent`
--

INSERT INTO `kidcontent` (`id`, `mediatype`, `kdthumbnail`, `kdName`, `kdDesc`) VALUES
(1, 'Video', 'poppins.jpg', 'Mary Poppins', 'the description will go here'),
(2, 'Video', 'alone.jpg', 'Home Alone', 'the description will go here'),
(3, 'Video', 'wiz.jpg', 'Wizard of Oz', 'the description will go here'),
(4, 'Audio', 'ses.jpg', 'Sesame Street', 'the description will go here'),
(5, 'Audio', 'disney.jpg', 'Disney Classics', 'the description will go here'),
(6, 'Audio', 'muppets.jpg', 'Muppets Classics', 'the description will go here'),
(7, 'Video', 'bats.jpg', 'Batman the Animated Series', 'the description will go here'),
(8, 'Video', 'jack.jpg', 'Samurai Jack', 'the description will go here'),
(9, 'Video', 'scoob.jpg', 'Scooby Doo', 'the description will go here');

-- --------------------------------------------------------

--
-- Table structure for table `kidsocial`
--

DROP TABLE IF EXISTS `kidsocial`;
CREATE TABLE IF NOT EXISTS `kidsocial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kidsocialImage` varchar(30) NOT NULL,
  `kidsocialAlt` varchar(30) NOT NULL,
  `kidsocialurl` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kidsocial`
--

INSERT INTO `kidsocial` (`id`, `kidsocialImage`, `kidsocialAlt`, `kidsocialurl`) VALUES
(1, 'facebookkids.png', 'facebook logo', 'https://www.facebook.com/'),
(2, 'instakids.png', 'instagram logo', 'https://www.instagram.com/'),
(3, 'twitterkids.png', 'twitter logo', 'https://twitter.com/'),
(4, 'ytubekids.png', 'youTube logo', 'https://www.youtube.com/?gl=US');

-- --------------------------------------------------------

--
-- Table structure for table `landing`
--

DROP TABLE IF EXISTS `landing`;
CREATE TABLE IF NOT EXISTS `landing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `landingImage` varchar(30) NOT NULL,
  `landingAlt` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `landing`
--

INSERT INTO `landing` (`id`, `landingImage`, `landingAlt`) VALUES
(1, 'theatrehero.jpg', 'image of a theatre'),
(2, 'concerthero.jpg', 'image of a concert'),
(3, 'tvhero.jpg', 'image of a tv');

-- --------------------------------------------------------

--
-- Table structure for table `regularcontent`
--

DROP TABLE IF EXISTS `regularcontent`;
CREATE TABLE IF NOT EXISTS `regularcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mediatype` varchar(20) NOT NULL,
  `rgthumbnail` varchar(30) NOT NULL,
  `rgName` varchar(50) NOT NULL,
  `rgDesc` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regularcontent`
--

INSERT INTO `regularcontent` (`id`, `mediatype`, `rgthumbnail`, `rgName`, `rgDesc`) VALUES
(1, 'Video', 'apoc.jpg', 'Apocalypse Now', 'insert description here'),
(2, 'Video', 'rebel.jpg', 'Rebel Without a Cause', 'insert description here'),
(3, 'Video', 'pulp.jpg', 'Pulp Fiction', 'insert description here'),
(4, 'Audio', 'zig.jpg', 'The Rise and Fall of Ziggy Stardust...', 'insert description here'),
(5, 'Audio', 'revo.jpg', 'Revolver', 'insert description here'),
(6, 'Audio', 'aero.jpg', 'In the Aeroplane Over the Sea', 'insert description here'),
(7, 'Video', 'trek.jpg', 'Star Trek', 'insert description here'),
(8, 'Video', 'feld.jpg', 'Seinfeld', 'insert description here'),
(9, 'Video', 'mash.jpg', 'M*A*S*H', 'insert description here'),
(10, 'Video', '12.jpg', '12 Angry Men', 'insert description here'),
(11, 'Audio', 'miles.jpg', 'Kind of Blue', 'insert description here'),
(12, 'Video', 'beave.jpg', 'Leave it to Beaver', 'insert description here');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

DROP TABLE IF EXISTS `social`;
CREATE TABLE IF NOT EXISTS `social` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `socialImage` varchar(30) NOT NULL,
  `socialAlt` varchar(30) NOT NULL,
  `socialurl` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `socialImage`, `socialAlt`, `socialurl`) VALUES
(1, 'facebook.png', 'facebook icon', 'https://www.facebook.com/'),
(2, 'insta.png', 'instagram icon', 'https://www.instagram.com/'),
(3, 'twitter.png', 'twitter logo', 'https://twitter.com/'),
(4, 'ytube.png', 'YouTube logo', 'https://www.youtube.com/?gl=US');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
