-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 03:19 AM
-- Server version: 10.1.39-MariaDB
-- PHP Version: 7.3.5

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
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_Id`, `name`) VALUES
(0, 'phpp'),
(0, 'html'),
(0, 'CSS'),
(0, 'php');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_Id` int(11) NOT NULL,
  `comment` text,
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
  `message` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_Id`, `name`, `email`, `phone`, `subject`, `message`) VALUES
(2, 'asd', 'sample@gmail.com', 343, 'sa', 'sadas'),
(6, 'SHEKH MOHAMMAD MOHI UDDIN', 'foyzur.neub@gmail.com', 1714211468, 'dsgfdrg', 'gsdghdfh'),
(7, 'Dalwar Hussain', 'mhdalwar71@gmail', 1740181770, 'wudgwdfu', 'dhjvgsdlpjgfpdsjg;dgbvjd dojg dsjbgvdsjfbgvp['),
(8, 'foysal51', 'foyzur.neub@gmail.com', 1714211468, 'dsgfdrgfzrgr', 'zedgrserhdghjxs');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_quiz`
--

CREATE TABLE `tbl_quiz` (
  `quiz_Id` int(11) NOT NULL,
  `question_name` text,
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
(2, '<pre>\r\n<span style=\"color:rgb(0, 136, 0)\">What does PHP stand for?</span></pre>\r\n', 'Personal Home Page', 'Personal Hypertext Processor', 'Private Home Page', 'PHP: Hypertext Preprocessor', '4'),
(3, '<p>gdsgsdg</p>\r\n', 'erte', 'erter', 'eter', 'tdrg', 'erte');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subtopic`
--

CREATE TABLE `tbl_subtopic` (
  `sub_Id` int(11) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `sub_content` text,
  `datetime` datetime DEFAULT NULL,
  `topic_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_subtopic`
--

INSERT INTO `tbl_subtopic` (`sub_Id`, `sub_title`, `sub_content`, `datetime`, `topic_Id`) VALUES
(1, 'HTML Introduction', '<p>rgtserhy</p>\r\n', '2019-09-19 07:37:06', 0);

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
  `content` text,
  `datetime_posted` timestamp NULL DEFAULT NULL,
  `cat_Id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_topic`
--

INSERT INTO `tbl_topic` (`topic_Id`, `title`, `content`, `datetime_posted`, `cat_Id`) VALUES
(1, 'php', '<p>pen Culture is a website where free online educational opportunities are curated. Learners can sign up to take classes on a variety of subjects that are offered by a variety of colleges and universities. This website is designed to give students of any age access to online learning and even&nbsp;<a href=\"https://elearningindustry.com/3-types-online-training-course-certificates\" rel=\"noopener\" style=\"box-sizing: border-box; outline: none; color: rgb(3, 146, 217); text-decoration-line: none; background-color: transparent;\" target=\"_blank\" title=\"3 Types Of Online Training Course Certificates\">internet based certification programs</a>.</p>\r\n\r\n<h4>7.&nbsp;<a href=\"https://oyc.yale.edu/\" rel=\"noopener\" style=\"box-sizing: border-box; outline: none; color: rgb(3, 146, 217); text-decoration-line: none; background-color: transparent; font-weight: normal;\" target=\"_blank\" title=\"Open Yale Courses\">Open Yale Courses</a></h4>\r\n\r\n<p><a href=\"https://cdn.elearningindustry.com/wp-content/uploads/2015/10/8_open_Yale_courses.png\" rel=\"\" style=\"box-sizing: border-box; outline: none; color: rgb(3, 146, 217); text-decoration-line: none; background-color: transparent;\"><img alt=\"Open Yale Courses\" class=\"aligncenter size-medium wp-image-34353\" src=\"https://cdn.elearningindustry.com/wp-content/uploads/2015/10/8_open_Yale_courses-800x325.png\" style=\"border-style:none; box-sizing:border-box; display:block; height:auto; margin:0px auto; max-width:100%; outline:none; vertical-align:middle; width:800px\" /></a></p>\r\n\r\n<p>There&#39;s an obvious attraction to taking free online classes from Yale. After all, who wouldn&#39;t want to learn something from an Ivy League instructor?</p>\r\n\r\n<p>Open Yale works be</p>\r\n', '2019-09-11 00:25:19', 0),
(2, 'HTML Introduction', '<h2>What is HTML?</h2>\r\n\r\n<p>HTML is the standard markup language for creating Web pages.</p>\r\n\r\n<ul>\r\n	<li>HTML stands for Hyper Text Markup Language</li>\r\n	<li>HTML describes the structure of a Web page</li>\r\n	<li>HTML consists of a series of elements</li>\r\n	<li>HTML elements tell the browser how to display the content</li>\r\n	<li>HTML elements are represented by tags</li>\r\n	<li>HTML tags label pieces of content such as &quot;heading&quot;, &quot;paragraph&quot;, &quot;table&quot;, and so on</li>\r\n	<li>Browsers do not display the HTML tags, but use them to render the content of the page</li>\r\n</ul>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 0.01em 16px; margin: 20px 0px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: rgba(0, 0, 0, 0.16) 0px 2px 4px 0px, rgba(0, 0, 0, 0.12) 0px 2px 10px 0px !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; font-size: 16px; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;xmp&gt;&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>head<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>title<span style=\"color:mediumblue\">&gt;</span></span>Page Title<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/title<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/head<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h1<span style=\"color:mediumblue\">&gt;</span></span>My First Heading<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h1<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>p<span style=\"color:mediumblue\">&gt;</span></span>My first paragraph.<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/p<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; font-size: 16px; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;/xmp&gt;</span></span></div>\r\n<a class=\"w3-btn w3-margin-bottom\" href=\"https://www.w3schools.com/html/tryit.asp?filename=tryhtml_intro\" style=\"box-sizing: inherit; background-color: rgb(76, 175, 80); color: rgb(255, 255, 255); border: none; display: inline-block; padding: 8px 16px; vertical-align: middle; overflow: hidden; text-decoration-line: none; text-align: center; cursor: pointer; white-space: nowrap; user-select: none; margin-bottom: 16px !important;\" target=\"_blank\">Try it Yourself &raquo;</a></div>\r\n', '2019-09-18 19:31:54', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_Id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_Id`, `fname`, `lname`, `dob`, `gender`, `username`, `password`) VALUES
(7, 'Foysal', 'Ahmed', '1996-12-31', 'Male', 'FoysalS', '827ccb0eea8a706c4c34a16891f84e7b'),
(8, 'Foysal ', 'Ahmed', '2019-09-30', 'Male', 'Foysal11', 'e10adc3949ba59abbe56e057f20f883e'),
(13, 'Salman', 'Hossain', '2019-09-23', 'Male', 'sal', 'b686dc3957c92295798251874c429cab'),
(14, 'Foyzur', 'Rahman', '2019-09-19', 'Male', 'foyzur', '82193a0792587d0feb1b84ec2e69082c'),
(15, 'Ashfaq', 'Ahmod', '2019-09-14', 'Male', 'Ash', '827ccb0eea8a706c4c34a16891f84e7b'),
(16, 'Foyzurr', 'Ahmed', '2019-09-19', 'Male', 'foy', '12345');

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
  ADD PRIMARY KEY (`ans_Id`),
  ADD KEY `user_Id` (`user_Id`),
  ADD KEY `quiz_Id` (`quiz_Id`);

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
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  MODIFY `quiz_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_subtopic`
--
ALTER TABLE `tbl_subtopic`
  MODIFY `sub_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_topic`
--
ALTER TABLE `tbl_topic`
  MODIFY `topic_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_answer`
--
ALTER TABLE `tbl_answer`
  ADD CONSTRAINT `tbl_answer_ibfk_1` FOREIGN KEY (`user_Id`) REFERENCES `tbl_user` (`user_Id`),
  ADD CONSTRAINT `tbl_answer_ibfk_2` FOREIGN KEY (`quiz_Id`) REFERENCES `tbl_quiz` (`quiz_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
