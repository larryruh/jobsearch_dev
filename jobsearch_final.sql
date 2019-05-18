-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 18, 2019 at 06:24 PM
-- Server version: 5.7.25
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `jobsearch`
--

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
(129, 'World Technologies'),
(132, 'Team Focus Insurance Group'),
(150, 'PWC'),
(151, 'Roberts Communication Network'),
(152, 'ASG Renaissance');

-- --------------------------------------------------------

--
-- Table structure for table `company_watch`
--

CREATE TABLE `company_watch` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(45) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `relationship_notes` varchar(255) DEFAULT NULL,
  `last_jobs_check` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_watch`
--

INSERT INTO `company_watch` (`company_id`, `company_name`, `location`, `contact`, `email`, `phone`, `relationship_notes`, `last_jobs_check`) VALUES
(1, 'BCBS', 'Omaha, NE', 'Mary Kyle', NULL, NULL, 'Interviewed, Waiting for Right Position', '11/5/18 - Nothing'),
(2, 'HDR', 'Omaha, NE', 'Kim Lachendro', '', '', 'Interviewed, went well, Waiting for Right Position', '11/5/18 - Nothing'),
(3, 'CSG', 'Omaha, NE', 'Martha Johnson', NULL, NULL, 'Interviewed, Waiting for Right Position', '11/5/18 - Nothing'),
(4, 'Unum', 'Chattanooga, TN', 'Dave McMahon', NULL, NULL, 'VP operations in Chatanooga. ', NULL),
(5, 'Unum', 'Chattanooga, TN', 'Kevin McMahon', 'KMcMahon@teksystems.com', NULL, 'TEK Systems Unum Rep', NULL),
(6, 'AAA', 'Multiple', 'Catherine Maitland', '', '', 'Connected on LI', '10/23/18 - Nothing - edited'),
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
-- Table structure for table `job`
--

CREATE TABLE `job` (
  `job_id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `company` varchar(60) DEFAULT NULL,
  `job_category` varchar(30) NOT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(2) NOT NULL,
  `compatibility` double DEFAULT NULL,
  `referred_by` varchar(255) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL,
  `date_applied` date DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `phone_screen` varchar(255) DEFAULT NULL,
  `first_interview` varchar(255) DEFAULT NULL,
  `second_interview` varchar(255) DEFAULT NULL,
  `offer` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `job`
--

