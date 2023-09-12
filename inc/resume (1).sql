-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2023 at 10:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resume`
--

-- --------------------------------------------------------

--
-- Table structure for table `rms_cities`
--

CREATE TABLE `rms_cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_cities`
--

INSERT INTO `rms_cities` (`id`, `city`) VALUES
(1, 'Mumbai'),
(2, 'Delhi'),
(3, 'Bangalore'),
(4, 'Hyderabad'),
(5, 'Ahmedabad'),
(6, 'Chennai'),
(7, 'Kolkata'),
(8, 'Surat'),
(9, 'Pune'),
(10, 'Jaipur'),
(11, 'Lucknow'),
(12, 'Kanpur'),
(13, 'Nagpur'),
(14, 'Indore'),
(15, 'Thane'),
(16, 'Bhopal'),
(17, 'Visakhapatnam'),
(18, 'Pimpri-Chinchwad'),
(19, 'Patna'),
(20, 'Vadodara'),
(21, 'Ghaziabad'),
(22, 'Ludhiana'),
(23, 'Agra'),
(24, 'Nashik'),
(25, 'Faridabad'),
(26, 'Meerut'),
(27, 'Rajkot'),
(28, 'Kalyan-Dombivali'),
(29, 'Vasai-Virar'),
(30, 'Varanasi'),
(31, 'Srinagar'),
(32, 'Aurangabad'),
(33, 'Dhanbad'),
(34, 'Amritsar'),
(35, 'Navi Mumbai'),
(36, 'Allahabad'),
(37, 'Ranchi'),
(38, 'Howrah'),
(39, 'Coimbatore'),
(40, 'Jabalpur'),
(41, 'Gwalior'),
(42, 'Vijayawada'),
(43, 'Jodhpur'),
(44, 'Madurai'),
(45, 'Raipur'),
(46, 'Kota'),
(47, 'Guwahati'),
(48, 'Chandigarh'),
(49, 'Solapur'),
(50, 'Hubballi-Dharwad'),
(51, 'Bareilly'),
(52, 'Moradabad'),
(53, 'Mysore'),
(54, 'Gurgaon'),
(55, 'Aligarh'),
(56, 'Jalandhar'),
(57, 'Tiruchirappalli'),
(58, 'Bhubaneswar'),
(59, 'Salem'),
(60, 'Mira-Bhayandar'),
(61, 'Thiruvananthapuram'),
(62, 'Bhiwandi'),
(63, 'Saharanpur'),
(64, 'Gorakhpur'),
(65, 'Guntur'),
(66, 'Bikaner'),
(67, 'Amravati'),
(68, 'Noida'),
(69, 'Jamshedpur'),
(70, 'Bhilai'),
(71, 'Warangal'),
(72, 'Cuttack'),
(73, 'Firozabad'),
(74, 'Kochi'),
(75, 'Bhavnagar'),
(76, 'Dehradun'),
(77, 'Durgapur'),
(78, 'Asansol'),
(79, 'Nanded'),
(80, 'Kolhapur'),
(81, 'Ajmer'),
(82, 'Gulbarga'),
(83, 'Jamnagar'),
(84, 'Ujjain'),
(85, 'Loni'),
(86, 'Siliguri'),
(87, 'Jhansi'),
(88, 'Ulhasnagar'),
(89, 'Nellore'),
(90, 'Jammu'),
(91, 'Sangli-Miraj & Kupwad'),
(92, 'Belgaum'),
(93, 'Mangalore'),
(94, 'Ambattur'),
(95, 'Tirunelveli'),
(96, 'Malegaon'),
(97, 'Gaya'),
(98, 'Jalgaon'),
(99, 'Udaipur'),
(100, 'Maheshtala'),
(101, 'Tirupur'),
(102, 'Davanagere'),
(103, 'Kozhikode'),
(104, 'Akola'),
(105, 'Kurnool'),
(106, 'Rajpur Sonarpur'),
(107, 'Bokaro'),
(108, 'South Dumdum'),
(109, 'Bellary'),
(110, 'Patiala'),
(111, 'Gopalpur'),
(112, 'Agartala'),
(113, 'Bhagalpur'),
(114, 'Muzaffarnagar'),
(115, 'Bhatpara'),
(116, 'Panihati'),
(117, 'Latur'),
(118, 'Dhule'),
(119, 'Rohtak'),
(120, 'Korba'),
(121, 'Bhilwara'),
(122, 'Brahmapur'),
(123, 'Muzaffarpur'),
(124, 'Ahmednagar'),
(125, 'Mathura'),
(126, 'Kollam'),
(127, 'Avadi'),
(128, 'Rajahmundry'),
(129, 'Kadapa'),
(130, 'Kamarhati'),
(131, 'Bilaspur'),
(132, 'Shahjahanpur'),
(133, 'Bijapur'),
(134, 'Rampur'),
(135, 'Shivamogga?(Shimoga)'),
(136, 'Chandrapur'),
(137, 'Junagadh'),
(138, 'Thrissur'),
(139, 'Alwar'),
(140, 'Bardhaman'),
(141, 'Kulti'),
(142, 'Kakinada'),
(143, 'Nizamabad'),
(144, 'Parbhani'),
(145, 'Tumkur'),
(146, 'Hisar'),
(147, 'Ozhukarai'),
(148, 'Bihar Sharif'),
(149, 'Panipat'),
(150, 'Darbhanga'),
(151, 'Bally'),
(152, 'Aizawl'),
(153, 'Dewas'),
(154, 'Ichalkaranji'),
(155, 'Tirupati'),
(156, 'Karnal'),
(157, 'Bathinda'),
(158, 'Jalna'),
(159, 'Barasat'),
(160, 'Kirari Suleman Nagar'),
(161, 'Purnia'),
(162, 'Satna'),
(163, 'Mau'),
(164, 'Sonipat'),
(165, 'Farrukhabad'),
(166, 'Sagar'),
(167, 'Rourkela'),
(168, 'Durg'),
(169, 'Imphal'),
(170, 'Ratlam'),
(171, 'Hapur'),
(172, 'Anantapur'),
(173, 'Arrah'),
(174, 'Karimnagar'),
(175, 'Etawah'),
(176, 'Ambernath'),
(177, 'North Dumdum'),
(178, 'Bharatpur'),
(179, 'Begusarai'),
(180, 'New Delhi'),
(181, 'Gandhidham'),
(182, 'Baranagar'),
(183, 'Tiruvottiyur'),
(184, 'Puducherry'),
(185, 'Sikar'),
(186, 'Thoothukudi'),
(187, 'Rewa'),
(188, 'Mirzapur'),
(189, 'Raichur'),
(190, 'Pali'),
(191, 'Ramagundam'),
(192, 'Vizianagaram'),
(193, 'Katihar'),
(194, 'Haridwar'),
(195, 'Sri Ganganagar'),
(196, 'Karawal Nagar'),
(197, 'Nagercoil'),
(198, 'Mango'),
(199, 'Bulandshahr'),
(200, 'Thanjavur');

-- --------------------------------------------------------

--
-- Table structure for table `rms_client`
--

CREATE TABLE `rms_client` (
  `clientID` int(10) NOT NULL,
  `clientName` varchar(200) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `branch` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `pincode` int(10) NOT NULL,
  `note` text NOT NULL,
  `createdOn` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_client`
