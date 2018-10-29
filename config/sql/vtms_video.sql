-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2018 at 07:29 PM
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
-- Database: `cseku`
--

-- --------------------------------------------------------

--
-- Table structure for table `vtms_video`
--

DROP TABLE IF EXISTS `vtms_video`;
CREATE TABLE IF NOT EXISTS `vtms_video` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(1500) NOT NULL,
  `Description` varchar(1500) NOT NULL,
  `TagID` varchar(40) NOT NULL,
  `Link` varchar(150) NOT NULL,
  `IsEmbed` tinyint(1) NOT NULL,
  `CreationDate` datetime DEFAULT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `Views` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtms_video`
--

INSERT INTO `vtms_video` (`ID`, `Title`, `Description`, `TagID`, `Link`, `IsEmbed`, `CreationDate`, `CreatorID`, `Views`) VALUES
('{85BC958B-E3DD-41CD-B575-AE5075AF224C}', 'à¦à¦¬à¦¾à¦° à¦Ÿà§‡à¦¸à§à¦Ÿ à¦¸à§à¦•à§‹à¦¯à¦¼à¦¾à¦¡à§‡à¦° à¦¬à¦¿à¦¬à§‡à¦šà¦¨à¦¾à¦¯à¦¼ à¦¸à§Œà¦®à§à¦¯-à¦¤à§à¦·à¦¾à¦°', 'aa', 'game', 'https://www.youtube.com/watch?v=jKc2Im03EEo', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 0),
('{055D6A1F-45C6-467E-B2A4-54DE7D205B73}', 'Introduction to CodeIgniter', 'CodeIgniter Tutorials -', 'Coding', 'https://www.youtube.com/watch?v=OcZL17LvDUk', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 0),
('{19FDED64-AE4B-4E83-9D5A-7BEBC9354387}', 'Dynamic Dependent Dropdown in Codeigniter', 'Ajax', 'Coding', 'https://www.youtube.com/watch?v=bxA6M9LYrPk', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 1),
('{9B9F86E7-1B78-4614-9148-4E173454370F}', 'Understanding the Weird Parts', 'JavaScript:', 'Coding', 'https://www.youtube.com/watch?v=O6_iEL2QB7U', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 1),
('{82D4214A-D90A-468D-AF4A-098182896DD3}', 'What You Need to Know to be a Front End Developer', 'Front End Developer', 'Coding', 'https://www.youtube.com/watch?v=Xd7huBu39qk', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 0),
('{C078946D-0821-4732-8B67-DD998AC7CB91}', 'What is a Front End Developer?', 'Interested in learning more about our program?', 'Coding', 'https://www.youtube.com/watch?v=Tl0x_zf8I78', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 10),
('{B7A3A558-1818-4000-8E2E-AFB05F6F49CC}', 'Registration - Chat Application using PHP Ajax Jquery - 14', 'This video cover how new user can register into chat system which has been make by using PHP Ajax. If you want to learn chat application new user registration, so from this video you can find step by step process for how new user can register into this PHP Ajax Live Online Chat application.', 'Coding', 'https://www.youtube.com/watch?v=Ox8WgP4b1xA', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 0),
('{AED48B66-093F-446D-B762-39503C1B116D}', 'The Rise and Fall of Java', 'Few people know that Java, the worlds most popular programming language, the one that powers smartphone apps and Mars rovers alike, was the result of a project to build a better TV remote.', 'Programming', 'https://www.youtube.com/watch?v=HEdPX8pt_DQ', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 0),
('{50BA247A-BAF4-446F-8F63-7DD7032C4B58}', 'Top 8 Web Development Trends 2018', 'My Top 8 Web Development Trends for 2018!  Web Development probably had a better time than today! We got many exciting technologies like Angular, React, Web Components and more - what are the top trends for 2018 though?', 'Programming', 'https://www.youtube.com/watch?v=g13dSerjICk', 0, '2018-10-23 00:00:00', 'mahmud@gmail.com', 0),
('{1D531338-F918-421E-B303-BBFA68822834}', 'Angular vs React.js vs Vue.js - My Thoughts!', 'Angular, React.js or Vue.js? I get this question a lot! Let me share some thoughts on it with you!  Early bird offer - Join my course on this topic for only $10: https://www.udemy.com/angular-reactjs...', 'Programming', 'https://www.youtube.com/watch?v=KMX1mFEmM3E', 0, '2018-10-23 00:00:00', 'six.rakib@gmail.com', 0),
('{794C78E8-623E-4630-8BC0-9C88C53E6B40}', 'Bangladesh vs Zimbabwe Highlights', 'Bangladesh vs Zimbabwe Highlights || 1st ODI || 1st Innings || Zimbabwe tour of Bangladesh 2018', 'game', 'https://www.youtube.com/watch?v=ZcbdORptkoI', 0, '2018-10-25 20:02:21', 'six.rakib@gmail.com', 0),
('{9BE24D8D-50DA-4AB5-AE1F-F7998F039481}', 'Resistor color code bangladesh', 'Resistor , Color Code Bangla Tutorial, Resistor is the most used component in present electronic circuit. Though it is not an electronic device without it the electronic circuit can not be made in', 'Electronics', 'https://www.youtube.com/watch?v=mue0YaEcqeY', 0, '2018-10-25 22:48:50', 'six.rakib@gmail.com', 0),
('{1CCE5B78-642A-4F0C-8643-BB0CBE2E9A56}', 'TOP 5 Electronics Projects using LM386 | Amazing projects', 'Electronic components store https://www.electronicspices.com/  Please Check our new channel & give the review and suggestions  https://www.youtube.com/channel/UCoDK...', 'Electronics', 'https://www.youtube.com/watch?v=idb9C4DLRUo', 0, '2018-10-28 22:16:13', 'six.rakib@gmail.com', 0),
('{2D161D7F-5397-4983-8FD9-FFF459EF970C}', 'How to Use a Breadboard', 'NOTE: We apologize in advance for the poor audio quality in this video. We hope you still find it helpful!  This tutorial shows you how to use a solderless breadboard to build an electronic circuit, including the basics of how a breadboard works and some common mistakes that beginners tend to make.  To view full directions for this science project, see \"How to Use a Breadboard\" at Science Buddies: http://www.sciencebuddies.org/science...  Science Buddies also hosts a library of over 1,100 other free science fair \"Project Ideas\" for K-12 students, in a wide variety of topic areas from Astronomy to Zoology! Visit us at http://www.sciencebuddies.org?from=Yo... to see more Project Ideas for hands-on science and engineering.', 'Electronics', 'https://www.youtube.com/watch?v=6WReFkfrUIk', 0, '2018-10-29 00:43:54', 'six.rakib@gmail.com', 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
