-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 07:28 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world_charity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2021-05-21 18:49:32');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusquery`
--

CREATE TABLE `tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusquery`
--

INSERT INTO `tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Nahida', 'nnahidasultana559@gmail.com', '01799926765', 'If any problem please contact me.', '2021-05-22 09:41:35', NULL),
(2, 'Rehana', 'rehana@gmail.com', '01762268237', 'I\'m available.', '2021-05-22 09:43:17', NULL),
(3, 'Noor', 'noor@gmail.com', '01754657589', 'If anything wrong please email me.', '2021-05-22 09:48:01', NULL),
(4, 'karim', 'karim@gmail.com', '01749979798', 'If any problem urgent call only.', '2021-05-22 09:49:57', NULL),
(11, 'Sakib', 'sakib@gmail.com', '01754657589', 'I\'m available', '2021-05-27 17:24:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldonars`
--

CREATE TABLE `tbldonars` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `CardNumber` varchar(30) DEFAULT NULL,
  `CardExpiryDate` varchar(30) DEFAULT NULL,
  `Amount` decimal(14,2) DEFAULT NULL,
  `Event` varchar(200) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbldonars`
--

INSERT INTO `tbldonars` (`id`, `FullName`, `MobileNumber`, `EmailId`, `CardNumber`, `CardExpiryDate`, `Amount`, `Event`, `Address`, `Message`, `PostingDate`, `status`) VALUES
(1, 'Nahida', '01711111111', 'n@gmail.com', '1122-3423-2342-2234', '01/01', '1000.00', 'Palestine Ambassy', 'Shahjahanpur', 'May Allah bless Palestine', '2021-04-30 20:14:16', 1),
(2, 'Sultana', '01711111111', 'n@gmail.com', '1122-3423-2342-2234', '01/01', '2000.00', 'Palestine Ambassy', 'Shahjahanpur', 'May Allah bless Palestine', '2021-04-30 20:14:16', 1),
(3, 'Nahida Sultana', '01711111111', 'n@gmail.com', '1122-3423-2342-2234', '01/01', '3000.00', 'Palestine Ambassy', 'Shahjahanpur', 'May Allah bless Palestine', '2021-04-30 20:14:16', 1),
(4, 'Nahida Sultana Nishu', '01711111111', 'n@gmail.com', '1122-3423-2342-2234', '01/01', '4000.00', 'Palestine Ambassy', 'Shahjahanpur', 'May Allah bless Palestine', '2021-04-30 20:14:16', 1),
(5, 'Nahida Nishu', '01711111111', 'n@gmail.com', '1122-3423-2342-2234', '01/01', '5000.00', 'Palestine Ambassy', 'Shahjahanpur', 'May Allah bless Palestine', '2021-04-30 20:14:16', 1),
(7, 'Noor', '01748980808', 'noor@gmail.com', '1243087656453926', '05/05', '5000.00', 'Dhaka Ahsania Mission', 'dhaka', ' ', '2021-05-27 17:17:35', 1),
(8, 'Rehana', '01762268237', 'rehana@gmail.com', '1264567834562341', '04/04', '3000.00', 'Palestine Ambassy', 'Dhaka', ' May Allah bless.', '2021-05-28 09:54:45', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblevents`
--

CREATE TABLE `tblevents` (
  `id` int(11) NOT NULL,
  `Event` varchar(200) DEFAULT NULL,
  `EventDescription` varchar(500) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblevents`
--

INSERT INTO `tblevents` (`id`, `Event`, `EventDescription`, `PostingDate`) VALUES
(1, 'Palestine Ambassy', 'Donate money for Palestine needs for foods and medicines.The embassy has shared some mobile phone numbers on its official Facebook page for those who are willing to send financial support. Together we will inspire and enable people to respond rapidly to disasters and fight poverty through our Islamic values, expertise and global reach.', '2021-05-21 20:33:50'),
(2, 'Rohingya Camp', 'As a charity working directly to help the Rohingya, our aid comes in many different forms, including food, clean water, shelter and accommodation, medicine, health supplies, and hygiene and sanitation. This allows us to help those most in need as much as possible, identifying what these vulnerable people need to survive and doing everything we can to provide it. Even a small donation can go a long way towards supporting these vulnerable people in need.', '2021-05-21 20:34:00'),
(3, 'Bidyananda', 'Bidyanondo is an educational voluntary organization that originated from Bangladesh. Our vision is to spread humanity, kindness and bring social justice. We believe that good brings only more good and everyone deserves to live in a peaceful environment. Our mission is to provide education, nourishment, mental and physical support to the distressed and to make people self sufficient by permanently rehabilitating them.', '2021-05-21 20:34:05'),
(4, 'Anjuman Mufidul Islam', 'To develop, implement and sustain specific projects, activities, programs, and services. necessary to duly implement the basic ideals and objectives of Anjuman. To continue, strengthen and broaden the ongoing welfare and social-service programmes and activities of the Anjuman. To provide relief and assistance to orphans, widows, poor, disabled, handicapped, and destitute. To margin develop and integrate these people as patriotic, productive & responsible citizens.', '2021-05-21 20:34:10'),
(5, 'Ek Takay Ahar', 'Our mission is to help both the materially poor and the poor in spirit.The materially poor are served by local school, clergy and lay leaders who have been empowered and supplied with goods by Food For The Poor.The poor in spirit are renewed by their relationship with and service to the poor through our direct our team of teaching, encouragement and prayer.Ultimately, we seek to bring both benefactors and recipients to a closer union with our Lord.', '2021-05-21 20:34:13'),
(6, 'Dhaka Ahsania Mission', 'We will focus on the most vulnerable people who do not have the capacity to self recover. Feeding God\'s Children Programs Empower Children to Improve Long-Term Health. Food Rescue. Save Wasted Food. Volunteer Opportunities. Meals for Hungry Children.', '2021-05-21 20:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Five reasons to donate to your charities of choice.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">1)&nbsp; Giving to charity makes you feel good.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">2)&nbsp; Giving to charity strengthens personal values.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">3)&nbsp; Giving is more impactful than ever.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">4) Giving to charity introduces your children to the importance of generosity.</span><br></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">5)&nbsp;Giving to charity encourages friends and family to do the same.</span></div><div style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\"><br></span></div>'),
(3, 'About Us ', 'aboutus', '										<span style=\"color: rgb(32, 33, 34); font-family: sans-serif;\">The practice of charity means the voluntary giving of help to those in need, as a humanitarian act. There are a number of philosophies about charity, often associated with religion. Effective altruism is the use of evidence and reasoning to determine the most effective ways to help others. Charitable giving is the act of giving money, goods, or time to the unfortunate, either directly or by means of a charitable trust or other worthy cause. A charitable organization&nbsp;is an organization whose primary objectives are philanthropy and social well-being. A charitable&nbsp;organization is a kind of institution or a business that falls under the category of NPO or non-profit organization. It can be run privately as well as publicly. This type of organization is often called a foundation or charity. It can be based on educational, religious, or even based on public interest activities. There are different kinds of activities of charitable organizations. Some of them are those who offer relief to the needy people who are in distress, poverty, or underprivileged.</span><br>\r\n										');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldonars`
--
ALTER TABLE `tbldonars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblevents`
--
ALTER TABLE `tblevents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcontactusquery`
--
ALTER TABLE `tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbldonars`
--
ALTER TABLE `tbldonars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblevents`
--
ALTER TABLE `tblevents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