INSERT INTO `job` (`job_id`, `company_id`, `company`, `job_category`, `job_title`, `city`, `state`, `compatibility`, `referred_by`, `contact`, `date_applied`, `status`, `notes`, `phone_screen`, `first_interview`, `second_interview`, `offer`) VALUES
(1, 86, 'Pacific Life', 'Manager', 'Manager, Application & Platform Services', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-07-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(2, 93, 'PromiseShip (Boys town)', 'Manager', 'IT Manager', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-06-25', 'Closed', NULL, NULL, NULL, NULL, NULL),
(3, 20, 'BuilderTrend', 'Manager', 'Application Development Manager', 'Omaha', 'NE', NULL, 'Indeed.com', NULL, '2018-06-25', 'Closed', NULL, NULL, NULL, NULL, NULL),
(4, 54, 'HDR', 'Manager', 'IT Manager - Executive Support', 'Omaha', 'NE', NULL, 'Linked In', 'Colleen Schinker, Barb', '2018-06-25', 'Closed', NULL, NULL, NULL, NULL, NULL),
(5, 33, 'CSG', 'Manager', 'Software Development Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-06-27', 'Closed', NULL, NULL, NULL, NULL, NULL),
(6, 10, 'AppsForte Inc', 'Manager', 'Applications Development Manager (Oracle)', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-06-26', 'Closed', 'Closed - Reapplied 11/18/18', NULL, NULL, NULL, NULL),
(7, 22, 'Catch Intelligence', 'Manager', 'Software Product Manager', 'Omaha', 'NE', NULL, 'CareerLink', NULL, '2018-06-26', 'Closed', NULL, NULL, NULL, NULL, NULL),
(8, 32, 'Creighton University', 'Manager', 'Product Manager- myHR', 'Omaha', 'NE', NULL, 'CareerLink', 'Barb maybe', '2018-07-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(9, 42, 'Federal Reserve Bank of KC', 'Manager', 'Applications Development Manager', 'Omaha', 'NE', NULL, 'Apex Systems', 'Austin Olsen', '2018-06-22', 'Closed', NULL, '', '', '', ''),
(10, 17, 'Blue Cross ', 'Manager', 'Application Development Manager (NO OPEN Positions)', 'Omaha', 'NE', NULL, 'Steve Martin', 'Mary Kyle', '2018-06-27', 'Closed', 'Pending Open Position', '', '', '', ''),
(11, 43, 'First Data', 'Manager', 'Manager IT', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-07-13', 'Closed', NULL, NULL, NULL, NULL, NULL),
(12, 33, 'CSG', 'Manager', 'Software Development Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-07-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(13, 33, 'CSG', 'Developer', 'Systems Analyst Lead', 'Omaha', 'NE', NULL, 'Linked In', 'Pam Kyriss, Dave Altman', '2018-07-14', 'Closed', 'Iinterviewed - Tom McGill - Rejected', '07/18/2018', '08/02/2018', NULL, NULL),
(14, 47, 'Gallup', 'Manager', 'Technology Manager', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-07-17', 'Closed', 'Interviewed HR process - ', '07/19/2018', NULL, NULL, NULL),
(15, 67, 'LinkedIn', 'Manager', 'Manager 1, Product Technical Operations', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-07-27', 'Closed', NULL, NULL, NULL, NULL, NULL),
(16, 76, 'National Indemnity', 'Manager', 'Senior Manager – Software Development', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-07-27', 'Closed', 'Closed - Reapplied 11/14/18', NULL, NULL, NULL, NULL),
(17, 101, 'Securities America', 'Manager', 'Manager – Application Development', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(18, 13, 'Aureaus Group', 'Manager', 'Software Development Manager', 'Omaha', 'NE', NULL, 'Indeed.com', NULL, '2018-08-02', 'Closed', 'This was National Indemnity position', NULL, NULL, NULL, NULL),
(19, 46, 'Fiserv', 'Manager', 'Software Development Program Manager, Advisory', 'Omaha', 'NE', NULL, 'Email Invitation', 'Shally Steckerl', '2018-08-16', 'Closed', 'On Hold Indefinitely', NULL, NULL, NULL, NULL),
(20, 54, 'HDR', 'Manager', 'Application Development Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Colleen Schinker', '2018-08-25', 'Closed', 'Interviewd - Mike Geppert (CIO) -Finalist- Rejected', NULL, '8/31/2018', NULL, NULL),
(21, 80, 'NEXUS IT Group - KC Reserve bank', 'Manager', 'Software Development Manager', 'Omaha', 'NE', NULL, 'Glassdoor.com', 'ashley@nexusITgroup.com', '2018-09-12', 'Closed', 'Federal Reserve Bank Position,', NULL, NULL, NULL, NULL),
(22, 58, 'Information Technology Group', 'Manager', 'Technology Manager', 'Omaha', 'NE', NULL, 'Jobnetwork.com/Dice.com', NULL, '2018-09-21', 'Closed', 'Federal Reserve Bank Position.', NULL, NULL, NULL, NULL),
(23, 33, 'CSG', 'Manager', 'Customer Delivery Manager', 'Omaha', 'NE', NULL, 'CSGI.com', NULL, '2018-10-10', 'Closed', NULL, NULL, NULL, NULL, NULL),
(24, 33, 'CSG', 'Manager', 'Project Manager (Delivery)', 'Omaha', 'NE', NULL, 'CSGI.com', NULL, '2018-10-10', 'Closed', NULL, NULL, NULL, NULL, NULL),
(25, 66, 'LFG', 'Manager', 'Application Development Manager (Claims)', 'Omaha', 'NE', NULL, 'LFG.com', '', '2018-10-24', 'Closed', NULL, '', '05/14/2019', '', ''),
(26, 66, 'LFG', 'Developer', 'Systems Analyst', 'Omaha', 'NE', NULL, 'LFG.com', NULL, '2018-11-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(27, 74, 'Modis', 'BA', 'Business Analyst (Bluecard project)', 'Omaha', 'NE', NULL, 'Linked In', 'Modis', '2018-11-13', 'Closed', NULL, NULL, NULL, NULL, NULL),
(28, 43, 'First Data', 'Manager', 'Manager, IT', 'Omaha', 'NE', NULL, 'Indeed.', NULL, '2018-11-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(29, 92, 'ProKarma', 'PM', 'Technical Scrum Master', 'Omaha', 'NE', NULL, 'Glassdoor.com', NULL, '2018-11-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(30, 43, 'First Data', 'Developer', 'Sr. Application Analyst', 'Omaha', 'NE', NULL, 'Indeed.com', NULL, '2018-11-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(31, 127, 'West Corp', 'Manager', 'Information Services Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Colin Lamb /Matt Vandergriff', '2018-11-27', 'Closed', 'Internal Recruiter Interview - Passed to Hiring Mgr. - 11/27/18 - On Site Interview 12/11/18 - Told I was to move on but left hanging', '12/14/2018', '01/25/2019', NULL, NULL),
(32, 73, 'Milan Laser Hair Removal', 'Manager', 'IT Manager', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-11-29', 'Closed', NULL, NULL, NULL, NULL, NULL),
(33, 78, 'Nelnet', 'Manager', 'Implementation Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Lisa Meyer', '2018-12-17', 'Closed', NULL, NULL, NULL, NULL, NULL),
(34, 33, 'CSG ', 'Manager', 'Software Development Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Martha Johnson', '2018-12-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(35, 83, 'OPPD', 'Manager', 'Director of Product Delivery', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2018-12-25', 'Closed', NULL, NULL, NULL, NULL, NULL),
(36, 86, 'Pacific Life', 'QA', 'Software Development Engineer in Test', 'Omaha', 'NE', NULL, 'Pacific Life Website', NULL, '2019-01-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(37, 37, 'DMSI Software', 'QA', 'QA Analyst - CRM', 'Omaha', 'NE', NULL, 'Linked In', 'Staff Aug, nobody', '2019-01-02', 'Closed', 'Interviewed 1/23 - Logic test and interview 2/6 - Passed on me', NULL, '01/23/2019', '02/06/2019', NULL),
(38, 2, 'ACI Worldwide', 'QA', 'Quality Assurance Engineer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-01-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(39, 6, 'Ameritas', 'Manager', 'Director of Application Development', 'Lincoln', 'NE', NULL, 'Linda Coe', 'Linda Coe', '2018-12-27', 'Closed', 'Interview with David Voelker (VP-IT) 1/8', NULL, '01/08/19', NULL, NULL),
(40, 8, 'Apex Informatics', 'QA', 'Automation QA Engineer', 'Omaha', 'NE', NULL, 'Dice.com', NULL, '2019-01-27', 'Closed', NULL, NULL, NULL, NULL, NULL),
(41, 106, 'Sojern', 'QA', 'QA Analyst', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-01-28', 'Closed', NULL, NULL, NULL, NULL, NULL),
(42, 15, 'Bank of the West', 'QA', 'QA Engineer II', 'Omaha', 'NE', NULL, 'Linked In', 'Kyle Soares', '2019-02-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(43, 57, 'Inflection', 'QA', 'QA Engineer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-02-07', 'Closed', NULL, NULL, NULL, NULL, NULL),
(44, 47, 'Gallup', 'QA', 'QA Automation Engineer', 'Omaha', 'NE', NULL, 'Linked In', 'Jodi Kennedy', '2019-02-07', 'Closed', 'Internal Recruiter Interview -2/13/19', '02/13/2019', NULL, NULL, NULL),
(45, 6, 'Ameritas', 'Manager', 'Application Development Manager', 'Lincoln', 'NE', NULL, 'Linda Coe', 'Linda Coe', '2019-02-11', 'Closed', 'Interview with Karim ? Dir/IT - Looking for more technical candidates', NULL, NULL, NULL, NULL),
(46, 17, 'Blue Cross ', 'QA', 'Test Principle', 'Omaha', 'NE', NULL, 'BCBS.com', 'Mary Kyle', '2019-02-13', 'Closed', NULL, NULL, NULL, NULL, NULL),
(47, 100, 'ScoreVision', 'QA', 'Quality Assurance Engineer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-02-20', 'Closed', NULL, NULL, NULL, NULL, NULL),
(48, 54, 'HDR', 'Manager', 'ERP Application Manager', 'Omaha', 'NE', NULL, 'Linked In', 'Kim LaChendro', '2019-02-28', 'Closed', NULL, NULL, NULL, NULL, NULL),
(49, 41, 'eMerging', 'QA', 'QA Automation Engineer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(50, 68, 'LovelySkin.com', 'Developer', 'Javascript Developer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(51, 47, 'Gallup', 'Developer', 'Junior Java Developer', 'Omaha', 'NE', NULL, 'Linked In', 'Jodi Kennedy', '2019-03-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(52, 83, 'OPPD', 'QA', 'Quality Assurance Engineer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(53, 35, 'Digipulse', 'PM', 'Project Coordinator', 'Omaha', 'NE', NULL, 'Dice.com', NULL, '2019-03-18', 'Closed', 'Lincoln Financial position', NULL, NULL, NULL, NULL),
(54, 76, 'National Indemnity', 'Developer', 'Automation and Database Programmer', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(55, 76, 'National Indemnity', 'Manager', 'Information Services Manager', 'Omaha', 'NE', NULL, 'Linked In', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(56, 4, 'Allstate', 'Manager', 'Software Development Manager', 'Lincoln', 'NE', NULL, 'GreatInsuranceJobs.com', '', '2019-03-21', 'Closed', 'Applied: declined interview due to acceptance of FD position', '', '03/23/2019', '', ''),
(57, 62, 'Judge Group (First Data)', 'QA', 'Senior QA Analsyt', 'Omaha', 'NE', NULL, 'the Judge Group', 'Artesia Peluso', '2019-03-19', 'Closed', 'Submitted by Judge Group', '03/19/2019', '03/26/2019', NULL, 'Yes, $82/hour, accepted'),
(76, 9, 'AppleOne Employment Services', 'Manager', 'Software Development Manager', 'Tampa', 'FL', NULL, 'Linked In', NULL, '2018-06-22', 'Closed', NULL, NULL, NULL, NULL, NULL),
(77, 126, 'WellCare Health Plans', 'Manager', 'Application Development - Manager', 'Tampa', 'FL', NULL, 'Linked In', '', '2018-06-22', 'Closed', '', '', '', '', ''),
(78, 59, 'Jabil', 'Manager', 'Regional IT Development Lead (Application Development & Programming)', 'St Petersburg', 'FL', NULL, 'Linked In', '', '2018-06-22', 'Closed', NULL, '', '', '', ''),
(79, 89, 'PODS', 'Manager', 'Manager - Business Analysis', 'Clearwater', 'FL', NULL, 'Linked In', NULL, '2018-06-22', 'Closed', NULL, NULL, NULL, NULL, NULL),
(80, 89, 'PODS', 'Manager', 'Manager - Program Management', 'Clearwater', 'FL', NULL, 'Linked In', NULL, '2018-06-25', 'Closed', NULL, NULL, NULL, NULL, NULL),
(81, 21, 'Career Experts', 'Manager', 'Development Manager', 'Tampa', 'FL', NULL, 'Linked In', NULL, '2018-10-24', 'Closed', NULL, NULL, NULL, NULL, NULL),
(82, 70, 'Maantic, Inc', 'Manager', 'Salesforce Application Development Manager', 'Tampa', 'FL', NULL, 'Linked In', NULL, '2018-06-22', 'Closed', NULL, NULL, NULL, NULL, NULL),
(83, 95, 'Raymond James', 'Manager', 'Manager, Application Services', 'St Petersburg', 'FL', NULL, 'Linked In', NULL, '2018-06-28', 'Closed', NULL, NULL, NULL, NULL, NULL),
(84, 122, 'Verizon', 'Manager', 'Senior Software Development Manager', 'Temple Terrace', 'FL', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(85, 39, 'EA', 'Manager', 'Development Manager', 'Orlando', 'FL', NULL, 'Linked In', NULL, '2018-08-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(86, 45, 'FIS', 'Manager', 'Development Manager Senior', 'St Petersburg', 'FL', NULL, 'https://careers.peopleclick.com/careerscp/client_FISGlobal/external/jobDetails/jobDetail.html?jobPostId=129690&localeCode=en-us', NULL, '2018-10-24', 'Closed', NULL, NULL, NULL, NULL, NULL),
(87, 95, 'Raymond James', 'Manager', 'Technology Manager', 'St Petersburg', 'FL', NULL, 'Raymond James Website', NULL, '2018-10-24', 'Closed', NULL, NULL, NULL, NULL, NULL),
(88, 95, 'Raymond James', 'Manager', 'Technology Development Manager', 'St Petersburg', 'FL', NULL, 'Raymond James Website', NULL, '2018-10-24', 'Closed', NULL, NULL, NULL, NULL, NULL),
(89, 125, 'Webstaurant Store', 'Manager', 'Software Engineering Manager', 'Tampa', 'FL', NULL, 'Linked In', NULL, '2019-01-28', 'Closed', NULL, NULL, NULL, NULL, NULL),
(90, 56, 'HealthAxis Group', 'QA', 'Software QA Analyst', 'Tampa', 'FL', NULL, 'Careerbuilder.com', NULL, '2019-01-06', 'Closed', NULL, NULL, NULL, NULL, NULL),
(91, 61, 'JM Family Enterprises', 'Manager', 'Application Delivery Manager', 'Deerfield Beach', 'FL', NULL, 'Linked In', NULL, '2019-01-10', 'Closed', NULL, NULL, NULL, NULL, NULL),
(92, 126, 'WellCare Health Plans', 'Manager', 'Application Development Manager', 'Tampa', 'FL', NULL, 'Dice.com', NULL, '2019-02-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(93, 79, 'New York Life', 'Manager', 'Technology Business Manager', 'Tampa', 'FL', NULL, 'Linked In', NULL, '2019-02-23', 'Closed', NULL, NULL, NULL, NULL, NULL),
(94, 111, 'Sun View Software', 'Developer', 'Entry Level Software Engineer', 'Tampa', 'FL', NULL, 'glassdoor.com', NULL, '2019-03-15', 'Closed', NULL, NULL, NULL, NULL, NULL),
(95, 125, 'Webstaurant Store', 'Developer', 'Entry Level Software Engineer', 'Tampa', 'FL', NULL, 'glassdoor.com', NULL, '2019-03-15', 'Closed', NULL, NULL, NULL, NULL, NULL),
(96, 9, 'AppleOne Employment Services', 'Manager', 'Software Development Manager', 'Houston', 'TX', NULL, 'Linked In', NULL, '2018-06-22', 'Closed', NULL, NULL, NULL, NULL, NULL),
(97, 52, 'Harris Health Systems', 'Manager', 'Manager IT / Software Engineer - Web Solutions', 'Houston', 'TX', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(98, 113, 'Talbridge Corporation', 'Manager', 'POS development Manager', 'Houston', 'TX', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(99, 46, 'Fiserv', 'Manager', 'Manager, Software Development', 'Dallas', 'TX', NULL, 'Linked In', NULL, '2018-09-20', 'Closed', NULL, NULL, NULL, NULL, NULL),
(100, 64, 'Kronos', 'Product Owner', 'Product Owner', 'Houston', 'TX', NULL, 'Stella', NULL, '2018-11-08', 'Closed', NULL, NULL, NULL, NULL, NULL),
(101, 82, 'NTT Data/ TxDOT', 'Manager', 'Application Development Program Manager', 'Austin', 'TX', 5, 'Insight Global', 'Leah Mitton', '2018-11-15', 'Closed', 'Tech Interview - 12/4/18 - Went Well - Not called for final round', '11/15/2018', '12/04/2018', NULL, NULL),
(102, 12, 'Atlassian', 'Manager', 'Application Development Manager', 'Austin', 'TX', NULL, 'Linked In', 'Dave Herkar', '2018-11-27', 'Closed', 'Closed - Passed to Hiring Mgr - 12/14/18', '12/14/2018', NULL, NULL, NULL),
(103, 96, 'Raytheon', 'Developer', 'Devops Engineer', 'Dallas', 'TX', NULL, 'Linked In', 'David Lopez', '2019-01-29', 'Closed', 'Submitted by David - Interview with Raytheon - 2/15 - Not a fit', '01/30/2019', '02/15/2019', NULL, NULL),
(104, 118, 'USAA', 'Manager', 'Sr Manager, Information Technology', 'San Antonio', 'TX', NULL, 'Linked In', 'Eddie Tigs', '2019-02-26', 'Closed', NULL, '', '', '', ''),
(105, 118, 'USAA', 'Manager', 'Engineering Manager', 'San Antonio', 'TX', NULL, 'Linked In', 'Eddie Tigs', '2019-02-26', 'Pending', 'Pending', '', '04/25/2019', '', ''),
(106, 53, 'Harris Software Solutions', 'Developer', 'Customer Support Analyst', 'San Antonio', 'TX', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(107, 84, 'Optum', 'Manager', 'Product Manager, Applications', 'San Antonio', 'TX', NULL, 'Optum Website', NULL, '2019-03-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(108, 102, 'Sidmans', 'Manager', 'IT Delivery Manager', 'Austin', 'TX', NULL, 'Dice.com', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(109, 29, 'Cox Automotive', 'Manager', 'Manager, Software Engineering', 'Austin', 'TX', NULL, 'Linked In', NULL, '2019-03-19', 'Closed', NULL, NULL, NULL, NULL, NULL),
(110, 5, 'Amazon.com', 'Manager', 'Software Development Manager', 'Tempe', 'AZ', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(111, 129, 'World Technologies', 'Manager', 'Application Development Manager', 'Glendale', 'AZ', NULL, 'Dice.com', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(112, 71, 'MedImpact Healthcare Systems', 'Manager', 'Manager, Application Support', 'Tempe', 'AZ', NULL, 'Dice.com', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(113, 87, 'Pheonix Staff', 'Manager', 'Application Development Manager', 'Scottsdale', 'AZ', NULL, 'Dice.com', '', '2018-08-02', 'Closed', 'Interviewed  with Recruiter about Info Armor position', '08/06/2018', '', '', ''),
(114, 87, 'Pheonix Staff', 'Manager', 'Development Manager', 'Scottsdale', 'AZ', NULL, 'Linked In', 'TJ', '2018-07-15', 'Closed', NULL, NULL, NULL, NULL, NULL),
(115, 87, 'Pheonix Staff', 'Manager', 'Senior Software Development Manager', 'Scottsdale', 'AZ', NULL, 'Linked In', 'TJ', '2018-07-15', 'Closed', NULL, NULL, '12/04/2018', NULL, NULL),
(116, 75, 'Mutual Of Omaha Bank', 'Manager', 'Application Development Manager', 'Phoenix', 'AZ', 4.5, 'Chris Campbell', 'Cory ?, Chris Campbell', '2018-10-12', 'Closed', 'CC referred - Closed', '', NULL, NULL, NULL),
(117, 55, 'Headfarmer', 'Manager', 'Application Support Manager', 'Scottsdale', 'AZ', 4.5, 'Zip Recruiter', NULL, '2018-11-06', 'Closed', NULL, NULL, '', NULL, NULL),
(118, 24, 'Chirotech', 'Manager', 'Senior Software Development Manager', 'Las Vegas', 'NV', 3.5, 'Linked In', 'Courtney Wesh, Chirotech', '2018-09-05', 'Closed', 'Interviewed 9/21 - Weak on Cloud technology - everything else good. ', '09/21/2018', NULL, NULL, NULL),
(119, 87, 'Pheonix Staff', 'Manager', 'Software Development Manager', 'Las Vegas', 'NV', NULL, 'Linked In', 'Heather Otto', '2018-11-13', 'Closed', 'Abaandoned - Hands on .NET', NULL, NULL, NULL, NULL),
(120, 97, 'Resorts World', 'BA', 'IT Business Analyst', 'Las Vegas', 'NV', NULL, 'Linked In', NULL, '2018-11-13', 'Closed', NULL, NULL, NULL, NULL, NULL),
(121, 107, 'Southwest Gas', 'Manager', 'Application Delivery Manager', 'Las Vegas', 'NV', NULL, 'Linked In', NULL, '2019-01-11', 'Closed', 'Internal Phone Screening, 1/23/19 - Skype interview with VP - 2/27', '2019-01-23', '2019-02-27', NULL, 'Top 2'),
(122, 87, 'Pheonix Staff', 'Manager', 'Systems Development Manager', 'Las Vegas', 'NV', NULL, 'Linked In', NULL, '2019-01-27', 'Closed', NULL, NULL, NULL, NULL, NULL),
(123, 72, 'MGM Resorts International', 'Manager', 'Application Product Manager', 'Las Vegas', 'NV', NULL, 'Linked In', 'Myron Carter', '2019-02-26', 'Closed', NULL, NULL, '', NULL, NULL),
(124, 99, 'Robert Half', 'QA', 'Automated QA Engineer', 'Las Vegas', 'NV', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, '', NULL, NULL, NULL),
(125, 31, 'Creative Workforce Solutions', 'QA', 'Quality Assurance Engineer', 'Las Vegas', 'NV', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, '', NULL, NULL),
(126, 3, 'Ainsworth Game Technology', 'QA', 'Technical Compliance Test Engineer', 'Las Vegas', 'NV', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(127, 84, 'Optum', 'Manager', 'Software Engineering Manager', 'Las Vegas', 'NV', NULL, 'Optum Website', NULL, '2019-03-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(128, 85, 'OSLA Resources', 'Developer', 'Engineering Data Analyst', 'Las Vegas', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-05', 'Closed', NULL, NULL, NULL, NULL, NULL),
(129, 40, 'Eastridge Workforce Solutions', 'QA', 'Quality Assurance Engineer', 'Las Vegas', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-01', 'Closed', NULL, NULL, '', NULL, NULL),
(130, 1, '237 Next ', 'Developer', 'Junior Software Developer', 'Las Vegas', 'NV', NULL, 'Glassdoor.com', NULL, '2019-03-15', 'Closed', NULL, NULL, NULL, NULL, NULL),
(131, 120, 'vBeyond', 'Developer', 'Software Engineer I', 'Las Vegas', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(132, 91, 'Professional Alternatives', 'QA', 'Quality Analyst III', 'Las Vegas', 'NV', NULL, 'Monster.com', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(133, 112, 'Synergistic IT', 'Developer', 'Entry Level Java Developer', 'Las Vegas', 'NV', NULL, 'Dice.com', NULL, '2019-03-19', 'Closed', NULL, NULL, NULL, NULL, NULL),
(134, 69, 'LV Water District', 'Developer', 'Associate Applications Developer', 'Las Vegas', 'NV', NULL, 'ziprecruiter', NULL, '2019-03-19', 'Closed', NULL, NULL, NULL, NULL, NULL),
(135, 14, 'AXA Financial', 'Manager', 'Director, Application Development', 'Charlotte', 'NC', NULL, 'Sara Rich', ' Sara Rich 315.883.5497', '2018-08-24', 'Closed', 'Interviewed and Rejected', '08/24/2018', '09/04/2018', NULL, NULL),
(136, 63, 'Kansas City Southern Railroad', 'Manager', 'Application Dev and Support Mgr.', 'Kansas City', 'MO', 3.5, 'Aureus Group - Linda A.', NULL, '2018-10-06', 'Closed', 'Interviewed - Skills Mismatch', '', '10/10/2018', NULL, NULL),
(137, 117, 'UNUM', 'Product Owner', 'Absence Management Product Owner', 'Chattanooga', 'TN', 3, 'Dave McMahon, Kevin McMahon', 'Kevin McMahon ', '2018-10-23', 'Closed', 'KM to Represent on 10/23/18 - Heard Nothing Back', NULL, NULL, NULL, NULL),
(138, 117, 'UNUM', 'Manager', 'IT Manager, Digital Claims', 'Chattanooga', 'TN', 4, 'Dave McMahon, Kevin McMahon', NULL, '2018-10-18', 'Closed', 'KM to Represent on 10/23/18 - Interviewed, lacking .NET Qualifications', NULL, NULL, NULL, NULL),
(139, 117, 'UNUM', 'Manager', 'IT Manager, App Dev (Rep Comp)', 'Chattanooga', 'TN', 4, 'Dave McMahon, Kevin McMahon', NULL, '2018-10-18', 'Closed', 'KM to Represent on 10/23/18 - Interviewed, lacking .NET Qualifications', NULL, NULL, NULL, NULL),
(140, 121, 'Verint-Systems', 'Manager', 'Sr Product Support Mgr', 'Alpheretta', 'GA', 2.5, 'Linked In', 'Sam Dadura', '2018-11-14', 'Closed', NULL, NULL, '', NULL, NULL),
(141, 90, 'Polaris Alpha', 'Manager', 'Application Support Mgr', 'Colorado Springs', 'CO', 3, 'Monster.com', NULL, '2018-11-13', 'Closed', NULL, '', NULL, NULL, NULL),
(142, 108, 'Spectrum', 'Manager', 'Software Development Mgr', 'Charlotte', 'NC', NULL, 'Stella', NULL, '2018-11-14', 'Closed', 'Applied - Reapplied 12/13/18', NULL, '', NULL, NULL),
(143, 50, 'GPAC', 'Manager', 'MIS Manager', 'Sioux City', 'IA', NULL, 'Linked In', NULL, '2018-11-17', 'Closed', NULL, NULL, NULL, NULL, NULL),
(144, 103, 'Smithfield Foods', 'Manager', 'Application Development Manager', 'Kansas City', 'MO', NULL, 'Linked In', NULL, '2018-11-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(145, 128, 'West/Televox', 'Manager', 'Software Engineering Manager', 'Mobile', 'AL', NULL, 'West Recruiter', 'Kelly Risely', '2018-11-21', 'Closed', 'Internal Recruiter interviewed - passed to Hiring Mgr - Closed', '11/25/2018', NULL, NULL, NULL),
(146, 38, 'DXC Technology', 'QA', 'QA Engineer', 'New Orleans', 'NE', NULL, 'DXC Recruiter ', 'Nijiama Smalls', '2019-01-03', 'Closed', 'interview with Hiring Manager - 1/8/19', '01/03/2019', '01/08/2019', NULL, NULL),
(147, 109, 'Stanley Black & Decker', 'Manager', 'Delivery Lead', 'Atlanta', 'GA', NULL, 'Linked In', 'Collin Stobart', '2019-11-16', 'Closed', 'Interview with Internal Recruiter - 1/17/19', '01/17/2019', '', '', ''),
(148, 48, 'Gentis Solutions - Kroger', 'Product Owner', 'Product Owner II', 'Charlotte', 'NC', NULL, 'Email - Consulting group', 'Avanish Kaushik - 347-696-7726', '2019-02-12', 'Closed', NULL, NULL, NULL, NULL, NULL),
(149, 119, 'Vaco Technologies', 'Developer', 'Software Developer', 'Memphis', 'TN', NULL, 'Linked In', NULL, '2019-02-20', 'Closed', NULL, NULL, NULL, NULL, NULL),
(150, 81, 'NIC inc', 'Manager', 'Manager of Enterprise Application Development', 'Olathe', 'KS', NULL, 'Linked In', NULL, '2019-02-23', 'Closed', NULL, NULL, NULL, NULL, NULL),
(151, 25, 'CivicPlus', 'QA', 'QA Automation Engineer', 'Manhattan', 'KS', NULL, 'CivicPlus Website', 'Akash Abdida', '2019-02-21', 'Closed', 'interview with Hiring Manager - 2/25/19 Will consider for QA Analyst position', '02/19/2019', '02/25/2019', NULL, NULL),
(152, 30, 'CPSI', 'QA', 'Quality Assurance Analyst', 'Mobile', 'AL', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(153, 34, 'Delta Dental', 'Manager', 'Manager, Application Development', 'Alpheretta', 'GA', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, '03/06/2019', NULL, NULL, NULL),
(154, 26, 'Comdata', 'Manager', 'Application/Software Development Manager', 'Brentwood', 'TN', NULL, 'Linked In', NULL, '2019-03-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(155, 84, 'Optum', 'Manager', 'Client Deliverry Manager', 'Franklin', 'TN', NULL, 'Optum Website', NULL, '2019-03-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(156, 65, 'KSU', 'Manager', 'Assistant Director of Systems', 'Manhattan', 'KS', NULL, 'KSU Website', NULL, '2019-03-03', 'Closed', NULL, NULL, NULL, NULL, NULL),
(157, 25, 'CivicPlus', 'Developer', 'Implementation Analyst', 'Manhattan', 'KS', NULL, 'Indeed.com', NULL, '2019-03-03', 'Closed', NULL, NULL, NULL, NULL, NULL),
(158, 115, 'Toshiba', 'Manager', 'Software Development Mgr', 'Durham', 'NC', NULL, 'Linked In', NULL, '2019-03-06', 'Closed', NULL, NULL, NULL, NULL, NULL),
(159, 115, 'Toshiba', 'Manager', 'Software Manager - Test', 'Durham', 'NC', NULL, 'Linked In', NULL, '2019-03-06', 'Closed', NULL, NULL, NULL, NULL, NULL),
(160, 123, 'Vlocity', 'Manager', 'Delivery Manager', 'Atlanta', 'GA', NULL, 'Glassdoor.com', NULL, '2019-03-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(161, 114, 'TalentBridge', 'Manager', 'Application Delivery Manager', 'Charlotte', 'NC', NULL, 'Linked In', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(162, 7, 'Apex Consulting', 'Manager', 'Project Delivery Manager', 'Charlotte', 'NC', NULL, 'Linked In', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(163, 11, 'Ascend Learning', 'Manager', 'Software Engineering Development Manager', 'Kansas City', 'MO', NULL, 'Linked In', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(164, 105, 'Society Insurance', 'Manager', 'IT Delivery Manager', 'Fond Du Lac', 'WI', NULL, 'Linked In', NULL, '2019-03-19', 'Closed', NULL, NULL, NULL, NULL, NULL),
(165, 116, 'Travelers Insurance', 'Manager', 'IS Development Manager', 'Hartford', 'CT', NULL, 'Greatinsurancejobs.com', NULL, '2019-03-19', 'Closed', NULL, NULL, NULL, NULL, NULL),
(166, 49, 'Glatfelter Insurance Group', 'Manager', 'Applications Manager', 'York', 'PA', NULL, 'Greatinsurancejobs.com', NULL, '2019-03-19', 'Closed', NULL, NULL, NULL, NULL, NULL),
(167, 65, 'KSU', 'Developer', 'Application Developer', 'Manhattan', 'KS', NULL, 'KSU Website', NULL, '2019-03-21', 'Closed', NULL, NULL, NULL, NULL, NULL),
(168, 43, 'First Data', 'Manager', 'Manager IT / Application Development Manager', 'Coral Springs', 'FL', NULL, 'Linked In', '', '2018-07-13', 'Closed', '', '', '', '', ''),
(169, 19, 'Boats.com', 'Manager', 'Software Development Manager', 'Miami', 'FL', NULL, 'Linked In', NULL, '2018-06-28', 'Closed', NULL, NULL, NULL, NULL, NULL),
(170, 18, 'Boats Group', 'Manager', 'Software Development Manager', 'Miami', 'FL', NULL, 'Linked In', NULL, '2018-07-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(171, 51, 'Hard Rock Hotels and Casinos', 'Manager', 'Manager, IT SW Development', 'Hollywood', 'FL', NULL, 'Linked In', NULL, '2018-07-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(172, 27, 'Consultis', 'Manager', 'Software Development Manager', 'Hollywood', 'FL', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(173, 23, 'Chewy', 'Manager', 'Software Development Manager', 'Dania Beach', 'FL', NULL, 'Linked In', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(174, 104, 'SNI Companies', 'Manager', 'Quick Start - Application Development Manager', 'Oakland Park', 'FL', NULL, 'Dice.com', NULL, '2018-08-02', 'Closed', NULL, NULL, NULL, NULL, NULL),
(175, 132, 'Team Focus Insurance Group', 'QA', 'QA Analyst', 'Sunrise', 'FL', NULL, 'GreatInsuranceJobs.com', NULL, '2018-10-23', 'Closed', NULL, NULL, NULL, NULL, NULL),
(176, 36, 'Digital Product Owner', 'Product Owner', 'Assurant', 'Miami', 'FL', NULL, 'GreatInsuranceJobs.com', NULL, '2018-10-23', 'Closed', NULL, NULL, NULL, NULL, NULL),
(177, 110, 'Stanton Optical', 'Manager', 'Director, Application Development', 'Palm Beach', 'FL', NULL, 'Linked In', NULL, '2019-02-01', 'Closed', NULL, NULL, NULL, NULL, NULL),
(178, 122, 'Verizon', 'Developer', 'Junior Full Stack Developer', 'Temple Terrace', 'FL', NULL, 'Glassdoor.com', NULL, '2019-03-14', 'Closed', NULL, NULL, NULL, NULL, NULL),
(179, 60, 'Jerry Pate Turf and Irrigation Systems', 'Manager', 'Information Technology Manager', 'Pensacola', 'FL', NULL, 'Dice.com', NULL, '2018-12-13', 'Closed', NULL, NULL, NULL, NULL, NULL),
(180, 98, 'Revature', 'Developer', 'Software Developer', 'Pensacola', 'FL', NULL, 'Linked In ', NULL, '2019-02-20', 'Closed', NULL, NULL, NULL, NULL, NULL),
(181, 124, 'Walt Disney Company', 'Manager', 'Manager, Technology', 'Orlando', 'FL', NULL, 'Linked In ', NULL, '2019-02-22', 'Closed', NULL, NULL, NULL, NULL, NULL),
(182, 77, 'Navy Federal Credit Union', 'Manager', 'Project Manager I,II or III', 'Pensacola', 'FL', NULL, 'company website', NULL, '2019-03-18', 'Closed', NULL, NULL, NULL, NULL, NULL),
(183, 28, 'Cornerstone onDemand', 'Manager', 'Delivery Assurance Manager', 'Tallahassee', 'FL', NULL, 'businessworkforce.com', NULL, '2019-03-20', 'Closed', NULL, NULL, NULL, NULL, NULL),
(196, 87, 'Pheonix Staff', 'Manager', 'Application Development Manager', 'Las Vegas', 'NV', NULL, 'Linked In', '', '2019-05-05', 'Applied', '', '', '', '', ''),
(197, 150, 'PWC', 'Developer', 'Junior Software Developer', 'Las Vegas', 'NV', NULL, 'Linked In', '', '2019-05-05', 'Applied', '', '', '', '', ''),
(198, 151, 'Roberts Communication Network', 'Developer', 'Junior Web Developer', 'Las Vegas', 'NV', NULL, 'Linked In', '', '2019-05-05', 'Applied', '', '', '', '', ''),
(199, 152, 'ASG Renaissance', 'Developer', 'Developer I', 'Las Vegas', 'NV', NULL, 'Linked In', '', '2019-05-05', 'Applied', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `recruiter_id` int(11) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `locations` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`recruiter_id`, `company`, `first_name`, `last_name`, `phone`, `email`, `locations`, `notes`) VALUES
(2, 'CSS Staffing ', 'Ken', 'Koehn', '(402) 973-1389', 'kkoehn@cssus.net', 'Omaha, NE', 'Great relationships in Omaha'),
(3, 'Aureus Group', 'Linda', 'Aughenbaugh', '(402) 895-1966 x1058', 'laughenbaugh@aureusgroup.com', 'NE, IA, KS, MO', 'Terrible - Use only in case of emergency'),
(4, 'TEK Systems', 'Erin', 'Determan', 'T 402.952.1544 | M 402.212.6476', 'edeterma@TEKsystems.com', 'Omaha, NE', 'The Best!!'),
(5, 'TEK Systems', 'Traci', 'Kruid', '402-952-1577', 'tkruid@teksystems.com', 'Omaha, NE', 'Knows everyone in Omaha'),
(6, 'CSS Staffing ', 'Becky', 'Fields', '402-973-1415', 'bfields@cssus.net', 'Omaha, NE', 'Senior Recruiter.'),
(7, 'Apex', 'Mallory', 'Sickler', 'Office: 402-384-7094  Mobile: 402-540-8082', 'msickler@apexsystemsinc.com', 'Omaha, NE', 'Senior Account Manager '),
(8, 'Robert Half', 'Abbey', 'Clark', '402-319-3900', 'abbey.clark@rht.com', 'Omaha, Ne', 'Lots of Contacts'),
(9, 'Cordova Group', 'Chris', 'Bruner', '402-651-6813', 'chris@cordova.solutions', 'Omaha, NE', 'Recruiter'),
(11, 'Lucas Group', 'David', 'Burleson', '813.765.0146 ', 'dburleson@lucasgroup.com', 'Tampa, FL and Area', 'Lame - Do Not Use'),
(12, 'Alluvion', 'Bryan', 'Pray', 'O 904.296.0329 M 904.881.2023', 'bryan@alluvionstaffing.com', 'Tampa and Jacksonville, FL', 'Good recruiter, will return calls'),
(13, 'TechUSA', 'Morgin', 'Phillips', '(813)775-2565', 'mphillips@techusa.com', 'Tampa, FL', NULL),
(14, 'Apex', 'Samanatha (Sam)', 'Macchi', 'Office: 813-281-8800  |  Mobile: 941-320-6344 ', 'smacchi@apexsystems.com ', 'Florida, FL', 'Account Manager'),
(15, 'Apex', 'Theresa', 'Wolf', 'Office: 813-281-8800  |  Mobile: 352-422-2698 ', 'twolf@apexsystems.com', 'Tampa, FL', NULL),
(18, 'QuestPro Consultants', 'Ben', 'Volkmer', 'Unknow n', 'bvolkmer@questpro.com', 'Austin, TX', 'Mostly Accounting and Insurance focused. Usually looking for execs'),
(24, 'Phoenix Staff', 'Bill', 'Knoche', '(602) 842-7181', 'TJ@phoenixstaff.com', 'Phoenix AZ, Las Vegas, NV, Austin TX', NULL),
(31, 'Phoenix Staff', 'Heather', 'Otto', '702-637-7422', 'heather@phoenixstaff.com', 'Las Vegas, NV', 'Exclusively LV'),
(44, 'TEKSystems', 'Kevin', 'McMahon', 'T 423.414.3625 | M 865.385.2176', 'KMcMahon@teksystems.com', 'Chattanooga, TN', 'UNUM Rep for TEK'),
(45, 'Collabera Inc. ', 'Tania', 'Dwivedi', '+1 (804) 955-4264   ', 'tania.dwivedi@collabera.com', 'Richmond, VA', 'Replied to Soliciation email on 10/15'),
(46, 'Insight Global', 'Leah', 'Mitton', '704.357.3177', 'leah.mitton@insightglobal.net', 'Charlotte, NC', 'No Longer with I.G.'),
(48, 'Adams Gabbert', 'Kendra', 'Kruse', 'O: 913-735-4390 | D: 913-709-8795', 'KRKruse@adamsgabbert.com', 'Kansas City, MO', 'https://adamsgabbert.com/career-portal/'),
(49, 'The Judge Group', 'Artesia', 'Peluso', '404-445-6869 ext. 3410 ', 'apeluso@judgemail.net', 'Atlanta, GA', 'Landed my position at FD.'),
(51, 'Phoenix Staff', 'TJ', 'Wagadia', '(602) 842-7181', 'TJ@phoenixstaff.com', 'Phoenix AZ, Las Vegas, NV, Austin TX', NULL);

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
  ADD PRIMARY KEY (`job_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`recruiter_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`state_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `company_watch`
--
ALTER TABLE `company_watch`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `job`
--
ALTER TABLE `job`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `recruiter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
