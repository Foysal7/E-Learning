-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2019 at 05:24 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_elearning`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adm_Id` int(11) NOT NULL,
  `adm_user` varchar(255) DEFAULT NULL,
  `adm_pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adm_Id`, `adm_user`, `adm_pwd`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_answer`
--

CREATE TABLE `tbl_answer` (
  `ans_Id` int(11) NOT NULL,
  `answer` varchar(255) DEFAULT NULL,
  `quiz_Id` int(11) DEFAULT NULL,
  `user_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_Id`, `name`) VALUES
(1, 'php'),
(2, 'html');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_Id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `sub_Id` int(11) DEFAULT NULL,
  `user_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_Id`, `comment`, `datetime`, `sub_Id`, `user_Id`) VALUES
(1, '', '2015-06-01 07:48:26', 0, 0),
(2, '', '2015-06-01 07:48:56', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_Id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` int(1) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_Id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(2, 'asd', 'sample@gmail.com', 343, 'sa', 'sadas'),
(3, 'asd', 'asdh@yahoo.com', 324, 'asd', 'asdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(4, 'Sample', 'asdh@yahoo.com', 24, 'asd', 'asd');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz`
--

CREATE TABLE `tbl_quiz` (
  `quiz_Id` int(11) NOT NULL,
  `question_name` text DEFAULT NULL,
  `answer1` varchar(255) DEFAULT '',
  `answer2` varchar(255) DEFAULT NULL,
  `answe3` varchar(255) DEFAULT NULL,
  `answer4` varchar(255) DEFAULT NULL,
  `answer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_quiz`
--

INSERT INTO `tbl_quiz` (`quiz_Id`, `question_name`, `answer1`, `answer2`, `answe3`, `answer4`, `answer`) VALUES
(1, '<pre>\r\n<span style=\"color:rgb(0, 136, 0)\">What does PHP stand for?</span></pre>\r\n', '4', '', '', '', ''),
(2, '<pre>\r\n<span style=\"color:rgb(0, 136, 0)\">What does PHP stand for?</span></pre>\r\n', 'Personal Home Page', 'Personal Hypertext Processor', 'Private Home Page', 'PHP: Hypertext Preprocessor', '4'),
(3, '<p>asd</p>\r\n', 'asd', 'asd', 'asd', 'asd', '3'),
(4, '<p>asd</p>\r\n', '45', '45', '45', '452', '2'),
(5, '<p>asd</p>\r\n', 'gfgf', 'fg', 'fg', 'fg', '2');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subtopic`
--

CREATE TABLE `tbl_subtopic` (
  `sub_Id` int(11) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `sub_content` text DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `topic_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subtopic`
--

INSERT INTO `tbl_subtopic` (`sub_Id`, `sub_title`, `sub_content`, `datetime`, `topic_Id`) VALUES
(1, 'sample', '<p><iframe src=\"https://www.youtube.com/embed/zg-J7jVNix0\" width=\"560\" height=\"315\" frameborder=\"0\" allowfullscreen=\"allowfullscreen\"></iframe></p>\r\n<p>asdasd</p>', '2015-05-31 09:46:27', 11),
(2, 'Lorem ipsum', '<h3>sample</h3>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod<br />\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,<br />\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo<br />\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse<br />\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non<br />\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<div>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod</div>\r\n\r\n<div>tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,</div>\r\n\r\n<div>quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo</div>\r\n\r\n<div>consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse</div>\r\n\r\n<div>cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non</div>\r\n\r\n<div>proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</div>\r\n\r\n<div>&nbsp;</div>\r\n\r\n<div><a href=\"http://iwantsourcecodes.com\" target=\"_blank\">http://iwantsourcecodes.com</a></div>\r\n', '2015-05-31 06:00:53', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_teacher`
--

CREATE TABLE `tbl_teacher` (
  `teacher_Id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `mname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `uname` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_teacher`
--

INSERT INTO `tbl_teacher` (`teacher_Id`, `fname`, `mname`, `lname`, `uname`, `pwd`) VALUES
(8, 'Foysal', 'S', 'Rahman', 'Foysal', '827ccb0eea8a706c4c34a16891f84e7b'),
(9, 'Dalwar', 'm', 'Hossain', 'daluar', 'e10adc3949ba59abbe56e057f20f883e'),
(10, 'Ashfaq', 'M', 'Ahmod', 'ash', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_topic`
--

CREATE TABLE `tbl_topic` (
  `topic_Id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `datetime_posted` timestamp NULL DEFAULT NULL,
  `cat_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_topic`
--

INSERT INTO `tbl_topic` (`topic_Id`, `title`, `content`, `datetime_posted`, `cat_Id`) VALUES
(14, 'php', '<p>The PHP team is glad to announce the third and last beta release of PHP 7.4: PHP 7.4.0beta4. This continues the PHP 7.4 release cycle, the rough outline of which is specified in the&nbsp;<a style=\"border-bottom: 1px solid; text-decoration-line: none; color: #336699;\" href=\"https://wiki.php.net/todo/php74\">PHP Wiki</a>.</p>\r\n<p>For source downloads of PHP 7.4.0beta4 please visit the&nbsp;<a style=\"border-bottom: 1px solid; text-decoration-line: none; color: #336699;\" href=\"https://downloads.php.net/~derick\">download page</a>.</p>\r\n<p>Please carefully test this version and report any issues found in the&nbsp;<a style=\"border-bottom: 1px solid; text-decoration-line: none; color: #336699;\" href=\"https://bugs.php.net/\">bug reporting system</a>.</p>', '2019-08-28 22:02:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_Id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_Id`, `fname`, `lname`, `dob`, `gender`, `username`, `password`) VALUES
(1, 'foysal', 'rahman', '1996-12-31', 'Male', 'foysal', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adm_Id`);

--
-- Indexes for table `tbl_answer`
--
ALTER TABLE `tbl_answer`
  ADD PRIMARY KEY (`ans_Id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_Id`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_Id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_Id`);

--
-- Indexes for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  ADD PRIMARY KEY (`quiz_Id`);

--
-- Indexes for table `tbl_subtopic`
--
ALTER TABLE `tbl_subtopic`
  ADD PRIMARY KEY (`sub_Id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_Id`);

--
-- Indexes for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  ADD PRIMARY KEY (`topic_Id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adm_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_answer`
--
ALTER TABLE `tbl_answer`
  MODIFY `ans_Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  MODIFY `quiz_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_subtopic`
--
ALTER TABLE `tbl_subtopic`
  MODIFY `sub_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  MODIFY `topic_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
