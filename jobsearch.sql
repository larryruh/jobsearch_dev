-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: May 03, 2019 at 03:37 PM
-- Server version: 5.7.23
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobsearch`
--

-- --------------------------------------------------------

--
-- Table structure for table `companies_import`
--

CREATE TABLE `companies_import` (
  `companies_import_id` int(11) NOT NULL,
  `company` varchar(45) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `relationship_notes` varchar(255) DEFAULT NULL,
  `last_jobs_check` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `companies_import`
--

INSERT INTO `companies_import` (`companies_import_id`, `company`, `location`, `contact`, `email`, `phone`, `relationship_notes`, `last_jobs_check`) VALUES
(1, 'BCBS', 'Omaha, NE', 'Mary Kyle', NULL, NULL, 'Interviewed, Waiting for Right Position', '11/5/18 - Nothing'),
(2, 'HDR', 'Omaha, NE', 'Kim Lachendro', NULL, NULL, 'Interviewed, Waiting for Right Position', '11/5/18 - Nothing'),
(3, 'CSG', 'Omaha, NE', 'Martha Johnson', NULL, NULL, 'Interviewed, Waiting for Right Position', '11/5/18 - Nothing'),
(4, 'Unum', 'Chattanooga, TN', 'Dave McMahon', NULL, NULL, 'VP operations in Chatanooga. ', NULL),
(5, 'Unum', 'Chattanooga, TN', 'Kevin McMahon', 'KMcMahon@teksystems.com', NULL, 'TEK Systems Unum Rep', NULL),
(6, 'AAA', 'Multiple', 'Catherine Maitland', NULL, NULL, 'Connected on LI', '10/23/18 - Nothing'),
(7, 'Chirotouch', 'Las Vegas, NV', 'Cortney Wesh', NULL, NULL, 'Interviewed for App Dev Mgr', '10/23/18 - Nothing'),
(8, 'Cetera Financial Group', NULL, 'Farah Zargar', NULL, NULL, 'Connected on LI', 'All in CA, MN, IL'),
(9, 'Cetera Financial Group', NULL, 'Molly Fair', NULL, NULL, 'Connected on LI', 'All in CA, MN, IL'),
(10, 'CITI', 'Multiple', 'Daisy Walters', NULL, NULL, 'No Contact Yet', 'https://jobs.citi.com/job/irving/application-development-manager/287/9203461'),
(11, 'Comercia', NULL, NULL, NULL, NULL, 'No Response from Emails', NULL),
(12, 'Credit Suisse', 'Raleigh, NC, Multiple', 'Purwai Chaubey', NULL, NULL, 'Chatted at Career Fair', NULL),
(13, 'State Farm', 'Multiple', 'Carla Vasquez', NULL, NULL, 'Connected on LI', NULL),
(14, 'SunTrust', 'Atlanta, GA', 'Steve Tharayil', NULL, NULL, 'Chatted at Career Fair', NULL),
(15, 'Total Systems Service Inc (Tsys)', 'Columbus, GA', 'Bridget Rizzo', NULL, NULL, 'Connected on LI', NULL),
(16, 'Total Systems Service Inc (Tsys)', 'Columbus, GA', 'Billy Jacchia', NULL, NULL, 'Connected on LI', NULL),
(17, 'Total Systems Service Inc (Tsys)', 'Columbus, GA', 'Tracie Ennis', NULL, NULL, 'Connected on LI', NULL),
(18, 'Western Union', 'Denver, CO', 'Jennifer Tran', NULL, NULL, 'Connected on LI', NULL),
(19, 'Lincoln Financial - Other than Omaha', 'Multiple', NULL, NULL, NULL, NULL, '11/5/18 - Nothing'),
(20, 'Symetra', NULL, 'Kevin Shin', NULL, NULL, 'LOMA GSC', NULL),
(21, 'Navy Federal Credit Union', NULL, 'Will Ussher III', NULL, NULL, 'Connected on LI', '11/14/18 - Nothing'),
(22, 'Election Systems and Software (ESS)', 'Omaha, NE', 'Jon White', 'jon.white@essvote.com', NULL, 'Connected on LI', '10/23/18 - Nothing'),
(23, 'TD Ameritrade', 'Omaha, NE', 'Bill Keil', 'bill.keil@tdameritrade.com', 'T 402 574 6604 | M 402 880 4868 ', NULL, '10/23/18 - Nothing'),
(24, 'Gallup', 'Omaha, NE', 'Jodi Kennedy', 'Jodi_Kennedy@gallup.com', NULL, NULL, '11/14/18 - Nothing'),
(25, 'First National Bank', 'Omaha, NE', NULL, NULL, NULL, NULL, '11/14/18 - Nothing'),
(26, 'Pacific Life', 'Omaha, NE', NULL, NULL, NULL, NULL, '11/14/18 - Nothing'),
(27, 'Con Agra', 'Omaha, NE', NULL, NULL, NULL, NULL, '11/14/18 - Nothing'),
(28, 'West Corp', 'Omaha, NE', 'Colin Lamb', NULL, NULL, NULL, NULL),
(29, 'West Corp', 'Omaha, NE', 'Kelly Risley', NULL, NULL, NULL, NULL),
(30, 'National Indemnity', 'Omaha, NE', NULL, NULL, NULL, NULL, NULL),
(31, 'Southwest Gas', 'Las Vegas, NV', 'Crystal Ellis', 'Crystal.Ellis@swgas.com', '702.876.7275', 'Interviewed for App Dev Mgr', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`) VALUES
(1, '237 Next '),
(2, 'ACI Worldwide'),
(3, 'Ainsworth Game Technology'),
(4, 'Allstate'),
(5, 'Amazon.com'),
(6, 'Ameritas'),
(7, 'Apex Consulting'),
(8, 'Apex Informatics'),
(9, 'AppleOne Employment Services'),
(10, 'AppsForte Inc'),
(11, 'Ascend Learning'),
(12, 'Atlassian'),
(13, 'Aureaus Group'),
(14, 'AXA Financial'),
(15, 'Bank of the West'),
(16, 'BCBS'),
(17, 'Blue Cross '),
(18, 'Boats Group'),
(19, 'Boats.com'),
(20, 'BuilderTrend'),
(21, 'Career Experts'),
(22, 'Catch Intelligence'),
(23, 'Chewy'),
(24, 'Chirotech'),
(25, 'CivicPlus'),
(26, 'Comdata'),
(27, 'Consultis'),
(28, 'Cornerstone onDemand'),
(29, 'Cox Automotive'),
(30, 'CPSI'),
(31, 'Creative Workforce Solutions'),
(32, 'Creighton University'),
(33, 'CSG'),
(34, 'Delta Dental'),
(35, 'Digipulse'),
(36, 'Digital Product Owner'),
(37, 'DMSI Software'),
(38, 'DXC Technology'),
(39, 'EA'),
(40, 'Eastridge Workforce Solutions'),
(41, 'eMerging'),
(42, 'Federal Reserve Bank of KC'),
(43, 'First Data'),
(44, 'First Data Corporation'),
(45, 'FIS'),
(46, 'Fiserv'),
(47, 'Gallup'),
(48, 'Gentis Solutions - Kroger'),
(49, 'Glatfelter Insurance Group'),
(50, 'GPAC'),
(51, 'Hard Rock Hotels and Casinos'),
(52, 'Harris Health Systems'),
(53, 'Harris Software Solutions'),
(54, 'HDR'),
(55, 'Headfarmer'),
(56, 'HealthAxis Group'),
(57, 'Inflection'),
(58, 'Information Technology Group'),
(59, 'Jabil'),
(60, 'Jerry Pate Turf and Irrigation Systems'),
(61, 'JM Family Enterprises'),
(62, 'Judge Group (First Data)'),
(63, 'Kansas City Southern Railroad'),
(64, 'Kronos'),
(65, 'KSU'),
(66, 'LFG'),
(67, 'LinkedIn'),
(68, 'LovelySkin.com'),
(69, 'LV Water District'),
(70, 'Maantic, Inc'),
(71, 'MedImpact Healthcare Systems'),
(72, 'MGM Resorts International'),
(73, 'Milan Laser Hair Removal'),
(74, 'Modis'),
(75, 'Mutual Of Omaha Bank'),
(76, 'National Indemnity'),
(77, 'Navy Federal Credit Union'),
(78, 'Nelnet'),
(79, 'New York Life'),
(80, 'NEXUS IT Group - KC Reserve bank'),
(81, 'NIC inc'),
(82, 'NTT Data/ TxDOT'),
(83, 'OPPD'),
(84, 'Optum'),
(85, 'OSLA Resources'),
(86, 'Pacific Life'),
(87, 'Pheonix Staff'),
(88, 'Phoenix Staff - Info Armor'),
(89, 'PODS'),
(90, 'Polaris Alpha'),
(91, 'Professional Alternatives'),
(92, 'ProKarma'),
(93, 'PromiseShip (Boys town)'),
(94, 'QA Analyst'),
(95, 'Raymond James'),
(96, 'Raytheon'),
(97, 'Resorts World'),
(98, 'Revature'),
(99, 'Robert Half'),
(100, 'ScoreVision'),
(101, 'Securities America'),
(102, 'Sidmans'),
(103, 'Smithfield Foods'),
(104, 'SNI Companies'),
(105, 'Society Insurance'),
(106, 'Sojern'),
(107, 'Southwest Gas'),
(108, 'Spectrum'),
(109, 'Stanley Black & Decker'),
(110, 'Stanton Optical'),
(111, 'Sun View Software'),
(112, 'Synergistic IT'),
(113, 'Talbridge Corporation'),
(114, 'TalentBridge'),
(115, 'Toshiba'),
(116, 'Travelers Insurance'),
(117, 'UNUM'),
(118, 'USAA'),
(119, 'Vaco Technologies'),
(120, 'vBeyond'),
(121, 'Verint-Systems'),
(122, 'Verizon'),
(123, 'Vlocity'),
(124, 'Walt Disney Company'),
(125, 'Webstaurant Store'),
(126, 'WellCare Health Plans'),
(127, 'West Corp'),
(128, 'West/Televox'),
(129, 'World Technologies');

