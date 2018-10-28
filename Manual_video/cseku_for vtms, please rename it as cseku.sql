-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 28, 2018 at 07:30 PM
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
-- Table structure for table `jms_job`
--

DROP TABLE IF EXISTS `jms_job`;
CREATE TABLE IF NOT EXISTS `jms_job` (
  `ID` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Details` varchar(1000) NOT NULL,
  `LastDateOfApplication` date NOT NULL,
  `Salary` float NOT NULL,
  `Qualification` varchar(500) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

DROP TABLE IF EXISTS `reg_course`;
CREATE TABLE IF NOT EXISTS `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course`
--

INSERT INTO `reg_course` (`ID`, `CourseNo`, `Title`, `Credit`, `CourseTypeID`, `DisciplineID`, `IsDeleted`) VALUES
('{2A038C6A-B6DA-408D-8458-7493D4EE5D6C}', 'cse-3200', 'Web Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'cse-4112', 'Computer Networks Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0),
('{683A3D91-D124-44AF-82A3-FB43837A4392}', 'cse-4111', 'Computer Networks', 3, '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 0),
('{B17BDB32-6D88-4537-9545-65D940E17EEF}', 'cse-2115', 'Advanced Programming Lab', 1.5, '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5} ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_resource`
--

DROP TABLE IF EXISTS `reg_course_resource`;
CREATE TABLE IF NOT EXISTS `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

DROP TABLE IF EXISTS `reg_course_sessional_type`;
CREATE TABLE IF NOT EXISTS `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_sessional_type`
--

INSERT INTO `reg_course_sessional_type` (`ID`, `Name`) VALUES
('{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}', 'N/A'),
('{45B2147F-5FE0-4CC9-880C-C19EB6323955}', 'physics'),
('{4B342686-B38E-449C-AAD2-1F7DD77E6594}', 'chemistry'),
('{D1E54E03-CDEB-4155-AD0C-27C70A3A490C}', 'ece'),
('{D3F895D3-7389-487F-A604-0BD546DCC764}', 'software'),
('{F1D0443A-EC5D-41C4-94BA-D6F0D9AB1691}', 'hardware');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_student_registration`
--

DROP TABLE IF EXISTS `reg_course_student_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', 'mkazi078@uottawa.ca', 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'submitted'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

DROP TABLE IF EXISTS `reg_course_teacher`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher`
--

INSERT INTO `reg_course_teacher` (`ID`, `CourseID`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `NoOfTests`) VALUES
('{0BA78ECC-A6E7-4EA8-9BFA-6C599F88F76D}', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 5),
('{C4490FFA-154B-45FE-9773-744B3E6FDFF7}', '{683A3D91-D124-44AF-82A3-FB43837A4392}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher_registration`
--

DROP TABLE IF EXISTS `reg_course_teacher_registration`;
CREATE TABLE IF NOT EXISTS `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_teacher_registration`
--

INSERT INTO `reg_course_teacher_registration` (`ID`, `TeacherID`, `SessionID`, `YearID`, `TermID`) VALUES
('{4D389527-643B-4B05-80AB-E05A6EF8DE2A}', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_type`
--

DROP TABLE IF EXISTS `reg_course_type`;
CREATE TABLE IF NOT EXISTS `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_type`
--

INSERT INTO `reg_course_type` (`ID`, `Name`, `SessionalTypeID`) VALUES
('{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'Theory', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{5F886686-4EB1-48C8-A801-8D46233739D1}', 'Thesis', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}'),
('{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'Sessional', '{126156BB-18ED-4CAB-8DB9-1C0F72BB63C1}');

-- --------------------------------------------------------

--
-- Table structure for table `reg_registration_session`
--

DROP TABLE IF EXISTS `reg_registration_session`;
CREATE TABLE IF NOT EXISTS `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

DROP TABLE IF EXISTS `reg_term`;
CREATE TABLE IF NOT EXISTS `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_term`
--

INSERT INTO `reg_term` (`ID`, `Name`) VALUES
('{6DE3CF58-3A1A-4D6A-88CF-83F22C27E0BA}', 'Special'),
('{AF8B217E-4E76-41B8-A02A-7115BD4A6BE6}', '2nd'),
('{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `reg_year`
--

DROP TABLE IF EXISTS `reg_year`;
CREATE TABLE IF NOT EXISTS `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_year`
--

INSERT INTO `reg_year` (`ID`, `Name`) VALUES
('{1FAC0F1A-9D60-43F6-AB07-C933D5A4AA30}', 'Phd 1st'),
('{326B168F-58CC-42F3-B71A-DFE8DBBC05E8}', 'MSc 1st'),
('{6780C884-E112-4F58-9503-E2110B615547}', '4th'),
('{9F3A6CBC-0115-4EC2-ABB3-8CCA431F6C2B}', '1st'),
('{A21965E4-4FE4-43AC-A77F-DABAC9B356F2}', '3rd'),
('{ADBEDD3E-D8EA-47AA-A068-C4C703DB4AE6}', 'MSc 2nd'),
('{B9D6CC05-7AD4-4666-80AB-80797A872743}', 'Phd 2nd'),
('{CBE08035-94CD-4610-B4E2-A0E844184056}', 'Phd 4th'),
('{E3823AA6-6BE5-4A07-93EA-FA59DE4F616F}', 'Phd 3rd'),
('{EA335D18-A1A8-4D15-9C7B-4A4700AD4543}', '2nd');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result`
--

DROP TABLE IF EXISTS `rms_course_marks_result`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_result`
--

INSERT INTO `rms_course_marks_result` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksID`, `MarksValue`, `Status`) VALUES
('{44C3C858-AFC6-4592-B160-10B921BF381C}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '10,25,25,25', '');

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_result_publish`
--

DROP TABLE IF EXISTS `rms_course_marks_result_publish`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_result_publish` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `MarksTotal` varchar(20) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `GradeRanges` varchar(300) NOT NULL,
  `FinalGrade` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

DROP TABLE IF EXISTS `rms_course_marks_tests`;
CREATE TABLE IF NOT EXISTS `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{037E6C4F-CAAE-4587-B3E1-1CC6E59101A4}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020203', '12,20,20'),
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '15,25,20'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '15,20,20'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

DROP TABLE IF EXISTS `rms_grade_setup`;
CREATE TABLE IF NOT EXISTS `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_grade_setup`
--

INSERT INTO `rms_grade_setup` (`ID`, `Grades`, `Ranges`, `IsDefault`) VALUES
('{FC3DBA75-AF9C-4533-825E-D8A01D076F60}', 'F,E,D,C,C+,B,B+,A-,A,A+', '0-39,40-44,45-49,50-54,55-59,60-64,65-69,70-74,75-79,80-100', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rms_marks_setup`
--

DROP TABLE IF EXISTS `rms_marks_setup`;
CREATE TABLE IF NOT EXISTS `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_assign`
--

DROP TABLE IF EXISTS `tms_assign`;
CREATE TABLE IF NOT EXISTS `tms_assign` (
  `id` varchar(40) NOT NULL,
  `assign_to` varchar(40) NOT NULL,
  `assign_by` varchar(40) NOT NULL,
  `assing_date` date NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`assign_to`,`assign_by`,`assing_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_assign`
--

INSERT INTO `tms_assign` (`id`, `assign_to`, `assign_by`, `assing_date`, `comment`, `status`) VALUES
('24', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-09-25', 'TEST2                               \r\n                ', 0),
('24', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-10-01', '                 test                ', 1),
('24', 'ryhan@gmail.com', 'ryhan@gmail.com', '2018-10-01', 'Test                          \r\n                ', 0),
('27', 'naeema@gmail.com', 'ryhan@gmail.com', '2018-09-25', 'test\r\n                                  \r\n                ', 0),
('27', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-09-25', '\r\n       tesy2                          \r\n                ', 1),
('28', 'ryhan@gmail.com', 'naeema@gmail.com', '2018-09-30', '\r\n          test                       \r\n                ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tms_task`
--

DROP TABLE IF EXISTS `tms_task`;
CREATE TABLE IF NOT EXISTS `tms_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_name` varchar(20) NOT NULL,
  `task_creator` varchar(40) NOT NULL,
  `task_category` varchar(20) NOT NULL,
  `date_of_assign` date NOT NULL,
  `date_of_submission` date NOT NULL,
  `last_date_of_update` date NOT NULL,
  `progress` int(11) NOT NULL DEFAULT '0',
  `details` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task`
--

INSERT INTO `tms_task` (`id`, `task_name`, `task_creator`, `task_category`, `date_of_assign`, `date_of_submission`, `last_date_of_update`, `progress`, `details`) VALUES
(24, 'test11', 'ryhan@gmail.com', 'Study', '2018-09-17', '2018-09-20', '2018-09-24', 10, 'DIP'),
(25, 'Class Test', 'ryhan@gmail.com', 'Study', '2018-09-17', '2018-09-20', '2018-09-17', 7, 'DIP Class test'),
(26, 'test11', 'ryhan@gmail.com', 'Study', '2018-08-09', '2018-09-22', '2018-09-17', 6, 'update date test'),
(27, 'Solve the 5x5x5 cube', 'ryhan@gmial.com', 'Study', '2018-09-25', '2018-09-26', '2018-09-25', 0, 'You Have to solve the cube in 30 Minutes'),
(28, 'test4', 'ryhan@gmail.com', 'Study', '2018-09-30', '2018-09-26', '2018-09-30', 0, 'test'),
(29, 'test', 'ryhan@gmail.com', 'Study', '2018-10-01', '2018-10-26', '2018-10-01', 0, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tms_task_category`
--

DROP TABLE IF EXISTS `tms_task_category`;
CREATE TABLE IF NOT EXISTS `tms_task_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_type` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tms_task_category`
--

INSERT INTO `tms_task_category` (`id`, `task_type`) VALUES
(1, 'Study'),
(2, 'Office'),
(3, 'Appointment'),
(4, 'Programming Contest');

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

DROP TABLE IF EXISTS `ums_discipline`;
CREATE TABLE IF NOT EXISTS `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_discipline`
--

INSERT INTO `ums_discipline` (`ID`, `Name`, `ShortCode`, `SchoolID`) VALUES
('{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'Mathematics', 'MATH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{560A0FC0-6221-497D-8D41-E584EE4BBEE3}', 'Architecture', 'ARCH', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{63F3C00B-6168-4FBD-AB01-7A1FE413BDDE}', 'Forestry and Wood Technology', 'FWT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{AF41CC9F-3BCD-4952-9D02-17184CC40C79}', 'Urban and Rural Planning', 'URP', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E065BBA7-D0C5-4DFA-9768-81B6F056EB4A}', 'Foresty and Marine Resource Technology', 'FMRT', '{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}'),
('{E7280448-E379-424E-A11D-357F4334AC8D}', 'Physics', 'PHY', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}'),
('{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'Computer Science and Engineering', 'CSE', '{39DDC0C2-CFC2-4246-8748-8812B1751A5C}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_permission`
--

DROP TABLE IF EXISTS `ums_permission`;
CREATE TABLE IF NOT EXISTS `ums_permission` (
  `TableID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  PRIMARY KEY (`TableID`)
) ENGINE=InnoDB AUTO_INCREMENT=1581 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(1453, 'COURSE_C', 'COURSE_C', 'COURSE'),
(1454, 'COURSE_R', 'COURSE_R', 'COURSE'),
(1455, 'COURSE_U', 'COURSE_U', 'COURSE'),
(1456, 'COURSE_D', 'COURSE_D', 'COURSE'),
(1457, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(1458, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(1459, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(1460, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(1461, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(1462, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(1463, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(1464, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(1465, 'CLUB_C', 'CLUB_C', 'CLUB'),
(1466, 'CLUB_R', 'CLUB_R', 'CLUB'),
(1467, 'CLUB_U', 'CLUB_U', 'CLUB'),
(1468, 'CLUB_D', 'CLUB_D', 'CLUB'),
(1469, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(1470, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(1471, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(1472, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(1473, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(1474, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(1475, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(1476, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(1477, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(1478, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(1479, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(1480, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(1481, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(1482, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(1483, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(1484, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(1485, 'FILE_C', 'FILE_C', 'FILE'),
(1486, 'FILE_R', 'FILE_R', 'FILE'),
(1487, 'FILE_U', 'FILE_U', 'FILE'),
(1488, 'FILE_D', 'FILE_D', 'FILE'),
(1489, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(1490, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(1491, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(1492, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(1493, 'POSITION_C', 'POSITION_C', 'POSITION'),
(1494, 'POSITION_R', 'POSITION_R', 'POSITION'),
(1495, 'POSITION_U', 'POSITION_U', 'POSITION'),
(1496, 'POSITION_D', 'POSITION_D', 'POSITION'),
(1497, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(1498, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(1499, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(1500, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(1501, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(1502, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(1503, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(1504, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(1505, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(1506, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(1507, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(1508, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(1509, 'RESULT_C', 'RESULT_C', 'RESULT'),
(1510, 'RESULT_R', 'RESULT_R', 'RESULT'),
(1511, 'RESULT_U', 'RESULT_U', 'RESULT'),
(1512, 'RESULT_D', 'RESULT_D', 'RESULT'),
(1513, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(1514, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(1515, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(1516, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(1517, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(1518, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(1519, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(1520, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(1521, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(1522, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(1523, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(1524, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(1525, 'ROLE_C', 'ROLE_C', 'ROLE'),
(1526, 'ROLE_R', 'ROLE_R', 'ROLE'),
(1527, 'ROLE_U', 'ROLE_U', 'ROLE'),
(1528, 'ROLE_D', 'ROLE_D', 'ROLE'),
(1529, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(1530, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(1531, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(1532, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(1533, 'SESSION_C', 'SESSION_C', 'SESSION'),
(1534, 'SESSION_R', 'SESSION_R', 'SESSION'),
(1535, 'SESSION_U', 'SESSION_U', 'SESSION'),
(1536, 'SESSION_D', 'SESSION_D', 'SESSION'),
(1537, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(1538, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(1539, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(1540, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(1541, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(1542, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(1543, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(1544, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(1545, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(1546, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(1547, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(1548, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(1549, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(1550, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(1551, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(1552, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(1553, 'TERM_C', 'TERM_C', 'TERM'),
(1554, 'TERM_R', 'TERM_R', 'TERM'),
(1555, 'TERM_U', 'TERM_U', 'TERM'),
(1556, 'TERM_D', 'TERM_D', 'TERM'),
(1557, 'USER_C', 'USER_C', 'USER'),
(1558, 'USER_R', 'USER_R', 'USER'),
(1559, 'USER_U', 'USER_U', 'USER'),
(1560, 'USER_D', 'USER_D', 'USER'),
(1561, 'YEAR_C', 'YEAR_C', 'YEAR'),
(1562, 'YEAR_R', 'YEAR_R', 'YEAR'),
(1563, 'YEAR_U', 'YEAR_U', 'YEAR'),
(1564, 'YEAR_D', 'YEAR_D', 'YEAR'),
(1565, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(1566, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(1567, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(1568, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(1569, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(1570, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(1571, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(1572, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT'),
(1573, 'TASK_C', 'TASK_C', 'TASK'),
(1574, 'TASK_R', 'TASK_R', 'TASK'),
(1575, 'TASK_U', 'TASK_U', 'TASK'),
(1576, 'TASK_D', 'TASK_D', 'TASK'),
(1577, 'TASK_CATEGORY_C', 'TASK_CATEGORY_C', 'TASK_CATEGORY'),
(1578, 'TASK_CATEGORY_R', 'TASK_CATEGORY_R', 'TASK_CATEGORY'),
(1579, 'TASK_CATEGORY_U', 'TASK_CATEGORY_U', 'TASK_CATEGORY'),
(1580, 'TASK_CATEGORY_D', 'TASK_CATEGORY_D', 'TASK_CATEGORY');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

DROP TABLE IF EXISTS `ums_position`;
CREATE TABLE IF NOT EXISTS `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_position`
--

INSERT INTO `ums_position` (`ID`, `Name`) VALUES
('{1BFE76DB-C2AA-4FAA-A23B-F43E6150A2F6}', 'Section Officer'),
('{2E024DF5-BD45-4EF2-A5E3-43BCA3E9777F}', 'Pro-vice Chancellor'),
('{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}', 'Assistant Professor'),
('{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}', 'Lecturer'),
('{818DE12F-60CC-42E4-BAEC-48EAAED65179}', 'Dean of School'),
('{928EE9FF-E02D-470F-9A6A-AD0EB38B848F}', 'Vice Chancellor'),
('{92FDDA3F-1E91-4AA3-918F-EB595F85790C}', 'Daywise Worker'),
('{932CB0EE-76C2-448E-A40E-2D167EECC479}', 'Registrar'),
('{ADA027D3-21C1-47AF-A21D-759CAFCFE58D}', 'Assistant Registrar'),
('{B76EB035-EA26-4CEB-B029-1C6129574D98}', 'Librarian'),
('{B78C7A7B-4D38-4025-8170-7B8C9F291946}', 'Head of Discipline'),
('{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}', 'Associate Professor'),
('{EB4880E2-01B3-4C6E-A2C9-89B6E5427C0A}', 'Professor');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role`
--

DROP TABLE IF EXISTS `ums_role`;
CREATE TABLE IF NOT EXISTS `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role`
--

INSERT INTO `ums_role` (`ID`, `Name`) VALUES
('administrator', 'Administrator'),
('registration coordinator', 'Registration Coordinator'),
('student', 'Student'),
('stuff', 'Stuff'),
('tabulator', 'Tabulator'),
('teacher', 'Teacher');

-- --------------------------------------------------------

--
-- Table structure for table `ums_role_permission`
--

DROP TABLE IF EXISTS `ums_role_permission`;
CREATE TABLE IF NOT EXISTS `ums_role_permission` (
  `Row` int(11) NOT NULL AUTO_INCREMENT,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL,
  PRIMARY KEY (`Row`)
) ENGINE=InnoDB AUTO_INCREMENT=2373 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(2090, 'administrator', 'ATTENDANCE_C'),
(2091, 'administrator', 'ATTENDANCE_R'),
(2092, 'administrator', 'ATTENDANCE_U'),
(2093, 'administrator', 'ATTENDANCE_D'),
(2094, 'administrator', 'CLUB_C'),
(2095, 'administrator', 'CLUB_R'),
(2096, 'administrator', 'CLUB_U'),
(2097, 'administrator', 'CLUB_D'),
(2098, 'administrator', 'COURSE_C'),
(2099, 'administrator', 'COURSE_R'),
(2100, 'administrator', 'COURSE_U'),
(2101, 'administrator', 'COURSE_D'),
(2102, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(2103, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(2104, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(2105, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(2106, 'administrator', 'COURSE_TYPE_C'),
(2107, 'administrator', 'COURSE_TYPE_R'),
(2108, 'administrator', 'COURSE_TYPE_U'),
(2109, 'administrator', 'COURSE_TYPE_D'),
(2110, 'administrator', 'DISCIPLINE_C'),
(2111, 'administrator', 'DISCIPLINE_R'),
(2112, 'administrator', 'DISCIPLINE_U'),
(2113, 'administrator', 'DISCIPLINE_D'),
(2114, 'administrator', 'DISCUSSION_C'),
(2115, 'administrator', 'DISCUSSION_R'),
(2116, 'administrator', 'DISCUSSION_U'),
(2117, 'administrator', 'DISCUSSION_D'),
(2118, 'administrator', 'DISCUSSION_CAT_C'),
(2119, 'administrator', 'DISCUSSION_CAT_R'),
(2120, 'administrator', 'DISCUSSION_CAT_U'),
(2121, 'administrator', 'DISCUSSION_CAT_D'),
(2122, 'administrator', 'DISCUSSION_COMMENT_C'),
(2123, 'administrator', 'DISCUSSION_COMMENT_R'),
(2124, 'administrator', 'DISCUSSION_COMMENT_U'),
(2125, 'administrator', 'DISCUSSION_COMMENT_D'),
(2126, 'administrator', 'FILE_C'),
(2127, 'administrator', 'FILE_R'),
(2128, 'administrator', 'FILE_U'),
(2129, 'administrator', 'FILE_D'),
(2130, 'administrator', 'GRADE_SETUP_C'),
(2131, 'administrator', 'GRADE_SETUP_R'),
(2132, 'administrator', 'GRADE_SETUP_U'),
(2133, 'administrator', 'GRADE_SETUP_D'),
(2134, 'administrator', 'MARKS_SETUP_C'),
(2135, 'administrator', 'MARKS_SETUP_R'),
(2136, 'administrator', 'MARKS_SETUP_U'),
(2137, 'administrator', 'MARKS_SETUP_D'),
(2138, 'administrator', 'PERMISSION_C'),
(2139, 'administrator', 'PERMISSION_R'),
(2140, 'administrator', 'PERMISSION_U'),
(2141, 'administrator', 'PERMISSION_D'),
(2142, 'administrator', 'POSITION_C'),
(2143, 'administrator', 'POSITION_R'),
(2144, 'administrator', 'POSITION_U'),
(2145, 'administrator', 'POSITION_D'),
(2146, 'administrator', 'PROJECT_C'),
(2147, 'administrator', 'PROJECT_R'),
(2148, 'administrator', 'PROJECT_U'),
(2149, 'administrator', 'PROJECT_D'),
(2150, 'administrator', 'QUESTION_C'),
(2151, 'administrator', 'QUESTION_R'),
(2152, 'administrator', 'QUESTION_U'),
(2153, 'administrator', 'QUESTION_D'),
(2154, 'administrator', 'REGISTRATION_C'),
(2155, 'administrator', 'REGISTRATION_R'),
(2156, 'administrator', 'REGISTRATION_U'),
(2157, 'administrator', 'REGISTRATION_D'),
(2158, 'administrator', 'RESULT_C'),
(2159, 'administrator', 'RESULT_R'),
(2160, 'administrator', 'RESULT_U'),
(2161, 'administrator', 'RESULT_D'),
(2162, 'administrator', 'ROLE_C'),
(2163, 'administrator', 'ROLE_R'),
(2164, 'administrator', 'ROLE_U'),
(2165, 'administrator', 'ROLE_D'),
(2166, 'administrator', 'SCHOOL_C'),
(2167, 'administrator', 'SCHOOL_R'),
(2168, 'administrator', 'SCHOOL_U'),
(2169, 'administrator', 'SCHOOL_D'),
(2170, 'administrator', 'SESSION_C'),
(2171, 'administrator', 'SESSION_R'),
(2172, 'administrator', 'SESSION_U'),
(2173, 'administrator', 'SESSION_D'),
(2174, 'administrator', 'SURVEY_C'),
(2175, 'administrator', 'SURVEY_R'),
(2176, 'administrator', 'SURVEY_U'),
(2177, 'administrator', 'SURVEY_D'),
(2178, 'administrator', 'SURVEY_QUESTION_C'),
(2179, 'administrator', 'SURVEY_QUESTION_R'),
(2180, 'administrator', 'SURVEY_QUESTION_U'),
(2181, 'administrator', 'SURVEY_QUESTION_D'),
(2182, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(2183, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(2184, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(2185, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(2186, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(2187, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(2188, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(2189, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(2190, 'administrator', 'TASK_C'),
(2191, 'administrator', 'TASK_R'),
(2192, 'administrator', 'TASK_U'),
(2193, 'administrator', 'TASK_D'),
(2194, 'administrator', 'TASK_CATEGORY_C'),
(2195, 'administrator', 'TASK_CATEGORY_R'),
(2196, 'administrator', 'TASK_CATEGORY_U'),
(2197, 'administrator', 'TASK_CATEGORY_D'),
(2198, 'administrator', 'TERM_C'),
(2199, 'administrator', 'TERM_R'),
(2200, 'administrator', 'TERM_U'),
(2201, 'administrator', 'TERM_D'),
(2202, 'administrator', 'USER_C'),
(2203, 'administrator', 'USER_R'),
(2204, 'administrator', 'USER_U'),
(2205, 'administrator', 'USER_D'),
(2206, 'administrator', 'VIDEO_C'),
(2207, 'administrator', 'VIDEO_R'),
(2208, 'administrator', 'VIDEO_U'),
(2209, 'administrator', 'VIDEO_D'),
(2210, 'administrator', 'VIDEO_COMMENT_C'),
(2211, 'administrator', 'VIDEO_COMMENT_R'),
(2212, 'administrator', 'VIDEO_COMMENT_U'),
(2213, 'administrator', 'VIDEO_COMMENT_D'),
(2214, 'administrator', 'YEAR_C'),
(2215, 'administrator', 'YEAR_R'),
(2216, 'administrator', 'YEAR_U'),
(2217, 'administrator', 'YEAR_D'),
(2262, 'student', 'CLUB_C'),
(2263, 'student', 'CLUB_R'),
(2264, 'student', 'CLUB_U'),
(2265, 'student', 'CLUB_D'),
(2266, 'student', 'DISCUSSION_C'),
(2267, 'student', 'DISCUSSION_R'),
(2268, 'student', 'DISCUSSION_U'),
(2269, 'student', 'DISCUSSION_D'),
(2270, 'student', 'DISCUSSION_COMMENT_C'),
(2271, 'student', 'DISCUSSION_COMMENT_R'),
(2272, 'student', 'DISCUSSION_COMMENT_U'),
(2273, 'student', 'DISCUSSION_COMMENT_D'),
(2274, 'student', 'PROJECT_C'),
(2275, 'student', 'PROJECT_R'),
(2276, 'student', 'PROJECT_U'),
(2277, 'student', 'PROJECT_D'),
(2278, 'student', 'QUESTION_C'),
(2279, 'student', 'QUESTION_R'),
(2280, 'student', 'QUESTION_U'),
(2281, 'student', 'QUESTION_D'),
(2282, 'student', 'REGISTRATION_R'),
(2283, 'student', 'RESULT_R'),
(2284, 'student', 'TASK_C'),
(2285, 'student', 'TASK_R'),
(2286, 'student', 'TASK_U'),
(2287, 'student', 'TASK_D'),
(2288, 'student', 'USER_R'),
(2289, 'student', 'VIDEO_C'),
(2290, 'student', 'VIDEO_R'),
(2291, 'student', 'VIDEO_U'),
(2292, 'student', 'VIDEO_D'),
(2293, 'student', 'VIDEO_COMMENT_C'),
(2294, 'student', 'VIDEO_COMMENT_R'),
(2295, 'student', 'VIDEO_COMMENT_U'),
(2296, 'student', 'VIDEO_COMMENT_D'),
(2297, 'registration coordinator', 'VIDEO_C'),
(2298, 'registration coordinator', 'VIDEO_R'),
(2299, 'registration coordinator', 'VIDEO_U'),
(2300, 'registration coordinator', 'VIDEO_D'),
(2301, 'registration coordinator', 'VIDEO_COMMENT_C'),
(2302, 'registration coordinator', 'VIDEO_COMMENT_R'),
(2303, 'registration coordinator', 'VIDEO_COMMENT_U'),
(2304, 'registration coordinator', 'VIDEO_COMMENT_D'),
(2305, 'stuff', 'TASK_C'),
(2306, 'stuff', 'TASK_R'),
(2307, 'stuff', 'TASK_U'),
(2308, 'stuff', 'TASK_D'),
(2309, 'stuff', 'VIDEO_C'),
(2310, 'stuff', 'VIDEO_R'),
(2311, 'stuff', 'VIDEO_U'),
(2312, 'stuff', 'VIDEO_D'),
(2313, 'stuff', 'VIDEO_COMMENT_C'),
(2314, 'stuff', 'VIDEO_COMMENT_R'),
(2315, 'stuff', 'VIDEO_COMMENT_U'),
(2316, 'stuff', 'VIDEO_COMMENT_D'),
(2317, 'tabulator', 'VIDEO_C'),
(2318, 'tabulator', 'VIDEO_R'),
(2319, 'tabulator', 'VIDEO_U'),
(2320, 'tabulator', 'VIDEO_D'),
(2321, 'tabulator', 'VIDEO_COMMENT_C'),
(2322, 'tabulator', 'VIDEO_COMMENT_R'),
(2323, 'tabulator', 'VIDEO_COMMENT_U'),
(2324, 'tabulator', 'VIDEO_COMMENT_D'),
(2325, 'teacher', 'COURSE_C'),
(2326, 'teacher', 'COURSE_R'),
(2327, 'teacher', 'COURSE_U'),
(2328, 'teacher', 'COURSE_D'),
(2329, 'teacher', 'DISCUSSION_C'),
(2330, 'teacher', 'DISCUSSION_R'),
(2331, 'teacher', 'DISCUSSION_U'),
(2332, 'teacher', 'DISCUSSION_D'),
(2333, 'teacher', 'DISCUSSION_CAT_C'),
(2334, 'teacher', 'DISCUSSION_CAT_R'),
(2335, 'teacher', 'DISCUSSION_CAT_U'),
(2336, 'teacher', 'DISCUSSION_CAT_D'),
(2337, 'teacher', 'DISCUSSION_COMMENT_C'),
(2338, 'teacher', 'DISCUSSION_COMMENT_R'),
(2339, 'teacher', 'DISCUSSION_COMMENT_U'),
(2340, 'teacher', 'DISCUSSION_COMMENT_D'),
(2341, 'teacher', 'FILE_C'),
(2342, 'teacher', 'FILE_R'),
(2343, 'teacher', 'FILE_U'),
(2344, 'teacher', 'FILE_D'),
(2345, 'teacher', 'PROJECT_C'),
(2346, 'teacher', 'PROJECT_R'),
(2347, 'teacher', 'PROJECT_U'),
(2348, 'teacher', 'PROJECT_D'),
(2349, 'teacher', 'QUESTION_C'),
(2350, 'teacher', 'QUESTION_R'),
(2351, 'teacher', 'QUESTION_U'),
(2352, 'teacher', 'QUESTION_D'),
(2353, 'teacher', 'REGISTRATION_C'),
(2354, 'teacher', 'REGISTRATION_R'),
(2355, 'teacher', 'REGISTRATION_U'),
(2356, 'teacher', 'REGISTRATION_D'),
(2357, 'teacher', 'RESULT_C'),
(2358, 'teacher', 'RESULT_R'),
(2359, 'teacher', 'RESULT_U'),
(2360, 'teacher', 'RESULT_D'),
(2361, 'teacher', 'TASK_C'),
(2362, 'teacher', 'TASK_R'),
(2363, 'teacher', 'TASK_U'),
(2364, 'teacher', 'TASK_D'),
(2365, 'teacher', 'VIDEO_C'),
(2366, 'teacher', 'VIDEO_R'),
(2367, 'teacher', 'VIDEO_U'),
(2368, 'teacher', 'VIDEO_D'),
(2369, 'teacher', 'VIDEO_COMMENT_C'),
(2370, 'teacher', 'VIDEO_COMMENT_R'),
(2371, 'teacher', 'VIDEO_COMMENT_U'),
(2372, 'teacher', 'VIDEO_COMMENT_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

DROP TABLE IF EXISTS `ums_school`;
CREATE TABLE IF NOT EXISTS `ums_school` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `DeanID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_school`
--

INSERT INTO `ums_school` (`ID`, `Name`, `DeanID`) VALUES
('{39DDC0C2-CFC2-4246-8748-8812B1751A5C}', 'Science Engineering and Technology', ''),
('{4D46079B-AFA3-40F1-B8D1-6CC9E9F56812}', 'Life Science', ''),
('{86E0F021-B30D-48D2-B177-247180633C5E}', 'Social Science', ''),
('{879375F7-0A15-4705-AC90-C6786D279EF1}', 'Law and Humanities', ''),
('{CE09AA38-205B-4F50-A0E0-14DB8686C912}', 'Fine Arts', '');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user`
--

DROP TABLE IF EXISTS `ums_user`;
CREATE TABLE IF NOT EXISTS `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `MiddleName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `DisciplineID` varchar(40) DEFAULT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Email` (`Email`),
  UNIQUE KEY `UniversityID` (`UniversityID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `MiddleName`, `LastName`, `DisciplineID`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$pJX46d.T.jkANrRShAm0qOMYkYJ/YbNfu09BFmcmMiYGKfuuEcWgO', 'Aysha', 'mrs', 'Akther', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('imrul@gmail.com', '200206', 'imrul@gmail.com', '$2y$10$oQNJE0rArzAZdg.3KlQ.i.D1wsw9Az0a48iLDa3oyVXTXC7JF15NK', 'Imrul', '', 'Kayes', '{0CF37516-06FE-41CD-93AD-D2D1652509D6}', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$pM7S85LE300vkDhYnFIz0.WKfpSPJLMNzTS4y1wLCH0TeR0qno27q', 'Kashif', 'Nizam', 'Khan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mahmud@gmail.com', '150237', 'mahmud@gmail.com', '$2y$10$osZwBFOk2.wznag0X7iwy.eplvtrzEtIx3PQAYVQbQEMsDGsHF2gm', 'Mahmud', 'Albert', 'Hasan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$l0gFzILMq03DcwcBGxIdgunnOd9G5kF8J8ucZZvCKkt8mNGlI74/W', 'Kazi', 'Masudul', 'Alam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('naeema@gmail.com', '160231', 'naeema@gmail.com', '$2y$10$GNmdhbwSX54JFkI7vdHsTeTLbtumZKEbNB/ucPeDv77ANwE1.z7ly', 'Naeema', 'Binthe', 'Ashraf', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('ryhan@gmail.com', '160230', 'ryhan@gmail.com', '$2y$10$xqiBs8.uSifFPgOyDJ6./elFZhTVNMeS4UfRky9xzSldeqks/q8zu', 'Ryhan', 'Ahmed', 'Tamim', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('six.rakib@gmail.com', '160206', 'six.rakib@gmail.com', '$2y$10$3hseFnJD32KEk15s6uSdpOqZyX8D4Wq1ZheqIpjJJ7tEFPDBgi8Ma', 'Rakibul', 'Hasan', 'Hasan', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$nLZhZRneURR.v2AFqWw9KOe6/J60pCV/ioBnJnruw5H/Xf3x0lFy6', 'Zahidul', '', 'Islam', '{FFDB1CB8-AF34-4381-8971-9784DCB516C5}', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

DROP TABLE IF EXISTS `ums_user_details`;
CREATE TABLE IF NOT EXISTS `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', 'f', 'm', 'Dr. Kazi Masudul Alam', '12313123123', 'Computer Science and Engineering Discipline, Khulna University', '45 '),
('imrul@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mahmud@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('naeema@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('ryhan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('six.rakib@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

DROP TABLE IF EXISTS `ums_user_discipline`;
CREATE TABLE IF NOT EXISTS `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

DROP TABLE IF EXISTS `ums_user_position`;
CREATE TABLE IF NOT EXISTS `ums_user_position` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(50, 'aysha@gmail.com', '{7CDA1F32-A2F8-4469-B5A8-C2038FCE1F9A}'),
(51, 'mkazi078@uottawa.ca', '{C27B6BCF-FB83-4F3D-85CA-B7870D8B12D0}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

DROP TABLE IF EXISTS `ums_user_role`;
CREATE TABLE IF NOT EXISTS `ums_user_role` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=171 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(122, 'middle@test.com', 'student'),
(123, 'middle@test.com', 'student'),
(124, 'middle@test.com', 'student'),
(125, 'middle@test.com', 'student'),
(126, 'middle@test.com', 'student'),
(127, 'middle@test.com', 'student'),
(128, 'middle@test.com', 'student'),
(129, 'middle@test.com', 'student'),
(130, 'middle@test.com', 'student'),
(131, 'middle@test.com', 'student'),
(132, 'middle@test.com', 'student'),
(133, 'middle@test.com', 'student'),
(134, 'middle@test.com', 'student'),
(135, 'middle@test.com', 'student'),
(136, 'middle@test.com', 'student'),
(137, 'middle@test.com', 'student'),
(138, 'middle@test.com', 'student'),
(142, 'zahid@gmail.com', 'student'),
(144, 'middle1@test.com', 'student'),
(145, 'kashif@gmail.com', 'student'),
(164, 'aysha@gmail.com', 'administrator'),
(165, 'mkazi078@uottawa.ca', 'administrator'),
(166, 'ryhan@gmail.com', 'administrator'),
(167, 'naeema@gmail.com', 'student'),
(168, 'six.rakib@gmail.com', 'student'),
(169, 'mahmud@gmail.com', 'student'),
(170, 'imrul@gmail.com', 'student');

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

-- --------------------------------------------------------

--
-- Table structure for table `vtms_video_comment`
--

DROP TABLE IF EXISTS `vtms_video_comment`;
CREATE TABLE IF NOT EXISTS `vtms_video_comment` (
  `CommentID` varchar(40) NOT NULL,
  `Comment` varchar(1500) NOT NULL,
  `CreatorID` varchar(40) NOT NULL,
  `VideoID` varchar(40) NOT NULL,
  `CommentIDTop` varchar(40) DEFAULT NULL,
  `CreationDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtms_video_comment`
--

INSERT INTO `vtms_video_comment` (`CommentID`, `Comment`, `CreatorID`, `VideoID`, `CommentIDTop`, `CreationDate`) VALUES
('{EEB4D504-CCAD-48F0-B2B9-F353B58A6C25}', 'Well Played Bangladesh', 'six.rakib@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '0', '2018-10-25 18:57:26'),
('{273CEA61-D54A-420A-B61B-BB8DAC012BA8}', 'Yes, They Played Very well', 'mahmud@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '{EEB4D504-CCAD-48F0-B2B9-F353B58A6C25}', '2018-10-25 18:58:31'),
('{8B13A1BD-B107-4C42-BB0B-7EA4191E1FD0}', 'hm', 'mahmud@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '0', '2018-10-25 18:59:38'),
('{CDDC4150-6988-43DA-A7A8-050891AFD9EF}', 'hi', 'mahmud@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '{8B13A1BD-B107-4C42-BB0B-7EA4191E1FD0}', '2018-10-25 19:00:01'),
('{7FEEFE6B-1BBB-4C6D-989B-9CCD8E88F5D8}', 'are', 'mahmud@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '{8B13A1BD-B107-4C42-BB0B-7EA4191E1FD0}', '2018-10-25 19:00:18'),
('{E18395CC-7E17-4D99-A820-8CF711BB9013}', 'ki obostha ?', 'mahmud@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '{EEB4D504-CCAD-48F0-B2B9-F353B58A6C25}', '2018-10-25 19:27:02'),
('{0150EAD9-8C24-4069-8FC0-B9653D578066}', 'are vai kmn asen', 'mahmud@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '{EEB4D504-CCAD-48F0-B2B9-F353B58A6C25}', '2018-10-25 19:28:42'),
('{69B6D872-7E35-45C7-A48A-B058DE7623A8}', 'how to make my design more attractive', 'six.rakib@gmail.com', '{EA6BF90E-31FA-48FC-910C-173ECA6FB9F0}', '0', '2018-10-25 19:56:57'),
('{BA2606BE-430B-4B27-84CD-BFD04109FDAB}', 'well played Bangladesh', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '0', '2018-10-25 20:07:41'),
('{D89B2ECC-0162-4612-BA5C-83FF72B6EB1E}', 'yes , we won', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '{BA2606BE-430B-4B27-84CD-BFD04109FDAB}', '2018-10-25 20:09:02'),
('{B20F2A92-9866-4CF0-ADEF-669F05DB53FA}', 'Imrul Played well', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '{BA2606BE-430B-4B27-84CD-BFD04109FDAB}', '2018-10-25 20:11:42'),
('{5387E293-E25E-4C71-8896-E936A855095B}', 'Thank you Rakibul', 'imrul@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '{BA2606BE-430B-4B27-84CD-BFD04109FDAB}', '2018-10-25 20:15:20'),
('{0C4A9EBA-C55F-4F26-9147-509A39857792}', 'Welcome Imrul Vai', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '{BA2606BE-430B-4B27-84CD-BFD04109FDAB}', '2018-10-25 21:56:08'),
('{1C8BB552-477D-499D-BA1A-F16EB724F059}', 'Thanks for the win', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '0', '2018-10-25 21:56:56'),
('{7FC4A3A6-C393-44EF-98E9-B69F26CBFDE8}', 'Welcome', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '{1C8BB552-477D-499D-BA1A-F16EB724F059}', '2018-10-25 22:00:04'),
('{A9413959-85E7-40A9-B3B2-99BE9E578970}', 'ok', 'six.rakib@gmail.com', '{794C78E8-623E-4630-8BC0-9C88C53E6B40}', '{1C8BB552-477D-499D-BA1A-F16EB724F059}', '2018-10-25 22:07:36'),
('{35067ECC-A912-4486-922F-CAE313AF352E}', 'hi', 'six.rakib@gmail.com', '{1CCE5B78-642A-4F0C-8643-BB0CBE2E9A56}', '0', '2018-10-28 22:43:48'),
('{ECFA8758-943B-4A66-A8D8-4431481B9675}', 'bvnnb', 'six.rakib@gmail.com', '{1CCE5B78-642A-4F0C-8643-BB0CBE2E9A56}', '0', '2018-10-28 22:56:58'),
('{9C280156-F14E-40DA-98C4-9B0C479DE079}', 'fgfh', 'six.rakib@gmail.com', '{1CCE5B78-642A-4F0C-8643-BB0CBE2E9A56}', '{ECFA8758-943B-4A66-A8D8-4431481B9675}', '2018-10-28 23:02:10'),
('{897E11E7-3B3C-4471-878E-316C525CB555}', 'great video', 'six.rakib@gmail.com', '{9B9F86E7-1B78-4614-9148-4E173454370F}', '0', '2018-10-28 23:04:03'),
('{68ED1E9F-ABA0-480A-91E8-76F9EED6C07A}', 'Thank  you', 'six.rakib@gmail.com', '{9B9F86E7-1B78-4614-9148-4E173454370F}', '{897E11E7-3B3C-4471-878E-316C525CB555}', '2018-10-28 23:04:42'),
('{E94BE99B-1501-42CE-859A-31B09C674813}', 'this is a test comment', 'six.rakib@gmail.com', '{2D161D7F-5397-4983-8FD9-FFF459EF970C}', '0', '2018-10-29 00:44:24'),
('{99A3DC21-A94A-4EB3-8B5D-7DA9EEC0A1B4}', 'This is a test reply', 'six.rakib@gmail.com', '{2D161D7F-5397-4983-8FD9-FFF459EF970C}', '{E94BE99B-1501-42CE-859A-31B09C674813}', '2018-10-29 00:44:40'),
('{DD873478-D256-402D-82E2-2CF87CEA0FEF}', 'Thank  you', 'six.rakib@gmail.com', '{2D161D7F-5397-4983-8FD9-FFF459EF970C}', '{E94BE99B-1501-42CE-859A-31B09C674813}', '2018-10-29 00:44:51'),
('{F085C20A-6C8A-4D2C-B3E3-D77BD16B5F34}', 'This is another test comment', 'six.rakib@gmail.com', '{2D161D7F-5397-4983-8FD9-FFF459EF970C}', '0', '2018-10-29 00:45:12'),
('{D9659B16-315A-4F5C-8E28-84738D51E8DA}', 'this is a test comment', 'six.rakib@gmail.com', '{19FDED64-AE4B-4E83-9D5A-7BEBC9354387}', '0', '2018-10-29 00:57:41'),
('{E578ADEA-5558-4BA7-A830-141812544CDE}', 'This is a test reply', 'six.rakib@gmail.com', '{19FDED64-AE4B-4E83-9D5A-7BEBC9354387}', '{D9659B16-315A-4F5C-8E28-84738D51E8DA}', '2018-10-29 00:57:56'),
('{57874405-B4D2-4B8C-B753-980F6C8C74EC}', 'Thank you', 'six.rakib@gmail.com', '{19FDED64-AE4B-4E83-9D5A-7BEBC9354387}', '{D9659B16-315A-4F5C-8E28-84738D51E8DA}', '2018-10-29 00:58:29'),
('{52D6975B-BCCF-452E-8C59-AD60B145BBD1}', 'This is another test comment', 'six.rakib@gmail.com', '{19FDED64-AE4B-4E83-9D5A-7BEBC9354387}', '0', '2018-10-29 01:12:15');

-- --------------------------------------------------------

--
-- Table structure for table `vtms_video_tag`
--

DROP TABLE IF EXISTS `vtms_video_tag`;
CREATE TABLE IF NOT EXISTS `vtms_video_tag` (
  `VideoID` varchar(40) NOT NULL,
  `Tag` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