--

INSERT INTO `rms_client` (`clientID`, `clientName`, `logo`, `branch`, `email`, `phone1`, `phone2`, `address`, `city`, `state`, `country`, `pincode`, `note`, `createdOn`) VALUES
(3, 'Creative Agency', '', 'Consultancy', 'creative.agency@ca.co.uk', '1234567890', '0987654321', '', '', '', '', 0, '', '0000-00-00'),
(4, 'Creative Agency', '', 'Consultancy', 'creative.agency@ca.co.uk', '1234567890', '0987654321', '123', 'Delhi', 'India', 'Delhi', 0, 'NIL', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `rms_country`
--

CREATE TABLE `rms_country` (
  `countryID` int(10) NOT NULL,
  `country` varchar(200) NOT NULL,
  `currency` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_country`
--

INSERT INTO `rms_country` (`countryID`, `country`, `currency`) VALUES
(1, 'Afghanistan', 'AFN'),
(2, 'Albania', 'ALL'),
(3, 'Algeria', 'DZD'),
(4, 'American Samoa', 'USD'),
(5, 'Andorra', 'EUR'),
(6, 'Angola', 'AOA'),
(7, 'Anguilla', 'XCD'),
(8, 'Antarctica', 'NA'),
(9, 'Antigua and Barbuda', 'XCD'),
(10, 'Argentina', 'ARS'),
(11, 'Armenia', 'AMD'),
(12, 'Aruba', 'AWG'),
(13, 'Australia', 'AUD'),
(14, 'Austria', 'EUR'),
(15, 'Azerbaijan', 'AZN'),
(16, 'Bahamas', 'BSD'),
(17, 'Bahrain', 'BHD'),
(18, 'Bangladesh', 'BDT'),
(19, 'Barbados', 'BBD'),
(20, 'Belarus', 'BYR'),
(21, 'Belgium', 'EUR'),
(22, 'Belize', 'BZD'),
(23, 'Benin', 'XOF'),
(24, 'Bermuda', 'BMD'),
(25, 'Bhutan', 'BTN'),
(26, 'Bolivia', 'BOB'),
(27, 'Bosnia and Herzegowina', 'BAM'),
(28, 'Botswana', 'BWP'),
(29, 'Bouvet Island', 'BVT'),
(30, 'Brazil', 'BRL'),
(31, 'British Indian Ocean Territory', 'USD'),
(32, 'Brunei Darussalam', 'USD'),
(33, 'Bulgaria', 'BGN'),
(34, 'Burkina Faso', 'XOF'),
(35, 'Burundi', 'BIF'),
(36, 'Cambodia', 'KHR'),
(37, 'Cameroon', 'XAF'),
(38, 'Canada', 'CAD'),
(39, 'Cape Verde', 'CVE'),
(40, 'Cayman Islands', 'KYD'),
(41, 'Central African Republic', 'XAF'),
(42, 'Chad', 'XAF'),
(43, 'Chile', 'CLP'),
(44, 'China', 'CNY'),
(45, 'Christmas Island', 'AUD'),
(46, 'Cocos (Keeling) Islands', 'AUD'),
(47, 'Colombia', 'COP'),
(48, 'Comoros', 'KMF'),
(49, 'Congo', 'USD'),
(50, 'Cook Islands', 'NZD'),
(51, 'Costa Rica', 'CRC'),
(52, 'Cote D\'Ivoire', 'XOF'),
(53, 'Croatia', 'HRK'),
(54, 'Cuba', 'CUP'),
(55, 'Cyprus', 'CYP'),
(56, 'Czech Republic', 'CZK'),
(57, 'Denmark', 'DKK'),
(58, 'Djibouti', 'DJF'),
(59, 'Dominica', 'XCD'),
(60, 'Dominican Republic', 'DOP'),
(61, 'East Timor', 'USD'),
(62, 'Ecuador', 'USD'),
(63, 'Egypt', 'EGP'),
(64, 'El Salvador', 'USD'),
(65, 'Equatorial Guinea', 'XAF'),
(66, 'Eritrea', 'ERN'),
(67, 'Estonia', 'EEK'),
(68, 'Ethiopia', 'ETB'),
(69, 'Falkland Islands (Malvinas', 'USD'),
(70, 'Faroe Islands', 'DKK'),
(71, 'Fiji', 'FJD'),
(72, 'Finland', 'EUR'),
(73, 'France', 'EUR'),
(74, 'France, Metropolitan', 'EUR'),
(75, 'French Guiana', 'EUR'),
(76, 'French Polynesia', 'EUR'),
(77, 'French Southern Territories', 'EUR'),
(78, 'Gabon', 'XAF'),
(79, 'Gambia', 'GMD'),
(80, 'Georgia', 'GEL'),
(81, 'Germany', 'EUR'),
(82, 'Ghana', 'GHS'),
(83, 'Gibraltar', 'GIP'),
(84, 'Greece', 'EUR'),
(85, 'Greenland', 'DKK'),
(86, 'Grenada', 'XCD'),
(87, 'Guadeloupe', 'EUR'),
(88, 'Guam', 'USD'),
(89, 'Guatemala', 'GTQ'),
(90, 'Guinea', 'GNF'),
(91, 'Guinea-bissau', 'XOF'),
(92, 'Guyana', 'GYD'),
(93, 'Haiti', 'HTG'),
(94, 'Heard and Mc Donald Islands', 'AUD'),
(95, 'Honduras', 'HNL'),
(96, 'Hong Kong', 'HKD'),
(97, 'Hungary', 'HUF'),
(98, 'Iceland', 'ISK'),
(99, 'India', 'INR'),
(100, 'Indonesia', 'IDR'),
(101, 'Iran', 'IRR'),
(102, 'Iraq', 'IQD'),
(103, 'Ireland', 'EUR'),
(104, 'Israel', 'ILS'),
(105, 'Italy', 'EUR'),
(106, 'Jamaica', 'JMD'),
(107, 'Japan', 'JPY'),
(108, 'Jordan', 'JOD'),
(109, 'Kazakhstan', 'KZT'),
(110, 'Kenya', 'KES'),
(111, 'Kiribati', 'AUD'),
(112, 'Korea', 'KPW'),
(113, 'Korea, Republic of', 'KPW'),
(114, 'Kuwait', 'KWD'),
(115, 'Kyrgyzstan', 'KGS'),
(116, 'Lao ', 'LAK'),
(117, 'Latvia', 'LVL'),
(118, 'Lebanon', 'LBP'),
(119, 'Lesotho', 'LSL'),
(120, 'Liberia', 'LRD'),
(121, 'Libyan Arab Jamahiriya', 'LYD'),
(122, 'Liechtenstein', 'CHF'),
(123, 'Lithuania', 'LTL'),
(124, 'Luxembourg', 'EUR'),
(125, 'Macau', 'MOP'),
(126, 'Macedonia', 'MKD'),
(127, 'Madagascar', 'MGA'),
(128, 'Malawi', 'MWK'),
(129, 'Malaysia', 'MYR'),
(130, 'Maldives', 'MVR'),
(131, 'Mali', 'XOF'),
(132, 'Malta', 'MTL'),
(133, 'Marshall Islands', 'USD'),
(134, 'Martinique', 'EUR'),
(135, 'Mauritania', 'MRO'),
(136, 'Mauritius', 'MUR'),
(137, 'Mayotte', 'EUR'),
(138, 'Mexico', 'MXN'),
(139, 'Micronesia', 'USD'),
(140, 'Moldova, Republic of', 'MDL'),
(141, 'Monaco', 'EUR'),
(142, 'Mongolia', 'MNT'),
(143, 'Montserrat', 'XCD'),
(144, 'Morocco', 'MAD'),
(145, 'Mozambique', 'MZN'),
(146, 'Myanmar', 'MMK'),
(147, 'Namibia', 'NAD'),
(148, 'Nauru', 'AUD'),
(149, 'Nepal', 'NPR'),
(150, 'Netherlands', 'EUR'),
(151, 'Netherlands Antilles', 'ANG'),
(152, 'New Caledonia', 'XPF'),
(153, 'New Zealand', 'NZD'),
(154, 'Nicaragua', 'NIO'),
(155, 'Niger', 'XOF'),
(156, 'Nigeria', 'NGN'),
(157, 'Niue', 'NZD'),
(158, 'Norfolk Island', 'AUD'),
(159, 'Northern Mariana Islands', 'USD'),
(160, 'Norway', 'NOK'),
(161, 'Oman', 'OMR'),
(162, 'Pakistan', 'PKR'),
(163, 'Palau', 'USD'),
(164, 'Panama', 'USD'),
(165, 'Papua New Guinea', 'PGK'),
(166, 'Paraguay', 'PYG'),
(167, 'Peru', 'PEN'),
(168, 'Philippines', 'PHP'),
(169, 'Pitcairn', 'NZD'),
(170, 'Poland', 'PLN'),
(171, 'Portugal', 'EUR'),
(172, 'Puerto Rico', 'USD'),
(173, 'Qatar', 'QAR'),
(175, 'Romania', 'RON'),
(176, 'Russian Federation', 'RUR'),
(177, 'Rwanda', 'RWF'),
(178, 'Saint Kitts and Nevis', 'XCD'),
(179, 'Saint Lucia', 'XCD'),
(180, 'Saint Vincent and the Grenadines', 'XCD'),
(181, 'Samoa', 'WST'),
(182, 'San Marino', 'EUR'),
(183, 'Sao Tome and Principe', 'STD'),
(184, 'Saudi Arabia', 'SAR'),
(185, 'Senegal', 'XOF'),
(186, 'Seychelles', 'SCR'),
(187, 'Sierra Leone', 'SLL'),
(188, 'Singapore', 'SGD'),
(189, 'Slovakia (Slovak Republic', 'SKK'),
(190, 'Slovenia', 'EUR'),
(191, 'Solomon Islands', 'SBD'),
(192, 'Somalia', 'SOS'),
(193, 'South Africa', 'ZAR'),
(194, 'South Georgia', 'GBP'),
(195, 'Spain', 'EUR'),
(196, 'Sri Lanka', 'LKR'),
(197, 'St. Helena', 'SHP'),
(198, 'St. Pierre and Miquelon', ' '),
(199, 'Sudan', 'SDG'),
(200, 'Suriname', 'SRD'),
(201, 'Svalbard and Jan Mayen Islands', 'NOK'),
(202, 'Swaziland', 'ZAR'),
(203, 'Sweden', 'SEK'),
(204, 'Switzerland', 'CHF'),
(205, 'Syrian Arab Republic', 'SYP'),
(206, 'Taiwan', 'TWD'),
(207, 'Tajikistan', 'RUB'),
(208, 'Tanzania, United Republic of', 'TZS'),
(209, 'Thailand', 'THB'),
(210, 'Togo', 'XOF'),
(211, 'Tokelau', 'NZD'),
(212, 'Tonga', 'TOP'),
(213, 'Trinidad and Tobago', 'TTD'),
(214, 'Tunisia', 'TND'),
(215, 'Turkey', 'TRY'),
(216, 'Turkmenistan', 'TMM'),
(217, 'Turks and Caicos Islands', 'USD'),
(218, 'Tuvalu', 'TVD'),
(219, 'Uganda', 'UGX'),
(220, 'Ukraine', 'UAH'),
(221, 'United Arab Emirates', 'AED'),
(222, 'United Kingdom', 'GBP'),
(223, 'United States', 'USD'),
(224, 'United States Minor Outlying Islands', 'USD'),
(225, 'Uruguay', 'UYU'),
(226, 'Uzbekistan', 'UZS'),
(227, 'Vanuatu', 'VUV'),
(228, 'Vatican City State (Holy See', 'USD'),
(229, 'Venezuela', 'VEB'),
(230, 'Viet Nam', 'USD'),
(231, 'Virgin Islands (British', 'VND'),
(232, 'Virgin Islands (U.S.', 'VND'),
(233, 'Wallis and Futuna Islands', 'XPF'),
(234, 'Western Sahara', 'MAD'),
(235, 'Yemen', 'YER'),
(236, 'Yugoslavia', 'YUN'),
(237, 'Zaire', ''),
(238, 'Zambia', 'ZMK'),
(239, 'Zimbabwe', 'ZWD');

-- --------------------------------------------------------

--
-- Table structure for table `rms_experience`
--

CREATE TABLE `rms_experience` (
  `experienceID` int(10) NOT NULL,
  `employee` varchar(200) DEFAULT NULL,
  `experience` int(3) DEFAULT NULL,
  `profileID` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_experience`
--

INSERT INTO `rms_experience` (`experienceID`, `employee`, `experience`, `profileID`) VALUES
(16, 'User1', 5, 1),
(17, 'User2', 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rms_industry`
--

CREATE TABLE `rms_industry` (
  `industryID` int(10) NOT NULL,
  `industry` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_industry`
--

INSERT INTO `rms_industry` (`industryID`, `industry`) VALUES
(1, 'Software, Hardware, EDP'),
(2, 'Sales'),
(3, 'Marketing &amp; Communications'),
(4, 'Advertising, DM, PR, MR and Event Management'),
(5, 'Entertainment / Media / Journalism'),
(6, 'Human Resource, Admin &amp; Recruitment'),
(7, 'Purchase/ Supply Chain'),
(8, 'Finance &amp; Accounts'),
(9, 'Banking'),
(10, 'Insurance'),
(11, 'Financial Services'),
(12, 'Legal/ Law'),
(13, 'Production/ Engg/ R&amp;D'),
(14, 'Pharmaceutical/ Biotechnology'),
(15, 'Retail Chains'),
(16, 'Travel/ Airlines'),
(17, 'Hotels/ restaurants'),
(18, 'Health Care'),
(19, 'Telecom/ ISP'),
(20, 'Call Centre, BPO, Customer Service'),
(21, 'Construction'),
(22, 'Oil &amp; Gas'),
(23, 'Senior Management'),
(24, 'Export/ Import'),
(25, 'Distribution &amp; Delivery/ Courier'),
(26, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `rms_jobs`
--

CREATE TABLE `rms_jobs` (
  `jobID` int(10) NOT NULL,
  `jobUniqueID` varchar(200) DEFAULT NULL,
  `projectName` varchar(200) DEFAULT NULL,
  `jobTitle` varchar(200) NOT NULL,
  `totalPositions` int(10) DEFAULT NULL,
  `minExp` int(2) DEFAULT NULL,
  `maxExp` int(2) DEFAULT NULL,
  `jobType` varchar(200) DEFAULT NULL,
  `jobCity` varchar(200) DEFAULT NULL,
  `jobCountry` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `duration` varchar(200) DEFAULT NULL,
  `salary` varchar(200) DEFAULT NULL,
  `primSkills` text DEFAULT NULL,
  `secSkills` text DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `jobDesc` text DEFAULT NULL,
  `clientID` int(10) DEFAULT NULL,
  `visaID` varchar(200) DEFAULT NULL,
  `createdOn` date NOT NULL,
  `modifiedOn` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `email` varchar(200) DEFAULT NULL,
  `showEmail` varchar(10) DEFAULT NULL,
  `hotJob` varchar(10) DEFAULT NULL,
  `userID` int(10) DEFAULT NULL,
  `showJob` varchar(10) DEFAULT NULL,
  `showClient` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_jobs`
--

INSERT INTO `rms_jobs` (`jobID`, `jobUniqueID`, `projectName`, `jobTitle`, `totalPositions`, `minExp`, `maxExp`, `jobType`, `jobCity`, `jobCountry`, `priority`, `duration`, `salary`, `primSkills`, `secSkills`, `startDate`, `endDate`, `jobDesc`, `clientID`, `visaID`, `createdOn`, `modifiedOn`, `status`, `email`, `showEmail`, `hotJob`, `userID`, `showJob`, `showClient`) VALUES
(3, '1', NULL, 'Digital Marketer I - Ziggo', 2, 1, 5, 'UI/UX Designer', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(4, '2', NULL, 'Sales Specialist', 2, 1, 5, 'Specialist', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(5, '15', NULL, 'Digital Marketing Executive', 2, 1, 5, 'Executive', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(6, '16', NULL, '\r\nMarketing Content Product Owner', 3, 2, 7, 'Executive', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(7, '17', NULL, 'Digital Analyst', 4, 1, 10, 'Analyst', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(8, '3', NULL, 'UI UX Designer', 1, 1, 6, 'UI UX', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(9, '5', NULL, 'Digital Marketing Manager', 1, 1, 6, 'Marketing Manager', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(10, '6', NULL, 'Software Engineer', 3, 2, 6, 'Developer', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(11, '7', NULL, 'Software Developer', 1, 2, 4, 'Developer', 'Athens', 'Greece', NULL, NULL, ' $3500 - $4000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(12, '8', NULL, 'Java Developer', 1, 2, 4, 'Developer', 'Athens', 'Greece', NULL, NULL, ' 55000 - 65000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(13, '9', NULL, 'Mechanical Engineer', 1, 2, 4, 'Mechanical', 'Athens', 'Greece', NULL, NULL, ' 15000 - 22000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(14, '10', NULL, 'Mechanical Specialist', 1, 2, 4, 'Mechanical', 'Athens', 'Greece', NULL, NULL, ' 55000 - 66000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(15, '11', NULL, 'Senior Software Engineer', 1, 2, 4, 'Developer', 'Athens', 'Greece', NULL, NULL, ' 55000 - 66000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(16, '12', NULL, 'Product Owner', 10, 2, 14, 'Product', 'Athens', 'Greece', NULL, NULL, ' 55000 - 66000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no'),
(17, '12', NULL, 'Content Writer', 10, 2, 14, 'Product', 'Birmingham', 'United Kingdom', NULL, NULL, ' 25000 - 25000', 'Required Knowledge, Skills, and Abilities\r\nSystem Software Development\r\nMobile Applicationin iOS/Android/Tizen or other platform\r\nResearch and code , libraries, APIs and frameworks\r\nStrong knowledge on software development life cycle\r\nStrong problem solving and debugging skills', 'Education + Experience\r\n3 or more years of professional design experience\r\nDirect response email experience\r\nEcommerce website design experience\r\nFamiliarity with mobile and web apps preferred\r\nExperience using Invision a plus', NULL, NULL, 'It is a long established fact that a reader will beff distracted by vbthe creadable content of a page when looking at its layout. The pointf of using Lorem Ipsum is that it has ahf mcore or-lgess normal distribution of letters, as opposed to using, Content here content here making it look like readable.', NULL, NULL, '2023-08-01', '2023-09-01', 1, NULL, NULL, NULL, NULL, NULL, 'no');

-- --------------------------------------------------------

--
-- Table structure for table `rms_qualifications`
--

CREATE TABLE `rms_qualifications` (
  `qualificationID` int(11) NOT NULL,
  `qualification` varchar(200) DEFAULT NULL,
  `specialization` varchar(200) DEFAULT NULL,
  `percentage` int(3) DEFAULT NULL,
  `profileID` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_qualifications`
--

INSERT INTO `rms_qualifications` (`qualificationID`, `qualification`, `specialization`, `percentage`, `profileID`) VALUES
(1, 'MBBS', 'Microbiology', 0, 1),
(2, 'B.Arch', 'Chemistry', 0, 1),
(3, 'MSc', 'Computer Science', 7, 1),
(4, 'BCom', 'Mechanical', 9, 2);

-- --------------------------------------------------------

--
-- Table structure for table `rms_resume`
--

CREATE TABLE `rms_resume` (
  `resumeID` int(10) NOT NULL,
  `userID` int(10) NOT NULL,
  `isPrimary` char(1) NOT NULL,
  `title` varchar(200) NOT NULL,
  `experienceMonths` varchar(10) NOT NULL,
  `primarySkills` text NOT NULL,
  `secondySkills` text NOT NULL,
  `industryID` int(10) NOT NULL,
  `currentSalary` double(10,2) NOT NULL,
  `currentSalaryType` char(1) NOT NULL,
  `expectedSalary` double(10,2) NOT NULL,
  `expectedSalaryType` char(1) NOT NULL,
  `currencyID` int(10) NOT NULL,
  `currentLocation` varchar(200) NOT NULL,
  `preferredLocation` varchar(200) NOT NULL,
  `relocate` char(1) NOT NULL,
  `availableFrom` date NOT NULL,
  `visaID` int(10) NOT NULL,
  `qualificationDetails` longtext NOT NULL,
  `experienceDetails` longtext NOT NULL,
  `resumeLocation` varchar(200) NOT NULL,
  `resumeText` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rms_resume_details`
--

CREATE TABLE `rms_resume_details` (
  `resumeID` int(10) NOT NULL,
  `title` varchar(200) NOT NULL,
  `fileName` varchar(200) NOT NULL,
  `resumeText` text NOT NULL,
  `userID` int(10) NOT NULL,
  `profileID` int(10) NOT NULL,
  `status` varchar(200) NOT NULL,
  `password` varchar(20) NOT NULL DEFAULT '12345',
  `des_role` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_resume_details`
--

INSERT INTO `rms_resume_details` (`resumeID`, `title`, `fileName`, `resumeText`, `userID`, `profileID`, `status`, `password`, `des_role`) VALUES
(49, '', '02-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 55, 0, '1', '$2y$10$HpOpuIr9kx.Qu', 'Develop'),
(50, '', '02-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 56, 0, '1', '$2y$10$WksU989bc.o0a', 'Sales'),
(51, '', '02-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 57, 0, '1', '$2y$10$YTYf.NasTQRQG', 'Developer'),
(52, '', '02-Avinash_Vadivel Resume DevOps.docx', 'EDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 58, 0, '1', '$2y$10$N6JJzAG1jSd.F', 'Developer'),
(53, '', '03-99-Resume.docx', '                                                \nAVINASH VADIVEL \nCoventry, CV1 2DR sofia1@gmail.com  7721567890       2595879-354451365760-22542500Visa Type: Tier 2\nDOB: 05-05-1993\nEDUCATION \nXYZ College of Engineering and Technology\n2011 - 2015\nGPA: 8.8 / 10.0\nB.E. Computer Science Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nConfigured clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\n                                            ', 59, 0, '1', '$2y$10$nPJYhDYG5He1h', ''),
(54, '', '05-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 60, 0, '1', '$2y$10$N4Uzy1BWCRJgv', 'Developer'),
(55, '', '06-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 61, 0, '1', '$2y$10$mTcM2td.80RrZ', 'Software'),
(56, '', '08-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nLANGUAGES\nAngular, TypeScript, HTML5, CSS, Bootstrap\nJava, Python, jQuery, SQL, PostgreSQL, Django\nApache Kafka\nMobile & Desktop Design\nDevOps Skills\nAWS & Azure\nWindows & Linux\nPython, XML & JSON\nGIT, Bit Bucket, Jenkins\nDocker & Kubernetes\nDynatrace, Splunk & Prometheus\nLog Analytics, JBoss, Apache Tomcat\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 62, 0, '1', '$2y$10$iYHUqpEdjz/Y/', 'Sale');
INSERT INTO `rms_resume_details` (`resumeID`, `title`, `fileName`, `resumeText`, `userID`, `profileID`, `status`, `password`, `des_role`) VALUES
(57, '', '09-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nNivetha Thangavel\nJava\nPhysics\nSocial\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 63, 0, '1', '$2y$10$GvQb1CPuJ/ooI', 'Mech'),
(58, '', '10-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nNivetha Thangavel\nJava\nPhysics\nSocial\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 64, 0, '1', '$2y$10$rnILppH29v.If', 'Mechanic'),
(59, '', '11-Avinash_Vadivel Resume DevOps.docx', '                                                \nMythili S \nCoventry, CV1 2DR avinashvadivel9@gmail.com  7721544183       avinashvadivel.com2595879-354451365760-22542500Visa Type: Tier 4 Dependent\nDOB: 25-01-1996\nEDUCATION \nRMK College of Engineering and Technology\n2013 - 2017\nGPA: 7.2 / 10.0\nB.E. Electronics and Communication Engineering\nSKILLSET \nNivetha Thangavel\nJava\nPhysics\nSocial\n\nWORK EXPERIENCE\nTECHNICAL CONSULTANT\nTEMENOS, UK | Sep 2022 – Present\nInstalled and configured Temenos Data Hub (TDH) on-premises and in cloud environments using technologies such as Docker and Kubernetes.\nConfigured TDH clusters and nodes, including network settings, security, and backup and recovery procedures.\nMonitored TDH performance and health using tools such as Prometheus, Grafana, and ELK stack.\nMaintained TDH by applying patches and upgrades, ensuring compatibility with other systems, and troubleshooting issues.\nDesigned, developed, and maintained data pipelines to collect, process, and transform data from various sources using technologies such as Apache Kafka, Apache NiFi, and Python.\nCollaborated with data scientists and business analysts to understand their data needs and helped them gain insights from the data using SQL and Tableau.\nProvided technical consulting to clients, helping them to design and implement data solutions that meet their specific needs.\nContainerized applications and services using Docker and deployed them to Kubernetes clusters.\nImplemented and configured monitoring and alerting using Prometheus and Grafana to ensure system availability and performance.\nAutomated manual operation activities using Ansible and Terraform to streamline the deployment and configuration of infrastructure and applications.\nSITE RELIABILITY ENGINEER - DEVOPS\nTEMENOS, India | Sep 2021 – Apr 2022\nCreated CI/CD Pipelines in Azure DevOps environments by providing their dependencies and tasks. \nAlso have experience on implementing and managing continuous delivery systems and methodologies on Azure and created END-END Automation with CI Procedures using Jenkins & automated Maven builds by integrating them with Continuous Integration tools Jenkins.\nProfessional in designing, developing and enhancing automated scripts using Python.\nWorked in Dynatrace, Splunk and Azure log analytics - Designing and Developing dashboards.\nUsed Kubernetes to orchestrate the deployment, scaling and management of Docker Containers.\nExperience in all phases of software development life cycle SDLC, which includes User Interaction, Business Analysis, Design, Development, Implementation, Integration, Documentation, Testing and Deployment.\nDATA ENGINEERING\nApache Hadoop, Apache Spark, Apache Kafka\nOracle, MySQL, PostgreSQL, Microsoft SQL Server\nMongoDB\nETL (extract, transform, load) processes, data modeling\nTableau, Power BI\nMachine learning & AI\nEXTRA CURRICULAR\nAthletics Club – Lead\nFitness Sessions\nHave ideated, designed 90 days fitness event, presented to Decathlon India and bagged sponsorship for corporate level national event.\nINTERN PROJECTS\nAdaptive learning gamification\nAI bot for job apply procedure\nInfluencer analytics by  integrating real time data from social media platforms\nASSOCIAT\nCOGNIZANT, India| Feb 2021 - Sep 2021\nPerformed requirements gathering and design analysis for customer contact history for customer relationship management.\nWorked as business requirements analysts with subject matter experts to identify and understand requirements.\nSupported data warehouse projects with logical and physical data modeling in Oracle environment and assured accurate delivery of DDL to the development teams.\nDocumented the data requirements and system changes into detailed functional specifications.\nTook ownership of Source to Target Mapping and tracked and maintained changes.\nPerformed Extraction, Transformation and Loading (ETL) using Informatica power center.\nDesigned and implemented data profiling and data quality improvement solution to analyze, match, cleanse, and consolidate data before loading into data warehouse.\nExtensively used ERWin to design Logical, Physical Data Models, and Relational database and to perform forward/reverse engineering.\nResponsible in designing new FACT or Dimension Tables to existing Models.\nCreated deployment workflows in Jenkins which includes pre release, release and Post release steps. Configured Git with Jenkins and schedule jobs using POLL SCM option.\nExpertise in Development of web-based applications in Java, J2EE (Servlets, JSP and JDBC), REST and Restful Web Services, SOAP, Spring Boot, Hibernate, XML, HTML, CSS; Application servers (IBM Websphere, Tomcat and Oracle Weblogic).\nSENIOR SYSTEMS ENGINEER \nINFOSYS LTD, India | Feb2018 - Feb 2021\nEnhanced suite of secure web applications for the clients to plan, manager and deliver insights of goods transport.\nDeveloped demands and supply of units for customers, managing orders, viewing the order details, automating demand based on supply of units using Java and Angular.\nInvolved in installing and configuring IBM Websphere server for development.\nExcellent skills in applying Continuous Integration, Continuous Deployment and Continuous Delivery processes & tools [ Used Tools: Git, Maven, Jenkins, Apache Tomcat, Shell Scripting, Docker, etc.].\nPerformed root cause analysis to provide resolutions for production issues.\nAWARDS & CERTIFICATIONS\nCompleted Google UX Designer Professional Certification.\nHave won Brand Ambassador of Infosys and Significant Contribution to Infosys award for the year 2020.\n                                            ', 65, 0, '1', '$2y$10$6t4VoqTZpZWfB', 'Mechanic');

-- --------------------------------------------------------

--
-- Table structure for table `rms_role`
--

CREATE TABLE `rms_role` (
  `roleID` int(10) NOT NULL,
  `roleName` varchar(200) NOT NULL,
  `status` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_role`
--

INSERT INTO `rms_role` (`roleID`, `roleName`, `status`) VALUES
(1, 'Admin', 'Y'),
(2, 'Staff', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `rms_user`
--

CREATE TABLE `rms_user` (
  `userID` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL DEFAULT '12345',
  `firstName` varchar(200) NOT NULL,
  `lastName` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `age` int(3) NOT NULL,
  `gender` char(1) NOT NULL,
  `phone1` varchar(50) NOT NULL,
  `phone2` varchar(50) NOT NULL,
  `mobile` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(200) NOT NULL,
  `state` varchar(200) NOT NULL,
  `country` varchar(200) NOT NULL,
  `pincode` int(10) NOT NULL,
  `roleID` int(10) NOT NULL,
  `profileID` int(10) NOT NULL,
  `lastLoginDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `createdOn` date NOT NULL,
  `confirmationCode` varchar(200) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `des_role` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rms_user`
--

INSERT INTO `rms_user` (`userID`, `username`, `password`, `firstName`, `lastName`, `email`, `dob`, `age`, `gender`, `phone1`, `phone2`, `mobile`, `address`, `city`, `state`, `country`, `pincode`, `roleID`, `profileID`, `lastLoginDate`, `createdOn`, `confirmationCode`, `status`, `des_role`) VALUES
(65, '', '$2y$10$orGBFF.ytZSofDSO1ZboT.ql6581Rd8nGOMlVOzNE/tqE/6k1aukW', 'Sofia', '', 'sofia1@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$RlIgYm9SBCNdEy49QTWereWAj9KTIYQIJmWeCVX9T6z', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-09-01 10:05:14', '0000-00-00', '', 1, 'Mechanic'),
(64, '', '$2y$10$08P8H4HI/fMP6JOqdbkKSO7CA3nuflA57c5NQOBwk9.ELrxcYfARW', 'Sofia', '', 'sofia@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$TfyBmdRKG89Fjoe4S/eeI.RI1r23aI9dXi1w.m5nAiL', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-09-01 09:50:20', '0000-00-00', '', 1, 'Mechanic'),
(63, '', '$2y$10$v7VIcGVtP5CoLgg9Va9k0.XRq3PMfl4tedn/q51aWwQO2nM.JhlBq', 'Nivetha T', '', '21@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$/CW3nnh0E.rjQfYeY7OSzuIas1jDcST4YJBvFU4AZMq', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-29 23:05:57', '0000-00-00', '', 1, 'Mech'),
(62, '', '$2y$10$/rJ5FYEMX0CSbfPR9CunGusbuwmh8khQEbYHwZmXmcoy4xthzxYVG', 'Avinash', '', '1@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$f75tkjHRfqP/mj1B2FPHTekwXYcPK3pL7.zYq/qrdX2', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-29 22:57:17', '0000-00-00', '', 1, 'Sale'),
(61, '', '$2y$10$uCDZUJraJwIcXBPgkyncneu1G1AOAS68ikfpghFJAuRfsj6.LgYUa', 'Avinash', '', '12345@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$j1VmQR.rYrhU3lWRIsl9UuUEqQdEHrWmnQFYgVneUn3', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-29 20:37:16', '0000-00-00', '', 1, 'Software'),
(60, '', '$2y$10$jARJpUe1gO/ZdG1sdCdrJejkVgt6Cn4y9ps4dZJ2nw7f/D7PNtPle', '\nMythili S', '', '1234@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$RSXi353Mz0CCos8Vs3spP.oj9oK/8KB0esIW1IxQqSE', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-29 19:40:41', '0000-00-00', '', 1, 'Developer'),
(59, '', '$2y$10$kqOP.T.tLob67FR3sniNhODEP9Q3XpwxeuYTL/ISRBXTLcmClq1wu', 'Hippy Hopper', '', 'hopperr@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$Mx6coAJpp4aYJPPLnj294Ov53PXYMH/nru.d8x3Uexl', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-26 14:42:27', '0000-00-00', '', 1, ''),
(58, '', '$2y$10$jKAVrpIIvL7awAKd.jZmbO9OaA9/NstucDvoYz32xw1pteW.Jo/g2', 'Jonathan Miller', '', 'j.mill@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$KKh66HNyTsCBdIoV3NKypeA/fCJcy6zTmowAipnLxc.', '', 'London', '', '', 0, 0, 0, '2023-08-24 12:46:26', '0000-00-00', '', 1, 'Developer'),
(57, '', '$2y$10$lsoVWNpsfNt6bgq0kMlHSuAsW0dVwzOvaklLxmIS.8Mo7EV9gRKGS', '\nMythili S', '', '123@gmail.com', '0000-00-00', 0, '', '', '', '$2y$10$tUCrcy4ACC.UaMxy79WqhOv1acqU0w3ep5c7.p50qfu', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-17 17:07:57', '0000-00-00', '', 1, 'Developer'),
(56, '', '$2y$10$Y4tdiSMn9vKdx30hpoZmgenfAxP0GCLaZxl94u5j6r9E/nfHvwZoi', '\nMythili S', '', 'a66@gmial.com', '0000-00-00', 0, '', '', '', '$2y$10$vZM6qFTz9/HQIb/KLly2vemP6MofIW/lO.bd27bC4cW', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-15 16:37:17', '0000-00-00', '', 1, 'Sales'),
(55, '', '$2y$10$y/.g7tioGRaz2/yH4lnhk.vxfzDVIAhdKAi6/FlnNzLy1SMWLyqZG', '\nMythili S', '', 'a65@gmail.com', '0000-00-00', 0, '', '', '', '7721544183', '', '\nCoventry, CV1 2DR', '', '', 0, 0, 0, '2023-08-15 16:30:19', '0000-00-00', '', 1, 'Develop');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `rms_cities`
--
ALTER TABLE `rms_cities`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `rms_client`
--
ALTER TABLE `rms_client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `rms_experience`
--
ALTER TABLE `rms_experience`
  ADD PRIMARY KEY (`experienceID`);

--
-- Indexes for table `rms_jobs`
--
ALTER TABLE `rms_jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Indexes for table `rms_qualifications`
--
ALTER TABLE `rms_qualifications`
  ADD PRIMARY KEY (`qualificationID`);

--
-- Indexes for table `rms_resume`
--
ALTER TABLE `rms_resume`
  ADD PRIMARY KEY (`resumeID`);

--
-- Indexes for table `rms_resume_details`
--
ALTER TABLE `rms_resume_details`
  ADD PRIMARY KEY (`resumeID`);

--
-- Indexes for table `rms_role`
--
ALTER TABLE `rms_role`
  ADD PRIMARY KEY (`roleID`);

--
-- Indexes for table `rms_user`
--
ALTER TABLE `rms_user`
  ADD PRIMARY KEY (`userID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `rms_cities`
--
ALTER TABLE `rms_cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `rms_client`
--
ALTER TABLE `rms_client`
  MODIFY `clientID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rms_experience`
--
ALTER TABLE `rms_experience`
  MODIFY `experienceID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rms_jobs`
--
ALTER TABLE `rms_jobs`
  MODIFY `jobID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `rms_qualifications`
--
ALTER TABLE `rms_qualifications`
  MODIFY `qualificationID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rms_resume`
--
ALTER TABLE `rms_resume`
  MODIFY `resumeID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rms_resume_details`
--
ALTER TABLE `rms_resume_details`
  MODIFY `resumeID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `rms_role`
--
ALTER TABLE `rms_role`
  MODIFY `roleID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rms_user`
--
ALTER TABLE `rms_user`
  MODIFY `userID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