-- --------------------------------------------------------

--
-- Table structure for table `company_watch`
--

CREATE TABLE `company_watch` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(30) NOT NULL,
  `contact` varchar(45) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_phone` int(255) NOT NULL,
  `relationship` varchar(255) NOT NULL,
  `last_jobs_check` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `company` varchar(60) DEFAULT NULL,
  `job_category` varchar(30) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(2) NOT NULL,
  `compatibility` double DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `date_applied` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `phone_screen` varchar(255) DEFAULT NULL,
  `first_interview` varchar(255) DEFAULT NULL,
  `second_interview` varchar(255) DEFAULT NULL,
  `offer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `company`, `job_category`, `job_title`, `city`, `state`, `compatibility`, `referred_by`, `contact`, `date_applied`, `status`, `phone_screen`, `first_interview`, `second_interview`, `offer`) VALUES
(1, 'Pacific Life', 'Manager', 'Manager, Application & Platform Services', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(2, 'PromiseShip (Boys town)', 'Manager', 'IT Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-06-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(3, 'BuilderTrend', 'Manager', 'Application Development Manager', 'Omaha, NE', 'NE', NULL, 'Indeed.com', NULL, '2018-06-25 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(4, 'HDR', 'Manager', 'IT Manager - Executive Support', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Colleen Schinker, Barb', '2018-06-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(5, 'CSG', 'Manager', 'Software Development Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', NULL, 'Closed', NULL, NULL, NULL, NULL),
(6, 'AppsForte Inc', 'Manager', 'Applications Development Manager (Oracle)', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-06-26 00:00:00', 'Closed - Reapplied 11/18/18', NULL, NULL, NULL, NULL),
(7, 'Catch Intelligence', 'Manager', 'Software Product Manager', 'Omaha, NE', 'NE', NULL, 'CareerLink', NULL, '2018-06-26 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(8, 'Creighton University', 'Manager', 'Product Manager- myHR', 'Omaha, NE', 'NE', NULL, 'CareerLink', 'Barb maybe', '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(9, 'Federal Reserve Bank of KC', 'Manager', 'Applications Development Manager', 'Omaha, NE', 'NE', NULL, 'Apex Systems', 'Austin Olsen', '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(10, 'BCBS', 'Manager', 'Application Development Manager (NO OPEN Positions)', 'Omaha, NE', 'NE', NULL, 'Steve Martin', 'Mary Kyle', '2018-06-27 00:00:00', 'Pending Open Position', NULL, NULL, NULL, NULL),
(11, 'First Data', 'Manager', 'Manager IT', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-07-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(12, 'CSG', 'Manager', 'Software Development Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(13, 'CSG', 'Developer', 'Systems Analyst Lead', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-07-14 00:00:00', 'Iinterviewed - Tom McGill - Rejected', NULL, NULL, NULL, NULL),
(14, 'Gallup', 'Manager', 'Technology Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, NULL, 'Interviewed HR process - ', NULL, NULL, NULL, NULL),
(15, 'LinkedIn', 'Manager', 'Manager 1, Product Technical Operations', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-07-27 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(16, 'National Indemnity', 'Manager', 'Senior Manager – Software Development', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-07-27 00:00:00', 'Closed - Reapplied 11/14/18', NULL, NULL, NULL, NULL),
(17, 'Securities America', 'Manager', 'Manager – Application Development', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(18, 'Aureaus Group', 'Manager', 'Software Development Manager', 'Omaha, NE', 'NE', NULL, 'Indeed.com', NULL, '2018-08-02 00:00:00', 'This was National Indemnity position', NULL, NULL, NULL, NULL),
(19, 'Fiserv', 'Manager', 'Software Development Program Manager, Advisory', 'Omaha, NE', 'NE', NULL, 'Email Invitation', 'Shally Steckerl', '2018-08-16 00:00:00', 'On Hold Indefinitely', NULL, NULL, NULL, NULL),
(20, 'HDR', 'Manager', 'Application Development Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Colleen Schinker', '2018-08-25 00:00:00', 'Interviewd - Mike Geppert (CIO) -Finalist- Rejected', NULL, NULL, NULL, NULL),
(21, 'NEXUS IT Group - KC Reserve bank', 'Manager', 'Software Development Manager', 'Omaha, NE', 'NE', NULL, 'Glassdoor.com', 'ashley@nexusITgroup.com', NULL, 'Federal Reserve Bank Position,', NULL, NULL, NULL, NULL),
(22, 'Information Technology Group', 'Manager', 'Technology Manager', 'Omaha, NE', 'NE', NULL, 'Jobnetwork.com/Dice.com', NULL, '2018-09-21 00:00:00', 'Federal Reserve Bank Position.', NULL, NULL, NULL, NULL),
(23, 'CSG', 'Manager', 'Customer Delivery Manager', 'Omaha, NE', 'NE', NULL, 'CSGI.com', NULL, '2018-10-10 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(24, 'CSG', 'Manager', 'Project Manager (Delivery)', 'Omaha, NE', 'NE', NULL, 'CSGI.com', NULL, '2018-10-10 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(25, 'LFG', 'Manager', 'Application Development Manager (Claims)', 'Omaha, NE', 'NE', NULL, 'LFG.com', NULL, '2018-10-24 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(26, 'LFG', 'Developer', 'Systems Analyst', 'Omaha, NE', 'NE', NULL, 'LFG.com', NULL, '2018-11-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(27, 'Modis', 'BA', 'Business Analyst (Bluecard project)', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Modis', '2018-11-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(28, 'First Data', 'Manager', 'Manager, IT', 'Omaha, NE', 'NE', NULL, 'Indeed.', NULL, '2018-11-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(29, 'ProKarma', 'PM', 'Technical Scrum Master', 'Omaha, NE', 'NE', NULL, 'Glassdoor.com', NULL, '2018-11-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(30, 'First Data', 'Developer', 'Sr. Application Analyst', 'Omaha, NE', 'NE', NULL, 'Indeed.com', NULL, '2018-11-18 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(31, 'West Corp', 'Manager', 'Information Services Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Colin Lamb /Matt Vandergriff', '2018-11-27 00:00:00', 'Internal Recruiter Interview - Passed to Hiring Mgr. - 11/27/18 - On Site Interview 12/11/18 - Told I was to move on but left hanging', NULL, NULL, NULL, NULL),
(32, 'Milan Laser Hair Removal', 'Manager', 'IT Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-11-29 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(33, 'Nelnet', 'Manager', 'Implementation Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Lisa Meyer', '2018-12-17 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(34, 'CSG ', 'Manager', 'Software Development Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Martha Johnson', '2018-12-18 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(35, 'OPPD', 'Manager', 'Director of Product Delivery', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2018-12-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(36, 'Pacific Life', 'QA', 'Software Development Engineer in Test', 'Omaha, NE', 'NE', NULL, 'Pacific Life Website', NULL, '2019-01-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(37, 'DMSI Software', 'QA', 'QA Analyst - CRM', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Staff Aug, nobody', '2019-01-02 00:00:00', 'Interviewed 1/23 - Logic test and interview 2/6 - Passed on me', NULL, NULL, NULL, NULL),
(38, 'ACI Worldwide', 'QA', 'Quality Assurance Engineer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-01-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(39, 'Ameritas', 'Manager', 'Director of Application Development', 'Lincoln, NE', 'NE', NULL, 'Linda Coe', 'Linda Coe', '2018-12-27 00:00:00', 'Interview with David Voelker (VP-IT) 1/8', NULL, NULL, NULL, NULL),
(40, 'Apex Informatics', 'QA', 'Automation QA Engineer', 'Omaha, NE', 'NE', NULL, 'Dice.com', NULL, '2019-01-27 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(41, 'Sojern', 'QA', 'QA Analyst', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-01-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(42, 'Bank of the West', 'QA', 'QA Engineer II', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Kyle Soares', '2019-02-01 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(43, 'Inflection', 'QA', 'QA Engineer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-02-07 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(44, 'Gallup', 'QA', 'QA Automation Engineer', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Jodi Kennedy', '2019-02-07 00:00:00', 'Internal Recruiter Interview -2/13/19', NULL, NULL, NULL, NULL),
(45, 'Ameritas', 'Manager', 'Application Development Manager', 'Lincoln, NE', 'NE', NULL, 'Linda Coe', 'Linda Coe', '2019-02-11 00:00:00', 'Interview with Karim ? Dir/IT - Looking for more technical candidates', NULL, NULL, NULL, NULL),
(46, 'Blue Cross ', 'QA', 'Test Principle', 'Omaha, NE', 'NE', NULL, 'BCBS.com', 'Mary Kyle', '2019-02-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(47, 'ScoreVision', 'QA', 'Quality Assurance Engineer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-02-20 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(48, 'HDR', 'Manager', 'ERP Application Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Kim LaChendro', '2019-02-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(49, 'eMerging', 'QA', 'QA Automation Engineer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(50, 'LovelySkin.com', 'Developer', 'Javascript Developer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(51, 'Gallup', 'Developer', 'Junior Java Developer', 'Omaha, NE', 'NE', NULL, 'Linked In', 'Jodi Kennedy', '2019-03-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(52, 'OPPD', 'QA', 'Quality Assurance Engineer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(53, 'Digipulse', 'PM', 'Project Coordinator', 'Omaha, NE', 'NE', NULL, 'Dice.com', NULL, '2019-03-18 00:00:00', 'Lincoln Financial position', NULL, NULL, NULL, NULL),
(54, 'National Indemnity', 'Developer', 'Automation and Database Programmer', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(55, 'National Indemnity', 'Manager', 'Information Services Manager', 'Omaha, NE', 'NE', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(56, 'Allstate', 'Manager', 'Software Development Manager', 'Lincoln, NE', 'NE', NULL, 'GreatInsuranceJobs.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(57, 'Judge Group (First Data)', 'QA', 'Senior QA Analsyt', 'Omaha, NE', 'NE', NULL, 'the Judge Group', 'Artesia Peluso', '2019-03-19 00:00:00', 'Submitted by Judge Group', NULL, NULL, NULL, NULL),
(76, 'AppleOne Employment Services', 'Manager', 'Software Development Manager', 'Tampa, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(77, 'WellCare Health Plans', 'Manager', 'Application Development - Manager', 'Tampa, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(78, 'Jabil', 'Manager', 'Regional IT Development Lead (Application Development & Programming)', 'St Petersburg, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(79, 'PODS', 'Manager', 'Manager - Business Analysis', 'Clearwater, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(80, 'PODS', 'Manager', 'Manager - Program Management', 'Clearwater, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(81, 'Career Experts', 'Manager', 'Development Manager', 'Tampa, FL', 'FL', NULL, 'Linked In', NULL, NULL, 'Closed', NULL, NULL, NULL, NULL),
(82, 'Maantic, Inc', 'Manager', 'Salesforce Application Development Manager', 'Tampa, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(83, 'Raymond James', 'Manager', 'Manager, Application Services', 'St Petersburg, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(84, 'Verizon', 'Manager', 'Senior Software Development Manager', 'Temple Terrace, FL', 'FL', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(85, 'EA', 'Manager', 'Development Manager', 'Orlando, FL', 'FL', NULL, 'Linked In', NULL, '2018-08-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(86, 'FIS', 'Manager', 'Development Manager Senior', 'St Petersburg, FL', 'FL', NULL, 'https://careers.peopleclick.com/careerscp/client_FISGlobal/external/jobDetails/jobDetail.html?jobPostId=129690&localeCode=en-us', NULL, NULL, 'Closed', NULL, NULL, NULL, NULL),
(87, 'Raymond James', 'Manager', 'Technology Manager', 'St Petersburg, FL', 'FL', NULL, 'Raymond James Website', NULL, '2018-10-24 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(88, 'Raymond James', 'Manager', 'Technology Development Manager', 'St Petersburg, FL', 'FL', NULL, 'Raymond James Website', NULL, '2018-10-24 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(89, 'Webstaurant Store', 'Manager', 'Software Engineering Manager', 'Tampa, FL', 'FL', NULL, 'Linked In', NULL, '2019-01-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(90, 'HealthAxis Group', 'QA', 'Software QA Analyst', 'Tampa, FL', 'FL', NULL, 'Careerbuilder.com', NULL, '2019-01-06 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(91, 'JM Family Enterprises', 'Manager', 'Application Delivery Manager', 'Deerfield Beach, FL', 'FL', NULL, 'Linked In', NULL, '2019-01-10 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(92, 'WellCare Health Plans', 'Manager', 'Application Development Manager', 'Tampa, FL', 'FL', NULL, 'Dice.com', NULL, '2019-02-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(93, 'New York Life', 'Manager', 'Technology Business Manager', 'Tampa, FL', 'FL', NULL, 'Linked In', NULL, '2019-02-23 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(94, 'Sun View Software', 'Developer', 'Entry Level Software Engineer', 'Tampa, FL', 'FL', NULL, 'glassdoor.com', NULL, '2019-03-15 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(95, 'Webstaurant Store', 'Developer', 'Entry Level Software Engineer', 'Tampa, FL', 'FL', NULL, 'glassdoor.com', NULL, '2019-03-15 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(96, 'AppleOne Employment Services', 'Manager', 'Software Development Manager', 'Houston, TX', 'TX', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(97, 'Harris Health Systems', 'Manager', 'Manager IT / Software Engineer - Web Solutions', 'Houston, TX', 'TX', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(98, 'Talbridge Corporation', 'Manager', 'POS development Manager', 'Houston, TX', 'TX', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(99, 'Fiserv', 'Manager', 'Manager, Software Development', 'Dallas, TX', 'TX', NULL, 'Linked In', NULL, '2018-09-20 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(100, 'Kronos', 'Product Owner', 'Product Owner', 'Houston, TX', 'TX', NULL, 'Stella', NULL, '2018-11-08 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(101, 'NTT Data/ TxDOT', 'Manager', 'Application Development Program Manager', 'Austin, TX', 'TX', 5, 'Insight Global', 'Leah Mitton', '2018-11-15 00:00:00', 'Tech Interview - 12/4/18 - Went Well - Not called for final round', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(102, 'Atlassian', 'Manager', 'Application Development Manager', 'Austin, TX', 'TX', NULL, 'Linked In', 'Dave Herkar', '2018-11-27 00:00:00', 'Closed - Passed to Hiring Mgr - 12/14/18', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(103, 'Raytheon', 'Developer', 'Devops Engineer', 'Dallas, TX', 'TX', NULL, 'Linked In', 'David Lopez', '2019-01-29 00:00:00', 'Submitted by David - Interview with Raytheon - 2/15 - Not a fit', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(104, 'USAA', 'Manager', 'Sr Manager, Information Technology', 'San Antonio, TX', 'TX', NULL, 'Linked In', 'Eddie Tigs', '2019-02-26 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(105, 'USAA', 'Manager', 'Engineering Manager', 'San Antonio, TX', 'TX', NULL, 'Linked In', 'Eddie Tigs', '2019-02-26 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(106, 'Harris Software Solutions', 'Developer', 'Customer Support Analyst', 'San Antonio, TX', 'TX', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(107, 'Optum', 'Manager', 'Product Manager, Applications', 'San Antonio, TX', 'TX', NULL, 'Optum Website', NULL, '2019-03-02 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(108, 'Sidmans', 'Manager', 'IT Delivery Manager', 'Austin, TX', 'TX', NULL, 'Dice.com', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(109, 'Cox Automotive', 'Manager', 'Manager, Software Engineering', 'Austin, TX', 'TX', NULL, 'Linked In', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(110, 'Amazon.com', 'Manager', 'Software Development Manager', 'Tempe, AZ', 'AZ', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(111, 'World Technologies', 'Manager', 'Application Development Manager', 'Glendale, AZ', 'AZ', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(112, 'MedImpact Healthcare Systems', 'Manager', 'Manager, Application Support', 'Tempe, AZ', 'AZ', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(113, 'Phoenix Staff - Info Armor', 'Manager', 'Application Development Manager', 'Scottsdale, AZ', 'AZ', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Interviewed  with Recruiter', NULL, NULL, NULL, NULL),
(114, 'Pheonix Staff', 'Manager', 'Development Manager', 'Scottsdale, AZ', 'AZ', NULL, 'Linked In', 'TJ', NULL, 'Closed', NULL, NULL, NULL, NULL),
(115, 'Pheonix Staff', 'Manager', 'Senior Software Development Manager', 'Scottsdale, AZ', 'AZ', NULL, 'Linked In', 'TJ', NULL, 'Closed', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(116, 'Mutual Of Omaha Bank', 'Manager', 'Application Development Manager', 'Phoenix, AZ', 'AZ', 4.5, 'Chris Campbell', 'Cory ?, Chris Campbell', '2018-10-12 00:00:00', 'CC referred - Closed', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(117, 'Headfarmer', 'Manager', 'Application Support Manager', 'Scottsdale, AZ', 'AZ', 4.5, 'Zip Recruiter', NULL, '2018-11-06 00:00:00', 'Closed', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(118, 'Chirotech', 'Manager', 'Senior Software Development Manager', 'Las Vegas, NV', 'NV', 3.5, 'Linked In', 'Courtney Wesh, Chirotech', NULL, 'Interviewed 9/21 - Weak on Cloud technology - everything else good. ', NULL, NULL, NULL, NULL),
(119, 'Pheonix Staff', 'Manager', 'Software Development Manager', 'Las Vegas, NV', 'NV', NULL, 'Linked In', 'Heather Otto', NULL, 'Abaandoned - Hands on .NET', NULL, NULL, NULL, NULL),
(120, 'Resorts World', 'BA', 'IT Business Analyst', 'Las Vegas, NV', 'NV', NULL, 'Linked In', NULL, '2018-11-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(121, 'Southwest Gas', 'Manager', 'Application Delivery Manager', 'Las Vegas, NV', 'NV', NULL, 'Linked In', NULL, '2019-01-11 00:00:00', 'Internal Phone Screening, 1/23/19 - Skype interview with VP - 2/27', '1/23/2019 12:00:00 AM', '2/27/2019 12:00:00 AM', NULL, 'Top 2'),
(122, 'Pheonix Staff', 'Manager', 'Systems Development Manager', 'Las Vegas, NV', 'NV', NULL, 'Linked In', NULL, '2019-01-27 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(123, 'MGM Resorts International', 'Manager', 'Application Product Manager', 'Las Vegas, NV', 'NV', NULL, 'Linked In', 'Myron Carter', '2019-02-26 00:00:00', 'Applied', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(124, 'Robert Half', 'QA', 'Automated QA Engineer', 'Las Vegas, NV', 'NV', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(125, 'Creative Workforce Solutions', 'QA', 'Quality Assurance Engineer', 'Las Vegas, NV', 'NV', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(126, 'Ainsworth Game Technology', 'QA', 'Technical Compliance Test Engineer', 'Las Vegas, NV', 'NV', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(127, 'Optum', 'Manager', 'Software Engineering Manager', 'Las Vegas, NV', 'NV', NULL, 'Optum Website', NULL, '2019-03-02 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(128, 'OSLA Resources', 'Developer', 'Engineering Data Analyst', 'Las Vegas, NV', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-05 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(129, 'Eastridge Workforce Solutions', 'QA', 'Quality Assurance Engineer', 'Las Vegas, NV', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-01 00:00:00', 'Applied', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(130, '237 Next ', 'Developer', 'Junior Software Developer', 'Las Vegas, NV', 'NV', NULL, 'Glassdoor.com', NULL, '2019-03-15 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(131, 'vBeyond', 'Developer', 'Software Engineer I', 'Las Vegas, NV', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(132, 'Professional Alternatives', 'QA', 'Quality Analyst III', 'Las Vegas, NV', 'NV', NULL, 'Monster.com', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(133, 'Synergistic IT', 'Developer', 'Entry Level Java Developer', 'Las Vegas, NV', 'NV', NULL, 'Dice.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(134, 'LV Water District', 'Developer', 'Associate Applications Developer', 'Las Vegas, NV', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(135, 'AXA Financial', 'Manager', 'Director, Application Development', 'Charlotte, NC', 'NC', NULL, 'Sara Rich', ' Sara Rich 315.883.5497', '2018-08-24 00:00:00', 'Interviewed and Rejected', NULL, NULL, NULL, NULL),
(136, 'Kansas City Southern Railroad', 'Manager', 'Application Dev and Support Mgr.', 'Kansas City, MO', 'MO', 3.5, 'Aureus Group - Linda A.', NULL, '2018-10-06 00:00:00', 'Interviewed - Skills Mismatch', NULL, NULL, NULL, NULL),
(137, 'UNUM', 'Product Owner', 'Absence Management Product Owner', 'Chattanooga, TN', 'TN', 3, 'Dave McMahon, Kevin McMahon', 'Kevin McMahon ', NULL, 'KM to Represent on 10/23/18 - Heard Nothing Back', NULL, NULL, NULL, NULL),
(138, 'UNUM', 'Manager', 'IT Manager, Digital Claims', 'Chattanooga, TN', 'TN', 4, 'Dave McMahon, Kevin McMahon', NULL, NULL, 'KM to Represent on 10/23/18 - Interviewed, lacking .NET Qualifications', NULL, NULL, NULL, NULL),
(139, 'UNUM', 'Manager', 'IT Manager, App Dev (Rep Comp)', 'Chattanooga, TN', 'TN', 4, 'Dave McMahon, Kevin McMahon', NULL, NULL, 'KM to Represent on 10/23/18 - Interviewed, lacking .NET Qualifications', NULL, NULL, NULL, NULL),
(140, 'Verint-Systems', 'Manager', 'Sr Product Support Mgr', 'Alpheretta, GA', 'GA', 2.5, 'Linked In', 'Sam Dadura', '2018-11-14 00:00:00', 'Closed', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(141, 'Polaris Alpha', 'Manager', 'Application Support Mgr', 'Colorado Springs, CO', 'CO', 3, 'Monster.com', NULL, '2018-11-13 00:00:00', 'Closed', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(142, 'Spectrum', 'Manager', 'Software Development Mgr', 'Charlotte, NC', 'NC', NULL, 'Stella', NULL, '2018-11-14 00:00:00', 'Applied - Reapplied 12/13/18', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(143, 'GPAC', 'Manager', 'MIS Manager', 'Sioux City, IA', 'IA', NULL, 'Linked In', NULL, '2018-11-17 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(144, 'Smithfield Foods', 'Manager', 'Application Development Manager', 'Kansas City, MO', 'MO', NULL, 'Linked In', NULL, '2018-11-18 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(145, 'West/Televox', 'Manager', 'Software Engineering Manager', 'Mobile, AL', 'AL', NULL, 'West Recruiter', 'Kelly Risely', '2018-11-21 00:00:00', 'Internal Recruiter interviewed - passed to Hiring Mgr - Closed', NULL, NULL, NULL, NULL),
(146, 'DXC Technology', 'QA', 'QA Engineer', 'New Orleans, LA', 'NE', NULL, 'DXC Recruiter ', 'Nijiama Smalls', NULL, 'interview with Hiring Manager - 1/8/19', NULL, NULL, NULL, NULL),
(147, 'Stanley Black & Decker', 'Manager', 'Delivery Lead', 'Atlanta, GA', 'GA', NULL, 'Linked In', 'Collin Stobart', '2019-11-16 00:00:00', 'Interview with Internal Recruiter - 1/17/19', NULL, NULL, NULL, NULL),
(148, 'Gentis Solutions - Kroger', 'Product Owner', 'Product Owner II', 'Charlotte, NC', 'NC', NULL, 'Email - Consulting group', 'Avanish Kaushik - 347-696-7726', '2019-02-12 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(149, 'Vaco Technologies', 'Developer', 'Software Developer', 'Memphis, TN', 'TN', NULL, 'Linked In', NULL, '2019-02-20 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(150, 'NIC inc', 'Manager', 'Manager of Enterprise Application Development', 'Olathe, KS', 'KS', NULL, 'Linked In', NULL, '2019-02-23 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(151, 'CivicPlus', 'QA', 'QA Automation Engineer', 'Manhattan, KS', 'KS', NULL, 'CivicPlus Website', 'Akash Abdida', '2019-02-21 00:00:00', 'interview with Hiring Manager - 2/25/19 Will consider for QA Analyst position', NULL, NULL, NULL, NULL),
(152, 'CPSI', 'QA', 'Quality Assurance Analyst', 'Mobile, AL', 'AL', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(153, 'Delta Dental', 'Manager', 'Manager, Application Development', 'Alpheretta, GA', 'GA', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', '3/6/2019 12:00:00 AM', NULL, NULL, NULL),
(154, 'Comdata', 'Manager', 'Application/Software Development Manager', 'Brentwood, TN', 'TN', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(155, 'Optum', 'Manager', 'Client Deliverry Manager', 'Franklin, TN', 'TN', NULL, 'Optum Website', NULL, '2019-03-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(156, 'KSU', 'Manager', 'Assistant Director of Systems', 'Manhattan, KS', 'KS', NULL, 'KSU Website', NULL, '2019-03-03 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(157, 'CivicPlus', 'Developer', 'Implementation Analyst', 'Manhattan, KS', 'KS', NULL, 'Indeed.com', NULL, '2019-03-03 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(158, 'Toshiba', 'Manager', 'Software Development Mgr', 'Durham, NC', 'NC', NULL, 'Linked In', NULL, '2019-03-06 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(159, 'Toshiba', 'Manager', 'Software Manager - Test', 'Durham, NC', 'NC', NULL, 'Linked In', NULL, '2019-03-06 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(160, 'Vlocity', 'Manager', 'Delivery Manager', 'Atlanta, GA', 'GA', NULL, 'Glassdoor.com', NULL, '2019-03-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(161, 'TalentBridge', 'Manager', 'Application Delivery Manager', 'Charlotte, NC', 'NC', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(162, 'Apex Consulting', 'Manager', 'Project Delivery Manager', 'Charlotte, NC', 'NC', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(163, 'Ascend Learning', 'Manager', 'Software Engineering Development Manager', 'Kansas City, MO', 'MO', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(164, 'Society Insurance', 'Manager', 'IT Delivery Manager', 'Fond Du Lac, WI', 'WI', NULL, 'Linked In', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(165, 'Travelers Insurance', 'Manager', 'IS Development Manager', 'Hartford, CT', 'CT', NULL, 'Greatinsurancejobs.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(166, 'Glatfelter Insurance Group', 'Manager', 'Applications Manager', 'York, PA', 'PA', NULL, 'Greatinsurancejobs.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(167, 'KSU', 'Developer', 'Application Developer', 'Manhattan, KS', 'KS', NULL, 'KSU Website', NULL, '2019-03-21 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(168, 'First Data Corporation', 'Manager', 'Manager IT / Application Development Manager', 'Coral Springs, FL', 'FL', NULL, 'Linked In', NULL, '2018-07-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(169, 'Boats.com', 'Manager', 'Software Development Manager', 'Miami, FL', 'FL', NULL, 'Linked In', NULL, '2018-06-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(170, 'Boats Group', 'Manager', 'Software Development Manager', 'Miami, FL', 'FL', NULL, 'Linked In', NULL, '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(171, 'Hard Rock Hotels and Casinos', 'Manager', 'Manager, IT SW Development', 'Hollywood, FL', 'FL', NULL, 'Linked In', NULL, '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(172, 'Consultis', 'Manager', 'Software Development Manager', 'Hollywood, FL', 'FL', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(173, 'Chewy', 'Manager', 'Software Development Manager', 'Dania Beach, FL', 'FL', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(174, 'SNI Companies', 'Manager', 'Quick Start - Application Development Manager', 'Oakland Park, FL', 'FL', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(175, 'Team Focus Insurance Group', 'QA', 'QA Analyst', 'Sunrise, FL', 'FL', NULL, 'GreatInsuranceJobs.com', NULL, '2018-10-23 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(176, 'Digital Product Owner', 'Product Owner', 'Assurant', 'Miami, FL', 'FL', NULL, 'GreatInsuranceJobs.com', NULL, '2018-10-23 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(177, 'Stanton Optical', 'Manager', 'Director, Application Development', 'Palm Beach, FL', 'FL', NULL, 'Linked In', NULL, '2019-02-01 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(178, 'Verizon', 'Developer', 'Junior Full Stack Developer', 'Temple Terrace, FL', 'FL', NULL, 'Glassdoor.com', NULL, '2019-03-14 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(179, 'Jerry Pate Turf and Irrigation Systems', 'Manager', 'Information Technology Manager', 'Pensacola, FL', 'FL', NULL, 'Dice.com', NULL, '2018-12-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(180, 'Revature', 'Developer', 'Software Developer', 'Pensacola, FL', 'FL', NULL, 'Linked In ', NULL, '2019-02-20 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(181, 'Walt Disney Company', 'Manager', 'Manager, Technology', 'Orlando, FL', 'FL', NULL, 'Linked In ', NULL, '2019-02-22 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(182, 'Navy Federal Credit Union', 'Manager', 'Project Manager I,II or III', 'Pensacola, FL', 'FL', NULL, 'company website', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(183, 'Cornerstone onDemand', 'Manager', 'Delivery Assurance Manager', 'Tallahassee, FL', 'FL', NULL, 'businessworkforce.com', NULL, '2019-03-20 00:00:00', 'Applied', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `job_import`
--

CREATE TABLE `job_import` (
  `job_id` int(11) NOT NULL,
  `Company` varchar(60) DEFAULT NULL,
  `Job` varchar(255) DEFAULT NULL,
  `Location` varchar(30) DEFAULT NULL,
  `Compatibility` varchar(255) DEFAULT NULL,
  `Referred_By` varchar(255) DEFAULT NULL,
  `Contact` varchar(45) DEFAULT NULL,
  `Date_Applied` datetime DEFAULT NULL,
  `Status` varchar(255) DEFAULT NULL,
  `Screen` varchar(255) DEFAULT NULL,
  `1st_Interview` varchar(255) DEFAULT NULL,
  `2nd_interview` varchar(255) DEFAULT NULL,
  `Offer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job_import`
--

INSERT INTO `job_import` (`job_id`, `Company`, `Job`, `Location`, `Compatibility`, `Referred_By`, `Contact`, `Date_Applied`, `Status`, `Screen`, `1st_Interview`, `2nd_interview`, `Offer`) VALUES
(1, 'Pacific Life', 'Manager, Application & Platform Services', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(2, 'PromiseShip (Boys town)', 'IT Manager', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-06-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(3, 'BuilderTrend', 'Application Development Manager', 'Omaha, NE', NULL, 'Indeed.com', NULL, '2018-06-25 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(4, 'HDR', 'IT Manager - Executive Support', 'Omaha, NE', NULL, 'Linked In', 'Colleen Schinker, Barb', '2018-06-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(5, 'CSG', 'Software Development Manager', 'Omaha, NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', NULL, 'Closed', NULL, NULL, NULL, NULL),
(6, 'AppsForte Inc', 'Applications Development Manager (Oracle)', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-06-26 00:00:00', 'Closed - Reapplied 11/18/18', NULL, NULL, NULL, NULL),
(7, 'Catch Intelligence', 'Software Product Manager', 'Omaha, NE', NULL, 'CareerLink', NULL, '2018-06-26 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(8, 'Creighton University', 'Product Manager- myHR', 'Omaha, NE', NULL, 'CareerLink', 'Barb maybe', '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(9, 'Federal Reserve Bank of KC', 'Applications Development Manager', 'Omaha, NE', NULL, 'Apex Systems', 'Austin Olsen', '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(10, 'BCBS', 'Application Development Manager (NO OPEN Positions)', 'Omaha, NE', NULL, 'Steve Martin', 'Mary Kyle', '2018-06-27 00:00:00', 'Pending Open Position', NULL, NULL, NULL, NULL),
(11, 'First Data', 'Manager IT', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-07-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(12, 'CSG', 'Software Development Manager', 'Omaha, NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(13, 'CSG', 'Systems Analyst Lead', 'Omaha, NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-07-14 00:00:00', 'Iinterviewed - Tom McGill - Rejected', NULL, NULL, NULL, NULL),
(14, 'Gallup', 'Technology Manager', 'Omaha, NE', NULL, 'Linked In', NULL, NULL, 'Interviewed HR process - ', NULL, NULL, NULL, NULL),
(15, 'LinkedIn', 'Manager 1, Product Technical Operations', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-07-27 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(16, 'National Indemnity', 'Senior Manager – Software Development', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-07-27 00:00:00', 'Closed - Reapplied 11/14/18', NULL, NULL, NULL, NULL),
(17, 'Securities America', 'Manager – Application Development', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(18, 'Aureaus Group', 'Software Development Manager', 'Omaha, NE', NULL, 'Indeed.com', NULL, '2018-08-02 00:00:00', 'This was National Indemnity position', NULL, NULL, NULL, NULL),
(19, 'Fiserv', 'Software Development Program Manager, Advisory', 'Omaha, NE', NULL, 'Email Invitation', 'Shally Steckerl', '2018-08-16 00:00:00', 'On Hold Indefinitely', NULL, NULL, NULL, NULL),
(20, 'HDR', 'Application Development Manager', 'Omaha, NE', NULL, 'Linked In', 'Colleen Schinker', '2018-08-25 00:00:00', 'Interviewd - Mike Geppert (CIO) -Finalist- Rejected', NULL, NULL, NULL, NULL),
(21, 'NEXUS IT Group - KC Reserve bank', 'Software Development Manager', 'Omaha, NE', NULL, 'Glassdoor.com', 'ashley@nexusITgroup.com', NULL, 'Federal Reserve Bank Position,', NULL, NULL, NULL, NULL),
(22, 'Information Technology Group', 'Technology Manager', 'Omaha, NE', NULL, 'Jobnetwork.com/Dice.com', NULL, '2018-09-21 00:00:00', 'Federal Reserve Bank Position.', NULL, NULL, NULL, NULL),
(23, 'CSG', 'Customer Delivery Manager', 'Omaha, NE', NULL, 'CSGI.com', NULL, '2018-10-10 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(24, 'CSG', 'Project Manager (Delivery)', 'Omaha, NE', NULL, 'CSGI.com', NULL, '2018-10-10 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(25, 'LFG', 'Application Development Manager (Claims)', 'Omaha, NE', NULL, 'LFG.com', NULL, '2018-10-24 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(26, 'LFG', 'Systems Analyst', 'Omaha, NE', NULL, 'LFG.com', NULL, '2018-11-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(27, 'Modis', 'Business Analyst (Bluecard project)', 'Omaha, NE', NULL, 'Linked In', 'Modis', '2018-11-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(28, 'First Data', 'Manager, IT', 'Omaha, NE', NULL, 'Indeed.', NULL, '2018-11-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(29, 'ProKarma', 'Technical Scrum Master', 'Omaha, NE', NULL, 'Glassdoor.com', NULL, '2018-11-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(30, 'First Data', 'Sr. Application Analyst', 'Omaha, NE', NULL, 'Indeed.com', NULL, '2018-11-18 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(31, 'West Corp', 'Information Services Manager', 'Omaha, NE', NULL, 'Linked In', 'Colin Lamb /Matt Vandergriff', '2018-11-27 00:00:00', 'Internal Recruiter Interview - Passed to Hiring Mgr. - 11/27/18 - On Site Interview 12/11/18 - Told I was to move on but left hanging', NULL, NULL, NULL, NULL),
(32, 'Milan Laser Hair Removal', 'IT Manager', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-11-29 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(33, 'Nelnet', 'Implementation Manager', 'Omaha, NE', NULL, 'Linked In', 'Lisa Meyer', '2018-12-17 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(34, 'CSG ', 'Software Development Manager', 'Omaha, NE', NULL, 'Linked In', 'Martha Johnson', '2018-12-18 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(35, 'OPPD', 'Director of Product Delivery', 'Omaha, NE', NULL, 'Linked In', NULL, '2018-12-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(36, 'Pacific Life', 'Software Development Engineer in Test', 'Omaha, NE', NULL, 'Pacific Life Website', NULL, '2019-01-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(37, 'DMSI Software', 'QA Analyst - CRM', 'Omaha, NE', NULL, 'Linked In', 'Staff Aug, nobody', '2019-01-02 00:00:00', 'Interviewed 1/23 - Logic test and interview 2/6 - Passed on me', NULL, NULL, NULL, NULL),
(38, 'ACI Worldwide', 'Quality Assurance Engineer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-01-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(39, 'Ameritas', 'Director of Application Development', 'Lincoln, NE', NULL, 'Linda Coe', 'Linda Coe', '2018-12-27 00:00:00', 'Interview with David Voelker (VP-IT) 1/8', NULL, NULL, NULL, NULL),
(40, 'Apex Informatics', 'Automation QA Engineer', 'Omaha, NE', NULL, 'Dice.com', NULL, '2019-01-27 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(41, 'Sojern', 'QA Analyst', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-01-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(42, 'Bank of the West', 'QA Engineer II', 'Omaha, NE', NULL, 'Linked In', 'Kyle Soares', '2019-02-01 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(43, 'Inflection', 'QA Engineer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-02-07 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(44, 'Gallup', 'QA Automation Engineer', 'Omaha, NE', NULL, 'Linked In', 'Jodi Kennedy', '2019-02-07 00:00:00', 'Internal Recruiter Interview -2/13/19', NULL, NULL, NULL, NULL),
(45, 'Ameritas', 'Application Development Manager', 'Lincoln, NE', NULL, 'Linda Coe', 'Linda Coe', '2019-02-11 00:00:00', 'Interview with Karim ? Dir/IT - Looking for more technical candidates', NULL, NULL, NULL, NULL),
(46, 'Blue Cross ', 'Test Principle', 'Omaha, NE', NULL, 'BCBS.com', 'Mary Kyle', '2019-02-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(47, 'ScoreVision', 'Quality Assurance Engineer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-02-20 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(48, 'HDR', 'ERP Application Manager', 'Omaha, NE', NULL, 'Linked In', 'Kim LaChendro', '2019-02-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(49, 'eMerging', 'QA Automation Engineer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(50, 'LovelySkin.com', 'Javascript Developer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(51, 'Gallup', 'Junior Java Developer', 'Omaha, NE', NULL, 'Linked In', 'Jodi Kennedy', '2019-03-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(52, 'OPPD', 'Quality Assurance Engineer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(53, 'Digipulse', 'Project Coordinator', 'Omaha, NE', NULL, 'Dice.com', NULL, '2019-03-18 00:00:00', 'Lincoln Financial position', NULL, NULL, NULL, NULL),
(54, 'National Indemnity', 'Automation and Database Programmer', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(55, 'National Indemnity', 'Information Services Manager', 'Omaha, NE', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(56, 'Allstate', 'Software Development Manager', 'Lincoln, NE', NULL, 'GreatInsuranceJobs.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(57, 'Judge Group (First Data)', 'Senior QA Analsyt', 'Omaha, NE', NULL, 'the Judge Group', 'Artesia Peluso', '2019-03-19 00:00:00', 'Submitted by Judge Group', NULL, NULL, NULL, NULL),
(58, 'Manager IT / Application Development Manager', 'Coral Springs, FL', NULL, 'Linked In', NULL, '7/13/2018 12:00:00 AM', '2018-07-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(59, 'Software Development Manager', 'Miami, FL', NULL, 'Linked In', NULL, '6/28/2018 12:00:00 AM', '2018-06-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(60, 'Software Development Manager', 'Miami, FL', NULL, 'Linked In', NULL, '7/14/2018 12:00:00 AM', '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(61, 'Manager, IT SW Development', 'Hollywood, FL', NULL, 'Linked In', NULL, '7/14/2018 12:00:00 AM', '2018-07-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(62, 'Software Development Manager', 'Hollywood, FL', NULL, 'Linked In', NULL, '8/2/2018 12:00:00 AM', '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(63, 'Software Development Manager', 'Dania Beach, FL', NULL, 'Linked In', NULL, '8/2/2018 12:00:00 AM', '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(64, 'Quick Start - Application Development Manager', 'Oakland Park, FL', NULL, 'Dice.com', NULL, '8/2/2018 12:00:00 AM', '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(65, 'Team Focus Insurance Group', 'Sunrise, FL', NULL, 'GreatInsuranceJobs.com', NULL, '10/23/2018 12:00:00 AM', '2018-10-23 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(66, 'Assurant', 'Miami, FL', NULL, 'GreatInsuranceJobs.com', NULL, '10/23/2018 12:00:00 AM', '2018-10-23 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(67, 'Director, Application Development', 'Palm Beach, FL', NULL, 'Linked In', NULL, '2/1/2019 12:00:00 AM', '2019-02-01 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(68, 'Junior Full Stack Developer', 'Temple Terrace, FL', NULL, 'Glassdoor.com', NULL, '3/14/2019 12:00:00 AM', '2019-03-14 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(69, 'Information Technology Manager', 'Pensacola, FL', NULL, 'Dice.com', NULL, '12/13/2018 12:00:00 AM', '2018-12-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(70, 'Software Developer', 'Pensacola, FL', NULL, 'Linked In ', NULL, '2/20/2019 12:00:00 AM', '2019-02-20 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(71, 'Manager, Technology', 'Orlando, FL', NULL, 'Linked In ', NULL, '2/22/2019 12:00:00 AM', '2019-02-22 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(72, 'Project Manager I,II or III', 'Pensacola, FL', NULL, 'company website', NULL, '3/18/2019 12:00:00 AM', '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(73, 'Delivery Assurance Manager', 'Tallahassee, FL', NULL, 'businessworkforce.com', NULL, '3/20/2019 12:00:00 AM', '2019-03-20 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(76, 'AppleOne Employment Services', 'Software Development Manager', 'Tampa, FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(77, 'WellCare Health Plans', 'Application Development - Manager', 'Tampa, FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(78, 'Jabil', 'Regional IT Development Lead (Application Development & Programming)', 'St Petersburg, FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(79, 'PODS', 'Manager - Business Analysis', 'Clearwater, FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(80, 'PODS', 'Manager - Program Management', 'Clearwater, FL', NULL, 'Linked In', NULL, '2018-06-25 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(81, 'Career Experts', 'Development Manager', 'Tampa, FL', NULL, 'Linked In', NULL, NULL, 'Closed', NULL, NULL, NULL, NULL),
(82, 'Maantic, Inc', 'Salesforce Application Development Manager', 'Tampa, FL', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(83, 'Raymond James', 'Manager, Application Services', 'St Petersburg, FL', NULL, 'Linked In', NULL, '2018-06-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(84, 'Verizon', 'Senior Software Development Manager', 'Temple Terrace, FL', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(85, 'EA', 'Development Manager', 'Orlando, FL', NULL, 'Linked In', NULL, '2018-08-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(86, 'FIS', 'Development Manager Senior', 'St Petersburg, FL', NULL, 'https://careers.peopleclick.com/careerscp/client_FISGlobal/external/jobDetails/jobDetail.html?jobPostId=129690&localeCode=en-us', NULL, NULL, 'Closed', NULL, NULL, NULL, NULL),
(87, 'Raymond James', 'Technology Manager', 'St Petersburg, FL', NULL, 'Raymond James Website', NULL, '2018-10-24 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(88, 'Raymond James', 'Technology Development Manager', 'St Petersburg, FL', NULL, 'Raymond James Website', NULL, '2018-10-24 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(89, 'Webstaurant Store', 'Software Engineering Manager', 'Tampa, FL', NULL, 'Linked In', NULL, '2019-01-28 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(90, 'HealthAxis Group', 'Software QA Analyst', 'Tampa, FL', NULL, 'Careerbuilder.com', NULL, '2019-01-06 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(91, 'JM Family Enterprises', 'Application Delivery Manager', 'Deerfield Beach, FL', NULL, 'Linked In', NULL, '2019-01-10 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(92, 'WellCare Health Plans', 'Application Development Manager', 'Tampa, FL', NULL, 'Dice.com', NULL, '2019-02-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(93, 'New York Life', 'Technology Business Manager', 'Tampa, FL', NULL, 'Linked In', NULL, '2019-02-23 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(94, 'Sun View Software', 'Entry Level Software Engineer', 'Tampa, FL', NULL, 'glassdoor.com', NULL, '2019-03-15 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(95, 'Webstaurant Store', 'Entry Level Software Engineer', 'Tampa, FL', NULL, 'glassdoor.com', NULL, '2019-03-15 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(96, 'AppleOne Employment Services', 'Software Development Manager', 'Houston, TX', NULL, 'Linked In', NULL, '2018-06-22 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(97, 'Harris Health Systems', 'Manager IT / Software Engineer - Web Solutions', 'Houston, TX', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(98, 'Talbridge Corporation', 'POS development Manager', 'Houston, TX', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(99, 'Fiserv', 'Manager, Software Development', 'Dallas, TX', NULL, 'Linked In', NULL, '2018-09-20 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(100, 'Kronos', 'Product Owner', 'Houston, TX', NULL, 'Stella', NULL, '2018-11-08 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(101, 'NTT Data/ TxDOT', 'Application Development Program Manager', 'Austin, TX', '5', 'Insight Global', 'Leah Mitton', '2018-11-15 00:00:00', 'Tech Interview - 12/4/18 - Went Well - Not called for final round', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(102, 'Atlassian', 'Application Development Manager', 'Austin, TX', NULL, 'Linked In', 'Dave Herkar', '2018-11-27 00:00:00', 'Closed - Passed to Hiring Mgr - 12/14/18', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(103, 'Raytheon', 'Devops Engineer', 'Dallas, TX', NULL, 'Linked In', 'David Lopez', '2019-01-29 00:00:00', 'Submitted by David - Interview with Raytheon - 2/15 - Not a fit', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(104, 'USAA', 'Sr Manager, Information Technology', 'San Antonio, TX', NULL, 'Linked In', 'Eddie Tigs', '2019-02-26 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(105, 'USAA', 'Engineering Manager', 'San Antonio, TX', NULL, 'Linked In', 'Eddie Tigs', '2019-02-26 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(106, 'Harris Software Solutions', 'Customer Support Analyst', 'San Antonio, TX', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(107, 'Optum', 'Product Manager, Applications', 'San Antonio, TX', NULL, 'Optum Website', NULL, '2019-03-02 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(108, 'Sidmans', 'IT Delivery Manager', 'Austin, TX', NULL, 'Dice.com', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(109, 'Cox Automotive', 'Manager, Software Engineering', 'Austin, TX', NULL, 'Linked In', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(110, 'Amazon.com', 'Software Development Manager', 'Tempe, AZ', NULL, 'Linked In', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(111, 'World Technologies', 'Application Development Manager', 'Glendale, AZ', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(112, 'MedImpact Healthcare Systems', 'Manager, Application Support', 'Tempe, AZ', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(113, 'Phoenix Staff - Info Armor', 'Application Development Manager', 'Scottsdale, AZ', NULL, 'Dice.com', NULL, '2018-08-02 00:00:00', 'Interviewed  with Recruiter', NULL, NULL, NULL, NULL),
(114, 'Pheonix Staff', 'Development Manager', 'Scottsdale, AZ', NULL, 'Linked In', 'TJ', NULL, 'Closed', NULL, NULL, NULL, NULL),
(115, 'Pheonix Staff', 'Senior Software Development Manager', 'Scottsdale, AZ', NULL, 'Linked In', 'TJ', NULL, 'Closed', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(116, 'Mutual Of Omaha Bank', 'Application Development Manager', 'Phoenix, AZ', '4.5', 'Chris Campbell', 'Cory ?, Chris Campbell', '2018-10-12 00:00:00', 'CC referred - Closed', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(117, 'Headfarmer', 'Application Support Manager', 'Scottsdale, AZ', '4.5', 'Zip Recruiter', NULL, '2018-11-06 00:00:00', 'Closed', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(118, 'Chirotech', 'Senior Software Development Manager', 'Las Vegas, NV', '3.5', 'Linked In', 'Courtney Wesh, Chirotech', NULL, 'Interviewed 9/21 - Weak on Cloud technology - everything else good. ', NULL, NULL, NULL, NULL),
(119, 'Pheonix Staff', 'Software Development Manager', 'Las Vegas, NV', NULL, 'Linked In', 'Heather Otto', NULL, 'Abaandoned - Hands on .NET', NULL, NULL, NULL, NULL),
(120, 'Resorts World', 'IT Business Analyst', 'Las Vegas, NV', NULL, 'Linked In', NULL, '2018-11-13 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(121, 'Southwest Gas', 'Application Delivery Manager', 'Las Vegas, NV', NULL, 'Linked In', NULL, '2019-01-11 00:00:00', 'Internal Phone Screening, 1/23/19 - Skype interview with VP - 2/27', '1/23/2019 12:00:00 AM', '2/27/2019 12:00:00 AM', NULL, 'Top 2'),
(122, 'Pheonix Staff', 'Systems Development Manager', 'Las Vegas, NV', NULL, 'Linked In', NULL, '2019-01-27 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(123, 'MGM Resorts International', 'Application Product Manager', 'Las Vegas, NV', NULL, 'Linked In', 'Myron Carter', '2019-02-26 00:00:00', 'Applied', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(124, 'Robert Half', 'Automated QA Engineer', 'Las Vegas, NV', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(125, 'Creative Workforce Solutions', 'Quality Assurance Engineer', 'Las Vegas, NV', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(126, 'Ainsworth Game Technology', 'Technical Compliance Test Engineer', 'Las Vegas, NV', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(127, 'Optum', 'Software Engineering Manager', 'Las Vegas, NV', NULL, 'Optum Website', NULL, '2019-03-02 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(128, 'OSLA Resources', 'Engineering Data Analyst', 'Las Vegas, NV', NULL, 'ziprecruiter', NULL, '2019-03-05 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(129, 'Eastridge Workforce Solutions', 'Quality Assurance Engineer', 'Las Vegas, NV', NULL, 'ziprecruiter', NULL, '2019-03-01 00:00:00', 'Applied', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(130, '237 Next ', 'Junior Software Developer', 'Las Vegas, NV', NULL, 'Glassdoor.com', NULL, '2019-03-15 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(131, 'vBeyond', 'Software Engineer I', 'Las Vegas, NV', NULL, 'ziprecruiter', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(132, 'Professional Alternatives', 'Quality Analyst III', 'Las Vegas, NV', NULL, 'Monster.com', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(133, 'Synergistic IT', 'Entry Level Java Developer', 'Las Vegas, NV', NULL, 'Dice.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(134, 'LV Water District', 'Associate Applications Developer', 'Las Vegas, NV', NULL, 'ziprecruiter', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(135, 'AXA Financial', 'Director, Application Development', 'Charlotte, NC', NULL, 'Sara Rich', ' Sara Rich 315.883.5497', '2018-08-24 00:00:00', 'Interviewed and Rejected', NULL, NULL, NULL, NULL),
(136, 'Kansas City Southern Railroad', 'Application Dev and Support Mgr.', 'Kansas City, MO', '3.5', 'Aureus Group - Linda A.', NULL, '2018-10-06 00:00:00', 'Interviewed - Skills Mismatch', NULL, NULL, NULL, NULL),
(137, 'UNUM', 'Absence Management Product Owner', 'Chattanooga, TN', '3', 'Dave McMahon, Kevin McMahon', 'Kevin McMahon ', NULL, 'KM to Represent on 10/23/18 - Heard Nothing Back', NULL, NULL, NULL, NULL),
(138, 'UNUM', 'IT Manager, Digital Claims', 'Chattanooga, TN', '4', 'Dave McMahon, Kevin McMahon', NULL, NULL, 'KM to Represent on 10/23/18 - Interviewed, lacking .NET Qualifications', NULL, NULL, NULL, NULL),
(139, 'UNUM', 'IT Manager, App Dev (Rep Comp)', 'Chattanooga, TN', '4', 'Dave McMahon, Kevin McMahon', NULL, NULL, 'KM to Represent on 10/23/18 - Interviewed, lacking .NET Qualifications', NULL, NULL, NULL, NULL),
(140, 'Verint-Systems', 'Sr Product Support Mgr', 'Alpheretta, GA', '2.5', 'Linked In', 'Sam Dadura', '2018-11-14 00:00:00', 'Closed', NULL, '12/4/2018 12:00:00 AM', NULL, NULL),
(141, 'Polaris Alpha', 'Application Support Mgr', 'Colorado Springs, CO', '3', 'Monster.com', NULL, '2018-11-13 00:00:00', 'Closed', '12/14/2018 12:00:00 AM', NULL, NULL, NULL),
(142, 'Spectrum', 'Software Development Mgr', 'Charlotte, NC', NULL, 'Stella', NULL, '2018-11-14 00:00:00', 'Applied - Reapplied 12/13/18', NULL, '2/15/2019 12:00:00 AM', NULL, NULL),
(143, 'GPAC', 'MIS Manager', 'Sioux City, IA', NULL, 'Linked In', NULL, '2018-11-17 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(144, 'Smithfield Foods', 'Application Development Manager', 'Kansas City, MO', NULL, 'Linked In', NULL, '2018-11-18 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(145, 'West/Televox', 'Software Engineering Manager', 'Mobile, AL', NULL, 'West Recruiter', 'Kelly Risely', '2018-11-21 00:00:00', 'Internal Recruiter interviewed - passed to Hiring Mgr - Closed', NULL, NULL, NULL, NULL),
(146, 'DXC Technology', 'QA Engineer', 'New Orleans, LA', NULL, 'DXC Recruiter ', 'Nijiama Smalls', NULL, 'interview with Hiring Manager - 1/8/19', NULL, NULL, NULL, NULL),
(147, 'Stanley Black & Decker', 'Delivery Lead', 'Atlanta, GA', NULL, 'Linked In', 'Collin Stobart', '2019-11-16 00:00:00', 'Interview with Internal Recruiter - 1/17/19', NULL, NULL, NULL, NULL),
(148, 'Gentis Solutions - Kroger', 'Product Owner II', 'Charlotte, NC', NULL, 'Email - Consulting group', 'Avanish Kaushik - 347-696-7726', '2019-02-12 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(149, 'Vaco Technologies', 'Software Developer', 'Memphis, TN', NULL, 'Linked In', NULL, '2019-02-20 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(150, 'NIC inc', 'Manager of Enterprise Application Development', 'Olathe, KS', NULL, 'Linked In', NULL, '2019-02-23 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(151, 'CivicPlus', 'QA Automation Engineer', 'Manhattan, KS', NULL, 'CivicPlus Website', 'Akash Abdida', '2019-02-21 00:00:00', 'interview with Hiring Manager - 2/25/19 Will consider for QA Analyst position', NULL, NULL, NULL, NULL),
(152, 'CPSI', 'Quality Assurance Analyst', 'Mobile, AL', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(153, 'Delta Dental', 'Manager, Application Development', 'Alpheretta, GA', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', '3/6/2019 12:00:00 AM', NULL, NULL, NULL),
(154, 'Comdata', 'Application/Software Development Manager', 'Brentwood, TN', NULL, 'Linked In', NULL, '2019-03-01 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(155, 'Optum', 'Client Deliverry Manager', 'Franklin, TN', NULL, 'Optum Website', NULL, '2019-03-02 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(156, 'KSU', 'Assistant Director of Systems', 'Manhattan, KS', NULL, 'KSU Website', NULL, '2019-03-03 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(157, 'CivicPlus', 'Implementation Analyst', 'Manhattan, KS', NULL, 'Indeed.com', NULL, '2019-03-03 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(158, 'Toshiba', 'Software Development Mgr', 'Durham, NC', NULL, 'Linked In', NULL, '2019-03-06 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(159, 'Toshiba', 'Software Manager - Test', 'Durham, NC', NULL, 'Linked In', NULL, '2019-03-06 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(160, 'Vlocity', 'Delivery Manager', 'Atlanta, GA', NULL, 'Glassdoor.com', NULL, '2019-03-14 00:00:00', 'Closed', NULL, NULL, NULL, NULL),
(161, 'TalentBridge', 'Application Delivery Manager', 'Charlotte, NC', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(162, 'Apex Consulting', 'Project Delivery Manager', 'Charlotte, NC', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(163, 'Ascend Learning', 'Software Engineering Development Manager', 'Kansas City, MO', NULL, 'Linked In', NULL, '2019-03-18 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(164, 'Society Insurance', 'IT Delivery Manager', 'Fond Du Lac, WI', NULL, 'Linked In', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(165, 'Travelers Insurance', 'IS Development Manager', 'Hartford, CT', NULL, 'Greatinsurancejobs.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(166, 'Glatfelter Insurance Group', 'Applications Manager', 'York, PA', NULL, 'Greatinsurancejobs.com', NULL, '2019-03-19 00:00:00', 'Applied', NULL, NULL, NULL, NULL),
(167, 'KSU', 'Application Developer', 'Manhattan, KS', NULL, 'KSU Website', NULL, '2019-03-21 00:00:00', 'Applied', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `recruiter_id` int(11) NOT NULL,
  `company` varchar(60) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(60) NOT NULL,
  `city` varchar(60) NOT NULL,
  `notes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `recruiters_import`
--

CREATE TABLE `recruiters_import` (
  `recruiters_import_id` int(11) NOT NULL,
  `Company` varchar(25) DEFAULT NULL,
  `Conact_Name` varchar(25) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Locations` varchar(45) DEFAULT NULL,
  `Notes` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recruiters_import`
--

INSERT INTO `recruiters_import` (`recruiters_import_id`, `Company`, `Conact_Name`, `Phone`, `Email`, `Locations`, `Notes`) VALUES
(1, 'Omaha, NE', NULL, NULL, NULL, NULL, NULL),
(2, 'CSS Staffing ', 'Ken Koehn', '(402) 973-1389', 'kkoehn@cssus.net', 'Omaha Only', 'Great relationships in Omaha'),
(3, 'Aureus Group', 'Linda Aughenbaugh', '(402) 895-1966 x1058', 'laughenbaugh@aureusgroup.com', 'NE, IA, KS, MO', 'Terrible - Use only in case of emergency'),
(4, 'TEK Systems', 'Erin Determan', 'T 402.952.1544 | M 402.212.6476', 'edeterma@TEKsystems.com', NULL, NULL),
(5, 'TEK Systems', 'Traci Kruid', '402-952-1577', 'tkruid@teksystems.com', NULL, NULL),
(6, 'CSS Staffing ', 'Becky Fields', '402-973-1415', 'bfields@cssus.net', NULL, 'Senior Recruiter.'),
(7, 'Apex', 'Mallory Sickler', 'Office: 402-384-7094  Mobile: 402-540-8082', 'msickler@apexsystemsinc.com', 'Omaha', 'Senior Account Manager '),
(8, 'Robert Half', 'Abbey Clark', '402-319-3900', 'abbey.clark@rht.com', 'Omaha/Ne', 'Lots of Contacts'),
(9, 'Cordova Group', 'Chris Bruner', '402-651-6813', 'chris@cordova.solutions', 'Omaha', 'Recruiter'),
(10, 'Florida', NULL, NULL, NULL, NULL, NULL),
(11, 'Lucas Group', 'David Burleson', '813.765.0146 ', 'dburleson@lucasgroup.com', 'Tampa and Florida Area', 'Lame - Do Not Use'),
(12, 'Alluvion', 'Bryan Pray', 'O 904.296.0329 M 904.881.2023', 'bryan@alluvionstaffing.com', 'Tampa and Jacksonville', NULL),
(13, 'TechUSA', 'Morgin Phillips', '(813)775-2565', 'mphillips@techusa.com', 'Tampa', NULL),
(14, 'Apex', 'Samanatha (Sam) Macchi', 'Office: 813-281-8800  |  Mobile: 941-320-6344 ', 'smacchi@apexsystems.com ', 'Florida', 'Account Manager'),
(15, 'Apex', 'Theresa Wolf', 'Office: 813-281-8800  |  Mobile: 352-422-2698 ', 'twolf@apexsystems.com', 'Tampa', NULL),
(16, ' Texas', NULL, NULL, NULL, NULL, NULL),
(17, 'Phoenix Staff', 'Bill Knoche, TJ Wagadia', '(602) 842-7181', 'TJ@phoenixstaff.com', 'Austin, TX', 'Awesome'),
(18, 'QuestPro Consultants', 'Ben Volkmer', NULL, 'bvolkmer@questpro.com', 'Austin, TX', NULL),
(19, NULL, NULL, NULL, NULL, NULL, NULL),
(20, NULL, NULL, NULL, NULL, NULL, NULL),
(21, NULL, NULL, NULL, NULL, NULL, NULL),
(22, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'Arizona', NULL, NULL, NULL, NULL, NULL),
(24, 'Phoenix Staff', 'Bill Knoche, TJ Wagadia', '(602) 842-7181', 'TJ@phoenixstaff.com', 'Phoenix, Las Vegas, Austin TX', NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL),
(26, NULL, NULL, NULL, NULL, NULL, NULL),
(27, NULL, NULL, NULL, NULL, NULL, NULL),
(28, NULL, NULL, NULL, NULL, NULL, NULL),
(29, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Nevada', NULL, NULL, NULL, NULL, NULL),
(31, 'Phoenix Staff', 'Heather Otto', '702-637-7422', 'heather@phoenixstaff.com', 'Las Vegas', NULL),
(32, NULL, NULL, NULL, NULL, NULL, NULL),
(33, NULL, NULL, NULL, NULL, NULL, NULL),
(34, NULL, NULL, NULL, NULL, NULL, NULL),
(35, NULL, NULL, NULL, NULL, NULL, NULL),
(36, NULL, NULL, NULL, NULL, NULL, NULL),
(37, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'New Mexico', NULL, NULL, NULL, NULL, NULL),
(39, NULL, NULL, NULL, NULL, NULL, NULL),
(40, NULL, NULL, NULL, NULL, NULL, NULL),
(41, NULL, NULL, NULL, NULL, NULL, NULL),
(42, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'Other Areas (NC, SC, GA)', NULL, NULL, NULL, NULL, NULL),
(44, 'TEKSystems', 'Kevin McMahon', 'T 423.414.3625 | M 865.385.2176', 'KMcMahon@teksystems.com', 'Chattanooga, TN', 'UNUM Rep'),
(45, 'Collabera Inc. ', 'Tania Dwivedi', '+1 (804) 955-4264   ', 'tania.dwivedi@collabera.com', 'Richmond, VA based', 'Replied to Soliciation email on 10/15'),
(46, 'Insight Global', 'Leah Mitton', '704.357.3177', 'leah.mitton@insightglobal.net', 'Charlotte, NC - Global', 'Global, National'),
(47, 'Cognizant', NULL, NULL, NULL, NULL, NULL),
(48, 'Adams Gabbert', 'Kendra Kruse', 'O: 913-735-4390 | D: 913-709-8795', 'KRKruse@adamsgabbert.com', 'Kansas City, MO', 'https://adamsgabbert.com/career-portal/'),
(49, 'The Judge Group', 'Artesia Peluso', '404-445-6869 ext. 3410 ', 'apeluso@judgemail.net', 'Atlanta, GA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter_state`
--

CREATE TABLE `recruiter_state` (
  `recruiter_id` int(11) NOT NULL,
  `state_id` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `state_id` varchar(2) NOT NULL,
  `state_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`state_id`, `state_name`) VALUES
('AK', 'Alaska'),
('AL', 'Alabama'),
('AR', 'Arkansas'),
('AZ', 'Arizona'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DC', 'District of Columbia'),
('DE', 'Delaware'),
('FL', 'Florida'),
('GA', 'Georgia'),
('HI', 'Hawaii'),
('IA', 'Iowa'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('KA', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('MA', 'Massachusetts'),
('MD', 'Maryland'),
('ME', 'Maine'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MO', 'Missouri'),
('MT', 'Montana'),
('NC', 'North Carolina'),
('ND', 'North Dakota'),
('NE', 'Nebraska'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NV', 'Nevada'),
('NY', 'New York'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('UT', 'Utah'),
('VA', 'Virginia'),
('VT', 'Vermont'),
('WA', 'Washington'),
('WI', 'Wisconsin'),
('WV', 'West Virginia'),
('WY', 'Wyoming');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `companies_import`
--
ALTER TABLE `companies_import`
  ADD PRIMARY KEY (`companies_import_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `company_watch`
--
ALTER TABLE `company_watch`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_import`
--
ALTER TABLE `job_import`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`recruiter_id`);

--
-- Indexes for table `recruiters_import`
--
ALTER TABLE `recruiters_import`
  ADD PRIMARY KEY (`recruiters_import_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `companies_import`
--
ALTER TABLE `companies_import`
  MODIFY `companies_import_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `company_watch`
--
ALTER TABLE `company_watch`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `job_import`
--
ALTER TABLE `job_import`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recruiters_import`
--
ALTER TABLE `recruiters_import`
  MODIFY `recruiters_import_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
