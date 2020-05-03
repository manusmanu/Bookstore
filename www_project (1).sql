-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 15, 2020 at 06:18 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `www_project`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `pub_list` (IN `pid` INT)  NO SQL
select publisher_name, book_title, book_price from publisher p, books b
where p.publisherid=b.publisherid and p.publisherid=pid$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `pass` varchar(40) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `pass`) VALUES
('shivu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `book_title` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_author` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `book_image` varchar(40) COLLATE latin1_general_ci DEFAULT NULL,
  `book_descr` text COLLATE latin1_general_ci,
  `book_price` decimal(6,2) NOT NULL,
  `publisherid` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_isbn`, `book_title`, `book_author`, `book_image`, `book_descr`, `book_price`, `publisherid`) VALUES
('1001-1-0044-2', 'Social media hacking', 'Shekar Mishra', 'hack2.jpg', 'Social media hacking course in this course i will teach you the methods by that you can hack any social media accounts facebook,instagram,whats app,twitter and many more this course best to track your gf,friends and childrens and also to prevent your account from hackers.', '310.00', 8),
('123-23-5-34', 'Data Structures and applications', 'A.M Padma Reddy', 'DAA.jpg', 'This book includes various concepts of Data Structures such as stacks, queues, linked lists, trees, graphs, and searching and sorting techniques in a systematic manner which makes the study of data structures much easier. A new approach to learning the programming skills is discussed in detail with the help of appropriate examples. The detailed design aspects for developing a program in a systematic way using simple language along with programs have been covered so that any student can understand the subject very well.', '80.00', 1),
('334-0-433-2', 'Ethical Hacking for Beginners', 'Shekar Mishra', 'hack1.jpg', 'Ethical hackers are in high demand. As we become more and more reliant on computer technology, black-hat hackers are working to profit from exploiting those technologies to steal personal information, so this is a perfect ethical hacking book for beginners in 2019, we will learn basic of hacking and how to protect yourself from hackers complete step by step guide with screenshots.\r\n\r\nChapters we are going to cover in this book:\r\n\r\n1. Introduction\r\n2. Cyber Security threats\r\n3. Skills required to become an ethical hacker\r\n4. Top 10 hacking tool of 2019.\r\n5. Social engineering & countermeasure\r\n6. .Cryptography\r\n7. Cracking password\r\n8. Trojan virtues & worms\r\n9. Apr poising\r\n10. Most common web security venerability\r\n11. Understanding a web server\r\n12. Hacking a web server\r\n13. Hacking a website\r\n14. Dos attack\r\n15. SQL injection\r\n16. Top 10 Venerable website to legally practice your skills.\r\n17. Top 10 bug bounty programs\r\n18.. Top 10 penetration testing tools 2019', '280.00', 8),
('978-0-321-94786-4', 'Learning Mobile App Development', 'Jakob Iversen, Michael Eierman', 'mobile_app.jpg', 'Now, one book can help you master mobile app development with both market-leading platforms: Apple\'s iOS and Google\'s Android. Perfect for both students and professionals, Learning Mobile App Development is the only tutorial with complete parallel coverage of both iOS and Android. With this guide, you can master either platform, or both - and gain a deeper understanding of the issues associated with developing mobile apps.\r\n\r\nYou\'ll develop an actual working app on both iOS and Android, mastering the entire mobile app development lifecycle, from planning through licensing and distribution.\r\n\r\nEach tutorial in this book has been carefully designed to support readers with widely varying backgrounds and has been extensively tested in live developer training courses. If you\'re new to iOS, you\'ll also find an easy, practical introduction to Objective-C, Apple\'s native language.', '250.00', 6),
('978-0-7303-1484-4', 'Doing Good By Doing Good', 'Peter Baines', 'doing_good.jpg', 'Doing Good by Doing Good shows companies how to improve the bottom line by implementing an engaging, authentic, and business-enhancing program that helps staff and business thrive. International CSR consultant Peter Baines draws upon lessons learnt from the challenges faced in his career as a police officer, forensic investigator, and founder of Hands Across the Water to describe the Australian CSR landscape, and the factors that make up a program that benefits everyone involved. Case studies illustrate the real effect of CSR on both business and society, with clear guidance toward maximizing involvement, engaging all employees, and improving the bottom line. The case studies draw out the companies that are focusing on creating shared value in meeting the challenges of society whilst at the same time bringing strong economic returns.\r\n\r\nConsumers are now expecting that big businesses with ever-increasing profits give back to the community from which those profits arise. At the same time, shareholders are demanding their share and are happy to see dividends soar. Getting this right is a balancing act, and Doing Good by Doing Good helps companies delineate a plan of action for getting it done.', '310.00', 2),
('978-1-118-94924-5', 'Programmable Logic Controllers', 'Dag H. Hanssen', 'logic_program.jpg', 'Widely used across industrial and manufacturing automation, Programmable Logic Controllers (PLCs) perform a broad range of electromechanical tasks with multiple input and output arrangements, designed specifically to cope in severe environmental conditions such as automotive and chemical plants.Programmable Logic Controllers: A Practical Approach using CoDeSys is a hands-on guide to rapidly gain proficiency in the development and operation of PLCs based on the IEC 61131-3 standard. Using the freely-available* software tool CoDeSys, which is widely used in industrial design automation projects, the author takes a highly practical approach to PLC design using real-world examples. The design tool, CoDeSys, also features a built in simulator / soft PLC enabling the reader to undertake exercises and test the examples.', '170.00', 2),
('978-1-1180-2669-4', 'Professional JavaScript for Web Developers, 3rd Edition', 'Nicholas C. Zakas', 'pro_js.jpg', 'If you want to achieve JavaScript\'s full potential, it is critical to understand its nature, history, and limitations. To that end, this updated version of the bestseller by veteran author and JavaScript guru Nicholas C. Zakas covers JavaScript from its very beginning to the present-day incarnations including the DOM, Ajax, and HTML5. Zakas shows you how to extend this powerful language to meet specific needs and create dynamic user interfaces for the web that blur the line between desktop and internet. By the end of the book, you\'ll have a strong understanding of the significant advances in web development as they relate to JavaScript so that you can apply them to your next website.', '450.00', 7),
('978-1-44937-019-0', 'Learning Web App Development', 'Semmy Purewal', 'web_app_dev.jpg', 'Grasp the fundamentals of web application development by building a simple database-backed app from scratch, using HTML, JavaScript, and other open source tools. Through hands-on tutorials, this practical guide shows inexperienced web app developers how to create a user interface, write a server, build client-server communication, and use a cloud-based service to deploy the application.\r\n\r\nEach chapter includes practice problems, full examples, and mental models of the development workflow. Ideal for a college-level course, this book helps you get started with web app development by providing you with a solid grounding in the process.', '135.00', 3),
('978-1-44937-075-6', 'Beautiful JavaScript', 'Anton Kovalyov', 'beauty_js.jpg', 'JavaScript is arguably the most polarizing and misunderstood programming language in the world. Many have attempted to replace it as the language of the Web, but JavaScript has survived, evolved, and thrived. Why did a language created in such hurry succeed where others failed?\r\n\r\nThis guide gives you a rare glimpse into JavaScript from people intimately familiar with it. Chapters contributed by domain experts such as Jacob Thornton, Ariya Hidayat, and Sara Chipps show what they love about their favorite language - whether it\'s turning the most feared features into useful tools, or how JavaScript can be used for self-expression.', '285.00', 3),
('978-1-4571-0402-2', 'Professional ASP.NET 4 in C# and VB', 'Scott Hanselman', 'pro_asp4.jpg', 'ASP.NET is about making you as productive as possible when building fast and secure web applications. Each release of ASP.NET gets better and removes a lot of the tedious code that you previously needed to put in place, making common ASP.NET tasks easier. With this book, an unparalleled team of authors walks you through the full breadth of ASP.NET and the new and exciting capabilities of ASP.NET 4. The authors also show you how to maximize the abundance of features that ASP.NET offers to make your development process smoother and more efficient.', '325.00', 7),
('978-1-484216-40-8', 'Android Studio New Media Fundamentals', 'Wallace Jackson', 'android_studio.jpg', 'Android Studio New Media Fundamentals is a new media primer covering concepts central to multimedia production for Android including digital imagery, digital audio, digital video, digital illustration and 3D, using open source software packages such as GIMP, Audacity, Blender, and Inkscape. These professional software packages are used for this book because they are free for commercial use. The book builds on the foundational concepts of raster, vector, and waveform (audio), and gets more advanced as chapters progress, covering what new media assets are best for use with Android Studio as well as key factors regarding the data footprint optimization work process and why new media content and new media data optimization is so important.', '200.00', 4),
('978-2-4456-443', 'Data Structures', 'A.M Padma Reddy', 'ds.jpeg', 'This book includes various concepts of Data Structures such as stacks, queues, linked lists, trees, graphs, and searching and sorting techniques in a systematic manner which makes the study of data structures much easier. A new approach to learning the programming skills is discussed in detail with the help of appropriate examples. The detailed design aspects for developing a program in a systematic way using simple language along with programs have been covered so that any student can understand the subject very well.', '500.00', 1),
('978-2-765-334', 'Finite Automata and Formal Languages', 'A.M Padma Reddy', 'automata.jpg', 'This book, Finite Automata and Formal Languages (A Simple Approach), includes various concepts pertaining to theoretical foundation of Computer Science, such as Finite Automata (DFA and NFA), Regular expressions and regular languages, Properties of regular languages, Context-free grammar, Properties of context-free grammar, Pushdown Automata, and Turing machines in a systematic manner which makes the study of this subject much easier and interesting as well. A new problem-solving approach is used, which helps to tackle more number of problems. The book is written using simple language and more number of applications and problems have been covered so that any student can understand the subject very well.', '400.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customerid` int(10) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE latin1_general_ci NOT NULL,
  `address` varchar(80) COLLATE latin1_general_ci NOT NULL,
  `city` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `zip_code` varchar(10) COLLATE latin1_general_ci NOT NULL,
  `country` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customerid`, `name`, `address`, `city`, `zip_code`, `country`) VALUES
(3, 'test', '123 test', '12121', 'test', 'test'),
(4, 'Manu S', 'Hebbal', 'Banglore', '560024', 'India'),
(5, 'SHivu', 'asdfgh', 'sxdcfg', '5678', 'asdf'),
(6, 'Ohan', 'Mysore', 'Karnataka', '560011', 'India'),
(7, 'sharan', 'sdfghj', 'vbnm', '23456', 'india'),
(8, 'R M SHIVADARSHANA', 'sdfgh', 'fvghjk', '234567', 'dfghjk'),
(9, 'suraj', 'nsa ks ', 'hubli', '55652', 'india'),
(10, 'kir', '4th pahse', 'agra', '56744', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `customerid` int(10) UNSIGNED NOT NULL,
  `amount` decimal(6,2) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ship_name` char(60) COLLATE latin1_general_ci NOT NULL,
  `ship_address` char(80) COLLATE latin1_general_ci NOT NULL,
  `ship_city` char(30) COLLATE latin1_general_ci NOT NULL,
  `ship_zip_code` char(10) COLLATE latin1_general_ci NOT NULL,
  `ship_country` char(20) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderid`, `customerid`, `amount`, `date`, `ship_name`, `ship_address`, `ship_city`, `ship_zip_code`, `ship_country`) VALUES
(5, 4, '1240.00', '2019-10-05 03:26:40', 'Manu S', 'Hebbal', 'Banglore', '560024', 'India'),
(6, 4, '1300.00', '2019-10-07 03:05:03', 'Manu S', 'Hebbal', 'Banglore', '560024', 'India'),
(7, 5, '2710.00', '2019-10-10 01:50:53', 'SHivu', 'asdfgh', 'sxdcfg', '5678', 'asdf'),
(8, 6, '2150.00', '2019-10-30 21:19:18', 'Ohan', 'Mysore', 'Karnataka', '560011', 'India'),
(9, 7, '1220.00', '2019-11-07 22:45:09', 'sharan', 'sdfghj', 'vbnm', '23456', 'india'),
(10, 4, '2220.00', '2019-11-15 05:02:49', 'Manu S', 'Hebbal', 'Banglore', '560024', 'India'),
(11, 8, '800.00', '2019-11-22 01:07:50', 'R M SHIVADARSHANA', 'sdfgh', 'fvghjk', '234567', 'dfghjk'),
(12, 9, '160.00', '2019-11-28 07:29:12', 'suraj', 'nsa ks', 'hubli', '55652', 'india'),
(13, 10, '325.00', '2019-12-02 04:56:15', 'kir', '4th pahse', 'agra', '56744', 'india');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `orderid` int(10) UNSIGNED NOT NULL,
  `book_isbn` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `item_price` decimal(6,2) NOT NULL,
  `quantity` tinyint(3) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`orderid`, `book_isbn`, `item_price`, `quantity`) VALUES
(1, '978-1-118-94924-5', '20.00', 1),
(1, '978-1-44937-019-0', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(2, '978-1-118-94924-5', '20.00', 1),
(2, '978-1-44937-019-0', '20.00', 1),
(2, '978-1-49192-706-9', '20.00', 1),
(3, '978-0-321-94786-4', '20.00', 1),
(1, '978-1-49192-706-9', '20.00', 1),
(5, '1121', '200.00', 6),
(5, '978-1-44937-075-6', '20.00', 2),
(5, '978-1-4571-0402-2', '325.00', 4),
(7, '978-0-7303-1484-4', '310.00', 1),
(7, '978-2-765-334', '400.00', 6),
(8, '978-1-4571-0402-2', '325.00', 2),
(8, '978-2-4456-443', '500.00', 3),
(9, '978-1-484216-40-8', '200.00', 3),
(9, '978-0-7303-1484-4', '310.00', 2),
(5, '978-2-765-334', '400.00', 4),
(5, '978-0-7303-1484-4', '310.00', 2),
(11, '978-2-765-334', '400.00', 2),
(12, '123-23-5-34', '80.00', 2),
(13, '978-1-4571-0402-2', '325.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `publisher`
--

CREATE TABLE `publisher` (
  `publisherid` int(10) UNSIGNED NOT NULL,
  `publisher_name` varchar(60) COLLATE latin1_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `publisher`
--

INSERT INTO `publisher` (`publisherid`, `publisher_name`) VALUES
(1, 'A.M Padma Reddy'),
(2, 'Wiley'),
(3, 'O\'Reilly Media'),
(4, 'Apress'),
(5, 'Packt Publishing'),
(6, 'Addison-Wesley'),
(7, 'Wrox'),
(8, 'Shekar Mishra');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`name`,`pass`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_isbn`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderid`);

--
-- Indexes for table `publisher`
--
ALTER TABLE `publisher`
  ADD PRIMARY KEY (`publisherid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customerid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `publisher`
--
ALTER TABLE `publisher`
  MODIFY `publisherid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
