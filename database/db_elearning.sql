-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2020 at 09:38 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

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
(1, 'HTML'),
(2, 'PHP'),
(3, 'CSS'),
(4, 'PYTHON'),
(5, 'JAVA'),
(6, 'JAVA SCRIPTS');

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
(4, 'Sample', 'asdh@yahoo.com', 24, 'asd', 'asd'),
(5, 're', 'ere@gmail.com', 0, 'refe', 'erfe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `post_Id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `datetime_posted` timestamp NULL DEFAULT NULL,
  `cat_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`post_Id`, `title`, `content`, `datetime_posted`, `cat_name`) VALUES
(37, 'PHP Tutorial', '<h2>Easy Learning with &quot;PHP Tryit&quot;</h2>\r\n\r\n<p>With our online &quot;PHP Tryit&quot; editor, you can edit the PHP code, and click on a button to view the result.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"background-color:transparent; color:rgb(232, 0, 0)\"><span style=\"color:black\"><span style=\"color:red\">&lt;?php</span><br />\r\n<span style=\"color:mediumblue\">echo</span>&nbsp;<span style=\"color:brown\">&quot;My first PHP script!&quot;</span>;<br />\r\n<span style=\"color:red\">?&gt;</span></span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n', '2020-01-17 23:31:47', 'PHP'),
(38, 'PHP Syntax', '<h2>Basic PHP Syntax</h2>\r\n\r\n<p>A PHP script can be placed anywhere in the document.</p>\r\n\r\n<p>A PHP script starts with&nbsp;<code>&lt;?php</code>&nbsp;and ends with&nbsp;<code>?&gt;</code>:</p>\r\n\r\n<div class=\"w3-code w3-border notranslate\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; font-size: 15px; width: auto; padding: 8px 12px; overflow-wrap: break-word; color: rgb(0, 0, 0); border: 1px solid rgb(204, 204, 204) !important; margin-top: 16px !important; margin-bottom: 16px !important;\">\r\n<div style=\"box-sizing: inherit;\">&lt;?php<br />\r\n// PHP code goes here<br />\r\n?&gt;</div>\r\n</div>\r\n\r\n<p>The default file extension for PHP files is &quot;<code>.php</code>&quot;.</p>\r\n\r\n<p>A PHP file normally contains HTML tags, and some PHP scripting code.</p>\r\n\r\n<p>Below, we have an example of a simple PHP file, with a PHP script that uses a built-in PHP function &quot;<code>echo</code>&quot; to output the text &quot;Hello World!&quot; on a web page:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code htmlHigh notranslate\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h1<span style=\"color:mediumblue\">&gt;</span></span>My first PHP page<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h1<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:red\">&lt;?php</span><br />\r\n<span style=\"color:mediumblue\">echo</span>&nbsp;<span style=\"color:brown\">&quot;Hello World!&quot;</span>;<br />\r\n<span style=\"color:red\">?&gt;</span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n\r\n<p>Note:&nbsp;PHP statements end with a semicolon (<code>;</code>).</p>\r\n\r\n<p>PHP Case Sensitivity</p>\r\n\r\n<p>In PHP, NO keywords (e.g.&nbsp;<code>if</code>,&nbsp;<code>else</code>,&nbsp;<code>while</code>,&nbsp;<code>echo</code>, etc.), classes, functions, and user-defined functions are case-sensitive.</p>\r\n\r\n<p>In the example below, all three echo statements below are equal and legal:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code htmlHigh notranslate\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:red\">&lt;?php</span><br />\r\n<span style=\"color:mediumblue\">ECHO</span>&nbsp;<span style=\"color:brown\">&quot;Hello World!&lt;br&gt;&quot;</span>;<br />\r\n<span style=\"color:mediumblue\">echo</span>&nbsp;<span style=\"color:brown\">&quot;Hello World!&lt;br&gt;&quot;</span>;<br />\r\n<span style=\"color:mediumblue\">EcHo</span>&nbsp;<span style=\"color:brown\">&quot;Hello World!&lt;br&gt;&quot;</span>;<br />\r\n<span style=\"color:red\">?&gt;</span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n<span style=\"background-color:rgb(255, 255, 204)\">Note:&nbsp;However; all variable names are case-sensitive!</span></div>\r\n\r\n<p>Look at the example below; only the first statement will display the value of the&nbsp;<code>$color</code>&nbsp;variable! This is because&nbsp;<code>$color</code>,&nbsp;<code>$COLOR</code>, and&nbsp;<code>$coLOR</code>&nbsp;are treated as three different variables:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code htmlHigh notranslate\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:red\">&lt;?php</span><br />\r\n$color =&nbsp;<span style=\"color:brown\">&quot;red&quot;</span>;<br />\r\n<span style=\"color:mediumblue\">echo</span>&nbsp;<span style=\"color:brown\">&quot;My car is &quot;</span>&nbsp;. $color .&nbsp;<span style=\"color:brown\">&quot;&lt;br&gt;&quot;</span>;<br />\r\n<span style=\"color:mediumblue\">echo</span>&nbsp;<span style=\"color:brown\">&quot;My house is &quot;</span>&nbsp;. $COLOR .&nbsp;<span style=\"color:brown\">&quot;&lt;br&gt;&quot;</span>;<br />\r\n<span style=\"color:mediumblue\">echo</span>&nbsp;<span style=\"color:brown\">&quot;My boat is &quot;</span>&nbsp;. $coLOR .&nbsp;<span style=\"color:brown\">&quot;&lt;br&gt;&quot;</span>;<br />\r\n<span style=\"color:red\">?&gt;</span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n', '2020-01-17 23:41:08', 'PHP'),
(39, 'HTML Tutorial', '<p>This HTML tutorial contains hundreds of HTML examples.</p>\r\n\r\n<p>With our online HTML editor, you can edit the HTML, and click on a button to view the result.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>head<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>title<span style=\"color:mediumblue\">&gt;</span></span>Page Title<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/title<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/head<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h1<span style=\"color:mediumblue\">&gt;</span></span>This is a Heading<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h1<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>p<span style=\"color:mediumblue\">&gt;</span></span>This is a paragraph.<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/p<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n', '2020-01-17 23:43:04', 'HTML'),
(40, 'HTML Basic Examples', '<h2>HTML Documents</h2>\r\n\r\n<p>All HTML documents must start with a document type declaration:&nbsp;<code>&lt;!DOCTYPE html&gt;</code>.</p>\r\n\r\n<p>The HTML document itself begins with&nbsp;<code>&lt;html&gt;</code>&nbsp;and ends with&nbsp;<code>&lt;/html&gt;</code>.</p>\r\n\r\n<p>The visible part of the HTML document is between&nbsp;<code>&lt;body&gt;</code>&nbsp;and&nbsp;<code>&lt;/body&gt;</code>.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>!DOCTYPE<span style=\"color:red\">&nbsp;html</span><span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>html<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h1<span style=\"color:mediumblue\">&gt;</span></span>My First Heading<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h1<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>p<span style=\"color:mediumblue\">&gt;</span></span>My first paragraph.<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/p<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/body<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/html<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n\r\n<hr />\r\n<h2>HTML Headings</h2>\r\n\r\n<p>HTML headings are defined with the&nbsp;<code>&lt;h1&gt;</code>&nbsp;to&nbsp;<code>&lt;h6&gt;</code>&nbsp;tags.</p>\r\n\r\n<p><code>&lt;h1&gt;</code>&nbsp;defines the most important heading.&nbsp;<code>&lt;h6&gt;</code>&nbsp;defines the least important heading:&nbsp;</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h1<span style=\"color:mediumblue\">&gt;</span></span>This is heading 1<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h1<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h2<span style=\"color:mediumblue\">&gt;</span></span>This is heading 2<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h2<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>h3<span style=\"color:mediumblue\">&gt;</span></span>This is heading 3<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/h3<span style=\"color:mediumblue\">&gt;</span></span><span style=\"color:rgb(51, 51, 51); font-family:sans-serif,arial,verdana,trebuchet ms; font-size:13px\">HTML Paragraphs</span></div>\r\n</div>\r\n\r\n<p>HTML paragraphs are defined with the&nbsp;<code>&lt;p&gt;</code>&nbsp;tag:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>p<span style=\"color:mediumblue\">&gt;</span></span>This is a paragraph.<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/p<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>p<span style=\"color:mediumblue\">&gt;</span></span>This is another paragraph.<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/p<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n\r\n<hr />\r\n<h2>HTML Links</h2>\r\n\r\n<p>HTML links are defined with the&nbsp;<code>&lt;a&gt;</code>&nbsp;tag:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>a<span style=\"color:red\">&nbsp;href<span style=\"color:mediumblue\">=&quot;https://www.w3schools.com&quot;</span></span><span style=\"color:mediumblue\">&gt;</span></span>This is a link<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/a<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n\r\n<p>The link&#39;s destination is specified in the&nbsp;<code>href</code>&nbsp;attribute.&nbsp;</p>\r\n\r\n<p>Attributes are used to provide additional information about HTML elements.</p>\r\n\r\n<p>You will learn more about attributes in a later chapter.</p>\r\n\r\n<hr />\r\n<h2>HTML Images</h2>\r\n\r\n<p>HTML images are defined with the&nbsp;<code>&lt;img&gt;</code>&nbsp;tag.</p>\r\n\r\n<p>The source file (<code>src</code>), alternative text (<code>alt</code>),&nbsp;<code>width</code>, and&nbsp;<code>height</code>&nbsp;are provided as attributes:</p>\r\n\r\n<h3>Example:</h3>\r\n\r\n<p><span style=\"color:mediumblue; font-family:consolas,courier new; font-size:15px\">&lt;</span><span style=\"color:rgb(165, 42, 42); font-family:consolas,courier new; font-size:15px\">img</span><span style=\"color:red; font-family:consolas,courier new; font-size:15px\">&nbsp;src<span style=\"color:mediumblue\">=&quot;w3schools.jpg&quot;</span>&nbsp;alt<span style=\"color:mediumblue\">=&quot;W3Schools.com&quot;</span>&nbsp;width<span style=\"color:mediumblue\">=&quot;104&quot;</span>&nbsp;height<span style=\"color:mediumblue\">=&quot;142&quot;</span></span><span style=\"color:mediumblue; font-family:consolas,courier new; font-size:15px\">&gt;</span></p>\r\n\r\n<hr />\r\n<h2>HTML Buttons</h2>\r\n\r\n<p>HTML buttons are defined with the&nbsp;<code>&lt;button&gt;</code>&nbsp;tag:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>button<span style=\"color:mediumblue\">&gt;</span></span>Click me<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/button<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n\r\n<hr />\r\n<h2>HTML Lists</h2>\r\n\r\n<p>HTML lists are defined with the&nbsp;<code>&lt;ul&gt;</code>&nbsp;(unordered/bullet list) or the&nbsp;<code>&lt;ol&gt;</code>&nbsp;(ordered/numbered list) tag, followed by&nbsp;<code>&lt;li&gt;</code>&nbsp;tags (list items):</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate htmlHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>ul<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>li<span style=\"color:mediumblue\">&gt;</span></span>Coffee<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/li<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>li<span style=\"color:mediumblue\">&gt;</span></span>Tea<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/li<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>li<span style=\"color:mediumblue\">&gt;</span></span>Milk<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/li<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/ul<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>ol<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>li<span style=\"color:mediumblue\">&gt;</span></span>Coffee<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/li<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>li<span style=\"color:mediumblue\">&gt;</span></span>Tea<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/li<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>li<span style=\"color:mediumblue\">&gt;</span></span>Milk<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/li<span style=\"color:mediumblue\">&gt;</span></span><br />\r\n<span style=\"color:brown\"><span style=\"color:mediumblue\">&lt;</span>/ol<span style=\"color:mediumblue\">&gt;</span></span></div>\r\n</div>\r\n', '2020-01-17 23:47:02', 'HTML'),
(41, 'CSS Tutorial', '<h4>This CSS tutorial contains hundreds of CSS examples.</h4>\r\n\r\n<h4>With our online editor, you can edit the CSS, and click on a button to view the result.</h4>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h4>CSS Example</h4>\r\n\r\n<div class=\"w3-code notranslate cssHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\">body&nbsp;<span style=\"color:black\">{</span><br />\r\n<span style=\"color:red\">&nbsp;&nbsp;background-color<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;lightblue<span style=\"color:black\">;</span></span></span><br />\r\n<span style=\"color:black\">}</span><br />\r\n<br />\r\nh1&nbsp;<span style=\"color:black\">{</span><br />\r\n<span style=\"color:red\">&nbsp;&nbsp;color<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;white<span style=\"color:black\">;</span></span><br />\r\n&nbsp;&nbsp;text-align<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;center<span style=\"color:black\">;</span></span></span><br />\r\n<span style=\"color:black\">}</span><br />\r\n<br />\r\np&nbsp;<span style=\"color:black\">{</span><br />\r\n<span style=\"color:red\">&nbsp; font-family<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;verdana<span style=\"color:black\">;</span></span><br />\r\n&nbsp;&nbsp;font-size<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;20px<span style=\"color:black\">;</span></span></span><br />\r\n<span style=\"color:black\">}</span></span></div>\r\n</div>\r\n', '2020-01-17 23:48:45', 'CSS'),
(42, 'CSS Syntax', '<h2>CSS Syntax</h2>\r\n\r\n<p>A CSS rule-set consists of a selector and a declaration block:</p>\r\n\r\n<p><img alt=\"CSS selector\" class=\"w3-image\" src=\"https://www.w3schools.com/css/selector.gif\" style=\"border-style:none; box-sizing:inherit; height:auto; max-width:100%; vertical-align:middle\" /></p>\r\n\r\n<p>The selector points to the HTML element you want to style.</p>\r\n\r\n<p>The declaration block contains one or more declarations separated by semicolons.</p>\r\n\r\n<p>Each declaration includes a CSS property name and a value, separated by a colon.</p>\r\n\r\n<p>A CSS declaration always ends with a semicolon, and declaration blocks are surrounded by curly braces.&nbsp;</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<p>In this example all &lt;p&gt; elements will be center-aligned, with a red text color:</p>\r\n\r\n<div class=\"w3-code notranslate cssHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\">p&nbsp;<span style=\"color:black\">{</span><br />\r\n<span style=\"color:red\">&nbsp;&nbsp;color<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;red<span style=\"color:black\">;</span></span><br />\r\n&nbsp;&nbsp;text-align<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;center<span style=\"color:black\">;</span></span></span><br />\r\n<span style=\"color:black\">}</span></span></div>\r\n</div>\r\n\r\n<hr />\r\n<h2>CSS Comments</h2>\r\n\r\n<p>Comments are used to explain the code, and may help when you edit the source code at a later date.</p>\r\n\r\n<p>Comments are ignored by browsers.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<p>A CSS comment starts with /* and ends with */. Comments can also span multiple lines:&nbsp;</p>\r\n\r\n<div class=\"w3-code notranslate cssHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:brown\">p&nbsp;<span style=\"color:black\">{</span><br />\r\n<span style=\"color:red\">&nbsp; color<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;red<span style=\"color:black\">;</span></span><br />\r\n&nbsp;&nbsp;<span style=\"color:green\">/* This is a single-line comment */</span><br />\r\n&nbsp;&nbsp;text-align<span style=\"color:mediumblue\"><span style=\"color:black\">:</span>&nbsp;center<span style=\"color:black\">;</span></span></span><br />\r\n<span style=\"color:black\">}</span><br />\r\n<br />\r\n<span style=\"color:green\">/* This is<br />\r\na multi-line<br />\r\ncomment */</span></span></div>\r\n</div>\r\n', '2020-01-17 23:50:04', 'CSS'),
(43, 'Python Tutorial', '<h2>Learning by Examples</h2>\r\n\r\n<p>Our &quot;Show Python&quot; tool makes it easy to learn Python, it shows both the code and the result.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Hello, World!&quot;</span>)</div>\r\n</div>\r\n', '2020-01-17 23:51:16', 'PYTHON'),
(44, 'Python Syntax', '<div style=\"box-sizing: inherit; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; position: relative;\">\r\n<h2>Execute Python Syntax</h2>\r\n\r\n<p>As we learned in the previous page, Python syntax can be executed by writing directly in the Command Line:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; box-shadow: none !important; overflow: hidden;\">\r\n<div class=\"w3-code notranslate w3-black\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; background-color: rgb(0, 0, 0) !important; margin-top: 16px !important; margin-bottom: 16px !important; color: rgb(255, 255, 255) !important;\">&gt;&gt;&gt; print(&quot;Hello, World!&quot;)<br />\r\nHello, World!</div>\r\n</div>\r\n\r\n<p>Or by creating a python file on the server, using the .py file extension, and running it in the Command Line:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; box-shadow: none !important; overflow: hidden;\">\r\n<div class=\"w3-code notranslate w3-black\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; background-color: rgb(0, 0, 0) !important; margin-top: 16px !important; margin-bottom: 16px !important; color: rgb(255, 255, 255) !important;\">C:Users<em>Your Name</em>&gt;python myfile.py</div>\r\n</div>\r\n</div>\r\n\r\n<hr />\r\n<h2>Python Indentation</h2>\r\n\r\n<p>Indentation refers to the spaces at the beginning of a code line.</p>\r\n\r\n<p>Where in other programming languages the indentation in code is for readability only, the indentation in Python is very important.</p>\r\n\r\n<p>Python uses indentation to indicate a block of code.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; overflow: hidden; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:mediumblue\">if</span>&nbsp;<span style=\"color:red\">5</span>&nbsp;&gt;&nbsp;<span style=\"color:red\">2</span>:<br />\r\n&nbsp;&nbsp;<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Five is greater than two!&quot;</span>)</div>\r\n</div>\r\n\r\n<p>Python will give you an error if you skip the indentation:</p>\r\n\r\n<div class=\"w3-example w3-pale-red\" style=\"box-sizing: inherit; color: rgb(0, 0, 0); background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; overflow: hidden; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<p>Syntax Error:</p>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:mediumblue\">if</span>&nbsp;<span style=\"color:red\">5</span>&nbsp;&gt;&nbsp;<span style=\"color:red\">2</span>:<br />\r\n<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Five is greater than two!&quot;</span>)</div>\r\n</div>\r\n\r\n<p>The number of spaces is up to you as a programmer, but it has to be at least one.</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; overflow: hidden; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:mediumblue\">if</span>&nbsp;<span style=\"color:red\">5</span>&nbsp;&gt;&nbsp;<span style=\"color:red\">2</span>:<br />\r\n&nbsp;<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Five is greater than two!&quot;</span>)&nbsp;<br />\r\n<span style=\"color:mediumblue\">if</span>&nbsp;<span style=\"color:red\">5</span>&nbsp;&gt;&nbsp;<span style=\"color:red\">2</span>:<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Five is greater than two!&quot;</span>)&nbsp;</div>\r\n</div>\r\n\r\n<p>You have to use the same number of spaces in the same block of code, otherwise Python will give you an error:</p>\r\n\r\n<div class=\"w3-example w3-pale-red\" style=\"box-sizing: inherit; color: rgb(0, 0, 0); background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; overflow: hidden; font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<p>Syntax Error:</p>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:mediumblue\">if</span>&nbsp;<span style=\"color:red\">5</span>&nbsp;&gt;&nbsp;<span style=\"color:red\">2</span>:<br />\r\n&nbsp;<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Five is greater than two!&quot;</span>)<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Five is greater than two!&quot;</span>)</div>\r\n</div>\r\n\r\n<hr />\r\n<h2>Python Variables</h2>\r\n\r\n<p>In Python, variables are created when you assign a value to it:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; overflow: hidden; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<p>Variables in Python:</p>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\">x =&nbsp;<span style=\"color:red\">5</span><br />\r\ny =&nbsp;<span style=\"color:brown\">&quot;Hello, World!&quot;</span></div>\r\n</div>\r\n\r\n<p>Python has no command for declaring a variable.</p>\r\n\r\n<p>You will learn more about variables in the&nbsp;<a href=\"https://www.w3schools.com/python/python_variables.asp\" style=\"box-sizing: inherit; background-color: transparent; color: inherit;\">Python Variables</a>&nbsp;chapter.</p>\r\n\r\n<hr />\r\n<h2>Comments</h2>\r\n\r\n<p>Python has commenting capability for the purpose of in-code documentation.</p>\r\n\r\n<p>Comments start with a #, and Python will render the rest of the line as a comment:</p>\r\n\r\n<div class=\"w3-example\" style=\"box-sizing: inherit; background-color: rgb(241, 241, 241); padding: 8px 20px; margin: 24px -20px; overflow: hidden; color: rgb(0, 0, 0); font-family: Verdana, sans-serif; font-size: 15px; box-shadow: none !important;\">\r\n<h3>Example</h3>\r\n\r\n<p>Comments in Python:</p>\r\n\r\n<div class=\"w3-code notranslate pythonHigh\" style=\"box-sizing: inherit; font-family: Consolas, &quot;courier new&quot;; width: auto; background-color: rgb(255, 255, 255); padding: 8px 12px; border-left: 4px solid rgb(76, 175, 80); overflow-wrap: break-word; margin-top: 16px !important; margin-bottom: 16px !important;\"><span style=\"color:green\">#This is a comment.</span><br />\r\n<span style=\"color:mediumblue\">print</span>(<span style=\"color:brown\">&quot;Hello, World!&quot;</span>)</div>\r\n</div>\r\n', '2020-01-17 23:52:57', 'PYTHON');

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
(2, '<pre>\r\n<span style=\"color:rgb(0, 136, 0)\">What does PHP stand for?</span></pre>\r\n', 'Personal Home Page', 'Personal Hypertext Processor', 'Private Home Page', 'PHP: Hypertext Preprocessor', '4'),
(3, '<p>asd</p>\r\n', 'asd', 'asd', 'asd', 'asd', '3'),
(4, '<p>asd</p>\r\n', '45', '45', '45', '452', '2'),
(5, '<p>asd</p>\r\n', 'gfgf', 'fg', 'fg', 'fg', '2'),
(6, '<p>Who are you?</p>\r\n', '1', '2', '3', '4', '2');

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
(11, 'Foysal', NULL, 'Ahmed', 'foysal51', '123456');

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
(1, 'foysal', 'rahman', '1996-12-31', 'Male', 'foysal', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Ashfaq', 'Ahmed', '1996-01-31', 'Male', 'ashfaq', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adm_Id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_Id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_Id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`post_Id`);

--
-- Indexes for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  ADD PRIMARY KEY (`quiz_Id`);

--
-- Indexes for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  ADD PRIMARY KEY (`teacher_Id`);

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
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `post_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tbl_quiz`
--
ALTER TABLE `tbl_quiz`
  MODIFY `quiz_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_teacher`
--
ALTER TABLE `tbl_teacher`
  MODIFY `teacher_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
