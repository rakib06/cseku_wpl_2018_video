-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2017 at 04:56 AM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dgted`
--

-- --------------------------------------------------------

--
-- Table structure for table `reg_course`
--

CREATE TABLE `reg_course` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Credit` double NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL,
  `IsDeleted` tinyint(1) NOT NULL
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

CREATE TABLE `reg_course_resource` (
  `CourseID` varchar(40) NOT NULL,
  `ResourceID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_sessional_type`
--

CREATE TABLE `reg_course_sessional_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
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

CREATE TABLE `reg_course_student_registration` (
  `ID` varchar(40) NOT NULL,
  `Regs_TeacherID` varchar(40) DEFAULT NULL,
  `StudentID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `SessionID` varchar(40) DEFAULT NULL,
  `YearID` varchar(40) DEFAULT NULL,
  `TermID` varchar(40) DEFAULT NULL,
  `IsRetake` tinyint(1) DEFAULT NULL,
  `Status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_course_student_registration`
--

INSERT INTO `reg_course_student_registration` (`ID`, `Regs_TeacherID`, `StudentID`, `CourseID`, `SessionID`, `YearID`, `TermID`, `IsRetake`, `Status`) VALUES
('{31FDEF1E-F280-436A-AFD3-A48BA772D23D}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{3CA3ABF7-7FF8-4A32-B328-235861061B72}', NULL, 'zahid@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', NULL, NULL, NULL, NULL, 'pending'),
('{B7F17833-430E-489A-9CA6-E9BBE0EFA0FD}', 'mkazi078@uottawa.ca', 'kashif@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{B8B362F3-D164-4082-AA6C-08F3EC73E2A8}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered'),
('{C8AE75F9-1644-48C5-87D0-4AFEC777C122}', NULL, 'zahid@gmail.com', '{53650FB7-D76E-459D-8B56-BC7A4919C0F6}', NULL, NULL, NULL, NULL, 'pending'),
('{DBE4ED93-4A97-41CF-B8E3-5E42AEC0246F}', 'mkazi078@uottawa.ca', 'aysha@gmail.com', '{683A3D91-D124-44AF-82A3-FB43837A4392}', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', NULL, 'registered');

-- --------------------------------------------------------

--
-- Table structure for table `reg_course_teacher`
--

CREATE TABLE `reg_course_teacher` (
  `ID` varchar(40) NOT NULL,
  `CourseID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `NoOfTests` int(10) DEFAULT NULL
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

CREATE TABLE `reg_course_teacher_registration` (
  `ID` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL
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

CREATE TABLE `reg_course_type` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `SessionalTypeID` varchar(40) NOT NULL
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

CREATE TABLE `reg_registration_session` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg_registration_session`
--

INSERT INTO `reg_registration_session` (`ID`, `Name`) VALUES
('{65C2BA57-7231-497A-A5A7-90912259684C}', '2011-2012'),
('{05DA37EB-6C62-45E9-A0E3-7C5C6943F6AD}', '2012-2013'),
('{A36A7057-CDB5-4E10-9E61-CCC85C74460E}', '2013-2014'),
('{1399EEA3-B939-4155-B9F3-4DAD4928C4D5}', '2014-2015'),
('{DFF9E45F-6954-46A1-9088-D930EE460C3F}', '2015-2016'),
('{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `reg_term`
--

CREATE TABLE `reg_term` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
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

CREATE TABLE `reg_year` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(20) NOT NULL
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

CREATE TABLE `rms_course_marks_result` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) DEFAULT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL,
  `Status` varchar(40) DEFAULT NULL
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

CREATE TABLE `rms_course_marks_result_publish` (
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
  `FinalGrade` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_course_marks_tests`
--

CREATE TABLE `rms_course_marks_tests` (
  `ID` varchar(40) NOT NULL,
  `CourseNo` varchar(40) NOT NULL,
  `TeacherID` varchar(40) NOT NULL,
  `SessionID` varchar(40) NOT NULL,
  `YearID` varchar(40) NOT NULL,
  `TermID` varchar(40) NOT NULL,
  `StudentID` varchar(40) NOT NULL,
  `MarksValue` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_course_marks_tests`
--

INSERT INTO `rms_course_marks_tests` (`ID`, `CourseNo`, `TeacherID`, `SessionID`, `YearID`, `TermID`, `StudentID`, `MarksValue`) VALUES
('{222F2596-5F55-442C-80EA-F5AE7F466C70}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '17,25,0'),
('{71D63076-9096-4CAA-8D6D-782A25B076A7}', 'cse-4111', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '25,20,0'),
('{B6BB339D-E40B-4CC4-8D34-07017EE2BE44}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020208', '10,30,30,0,0'),
('{DBF1823F-0DF9-4E8F-9233-5AB1545BC1B7}', 'cse-4112', 'mkazi078@uottawa.ca', '{E11A301F-E0B9-47A5-AA3C-FB0B656B2A2A}', '{6780C884-E112-4F58-9503-E2110B615547}', '{F9121C67-1E89-4F0B-80AA-89FD3B6BD665}', '020202', '20,20,20,0,0');

-- --------------------------------------------------------

--
-- Table structure for table `rms_grade_setup`
--

CREATE TABLE `rms_grade_setup` (
  `ID` varchar(40) NOT NULL,
  `Grades` varchar(200) NOT NULL,
  `Ranges` varchar(300) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL
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

CREATE TABLE `rms_marks_setup` (
  `ID` varchar(40) NOT NULL,
  `CourseTypeID` varchar(40) NOT NULL,
  `HeaderID` varchar(200) NOT NULL,
  `HeaderName` varchar(200) NOT NULL,
  `HeaderMax` varchar(200) NOT NULL,
  `IsDefault` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_marks_setup`
--

INSERT INTO `rms_marks_setup` (`ID`, `CourseTypeID`, `HeaderID`, `HeaderName`, `HeaderMax`, `IsDefault`) VALUES
('{236BBFE8-E4CF-4EEF-9C54-AD83FEF42ADB}', '{EF5CA3BF-A886-4450-ABC4-DED45C7600C0}', 'att,assess,viva', 'Attendance,Assessment,Viva', '10,60,30', 1),
('{7E24DC07-CD2C-4360-A6E9-05A363C2EA08}', '{3DC4DDE5-514F-4BE4-8682-37EA32C3FDB7}', 'att,assess,seca,secb', 'Attendance,Assessment,Section A,Section B', '10,30,30,30,30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ums_discipline`
--

CREATE TABLE `ums_discipline` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ShortCode` varchar(20) DEFAULT NULL,
  `SchoolID` varchar(40) DEFAULT NULL
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

CREATE TABLE `ums_permission` (
  `TableID` int(11) NOT NULL,
  `ID` varchar(100) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_permission`
--

INSERT INTO `ums_permission` (`TableID`, `ID`, `Name`, `Category`) VALUES
(445, 'COURSE_C', 'COURSE_C', 'COURSE'),
(446, 'COURSE_R', 'COURSE_R', 'COURSE'),
(447, 'COURSE_U', 'COURSE_U', 'COURSE'),
(448, 'COURSE_D', 'COURSE_D', 'COURSE'),
(449, 'COURSE_TYPE_C', 'COURSE_TYPE_C', 'COURSE TYPE'),
(450, 'COURSE_TYPE_R', 'COURSE_TYPE_R', 'COURSE TYPE'),
(451, 'COURSE_TYPE_U', 'COURSE_TYPE_U', 'COURSE TYPE'),
(452, 'COURSE_TYPE_D', 'COURSE_TYPE_D', 'COURSE TYPE'),
(453, 'COURSE_SESSIONAL_TYPE_C', 'COURSE_SESSIONAL_TYPE_C', 'COURSE SESSIONAL TYPE'),
(454, 'COURSE_SESSIONAL_TYPE_R', 'COURSE_SESSIONAL_TYPE_R', 'COURSE SESSIONAL TYPE'),
(455, 'COURSE_SESSIONAL_TYPE_U', 'COURSE_SESSIONAL_TYPE_U', 'COURSE SESSIONAL TYPE'),
(456, 'COURSE_SESSIONAL_TYPE_D', 'COURSE_SESSIONAL_TYPE_D', 'COURSE SESSIONAL TYPE'),
(457, 'CLUB_C', 'CLUB_C', 'CLUB'),
(458, 'CLUB_R', 'CLUB_R', 'CLUB'),
(459, 'CLUB_U', 'CLUB_U', 'CLUB'),
(460, 'CLUB_D', 'CLUB_D', 'CLUB'),
(461, 'DISCUSSION_CAT_C', 'DISCUSSION_CAT_C', 'DISCUSSION CATEGORY'),
(462, 'DISCUSSION_CAT_R', 'DISCUSSION_CAT_R', 'DISCUSSION CATEGORY'),
(463, 'DISCUSSION_CAT_U', 'DISCUSSION_CAT_U', 'DISCUSSION CATEGORY'),
(464, 'DISCUSSION_CAT_D', 'DISCUSSION_CAT_D', 'DISCUSSION CATEGORY'),
(465, 'DISCUSSION_C', 'DISCUSSION_C', 'DISCUSSION'),
(466, 'DISCUSSION_R', 'DISCUSSION_R', 'DISCUSSION'),
(467, 'DISCUSSION_U', 'DISCUSSION_U', 'DISCUSSION'),
(468, 'DISCUSSION_D', 'DISCUSSION_D', 'DISCUSSION'),
(469, 'DISCUSSION_COMMENT_C', 'DISCUSSION_COMMENT_C', 'DISCUSSION COMMENT'),
(470, 'DISCUSSION_COMMENT_R', 'DISCUSSION_COMMENT_R', 'DISCUSSION COMMENT'),
(471, 'DISCUSSION_COMMENT_U', 'DISCUSSION_COMMENT_U', 'DISCUSSION COMMENT'),
(472, 'DISCUSSION_COMMENT_D', 'DISCUSSION_COMMENT_D', 'DISCUSSION COMMENT'),
(473, 'DISCIPLINE_C', 'DISCIPLINE_C', 'DISCIPLINE'),
(474, 'DISCIPLINE_R', 'DISCIPLINE_R', 'DISCIPLINE'),
(475, 'DISCIPLINE_U', 'DISCIPLINE_U', 'DISCIPLINE'),
(476, 'DISCIPLINE_D', 'DISCIPLINE_D', 'DISCIPLINE'),
(477, 'FILE_C', 'FILE_C', 'FILE'),
(478, 'FILE_R', 'FILE_R', 'FILE'),
(479, 'FILE_U', 'FILE_U', 'FILE'),
(480, 'FILE_D', 'FILE_D', 'FILE'),
(481, 'PERMISSION_C', 'PERMISSION_C', 'PERMISSION'),
(482, 'PERMISSION_R', 'PERMISSION_R', 'PERMISSION'),
(483, 'PERMISSION_U', 'PERMISSION_U', 'PERMISSION'),
(484, 'PERMISSION_D', 'PERMISSION_D', 'PERMISSION'),
(485, 'POSITION_C', 'POSITION_C', 'POSITION'),
(486, 'POSITION_R', 'POSITION_R', 'POSITION'),
(487, 'POSITION_U', 'POSITION_U', 'POSITION'),
(488, 'POSITION_D', 'POSITION_D', 'POSITION'),
(489, 'PROJECT_C', 'PROJECT_C', 'PROJECT'),
(490, 'PROJECT_R', 'PROJECT_R', 'PROJECT'),
(491, 'PROJECT_U', 'PROJECT_U', 'PROJECT'),
(492, 'PROJECT_D', 'PROJECT_D', 'PROJECT'),
(493, 'QUESTION_C', 'QUESTION_C', 'QUESTION'),
(494, 'QUESTION_R', 'QUESTION_R', 'QUESTION'),
(495, 'QUESTION_U', 'QUESTION_U', 'QUESTION'),
(496, 'QUESTION_D', 'QUESTION_D', 'QUESTION'),
(497, 'REGISTRATION_C', 'REGISTRATION_C', 'REGISTRATION'),
(498, 'REGISTRATION_R', 'REGISTRATION_R', 'REGISTRATION'),
(499, 'REGISTRATION_U', 'REGISTRATION_U', 'REGISTRATION'),
(500, 'REGISTRATION_D', 'REGISTRATION_D', 'REGISTRATION'),
(501, 'RESULT_C', 'RESULT_C', 'RESULT'),
(502, 'RESULT_R', 'RESULT_R', 'RESULT'),
(503, 'RESULT_U', 'RESULT_U', 'RESULT'),
(504, 'RESULT_D', 'RESULT_D', 'RESULT'),
(505, 'ATTENDANCE_C', 'ATTENDANCE_C', 'ATTENDANCE'),
(506, 'ATTENDANCE_R', 'ATTENDANCE_R', 'ATTENDANCE'),
(507, 'ATTENDANCE_U', 'ATTENDANCE_U', 'ATTENDANCE'),
(508, 'ATTENDANCE_D', 'ATTENDANCE_D', 'ATTENDANCE'),
(509, 'MARKS_SETUP_C', 'MARKS_SETUP_C', 'MARKS_SETUP'),
(510, 'MARKS_SETUP_R', 'MARKS_SETUP_R', 'MARKS_SETUP'),
(511, 'MARKS_SETUP_U', 'MARKS_SETUP_U', 'MARKS_SETUP'),
(512, 'MARKS_SETUP_D', 'MARKS_SETUP_D', 'MARKS_SETUP'),
(513, 'GRADE_SETUP_C', 'GRADE_SETUP_C', 'GRADE_SETUP'),
(514, 'GRADE_SETUP_R', 'GRADE_SETUP_R', 'GRADE_SETUP'),
(515, 'GRADE_SETUP_U', 'GRADE_SETUP_U', 'GRADE_SETUP'),
(516, 'GRADE_SETUP_D', 'GRADE_SETUP_D', 'GRADE_SETUP'),
(517, 'ROLE_C', 'ROLE_C', 'ROLE'),
(518, 'ROLE_R', 'ROLE_R', 'ROLE'),
(519, 'ROLE_U', 'ROLE_U', 'ROLE'),
(520, 'ROLE_D', 'ROLE_D', 'ROLE'),
(521, 'SCHOOL_C', 'SCHOOL_C', 'SCHOOL'),
(522, 'SCHOOL_R', 'SCHOOL_R', 'SCHOOL'),
(523, 'SCHOOL_U', 'SCHOOL_U', 'SCHOOL'),
(524, 'SCHOOL_D', 'SCHOOL_D', 'SCHOOL'),
(525, 'SESSION_C', 'SESSION_C', 'SESSION'),
(526, 'SESSION_R', 'SESSION_R', 'SESSION'),
(527, 'SESSION_U', 'SESSION_U', 'SESSION'),
(528, 'SESSION_D', 'SESSION_D', 'SESSION'),
(529, 'SURVEY_C', 'SURVEY_C', 'SURVEY'),
(530, 'SURVEY_R', 'SURVEY_R', 'SURVEY'),
(531, 'SURVEY_U', 'SURVEY_U', 'SURVEY'),
(532, 'SURVEY_D', 'SURVEY_D', 'SURVEY'),
(533, 'SURVEY_QUESTION_C', 'SURVEY_QUESTION_C', 'SURVEY QUESTION'),
(534, 'SURVEY_QUESTION_R', 'SURVEY_QUESTION_R', 'SURVEY QUESTION'),
(535, 'SURVEY_QUESTION_U', 'SURVEY_QUESTION_U', 'SURVEY QUESTION'),
(536, 'SURVEY_QUESTION_D', 'SURVEY_QUESTION_D', 'SURVEY QUESTION'),
(537, 'SURVEY_QUESTION_TYPE_C', 'SURVEY_QUESTION_TYPE_C', 'SURVEY QUESTION TYPE'),
(538, 'SURVEY_QUESTION_TYPE_R', 'SURVEY_QUESTION_TYPE_R', 'SURVEY QUESTION TYPE'),
(539, 'SURVEY_QUESTION_TYPE_U', 'SURVEY_QUESTION_TYPE_U', 'SURVEY QUESTION TYPE'),
(540, 'SURVEY_QUESTION_TYPE_D', 'SURVEY_QUESTION_TYPE_D', 'SURVEY QUESTION TYPE'),
(541, 'SURVEY_QUESTION_FILLUP_C', 'SURVEY_QUESTION_FILLUP_C', 'SURVEY QUESTION FILLUP'),
(542, 'SURVEY_QUESTION_FILLUP_R', 'SURVEY_QUESTION_FILLUP_R', 'SURVEY QUESTION FILLUP'),
(543, 'SURVEY_QUESTION_FILLUP_U', 'SURVEY_QUESTION_FILLUP_U', 'SURVEY QUESTION FILLUP'),
(544, 'SURVEY_QUESTION_FILLUP_D', 'SURVEY_QUESTION_FILLUP_D', 'SURVEY QUESTION FILLUP'),
(545, 'TERM_C', 'TERM_C', 'TERM'),
(546, 'TERM_R', 'TERM_R', 'TERM'),
(547, 'TERM_U', 'TERM_U', 'TERM'),
(548, 'TERM_D', 'TERM_D', 'TERM'),
(549, 'USER_C', 'USER_C', 'USER'),
(550, 'USER_R', 'USER_R', 'USER'),
(551, 'USER_U', 'USER_U', 'USER'),
(552, 'USER_D', 'USER_D', 'USER'),
(553, 'YEAR_C', 'YEAR_C', 'YEAR'),
(554, 'YEAR_R', 'YEAR_R', 'YEAR'),
(555, 'YEAR_U', 'YEAR_U', 'YEAR'),
(556, 'YEAR_D', 'YEAR_D', 'YEAR'),
(557, 'VIDEO_C', 'VIDEO_C', 'VIDEO'),
(558, 'VIDEO_R', 'VIDEO_R', 'VIDEO'),
(559, 'VIDEO_U', 'VIDEO_U', 'VIDEO'),
(560, 'VIDEO_D', 'VIDEO_D', 'VIDEO'),
(561, 'VIDEO_COMMENT_C', 'VIDEO_COMMENT_C', 'VIDEO COMMENT'),
(562, 'VIDEO_COMMENT_R', 'VIDEO_COMMENT_R', 'VIDEO COMMENT'),
(563, 'VIDEO_COMMENT_U', 'VIDEO_COMMENT_U', 'VIDEO COMMENT'),
(564, 'VIDEO_COMMENT_D', 'VIDEO_COMMENT_D', 'VIDEO COMMENT');

-- --------------------------------------------------------

--
-- Table structure for table `ums_position`
--

CREATE TABLE `ums_position` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
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

CREATE TABLE `ums_role` (
  `ID` varchar(40) NOT NULL,
  `Name` varchar(50) NOT NULL
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

CREATE TABLE `ums_role_permission` (
  `Row` int(11) NOT NULL,
  `RoleID` varchar(40) NOT NULL,
  `PermissionID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_role_permission`
--

INSERT INTO `ums_role_permission` (`Row`, `RoleID`, `PermissionID`) VALUES
(1453, 'teacher', 'COURSE_C'),
(1454, 'teacher', 'COURSE_D'),
(1455, 'teacher', 'COURSE_R'),
(1456, 'teacher', 'COURSE_U'),
(1457, 'teacher', 'DISCUSSION_C'),
(1458, 'teacher', 'DISCUSSION_D'),
(1459, 'teacher', 'DISCUSSION_R'),
(1460, 'teacher', 'DISCUSSION_U'),
(1461, 'teacher', 'DISCUSSION_CAT_C'),
(1462, 'teacher', 'DISCUSSION_CAT_D'),
(1463, 'teacher', 'DISCUSSION_CAT_R'),
(1464, 'teacher', 'DISCUSSION_CAT_U'),
(1465, 'teacher', 'DISCUSSION_COMMENT_C'),
(1466, 'teacher', 'DISCUSSION_COMMENT_D'),
(1467, 'teacher', 'DISCUSSION_COMMENT_R'),
(1468, 'teacher', 'DISCUSSION_COMMENT_U'),
(1469, 'teacher', 'FILE_C'),
(1470, 'teacher', 'FILE_D'),
(1471, 'teacher', 'FILE_R'),
(1472, 'teacher', 'FILE_U'),
(1473, 'teacher', 'PROJECT_C'),
(1474, 'teacher', 'PROJECT_D'),
(1475, 'teacher', 'PROJECT_R'),
(1476, 'teacher', 'PROJECT_U'),
(1477, 'teacher', 'QUESTION_C'),
(1478, 'teacher', 'QUESTION_D'),
(1479, 'teacher', 'QUESTION_R'),
(1480, 'teacher', 'QUESTION_U'),
(1481, 'teacher', 'REGISTRATION_C'),
(1482, 'teacher', 'REGISTRATION_D'),
(1483, 'teacher', 'REGISTRATION_R'),
(1484, 'teacher', 'REGISTRATION_U'),
(1485, 'teacher', 'RESULT_C'),
(1486, 'teacher', 'RESULT_D'),
(1487, 'teacher', 'RESULT_R'),
(1488, 'teacher', 'RESULT_U'),
(1592, 'student', 'CLUB_C'),
(1593, 'student', 'CLUB_R'),
(1594, 'student', 'CLUB_U'),
(1595, 'student', 'CLUB_D'),
(1596, 'student', 'DISCUSSION_C'),
(1597, 'student', 'DISCUSSION_R'),
(1598, 'student', 'DISCUSSION_U'),
(1599, 'student', 'DISCUSSION_D'),
(1600, 'student', 'DISCUSSION_COMMENT_C'),
(1601, 'student', 'DISCUSSION_COMMENT_R'),
(1602, 'student', 'DISCUSSION_COMMENT_U'),
(1603, 'student', 'DISCUSSION_COMMENT_D'),
(1604, 'student', 'PROJECT_C'),
(1605, 'student', 'PROJECT_R'),
(1606, 'student', 'PROJECT_U'),
(1607, 'student', 'PROJECT_D'),
(1608, 'student', 'QUESTION_C'),
(1609, 'student', 'QUESTION_R'),
(1610, 'student', 'QUESTION_U'),
(1611, 'student', 'QUESTION_D'),
(1612, 'student', 'REGISTRATION_R'),
(1613, 'student', 'RESULT_R'),
(1614, 'student', 'USER_R'),
(1615, 'student', 'VIDEO_C'),
(1616, 'student', 'VIDEO_R'),
(1617, 'student', 'VIDEO_U'),
(1618, 'student', 'VIDEO_D'),
(1619, 'administrator', 'ATTENDANCE_C'),
(1620, 'administrator', 'ATTENDANCE_R'),
(1621, 'administrator', 'ATTENDANCE_U'),
(1622, 'administrator', 'ATTENDANCE_D'),
(1623, 'administrator', 'CLUB_C'),
(1624, 'administrator', 'CLUB_R'),
(1625, 'administrator', 'CLUB_U'),
(1626, 'administrator', 'CLUB_D'),
(1627, 'administrator', 'COURSE_C'),
(1628, 'administrator', 'COURSE_R'),
(1629, 'administrator', 'COURSE_U'),
(1630, 'administrator', 'COURSE_D'),
(1631, 'administrator', 'COURSE_SESSIONAL_TYPE_C'),
(1632, 'administrator', 'COURSE_SESSIONAL_TYPE_R'),
(1633, 'administrator', 'COURSE_SESSIONAL_TYPE_U'),
(1634, 'administrator', 'COURSE_SESSIONAL_TYPE_D'),
(1635, 'administrator', 'COURSE_TYPE_C'),
(1636, 'administrator', 'COURSE_TYPE_R'),
(1637, 'administrator', 'COURSE_TYPE_U'),
(1638, 'administrator', 'COURSE_TYPE_D'),
(1639, 'administrator', 'DISCIPLINE_C'),
(1640, 'administrator', 'DISCIPLINE_R'),
(1641, 'administrator', 'DISCIPLINE_U'),
(1642, 'administrator', 'DISCIPLINE_D'),
(1643, 'administrator', 'DISCUSSION_C'),
(1644, 'administrator', 'DISCUSSION_R'),
(1645, 'administrator', 'DISCUSSION_U'),
(1646, 'administrator', 'DISCUSSION_D'),
(1647, 'administrator', 'DISCUSSION_CAT_C'),
(1648, 'administrator', 'DISCUSSION_CAT_R'),
(1649, 'administrator', 'DISCUSSION_CAT_U'),
(1650, 'administrator', 'DISCUSSION_CAT_D'),
(1651, 'administrator', 'DISCUSSION_COMMENT_C'),
(1652, 'administrator', 'DISCUSSION_COMMENT_R'),
(1653, 'administrator', 'DISCUSSION_COMMENT_U'),
(1654, 'administrator', 'DISCUSSION_COMMENT_D'),
(1655, 'administrator', 'FILE_C'),
(1656, 'administrator', 'FILE_R'),
(1657, 'administrator', 'FILE_U'),
(1658, 'administrator', 'FILE_D'),
(1659, 'administrator', 'GRADE_SETUP_C'),
(1660, 'administrator', 'GRADE_SETUP_R'),
(1661, 'administrator', 'GRADE_SETUP_U'),
(1662, 'administrator', 'GRADE_SETUP_D'),
(1663, 'administrator', 'MARKS_SETUP_C'),
(1664, 'administrator', 'MARKS_SETUP_R'),
(1665, 'administrator', 'MARKS_SETUP_U'),
(1666, 'administrator', 'MARKS_SETUP_D'),
(1667, 'administrator', 'PERMISSION_C'),
(1668, 'administrator', 'PERMISSION_R'),
(1669, 'administrator', 'PERMISSION_U'),
(1670, 'administrator', 'PERMISSION_D'),
(1671, 'administrator', 'POSITION_C'),
(1672, 'administrator', 'POSITION_R'),
(1673, 'administrator', 'POSITION_U'),
(1674, 'administrator', 'POSITION_D'),
(1675, 'administrator', 'PROJECT_C'),
(1676, 'administrator', 'PROJECT_R'),
(1677, 'administrator', 'PROJECT_U'),
(1678, 'administrator', 'PROJECT_D'),
(1679, 'administrator', 'QUESTION_C'),
(1680, 'administrator', 'QUESTION_R'),
(1681, 'administrator', 'QUESTION_U'),
(1682, 'administrator', 'QUESTION_D'),
(1683, 'administrator', 'REGISTRATION_C'),
(1684, 'administrator', 'REGISTRATION_R'),
(1685, 'administrator', 'REGISTRATION_U'),
(1686, 'administrator', 'REGISTRATION_D'),
(1687, 'administrator', 'RESULT_C'),
(1688, 'administrator', 'RESULT_R'),
(1689, 'administrator', 'RESULT_U'),
(1690, 'administrator', 'RESULT_D'),
(1691, 'administrator', 'ROLE_C'),
(1692, 'administrator', 'ROLE_R'),
(1693, 'administrator', 'ROLE_U'),
(1694, 'administrator', 'ROLE_D'),
(1695, 'administrator', 'SCHOOL_C'),
(1696, 'administrator', 'SCHOOL_R'),
(1697, 'administrator', 'SCHOOL_U'),
(1698, 'administrator', 'SCHOOL_D'),
(1699, 'administrator', 'SESSION_C'),
(1700, 'administrator', 'SESSION_R'),
(1701, 'administrator', 'SESSION_U'),
(1702, 'administrator', 'SESSION_D'),
(1703, 'administrator', 'SURVEY_C'),
(1704, 'administrator', 'SURVEY_R'),
(1705, 'administrator', 'SURVEY_U'),
(1706, 'administrator', 'SURVEY_D'),
(1707, 'administrator', 'SURVEY_QUESTION_C'),
(1708, 'administrator', 'SURVEY_QUESTION_R'),
(1709, 'administrator', 'SURVEY_QUESTION_U'),
(1710, 'administrator', 'SURVEY_QUESTION_D'),
(1711, 'administrator', 'SURVEY_QUESTION_FILLUP_C'),
(1712, 'administrator', 'SURVEY_QUESTION_FILLUP_R'),
(1713, 'administrator', 'SURVEY_QUESTION_FILLUP_U'),
(1714, 'administrator', 'SURVEY_QUESTION_FILLUP_D'),
(1715, 'administrator', 'SURVEY_QUESTION_TYPE_C'),
(1716, 'administrator', 'SURVEY_QUESTION_TYPE_R'),
(1717, 'administrator', 'SURVEY_QUESTION_TYPE_U'),
(1718, 'administrator', 'SURVEY_QUESTION_TYPE_D'),
(1719, 'administrator', 'TERM_C'),
(1720, 'administrator', 'TERM_R'),
(1721, 'administrator', 'TERM_U'),
(1722, 'administrator', 'TERM_D'),
(1723, 'administrator', 'USER_C'),
(1724, 'administrator', 'USER_R'),
(1725, 'administrator', 'USER_U'),
(1726, 'administrator', 'USER_D'),
(1727, 'administrator', 'VIDEO_C'),
(1728, 'administrator', 'VIDEO_R'),
(1729, 'administrator', 'VIDEO_U'),
(1730, 'administrator', 'VIDEO_D'),
(1731, 'administrator', 'VIDEO_COMMENT_C'),
(1732, 'administrator', 'VIDEO_COMMENT_R'),
(1733, 'administrator', 'VIDEO_COMMENT_U'),
(1734, 'administrator', 'VIDEO_COMMENT_D'),
(1735, 'administrator', 'YEAR_C'),
(1736, 'administrator', 'YEAR_R'),
(1737, 'administrator', 'YEAR_U'),
(1738, 'administrator', 'YEAR_D');

-- --------------------------------------------------------

--
-- Table structure for table `ums_school`
--

CREATE TABLE `ums_school` (
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

CREATE TABLE `ums_user` (
  `ID` varchar(40) NOT NULL,
  `UniversityID` varchar(20) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Status` varchar(20) DEFAULT NULL,
  `IsLogged` varchar(10) DEFAULT NULL,
  `IsArchived` varchar(10) DEFAULT NULL,
  `IsDeleted` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user`
--

INSERT INTO `ums_user` (`ID`, `UniversityID`, `Email`, `Password`, `FirstName`, `LastName`, `Status`, `IsLogged`, `IsArchived`, `IsDeleted`) VALUES
('aysha@gmail.com', '020208', 'aysha@gmail.com', '$2y$10$0RhEvNvghEBguw.tGOGHOuF8.tdBZKVPIxA9.OaWZ8v7Di7miDVC2', 'Aysha', 'Akther', 'approved', NULL, NULL, NULL),
('kashif@gmail.com', '020202', 'kashif@gmail.com', '$2y$10$VoB44xY6tRG8YaFk8L320eCR.AGT73RCiYaoOJLwU3ITKkgxliHV6', 'Kashif Nizam', 'Khan', 'approved', NULL, NULL, NULL),
('mkazi078@uottawa.ca', '020229', 'mkazi078@uottawa.ca', '$2y$10$ib9eyLWjPMvZn8iGFf3CEOqvkd/pUHO2pOqksMkJBdk2.4eKX0H1q', 'Kazi Masudul', 'Alam ', 'approved', NULL, NULL, NULL),
('zahid@gmail.com', '020203', 'zahid@gmail.com', '$2y$10$Ej0FnJB7WqL4j7fRI99AWuC8z5a7M4VUC/jGlgudSAneSKEy3uXCW', 'Zahidul', 'Islam', 'approved', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_details`
--

CREATE TABLE `ums_user_details` (
  `ID` varchar(40) NOT NULL,
  `FatherName` varchar(100) DEFAULT NULL,
  `MotherName` varchar(100) DEFAULT NULL,
  `PermanentAddress` varchar(200) DEFAULT NULL,
  `HomePhone` varchar(20) DEFAULT NULL,
  `CurrentAddress` varchar(200) DEFAULT NULL,
  `MobilePhone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_details`
--

INSERT INTO `ums_user_details` (`ID`, `FatherName`, `MotherName`, `PermanentAddress`, `HomePhone`, `CurrentAddress`, `MobilePhone`) VALUES
('aysha@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('kashif@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL),
('mkazi078@uottawa.ca', 'Kazi Shahidul Alam', 'Hosneara Jahan', '49/2, Rokon Uddin Sarak, East Baniakhamar, Khulna', '0417223344', 'Same', '01711149360 '),
('zahid@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_discipline`
--

CREATE TABLE `ums_user_discipline` (
  `UserID` varchar(40) NOT NULL,
  `DisciplineID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_position`
--

CREATE TABLE `ums_user_position` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `PositionID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_position`
--

INSERT INTO `ums_user_position` (`ID`, `UserID`, `PositionID`) VALUES
(43, 'mkazi078@uottawa.ca', '{64D25DDA-16B6-47B8-BBFC-4E2AAF5680C7}');

-- --------------------------------------------------------

--
-- Table structure for table `ums_user_role`
--

CREATE TABLE `ums_user_role` (
  `ID` int(11) NOT NULL,
  `UserID` varchar(40) NOT NULL,
  `RoleID` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ums_user_role`
--

INSERT INTO `ums_user_role` (`ID`, `UserID`, `RoleID`) VALUES
(112, 'mkazi078@uottawa.ca', 'administrator'),
(113, 'mkazi078@uottawa.ca', 'teacher'),
(115, 'kashif@gmail.com', 'student'),
(119, 'zahid@gmail.com', 'student'),
(120, 'aysha@gmail.com', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `reg_course`
--
ALTER TABLE `reg_course`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_sessional_type`
--
ALTER TABLE `reg_course_sessional_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_student_registration`
--
ALTER TABLE `reg_course_student_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_teacher`
--
ALTER TABLE `reg_course_teacher`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_teacher_registration`
--
ALTER TABLE `reg_course_teacher_registration`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_course_type`
--
ALTER TABLE `reg_course_type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_term`
--
ALTER TABLE `reg_term`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `reg_year`
--
ALTER TABLE `reg_year`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_result`
--
ALTER TABLE `rms_course_marks_result`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_result_publish`
--
ALTER TABLE `rms_course_marks_result_publish`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_course_marks_tests`
--
ALTER TABLE `rms_course_marks_tests`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_grade_setup`
--
ALTER TABLE `rms_grade_setup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rms_marks_setup`
--
ALTER TABLE `rms_marks_setup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_discipline`
--
ALTER TABLE `ums_discipline`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_permission`
--
ALTER TABLE `ums_permission`
  ADD PRIMARY KEY (`TableID`);

--
-- Indexes for table `ums_position`
--
ALTER TABLE `ums_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_role`
--
ALTER TABLE `ums_role`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  ADD PRIMARY KEY (`Row`);

--
-- Indexes for table `ums_user`
--
ALTER TABLE `ums_user`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `UniversityID` (`UniversityID`);

--
-- Indexes for table `ums_user_details`
--
ALTER TABLE `ums_user_details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ums_permission`
--
ALTER TABLE `ums_permission`
  MODIFY `TableID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=565;
--
-- AUTO_INCREMENT for table `ums_role_permission`
--
ALTER TABLE `ums_role_permission`
  MODIFY `Row` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1739;
--
-- AUTO_INCREMENT for table `ums_user_position`
--
ALTER TABLE `ums_user_position`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `ums_user_role`
--
ALTER TABLE `ums_user_role`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
