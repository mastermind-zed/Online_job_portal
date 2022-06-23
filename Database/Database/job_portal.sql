-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2021 at 03:04 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'You have been registered successfully', 'success'),
(2, '4568', 'Unknown error occurred while performing your request', 'danger'),
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Professional qualification was added successfully', 'success'),
(11, '0521', 'Qualification was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Professional qualification was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(40, '0369', 'Job Ad has been updated successfully', 'success'),
(42, '2974', 'An error occurred while sending your message', 'danger'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Accounting'),
(2, 'Auditing'),
(3, 'Banking and Financial Services'),
(4, 'CEO and General Management'),
(5, 'Community and Social Devt'),
(6, 'Creative and Design'),
(7, 'Education and Training'),
(8, 'Engineering and Construction'),
(9, 'Farming and Agribusiness'),
(10, 'Healthcare and Pharmaceutical'),
(11, 'HR & Administration'),
(12, 'IT and Telecoms'),
(13, 'Legal'),
(14, 'Manufacturing'),
(15, 'Marketing,Media and Brand'),
(16, 'Mining and Natural Resources'),
(17, 'Project & Programme Mngmnt'),
(18, 'Research,Science and Biotech'),
(19, 'Security'),
(20, 'Strategy and Consulting'),
(21, 'Tourism and Travel'),
(22, 'Trades and Services'),
(23, 'Transport and Logistics'),
(24, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'Bermuda'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `country`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('5609558107', 'Technical Engineer', 'Takoradi', 'Ghana', 'IT and Telecoms', 'Full-time', '2 Years', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'CM858235891', 'August 06, 2021', '01/09/2021', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext,
  `avatar` longblob,
  `services` longtext,
  `expertise` longtext,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('CodeLytical', '', '-', '-', '-', '2021', 'codehacker768@gmail.com', '-', 'Software Company', 'Takoradi', 'Chinese Avenue', '12345', 'Ghana', '2332488659', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 0xffd8ffe000104a46494600010100000100010000ffdb0043000302020302020303030304030304050805050404050a070706080c0a0c0c0b0a0b0b0d0e12100d0e110e0b0b1016101113141515150c0f171816141812141514ffdb00430103040405040509050509140d0b0d1414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414141414ffc000110801ec01e003012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f8aa8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00b1fd9b762cbed9f659bec99dbf68f2cf979f4ddd3355ebee2f80167e1ed63f65fd3b42f13155d375ad427d395db0364af2318c827a36e51b4ff007b15f217c47f016a3f0d3c63a97877545fdfda4984942e1668cf2922fb1183edc8ea0d0060dee9f75a6ca22bcb69ad652bb824f194623d707b706a0afacbf6a2f87b7ff13bf689d0fc3ba5dd595adfdce831b446fa464472b25c31505558e7009e9d8d7ccd71e11d4adbc60fe187847f6ba5f7f671881e0cde679781edba8033b4fd32f3559fc8b1b59ef26da5bcbb78cbb607538009c0aaf5f427c30f861f117e1afc6ebdf0df86b56d093c511694d2cf24aef25bac2c50ec24c79dff00eadba74c73dabca3e1ff00c37f11fc5cf11cb61a1db0baba20cf71712b048a15279776e8064f41c9ec280392a2bdab5bfd943c5161a0df6a7a4eb3a078a458217bbb5d12f4cd344075f94a8ce003c75e3806bc56800a2bb3f863f08fc47f167539ed341b78fcbb640f737b74fe5dbdba9ce0bb60f5c1e002783c706baef15fecbbe27f0ff876ef5cd3753d17c59a759026edb42bbf3de0007cc594a8e0639c64e39c633401e73a0f8275cf13697abea3a5e9d2de59691109efa68c8c4084310cd93e88dd3d2b12be94fd94346bcf10fc35f8cfa5e9f09b8bebdd32dede0881037bb25d05193c0e48eb5cf5d7ec7fe301a4dddce9dab787f5bbfb342f71a569b7c64b94c76c6d0377b67e99a00f0ca2b53c3be17d57c57af5ae89a4d94b79aa5cc9e5c76c830c4f39ce7a0001249e000735ec373fb1ef8b920b88acf5af0e6a9ad5b21926d16d350dd748076da540cfd481ef401e155674bd36eb59d4ad34fb285ae2f2ee64820857abc8cc15547d4902b4fc31e08d6fc5fe2983c39a5d84b3eaf2c862fb330da50ae776fcfdd0b83927a62bdebc17fb29f89fc29f10bc317a359f0feab71a6eab69737ba7585f16b98235990b314655c800127bf1c66803e7af11f87352f09eb373a4eaf68f63a8db1026b7931b90950c338f620fe359d5efff001a3c0179f123f69ff17e8f637fa769d3e239bced4e730c585822e370079e7a63d6a2b3fd8d3c59a8dc2c169e24f095cced9223875277638ebc08b3401e1ba7e9979aacfe458dacf7936d2de5dbc65db03a9c004e0557af73f82be0df1f7847e366b5e1df096a3a3c3e24b0b49a0b89ee59a4b6640d1ee0a761390db7b0fba7e87c3e799ee6692691b749231766f524e49a006515e93f0f7f67df167c4ef0a4fafe80967716d0df7d81e192629286da8c5f95da10070492d9e0f078cef78a3f654f14787bc257be21b4d5743f1159d8217bc8f47bc333c0072c4e540381c9e73c1e2803c628aedacfe11eb3a87c2ebdf1edacf653e8f65722d6e604918dc44c59402cbb718f9d4e77746a4f86ff0009759f89d0ebb3e993d95a5ae8b6bf6bbcb8bf919111393d555b9c2b1ff809a00e49f4cbc8ec12f9ad675b291cc697263223661d5436304fb557af5dd6d7c6f0fecd3e1f92eaf74f6f034baabc76b6d1a9fb509b3331dc76e36e5643f7b3c8fc2d697fb2878bf51d2345d624d4343d3f46d4eca3be5bfbdbd31450ac8aac88e4a67790dd172383cf4c8078c515edbabfec81e3dd3f54d3eded069babd85eab3aeab67739b5891464b48cc06d18e7a1cf6cd54f18fecb9e27f0af84aefc476baa689e24d36c866edb46bb3334007de24151903be39039c6050078ed1457abf847f667f1878d7c23a3f8974d7d34693a8bcabe6dc5c98fecab1b3ab3cc4ae157287182c791c75c00794515eb1f117f66bf127c3ef0a8f12ff68693e20d0d5d6396f347b932ac449c0dd951c6481919e48ce2b9af863f08fc47f167539ed341b78fcbb640f737b74fe5dbdba9ce0bb60f5c1e002783c7068038ca2bd87c57fb2ef89fc3fe1dbbd734dd4b45f15e9d6409ba6d0aefcf78001f31652a3818e71938e718af1ea0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00fa56e5da2fd8734e74628ebae12aca7041f35f915775845fda8be0a2eaf0a893e2278462f2eed17fd65f5b75dd81d4900b0ff0068301f78579cdc7c5ed1e5fd9bedbe1f0b6befed98b513766731a7d9f66f66c6edfbb3823f87f1ae5be107c4dbff0084de39b0d7ecb749121f2eeed81c09e0246f4faf423d0806803dc7f6b7f145cf82ff0068af0a6bd684f9fa7e9b6970aa0e37059e7257e84641fad77571f0d6c350fda874bf1ec5b4f85ee347ff008495ae48fddef440839ec72d1c9f9d7cf3fb4afc59d23e3178f6d35cd16daf6d6d22d3a3b464bf44472eb248c480aec31871dfd6bd5a4f88fa8f87ff00628b282f97cbbed4e59746b091befbda1725cfb2ed568ff05a0083f657f16cde3bfda73c4be209f21f50b2ba9955baa21962d8bf82851f8579f7ecf9e15f10f88349f18496de29ff008443c1f15aa8d76fcc5bfcc8f0f88d4752705fa11d7b920566fecdbf15749f83ff001026d7759b7bdb9b47b192d4258223c9b99d083866518f94f7ab9f023e3268de03d2fc47e18f15e993ea9e15d7e309722d081344c011b972464107d411b411e8403dabf659d33e1a697f12a74f08788f5cd5b5292c254923bdb558adde3dc849e80e721700fad7c7da9c6b16a5768802a2caea00ec031afa6be1e7c6cf833f067c446e7c33e1ff00106a06e2368ee354bb31b4d1a7511c485946090324e0f1debe67d627b7bad5efa6b5f305ac93bbc5e6801f616257700480718cf26803e858257f0efec48f36964c52eb1ad98b5092338629961b49f4223418ff0068fa9ce1fec61ab5f59fc6eb0b0b72cd63a8db5c437b167e4645899d4b0e870caa3fe047d6b23e0efc67d2fc29e1ad67c19e31d2a5d73c1bab309648add809eda518fde479207f0a9c6460a823b83d5e99f177e19fc1bd3b53b8f86ba7eb5a8f89efe06823d535df2c2d9a375d817193c03d39c0c9238201d07c1841e1bf0e7ed211e952b5b25940e96b242db4a2afdb029523a60015e51fb306a979a5fc73f0a1b291d0cf726de5553c3c4ca43023b8c73f500f6ad7f803f1b743f85ba378e2d7c41a55d6badaf43044b6ea14c5285f3848b2b330203090720377e3d7a8f0a7c51f82df0b6ea5f13f85342f105f789bcb75b3b4d55d0c166cca41c3039c60919f98e09e99a00f47f845a2e93a3fed01f1ab514716874f8a578a78e3321b712317959547520af41f4ef5e7be098be0d7823c6da6f8a2d7e29eaf3dfd9dc8b86f374a9bf7d9277ab1d99f98120fd4d7997c33f8e3ac7803e255df8b6645d4db52697fb4ed5ced5b9491b738ef83bb0475e98e84d772fe23fd9eedb543e218741f135c5c6ef357c3d29885987ce704e49d99edb88c76ed401e91f09f5ed1359f8b7f1a7c61e1675b909a51b9d3e6113231664df210ac0104c883b7f3af9b3e0dea3769f197c1b74b7328b9975bb5124dbcef70f3287c9ea770241f5c9ad9f86df1b5fe1d7c54bbf14d8e8d6f6fa55fb4915ce8b6c48885bbb03b1339e57008edc63001c577da7fc40f80fe0ef1459f8ab43f0f788af3514b849e3d3ae9a35b6b23bb25946ecb32f254162320723ad00717fb54a349fb40f8b5114b334d000a06493f678f8af45b4487f651f85e6ee5543f143c4d06224600b6996c7b9f46fe6c00e421cf316df19fc1377fb48ea5f10758d2753bcd11b6cd656a2188cc93ac71a2bba1936e06d723e63ced3f4d6f1b7c49f81bf107c4b79aeeb965e3dbad42e9b2cdbad82a28e1514799c281c01fd68023fd86e692e3e365f4b2bb4b2be9570ceee72cc4cb112493d4d7ced5edff0008be2d7823e12fc66d53c41a758eb6de1592c5ad6d6091227bb566f2892ff385c6e57e8dd08fc3c42803e8df01df5c587ec51e3d7b699e077d7522668db04a30b40cbf420907d41a77ec59233ea7e3fb56626de5d064678cf4621b0323e8cdf99ae1341f8aba4e97fb3bf893c032dbdeb6b1a96aa97d0ce8886dd5079190cc5b703fba6e8a47239f493f679f8b5a47c27d4fc4973abdb5edca6a5a63d9422c9118ab960416dceb81c76c9f6a00ebbf645d5a0d76e3c5df0e351936d9789b4e9041b8fdd9d14f207aed25bfed98ab925adc7c1afd95754b6b9436baff008bb5592cdd08c3a410b1471f4fddb8ff00b6a2bc63e136a1a9e95f133c2f75a346d36a49a8c021897fe5a12e0143ec4120fb135eb1fb6c78dd7c45f151344b665367a141e490a38f3e4fde4a7f5407dd4d0049e2dff9323f057fd8c727f2bba93f69db9947c28f8236e257101d011cc5b8ed2c20b700e3d704f3ee6b88d73e2ae93a9fecede1ef00c56f7abac69dab3dfcb3ba20b768cf9fc2b6eddbbf7abd540e0f3ea7c62f8ada4fc41f077c39d274eb7bd86e7c39a50b1bb6ba44547711c2b98cab125731b7500f238f400f45d2f56bc87f619d4e38ee6445fed8fb361588fdd99118a7d092723dcfad56fd901da5d0be2b5ab92d6d2684c5e23f758ed94723e84fe75c45afc5ad1e1fd9caf3e1fb5b5e9d666d4c5eace234fb3ecca1c16dfbb3f29fe1fc68f80bf16b47f85f69e338b55b6bdb86d674c6b2b73671a305721b97dceb81f30e99fa50079357d1be34beb8b6fd89bc010c333c715c6af3a4c88d812289ae9806f51900e3d40f4af9cabd53c4bf15749d63f67cf09780e1b7bd5d5f49d425bb9e691105bb233ce40560c589fdeaf551d0fe201ddfc0691a6fd9b3e325bbb168638639550f40c51b27ebf22fe4296095fc3bfb123cda59314bac6b662d4248ce18a6586d27d088d063fda3ea73c3fc30f8b5a4782fe14fc41f0c5f5b5ecb7fe208523b592de3431210ac0ef25c11f787406a5f83bf19f4bf0a786b59f0678c74a975cf06eacc25922b76027b69463f791e481fc2a719182a08ee0806bfec61ab5f59fc6eb0b0b72cd63a8db5c437b167e428b133a923a1f99547fc08fad79378e6c2db4bf1af882cacc05b4b6d42e21842f408b2b05fd00af6dd33e2e7c33f837a76a971f0d74fd6751f13dfc0d6f1ea9aef9616cd1baec0b8c9e01c639c0c92383f3c49234aeceec5dd892ccc7249f52680128a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028afa63e197ecc5a5fc4efd9fe4f1069ed3c7e2e679fecfba5fdcca637388cae38dc06339e0906be6a9e096d679219a368a68d8a3c6e30cac0e0820f420d006c7827c490f847c5161abcfa4d9eb90dab33369fa8461e09b2a570c0f5c6723dc0ae83e2cfc62d67e2dea36536a10db5858584461b2d36c536416ea719c0f538193ec3815d1fed41f0c344f853f102cb47d05674b3974c8ae985c4be636f692553ce3a6105790d0014514e30c8b1ac851846c701c8e09fad00368a29c227319902318c1c17c700fa66801b453a385e5dde5a33ed1b8ed19c0f5a6d00145392192457644665419620642fd69b400515e9dfb33f87b4df157c6df0d695abd945a869d706e3cdb69d7723edb6958647b100fe15ca7c43d323d3fc7de2ab5b2b7f2aced353b989238d7e5891667551ec00005007394514e10c86232046318382f8e01f4cd00368a29eb048f1b48b1b346bf79c29c0fa9a006514538432344d204631a9c1703807eb400da28a7243248aec88cca832c546428f7f4a00f4bf853f1d2e7e12e917d0e97e1dd1eef579a56921d62f60df716c0a852aa7ae38ce338c93d6bcef53d4aeb58d46eafef677b9bcba95a69a6739677624b31f7249aad450014539219245764466541962a32147a9af59f829e1cd2359f03fc53bcd4ec20bc9f4ed13ceb39255c9825258065f43d2803c928a2bdbff681f0868be1bf879f08af74bd36dec6eb53d105c5ecb0a61ae24f2adcee6f53966fccd007885145140051453fc893caf37cb6f2b38dfb4e33f5a0065145140051450067a73400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f58f84bc65a8fc3ffd913c3de20d2a4d97b63e20f3141fbaebe648191bd994907d8d729fb4a78334df15e8da6fc5df09c7ff00126d6801a9c0bd6d6eba12c074c9054ffb433cefabd79ff263361ff61b3ffa31eb9bfd993e26d868da95ff0081bc5189bc21e261f66996438582761b564cf607804f63b4ff000d007adfc6ef1c2fc3ff00dad7c17aacec16c5b4ab7b6bbdd8dbe4c934e8c4e7fbb90dff0001ae1b55f8299fdb0a2f0f2c1ff12ab9be1ac8007cbf67e6675f61b95a3fcaa1fdbb46df8c1a68f4d1201ff91a7af57d33e22e9d27c018be2b3b8ff84af4fd0a4f0e094f2c673222a31f7c8593e8e7a5007926bbf13f40d73f69dd5f5ad57c3b71e2bb0b466b1d274bb38849e649190a8c53f8d49123e307961c715ebff0df5cf8cbe2cf16c161e3af075b9f03ea01e2b8b49ed2244b6428db7009dc79c0c36783dabc63f62fd4f49b2f889ab437775058eb379a6c9069575738da931232067f888e9ea011df9f46f84df063e23f867e2ce97af78f3c489059c572c105cea8676d4256565548d33ea73ce0803a500637ecd9e1ab1f0bfed2df117458a21369f61617f04513f3fbb5ba842a927bede3355be0e7ed3fe21f137c47d1bc2d79a668f1784f529fec4348b7b3558e08d810a14f7c719ce4119e076e8fe0fdb4969fb5cfc564954ab1b1be9003e8d710329fc4106be78fd9f3fe4b5f82bfec270ff3a00f60f895fb406abf04fe20ea3e11f02693a5689a0e9532a3c1f650ed74e5433b48c4e7ab103072001cd4bf1efe15e9be2df8f7e06b6d3604d2e2f15dac13de240a1769dcc6470318ddb07a72464f535e4ffb4cff00c976f18ffd7d8ffd16b5eddf1e3c651fc3ff008b3f07fc4332192dec74b85e655ebe59255f1efb49c500741e34d5be2bf817c4a741f867e054b2f06e9bb618916c91c5f607cecec4eec139190413d4939af22fdaf7c0763e1bf1178775fb1d306887c4363f69bad34285105c2edf3060700fcea081dc13debd07e277c38f8a3e32f15cde23f86de2ebed6bc2babb8b883ec7aeb42b6bb87cca55a400007380bc8ce3008af08f8e3a26afe19d76c349d6fc6e7c65a8416e1e75fb54b70b632b1f9a20ce48cf00f183d32071401aff00b23ffc9c2784feb75ffa4b35775e2dfdad3c4be0df891ad69ba2e97a55a787acb529e1934e16c3375895848eefd77b90c73efdfbf0bfb23ffc9c2784feb75ffa4b3576be2ffd937c59e32f891ab6a3a25d69b7fe1dd4b519ee0eaa9749b6dc348c5d5d33bb721241001e476ec00ef8cfe08f02f85be39f8535bd461fb0f8235eb64d52e6dade224060189408bc8573e5e40e9bdba555d5bf6cad7ecfc572c3a269fa5c7e0882630c1a39b350b35b038193d559979c0e067a1c7337c78f14f82bc67f1a7c2fe1bbdd4e65f076876a9a5dcea360ebb95f0c0b2b1560554f9609c1fbad8ed59f7ffb1af8ae7f1495d1ee2c6efc1f2c9e641afb5e44516dc9c8660082582f5da304f702801bf1d7e1af85bc25f1c3c2f2468ba7f83bc426d2fa78d4ec4b789e5db3018fbabb46ef6dc71c015ebff14fc63f157e1a789913c1fe15b5baf8736f1c5f66b7d36c5678a68b60dfbf665939c8c80063079efe45f1efc69e10f1ff00c69f0fe912ea130f06e8f043a54da8d93296c64ef910904155ca8ce0e769c678aecb4df831f17bc0de298bfe15a788df50f06c8eb259de4baa46f6c223cfef622707be4a29cf6a00e4bc2fe1af067c7cfda42d9743d1ee746f0e3c46f750d3e74588978f3bd5551885566299c11d5b18e2a6d7ff006c1f11e8de2db9b2f0fe9fa55af83ace76b78347168be5cd02b6df99ba82c0678c019e871cf5fe28f8afe13f02fed776bacd9cd6a74d96c574fd66eecc663170c5b74991d76e22dd8cfdd6ee2b8af10fec79e2dd47c653c9a049a7def84ef2669edf5a1791f951c0cc482cb9dc4807f841071d68028fed15e09f0b7867c6fe11f13e9f64f0f84bc4d6d0ea52e9f69842ab9569563ecbb91d481d0127b62bd360f885f182fae2d65f871f0f4e89e0889505b69b7363147e7a6064b96209c9ce0ae38c724f35ca7c4ff889e0eb9f8d5f0df434b88afbc23e1016f6335dfde89d8150c7d0a2848f27a1c3751d7aaf8cbf073e26f8ebe225f6b367e27861f05cfb25b7d41b54f2edad60da33f203db9390307ae79a00f33fdb2bc1ba6f857e26d95ce9b631e9abab69d1de5c5ac4a15526deeac401c0ced5ce3be4f7ac3fd92515ff00682f09ab286526eb82323fe3d66aee3f6e4b60be2af075c452fda6d24d15522b81d25db231c8fc194fe35c4fec8fff002709e13fadd7fe92cd401e83aa7ed49af7847e2bdf685a1695a569be19b6d5e4b59ac12d416b91e71592477ebbd8ee39ed919ce39e33f6afd0e1f02fc63d6acf4367d36c353b686e67b5b6631c4c581dc0a8c020b296c7a935c478d7fe4b56bdff00630cff00fa52d5e93fb6ff00fc96d6ff00b06dbff37a00f00afb7359f8233fc63f097c161712b5a787f4cf0ea4da8dca0cbed30dbed8d073966dadcf6009e4e01f88ebebdf89bf17fc43f0a3c07f026eb45ba296c7478ae2eacc9c25d058205d8fdf1877fa120f502803cd7c7bfb45897c69e1d8bc2764349f06f862ea37b1b044d86e421c33c99fef0dc307a0624f24d6e7ed1bf0c93c45f1d3c3771a20ce9de374b69a09a21f2866da8ec07a05d8e7fde359dfb437c3dd2f5ed1ed3e2bf829377873586cea36a839b1ba270db80e80b707b06f6615eb3fb3cf8bf45d6fe0c5878875cfdeea3f0ddae9a22d8c989a16d83f10768f78c5006178df5cf08ebffb56f86fc33ad0b68fc2be1d80584714e1440d71e59601f3c637796983c65003c135a1e32f8a1f1b3c21e2bd525baf08c72f81ec6590bdac3a7a496cd64a49dde60e47eec6724e01ea3b578c7ecede28d16e7e3dda6b5e3392dc8bc9a79c5c5d63ca4ba7c9576cf03e62704f4241ed9af52f16fc20f8f3e30f176a36d7be23b81e17bd91c3dec5ab88ec7ecac4e4792ac091b0e3694c1ee7bd00607c12f1ff0085af7f69594e85a4c9a4786bc4b6cf62fa75c05db1c8cbbbe500900174c01db79038a3f67af0959fc32f891e3ff1178814ff0066f82925b5df22fde96490c6847d5037fdf62bcafe20d9e83f0c3e2a44be0ad5e6d66db479a1996f666560d708db885640015040191dc1af7dfdadbc43a4695f0f2d4688e37f8eef62d6ae08e77431dbc4aa3e85bcb6faeea00c7d13e12c563fb67bda7949fd8f04cfe204638d9e51532291ec2560bff01af31b7f8fba97867e35788fc75a4dad95ec97f24f0c515ec4cc820660130010410a883af4c8ef5eed6be38b07fd9a25f887bffe2a78b413e1369463ccdde685539f5c1127e35f34fc28f84b7ff166f758b6b0bdb6b16d36c5afa46b9dd86552010300f3cd007197d76f7f7b717522a2c93c8d232c6bb541249381d873d2a1a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028aedfe1afc17f16fc579a71e1ed34cf6d01db35e4ee2282338ce0b1ea7d864f3d2b7fc71fb3178f7c09a2cbabdd5841a8e99002d3dce99389c420752cbc3003b9c6077c500709e09d174cf10f8a2c34ed63594f0fe9b3b32cda949119561014904a82339200ebdebd43e3578e7c2f63e07f0ffc38f03df49aa68ba6caf7b7da9ba14fb5dcb640201c7003376c7dd0338c9f14a2800a9eeafee6f8a1b9b896e0a0dabe6b96da3d067a541450014514500145145004f6da85d59a4896f73340920c3ac52150df5c75a828aef7e0cfc25b9f8c5e24bed1ed7518b4d7b5b092f8cb3465c305745db80473f38fca80382a9e1beb9b6865861b89628a51892347215c7b81d6a0a2800a9d6fee52d5ad96e655b663930873b09f5c74a828a002ac43a8dddbdbc96f15d4d1c127df8924215bea338355e8a002a74d42ea2b57b54b9992d9ce5a1590846fa8e9505140054ff6fb93682d7ed12fd941dde4ef3b33ebb7a54145001451450014514500145145005cd1ad2deff57b1b5bcbb1a7da4f3c71cd76c9bc408580672b9e768c9c7b57b7fc42f157837e1d7c259fe1ef81f5c6f125d6ad76b75abeaeb09890a260a44a3eaaa700903e6e79e3c128a002acff0069de7d93ec9f6b9fecbff3c3cc6d9ff7ce715da7c47f84b73f0efc37e0dd627d462bd4f12d80bf8e28e32a601b236da493c9fde0e47a57054005145140057a07c3cf8b52fc3af0878bb4bd3f4f56d535f816d06a66520dbc3f307555c7560c79c8c1c1ed5e7f450014515d9f8dfe1a4fe0af0bf8435a96fa3ba4f115a3ddc70a21530852a30493ce777e9401c65145140051451400514514005145140051451400514514005145140051451400514514005145140051451401f57785b45d43e29fec9761e1af02ddc635cd36f649356d2d2611cb7285e5201248c821a3233c1db8ce5715e5bf0dfc6de2bfd9afc5b7126b1e1fbe16b750bc171a4df17b78ae3d1b254838c7500f048ce0d50d5be1bf89fe17783bc2df1034bd64adaeae998eeb4b964492d5b00f97230c609218601c650d7b2feceff1775df8dbacdc7c3ff1ddb41e2ad16ead2490dccf0289adca8e18b281dce0363702473401e59f07fe10e95f1425f15f89359bf7f0df8434406e6e05b0f3650adb99634241fbaabd769cf000e78ea346f853f07fe289bbd2fc15e27d6f49f10450b4b02f88123f22e36f5e55463b77cf7da706b77f677d221f01e97f15b5fbebd9353f08e9264d3eeb47489251a8852c159f70c0001ea3fbcd9e073e77afea1a1fc679edbc3ff0efe16ae8bad99cdc79f6fa9199a48551f721565554192a739fe103bd00791dd5b49677335bca36cb1398dc673820e0f23e95ec9f0dfe0cf865fe1db78ffe216b577a4f87a4b836b636ba72ab5cddc80907048200cab0c63f858e4639f1ebfb19f4cbeb9b3ba8fcab9b791a195320ed75241191c7506ba6d43c29e308be1c699af5d4774fe0e96e1a1b47374af0a4b970c3ca0c4a1243f25467f1e403d1bc4df05fc1fe27f87daaf8c7e196b3a85f41a390da9e93aba28b8863233bd4a80300027be406e72b82df84df02fc33e37f843acf8cf5ef10dc680ba66a46de69b6abc22054898e136ee6918c855403d48e0f43bbfb2829d37c17f16b58bd42ba3c7a2b4323b8f91dca48428f538edfed0f5a83c1ff00f264be39ff00b1862ffdb4a0096d3e09fc33f895e0ff00105cfc3ad775b7d7b44b6374f69aba205b84009e02a8c67690083c123239cd72df007e0968ff0016f42f1addea9ac4ba2be890412c57395f2103894bbca0824aa88c1c02bdf9aeabf629ff0090f78ebfec012ffe86b50fecd5ff002477e3a7fd81a2ff00d177540177c1df05fe0ffc5196efc3be12f14ebdff00093c503cb05c6a10aadbdc15ea42ec076f238c86c64f38a83f629b39b4ff008bbe26b5b84f2e78342ba8a443fc2cb3c008fcc560fec65ff25e748ffaf6b9ff00d14d5dcfecaa507ed25e3f320cc62cf50dc07a7dae2cd0079c7c2af81d63adf84f51f1bf8e350b8f0f7832d10ac5340145c5ecbd02c418104678ce0e4f03a121da27c23f0ef8cfe0cf8bbc5fa0dc6a71eafa0dd65b4fba9a37536a4821ced40776cdc49c8198db8af53f8933e9dfb4dfc231a8782e39f4fbdf0848e1bc341b86b5e88ea838ddb17231fedaf3c13e79fb2078aa0d33e245c786b51c3693e28b3934e9e36fba5f69299fafce9ff03a00c5f833f08f49f1b7853c6de26f115d5ed9691e1fb412a359322b4d310c42659587f081f575e6b73c1df05bc1ba37c2fd3bc79f11b5ad4ad2cb5499a2b0d3b478d4cd260b0cb330239da4f6c0c73938ae97e3068cff00037f67ed37c04ce3fb5b5ed5ae2eef597f8e08a4c21fc42c047d1ab634ad5f48f85dfb33f861fc6fa6378eacb59b86b8d374a7db1c5623e63c4d82c09c93ff0002603804900f3bf187c23f036b3f0f350f197c3bf10dedc43a6b85bdd235a08970a0e3e642000719ce39c8cf3918ad9f06fc06f00cdf067c3df103c5de26d4346b6ba9e68eea2842bf9a56596348e15085831d809277701b81d4701e28d15be26a6a3e26f05f810f873c39a3daaadfc715ef9e88f976321670a492b81b4038da3d6bbff1dffc996fc38ffb0cdcff00e8cbba00f16f1dc3e1eb7f166a31f8527bab9f0f865fb24b7a312b2ed19ddc0fe2dc3a74c57a9fc26f817e19f1bfc21d67c67af7886e3405d335236f34db55e1102a44c709b77348c642aa01ea4707a1f0eafa1fc1ff00f264be39ff00b1862ffdb4a0096d3e09fc33f895e0ff00105cfc3ad775b7d7b44b6374f69aba205b84009e02a8c67690083c123239cd79d7c17f85761f116ef57bcd735c8f40f0ee8d6e2e6fae7832b03b8858d4f5385639c1c6070722bd1bf629ff0090f78ebfec012ffe86b581f003e1af87b58f0af8c7c71e28b29b59d37c390878f4982531fda24c1625d87214003f324e718201bfe1ff0082ff000b7e2e5bea7a6fc3cd7b5e83c4d656cd71141ada47e55d2a900e36a8c6490339e339da79af9cd94ab15604107041ed5f65fecaff0012349f19fc49b8b5d23e1d68fe1b8e0b19246bfb05669506e50119c8c61bf5c57c7dabff00c85af7febbbffe846803d3f59f843a437ecffa4fc42d16eef67bc179f63d5ad677431c0d92a1970a0804f97c12789052785fe11e9373f023c47f1035bbabdb79adee459e976f6ec8a93c8768cb65492016ec4708d5d7feca9791f8c342f1dfc31bc7022d774f6b9b2df8c25ca0c647bfdc6ffb654cfda465ff008413e1e7c3bf8651e239ac2c86a9a946bff3f126ec03f4266fc0ad00357e0b7c3bf86fe0ef0f6aff001275ad65b53d72dc5d5be99a2469fbb8c807e66607240619e4724800e335cdfc52f847e17d2fc1363e36f02f8865d5f40b89fecd35a6a0152eed9f9ea00191918e9dc1048391ec3f113c47e1df855f0d7c09e1ff001df878fc46d51ac04f6d34ee2d92d6221479492aa9620600f70a09ec2be79f17f862f3c4965a978f343f0937877c16674b78e35ba13470b85452a19b0cd96e73b703711da803b9d17e137c3cf08782744f10fc45f10ea2f75acc7e7da691a008da448b0083233038386538f9719c738359df183e0d683e1bf05689e3af05eaf73ab78575498db6dbe4027b7946fe1b00023e461d0608ef9cd769e29d0fc19fb3c7843c246f7c1b6fe32f116b9642f66bcd4e66fb345c29d8883838dd8f5ee4f381b3f1635a8fc45fb1fe87a8c3e1fb5f0cc171ad2b476165194882fef807507fbd8ce7de8035be27787bc0d7df09fe106a5e3ad72f74eb2b6d0618a0b1d2e30f7374ed0c04905810aaa146491fc4391dfca7e257c15f0b8f870bf103e1d6b379aae8114e2dafed7505027b5724004e00e32ca3047f129048adcfda72d663f09be08dc889cdbae829199429da18c16e4293ea40271ec6a6f8471b693fb277c52bebf063b1bc9a382d778c0797e45cafafccca323fba7d280317c3ff00067c11e11f87fa378b3e26eb5a95b1d6d4cba7691a32a999e2c03bd8b02304153db1b97924e0667c4bf82fa05a78060f1f780359b9d6bc2e67fb2ddc37e816e6ce427037e000464a8e83ef29e41c8e23c63e14f1868be1ff000dea3e218ee8e91a85b6fd2659ae9678fcadaa76a80cde5f057e5383edc71ec3f0c94e91fb20fc49bbd410a59dfdec50da071c4920310cafae0e39ff0064fa50067f873e06f8117e0b7873e2078abc49a96930decf345716f6c89234c565951238576e43111ee258903078f4ddb2fd9d7e1bfc47f0ac9e25f04f8baff4dd2f4d971abff6e46acd6f12aee67015579dbc8e483cf2318acbf1e7fc996fc36ffb0c5cff00e8cbba9fe0193ff0ce3f1979ff009778ff00f407a0097c2bf053e12fc588f50d17c0fe24d797c4f6b6cf7109d563410dce303a04040c903a8201ce0e0d78ff008f3e215d78bb42f0ae8973629663c3768d62acae4b4bf3649607a1e3a57a4fec45ff0025be3ffb075c7fecb5e2be27ff00919356ff00afb97ff436a00ea3e06f80ac7e26fc51d13c33a94f716d657de77992da95122ec8649060b023aa0edd335ea707c2bf823a4f8b66f08eafe2fd7ae75a3766cfed569122dac1217daa858a124838566fbb907a76e47f645ff9384f09fd6ebff4926ae63c61c7c6dd6ffec629ff00f4a5a803d5bc4bf027e1a7c1cd61ecbe20f8af54bdb9b86692cecb448143adbe4859262c0804e0f03d3bd717f1e7e0d699f0de2f0eeb5e1cd526d63c2fafdb99ece7b95025420292ad803390ea4700f504715d27edbdff0025b5ff00ec1b6ffcdeb47e3bff00c9b67c1cff00ae527fe802802f7c42f815f083e1078861b6f13f8a35f9d6e615960d3ac92379d572419247d800524600001f94f5edc17c6cf827a5782bc3fa1f8bfc23abcbae783b583b219ee0012c32609d8f80339dadd81054823d7aafdba61913e2e69d2346cb1be8f0857238622597383df191f9d4fabc4fa3fec45a545a8831cba86b5e6d94720c314dce7701e842b9cffb43d680313c3ff05bc1be10f01e93e2bf8a1acea365fdb2be669ba3e908a6e248b00ef62c080082a7b6032f3938aa7f107e0a7875fe1e9f1f7c3bd6aef59f0f413082fed350402eacd890016da00232cbdbf881c919c74dfb63c726a51fc3bd72cf3268375a1c71db4883281c7cc467b1dac9c7fb27d29bf02e19746fd9b7e306a9a8931e957b047696be60c2b4fb5d4edf53ba4887e1ed401f38d7b9e8bf09be1e7843c11a27887e22f887517bad663f3ed348d0046d2245804191981c1c329c7cb8ce39c1af0cafa57c53a1f833f678f087848def836dfc67e22d72c85ecd79a9ccdf6687853b1107071bb1ebdc9e700038cf8c1f06b41f0df82b44f1d782f57b9d5bc2baa4c6db6df2013dbca37f0d80011f230e830477ce6bc76beaff008b1ad47e22fd8ff43d461f0fdaf8660b8d695a3b0b28ca4417f7c03a83fdec673ef5f2acf673da88ccd04908906e432215dc3d467ad00454514500145145001451450014514500145145007a47c33f8fde27f865a6cfa4da7d8f57d0676dd2693ab43e74193d48190573ec71dc835d2eaffb576be745bad33c33e1fd07c150ddaed9e6d12cfca9981eb86ce0753ce323b115e254500771f0b7e31f88fe125fddcfa24904b6f78812eec6f63f320b80338dcb90723279047535dcddfed61acd9e9d796de16f0b786fc1b3de295b8bed22c424ed9ee0e700fb9048ed8af0ea28015dda4767762cec72598e493eb5e89f0c7e3a6bff000cac2f34a86dec75bd02f1b75c691ab43e75bb377603230781ec71c835e7545007a87c43fda0f5df1d78753c396da7697e18f0dab873a5e8b6fe4c7210720bf3ce0e0e060640e38ac1d37e2aeada5fc2dd5bc0315bd9368fa95e2df4d3ba39b8571e5e02b6eda07ee97aa93c9e7d38da9ec6c2eb53ba4b6b3b696eee5f3b21810bbb6064e00e4f009a00ebbe17fc5ad5fe13ddead73a45b595cbea566d6530bd4760a84824aed75c1e3be7e94cf03fc55d5bc05e1af16687a7dbd94d69e24b65b4bb7b947692340b22831956001c48dd41e83f1e426824b69a48668da2963628f1b8219581c1041e8699401d4fc32f88da97c2bf16db788b4982d6e2f60492358ef519a321d4a9c85653d0fad6af80be34eb7f0f3c69acf8a34db5d3e7bfd5629a19e3ba8dda2512c8b236d0aea41ca8c649e33d6b81a2803a8f86df1275af857e28835ed0a545ba8d4c6f14e0b45321ea8ea0824743d41c806bb1f879e12f15fc62f8a769afe87a08d2e17d523b8b8bcd36ddd2cac9d595dd8172c011f7b6eeea781820579849a4df43a7c57f259dc258ccc523ba689844ec33901b182783d0f635b1a0fc45f13f86345bcd2348d76f74dd36f18bcf6f6b3141212029271cf2001f850077bfb567c404f1f7c61d51ed6613e9da62ae9d6cca72adb09dec3eae5f9ee00aabf0fbf68ad7bc11e19ff8466ef4dd2bc51e1b0c5934dd6adbce48c9249da73c0c9270411c9c6335e5545007aafc40fda335ff001af864f866cf4dd2bc2de1b2c19f4ed16dfc9497072379cf23201c00070339ae7356f8abab6b1f0c344f01cd6f64ba469372f7704d1a38b867669090cc58a91fbd6e8a3a0fc78dab5a76937dac4cd0d859dc5eca8a5da3b689a460a30092003c7239f7a00ab5d969bf15756d2fe16eade018adec9b47d4af16fa69dd1cdc2b8f2f015b76d03f74bd549e4f3e9c6d1401dafc2ff8b5abfc27bbd5ae748b6b2b97d4acdaca617a8ec15090495daeb83c77cfd2a5f84df19bc41f07f53bbb9d18dbdc5b5ea08eeec6f10bc33a8ce3201041193820f73d4570b45007bec3fb65f8a748bf8a4d07c3de1cd0ec577349616b64cb1cec463739565248ce4608f7cd785ea77cda9ea37778d1c70b5c4af318e204221624e17249c0cf1926ab51401ee3fb2bfc3af12df7c48d07c5315a5ce9fe1ed3a492e6e3589a3296e63556575573c3679538e9939c62b81f8c9e393f11be2678835f0e5adee6e4adb673c429f247c1e9f2a83f526b3a2f88be2783c29ff08cc5aedec5a012d9d3e398ac4771cb0207504927078ae76803d8fc31fb4eeb7a5f862cfc3dafe83a1f8cf49b25096a9adda79af081c001b38200e3904f4e6b0fe287c79f117c50d3ed34aba86c747d06cdb741a4e950f950291900919249009f6193802bce28a00f69f097ed51afe81e14b3f0feaba1e89e2bb2b050b64dac5b191e0038519ce080300719c0eb59be3dfda5bc59f11fc1d71e1bd6adf4b92ca4b95b94961b768e4836fdd44c3ed0a06472a4f279af28a2803daf4bfdac3c5165a2e8da1dde8da06aba0e9b651d87f675ed9b491ceb1a85577dce7e70075181c9e3a6303e2a7c7ed7fe28e9b67a44d6b63a268166dbe1d2b4b88c70eec1c16e4e719381c019e99e6bcce8a00f53f007ed0fae782fc37ff08ddf697a578afc3aac5e3d3b5bb6f39213927e439e064938391c9c63359df143e38f883e28db5969f79159695a2589cdb693a5c3e4dbc67046ec64e4e091e83270064d79ed1401d96adf15b56d63e18689e039adec9748d22e5eea09e347170cccd2310cc58a91995ba28e83f17f847e2d6afe0cf05789bc2f656d652e9fe204097525c2399500040d843803af706b8aa2803aef859f13f55f849e2a5d7f47b7b3b9bc10bc1b2f91de3dad8c9c2b29cf1eb5cc5fde3ea17d7175205592791a560bd0124938f6e6a0a2803a4f873e3cd43e1978cb4ff12e970db5c5f58f99e5c778acd11df1b46721594f473d08e7154352f11dcea9e29bad7e54896f2e6f5ef9d1011187672e4004e76e4fae71deb2a8a00ebfe29fc50d57e2df8a4ebfac5bd9db5e18120d9628e91ed5ce0e1998e79f5a9bc59f16b58f18f823c35e15bdb6b28b4fd014adacb046e2570463e725c83d3b015c551401f677ed41f1b6efc03f126d346b9f0f687e28d1ce9d0dda5aeb56626f2652f202c8ddb2157d7a76af9b7e2c7c68f10fc5ebfb4975736f6b6564a52d34fb24290400f5c024924800649edc60572fe22f14eb1e2dbe5bdd6f53bad5aed631109ef25691c202485c93d324f1ef597401ea9f0fbf689d77c13e1b3e1abdd374bf1578703174d375bb7f39223927e439e064938391c9c633547e277c77f107c4dd3ed3499a0b1d13c3f66dba0d234987c9814f382464e48c9f6193815e73450015ed3e12fdaa3c41a07852cfc3faae87a278aecac142d936b16c64780018519ce080300719c0eb5e2d45007adf8d7f690f167c4ff0b3f85b5a8b48fb14f7693a5c2c0d135be0e155487da100c8e549c13cd6a7ed51e31d235bd6fc31a068b7d0ea969e1cd262b27beb770d1cb2e06eda470400abc8ee48ed5e21450014514500145145001451450014514500145145007d11f09bc33e1af869f072e3e2af89f4983c437d75746cb44d36eb0612e0b02ec08c139473d0e0271c9e2d784bf69db2f1bebf6ba17c40f08f8664f0d5fc82dde6b7b430b59ee3812062c70013c918206483c609f13b173fb1bfc339adfe6822d424490af457cdc0e7f10d5c57c2bf05fc2bf14699a7dbf897c53ac699e24bbb9fb38b3b3b5df17ccfb63f9b611ce477a00a1af7c16bcd5fe21789b47f00343e2bd2f4c1f6a8ee2d2f217ff47601873b86f2b9da76f391d39ae07c3be1ed47c57add9e91a4dab5e6a377208a0814805dbd324803ea4d7d05a158d8fecd1fb5469da4d9df5c5ce932ac5697335d6ddc52751c9c0030afb1bfe035d57c3cf86b6bf0bbf682f88be21be842689e14b39b52b62570313ab346abf44f357ea2803e6597e1d788e3f1949e131a54d37886393ca6b1b72b2b06c038ca923807939c0e73d0d753e2cfd9b7e23782b449357d57c372c761126f9a58278a7310ee595189007738c0f5af6bfd99a37d5bc17f14bc753eb167a2788b509dad86b57cc163b2327cecf93d32d22fe2ab57fe0ae87a6fc32f194ba96a7f19fc33ad6937914915fd8bea41bcfdca70c77390486c727b161de803e4ff000bf85357f1a6b30693a1e9f36a5a84d9d904032703a927a003b93802be8af805f00bc79f0dbe37f84b53d7f4192d74fdd70ad7314d1cc884dacc00628c76f3c64f1922adfc28fb27c3ef865f1b7c57e1b9636bbb5bc7d3b4ebd8583f9706fc23a373c7ef15b3df6afa571ffb23f8e3c40df1d746b29358bd9ed352170b770cd3b48b362091c12093c865073d7afa9a00e5f57f85be28f89bf157c770f8634a6d525b4d5ae9e7559a38f6069e400fcec33d0f4ab3ff000c9bf15ffe85293ff036dbff008e5735e3dd4f53d3fe2af8c134bbbbbb69a7d66ed36da48cad21f3df03e53cf3dabde358f11dff00eccff0a8595d6a9737bf133c4b0877f3ee1a5fecbb739e99270dd7ead9ea106403cb7e1249e27f0fe87f126d74df08d86bd1c5a7b45aacd7ad196d39144bb9d72c37747385ce4a2fe3e475f447ecc4ed2fc37f8e4eec5ddbc3b212cc7249f26e7935f3bd007d4577e09d73c7dfb237c34d27c3fa6cdaa5fb6af74fe54581b544975966624051c8e4903915e33e3ff817e37f865651def88b4392ceca46082ea395268c31e819918ed3f5c67b57afebfe29d57c37fb14f81934abf9ac0df6a7716f70f6ee519e3f3ae5b6ee1c804a8ce3ae31d28fd97f59bef1cf827e25783b5abb9b50d25b486ba856e5cbfd9e40186549e9ced6faa67d6803c03c1fe08d77c7dabae97e1ed327d52f8aee31c2000abfde66380a3dc902ba3f1efc04f1dfc35d386a1afe8325b586429ba8658e68d49e818a31dbcf1ce39af7bf82be1986c3f65dd42eecfc4da7f83752f106a0d0cfaddfca22db1a315112bf18242be39fe36357fe13687e1ff02691e29d1bc41f16bc33e21d0358b0784d88d454ec94f01d77371c16ce39ced3da803e58f03fc3cf117c47d54e9be1bd2e6d52e9577b88c8558d7a659d88551f535f4cfecc1f06bc63f0bbe276b0fe25d1a4b0b79f40b948ae164496276f3603b7721201c0270707835ce786b53b8f877fb1bde6b1a24af65aaebdabfd967bd84ed952304ae030e47cb191edbcfad4dfb1378bf5abcf1a788f47b9d4eeae74d7d1a6ba36f3ca5d44ab244a1867a1c3b038eb9e7a0a00f16f01fc17f19fc4bb0b9bdf0ce8ada9dadbcbe4cb22dc451ed7c038c3b03d08ae86eff657f8a7656b35ccfe149121850c8edf6cb63850324f127a0ae17c272f886ef53b6d1fc3d737cb777d32c71db59ccc9e639e07008fccf415f437c5ff001a3fc10f8771fc34d2f589b53f156a11897c41aa34cd218830ff0050849c8c8e31d979eafc00799784f50f10db7c02f18436be15b0bff0ec97b17daf5e98a79f68f9882a282771e4a6081c6f6f7c79557d0fe01ff932ff00899ff617b5ff00d1b695f3c5007a2691fb3d7c43d70e93f61f0d4f3c7aa5aadedacab2c5e5b424021d9b7613218603104fa706b33e217c20f16fc2d96dd7c4ba3c960970488670e92c5211d40742467d8f35edbfb44f8bf59d1be0bfc1cd2b4fd46e2cacaf7428a5b88eddca79a52080286239206e6e3a73ec2a0bad4eebc4dfb12cb3eab7125fcfa7eb8b1dbcb70c5dd1772803279e9230fa1c500785f8c3e1cf88bc0716992ebba71b18b5387ed167279b1c8b347c7cc0a311fc43afa8a17e1d7889bc10de30fecd61e1c59becff006e6950032671b4296dc79f41ebe86bdb75273f15ff00644b2b900cdac781ef05bbe0658db361463db6b47ff7e8d43fb4ace3c09f0ebe1dfc32848496c6c86a7a8a2ffcf77dc07fe3c663f88a00e57e39c3e2cf15f8f7c35a5eade0fb0f0deb573656f6d6563a7b478b90f23246c5831032d9500918039f5aa9a5fecb3f14356b8bc861f0b4b1b5ab98e469ee618d4b601c2b17c3f5eab919e33c57b0fc7cff0093a7f849ff005c348ffd2e96bcf3f6a9f1c78862f8efaec116b57d043a73c29691c170d1ac03c9463b429183b989cf5e68038fd23f67bf887adf886fb43b6f0bdd8d42c8afda44c5238e3cf23f78c429c8e4609cf6ac8f881f0a3c57f0beea083c4da44ba719f261977ac91c98ebb5d09191c719cf35f40fed81e3cd77fe11bf8776d16a53db43a8e982faed60729e7ca563e5b1d719381ee6b27c4fa85cf897f629d16f3549e4bebbb3d6fcb8679d8bbaa83200371e48c311f4c7a0a00f0df10fc35f127857c39a36bdaae96f69a4eb09e6595c991184a3191c024ae4608dc06457355a7a978a758d634cb0d3aff54bcbcb0b052b696d3cecf1c00f645270bf856650014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145007b6fc19f8bfe1db4f056a9f0efc7f05c4de13bf93ce82f2d46e96c65e0ee03ae3201e01c1cf0431adbd0fc0bf057c1bae596bf3fc51b8d5eded274ba834fb4d31d6676560caacd83dc0ce42fe15f3bd1401defc71f8970fc56f891a9788ed6d24b1b6984714314ac0bec450a0b63804e3381d3d4f5afa07e3dfc5392eff0066bf0a3cb17d9b5ef16dbdba5e3fdd796183e667fa339523da435f36fc32d77c2fe1df121bcf16f87dfc4ba6085952cd2e1a1c4b952ae48232000c3078f9bdaaff00c61f8af77f163c490dfbd9c7a569b6702da69fa6c07296d0af40380093dce0761d00a00e9be00fc5ad1bc1b6de21f0af8ba09ae3c23e22844572d00cbdbb80409001c9e0f38e41552338c1da8fc0bf03bc272cfab5ff008f2f3c6166159adb44b2b292de69090702497b638fee7f4af04a2803d9be01fc57f0ff0084c789fc2de2a8675f06f8921314cf1e6492d186e0afc0c9e0f240ce554e3b577bf0cd3e0b7c16f1fd86bfff0009edcf88a75322db793a7c891d9ab2329794804b9c12a028ead92bdc7cb945007d07f073c5df0dec3e3778b3c5fe2bd57c9b78efe7bad18bda4d2a4ad24ce44a555090557690180e5b3d47163c67a47c23f1e7896ff5ed63e325e5c5fde49bddbfb02e42a8ecaa36f0a06001e82be74a2803dcbe1178e7c27e02d03e326913eb45e2d5b4c9ac34799ad65cdefc970a8480a766ede87e6c6377b1af0da28a00fa53c3de37f861e24fd9e7c29e02f156b975a6ea56f753cc6e2d6d647fb0c8669991dfe5daeac8f821492370e98c86bf8c3e1f7c0bf86fe25d1fc19e2297c5fe29f1143f6597505b76862b684860700f43866e0127241380057cdb45007b8fc1df8a3e169fe1e6aff0d7c7ef716ba0de4df6ab3d52d90bb59cdc755009c6467807ab03c1e19aa7843e0d781f43d56793c5f77e3dd56681e3d3ecf4fb67b3485cfdd91dc920edfafafca7b788d1401ee9f063e257852f3e1d6b5f0d3c7d713e9fa2dece2eec754850b9b59be5e08009c6541ce08e581c039aef3e10eb9f06fe05ebda9cb1f8dee35fd46f6c64b7fed05d3e54b7810b29f2c2a862ccc429ddc81b7b679f93e8a00fa0ff00656f177c3bf0045ad6b9e24d7174af14b06b6d39e5b19ae52de328332808a41249c609070a4746355757f067c1cd66feef50bdf8c97f797d73234d2cd2e85705a47249249d9dcd78351401ecbe11f883a0699fb3178e7c25737fe5788352d4609ed2cfc990f988b25b963bc2ed1811bf0483c7b8af1aa28a00f65f8ebf10740f18f80fe15e9da3dffdb2f344d185a5fc5e4c89e4cbe5c2bb72ca03728dca9238a96c7e22787a1fd95b51f073ea18f11cbab8ba4b2f264e63dd19ddbf6ecfe13c673c578ad1401f44fec47ae3c7f11356f0f4f6ff006ad2357d39fed51b0ca218ce55dbdb0ccbf5715e57f1a7c707e227c4ff0010eba1cbdbcf7252db9c8f253e48f1e995507ea4d765a5fc75d0bc17f0de7d17c1fe121a4789751b15b2d4f5f96e5a47718c4863073b7775c0200f4240af18a00fa27e2efc58f0af89fe3efc3af12699aafda745d262d396f6ebecf2a79462bb7924f95943361581f941ce78c9af38fda07c55a578dbe2ff0088f5bd16ebedba65dc913433f96f1ef021453f2b0047208e4579ed1401ed7fb477c45f0f78ef4cf87f1685a87dba4d2f485b5bc1e4c91f9520541b7e7519e87919145c7c45f0f3fecab6de0e5d433e234d5cdd3597932711ee63bb7edd9dc719cd78a51401dcf8cf45f02d87827c2f77e1dd72f750f11dcc59d5eca78f6c76cf81c29d83f8b23ab640cf1df86a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f76f05fecc3378f3e074fe35d26fe69b598da629a5f9636cab1b90c15baee2a0903b9e3bd784e315f607c37f8897bf0b7f652f0ef88ec97cc36daf113404e04d1348e1d3f10783d8807b579a7ed39f0dec2caef4ff885e16026f09789c7da018c616dee0825908edbb938ec438e30280397fda0be11dafc1af1a5a68767a84da9453584778659d02302cf22edc0edf20fcebccabecaf8e1a9e8da77ed67e0c5f1069d67a9e8f77a54167710df40b2c6be64d3aabe181036b1539f406bc9f54f82422fda9d7c1296fb74c9f535b948c2fcbf633fbe2a3d82065fa8a00f3ff851e1af0bf8a7c4d259f8bbc42de1ad2d6d64956ed5376e9411b53a1c64163efb71d4d7213a224d22c7279b1ab10afb71b867838ed5f5cfc3fd1fc1be36fdacfc4da541e1ad1dfc3ba7e9f2db4364b651f906489e3579366305b7171bb1d315e19f04ef7c07a3dfeaba9f8d2d26d62e2da01fd95a3ac6cd1ddce777121038030a003c7cdd0e2803cda8afb0be1bdb69ff001e27d4fc31e26f84f61e1289ecde5b0d634cd35ad4c0c08017715193ce7ae0ed208e6be40b881ada79217c6f8d8a1c7a838a006515ee9f0f359f87df0cbe14c7e26bed374cf1978dafee9a18749bf2248ec6252c03bc673d76e73d7e75c63935d1dbdaf863f68df86be2cbfb3f0ae9fe14f1a78720fb703a3c7e5c179161895283bfc8473920ed39c122803e68a2bdfdbc31a2f8eff651fedbd3749b3b5f12785ef8477f716b6ea92dc404e0339032df2c88727fe79b547a2f86f45f077eca9a9f89754d2acaf35df115ff00d8f4b9eeadd5e482353b599091953f24c7231ceda00f04a2beb0d5e0d0fe08fc30f04dff0087be1f699e35bbd6acc5d5deb7a95a9ba8d242aa4a0183b796200c8c6dee735e65f163c4df0fbc6be0db3d4b4fd053c1de3a8a7d979a55940cb6b345cfcc380aa7ee91c67920e783401e395ebdfb517c36d0fe177c44b5d1f4086582ca4d3a2b9659a5321decf202727d945790d7da9fb4f7c4ff000dfc3af88b62efe0ad3bc4fe229b4e89a4b9d657cc860843c811634e9b89de4b7d3af600f8ae8afa0ff68cf0cf87354f87be06f889e1fd16dfc3adadabc5796168a162de0139500003055c6401918aeb7578343f823f0c3c137fe1ef87da678d6ef5ab317577adea56a6ea3490aa928060ede58803231b7b9cd007c9f457b1fc58f137c3ef1af836cf52d3f414f0778ea29f65e69565032dacd173f30e02a9fba4719e4839e0d7a6f8e351f037c25f86bf0c35aff840b49d6fc47a9e8b0ba9ba8545bf1144d24b2a81fbd9096182dd32c723b807c9f457d27f14f4ff000d7c4dfd9fad3e23e99e1ab1f0beb567a8fd8af21d35024532938e80019f9908246472327ad7cd9401d1fc37f055c7c44f1ce8be1cb6628f7f70b1348067cb8fabbe3fd950c7f0aeabe3ff00c1a3f063c5d6fa6c37926a5a6dddaadcdb5e48814bf2432f1c6411f930aee7f664b74f02783bc79f14aed17fe2556674fd34bf46ba931fd4c43e8ed52ea0cff183f65486fe466b9d7fc0f78d1caedf348f69211cfd002bcffd313401f3a515ec1fb317c30d2be2278cefae7c420bf87b43b46bfbc8c123cdc7dd424738ea4e3b2e3bd76fe1af8d1e04f883e3cd1fc377df0ab42b3d0ef2fe1b5b39ed2158eea22d2011972000ca4eddcbd304fdeee01f34515f59e8fa2783ac7f6baf13f83b51f0ee94fa26a70adada5bb59c7b2da6fb3c6e0c7c6109f9c71d4b0af3ff0081df0712ebf687b9f0e6b96f1dd69de1e92e26be4b98c18e48e22550b03c6d66643cf041a00f0ca2be90f865e08f0c78ff00c53f107e226a1a22cbe10d0e567b1d0f4f87cb5b96e7ca8f62ff00b2ab918e59c678c83d2f802f744f8e7abdc783bc47f0aec3c271dd5bc9fd9daae9560d6f25b3aa96019b68cf009ec0918239e003e4aa2be92fd9e3c0be1a8344f8c49e34d1e0d5e3f0f4518761183347b3ed3e6085cf285bcb032083c0f4adef837e38f057c6df11cde04d47e1a683a3585d5b4ad6975a7c405c4254679936ee2d8c9dc08e40c839a00f2dfd983e1ae87f143c73aae97afc32cf696fa44d791ac3298c891648941c8ed876e2bc86be95fd8e74b3a2fc6cf17e9ccfe635a68f796e5f18dc56e215cfe955bc37e00f0efc07f012f8bfe20e996facf89b5588ae8de19bc40ca808ff005b329f4c8ce7a671f78fca01f39d15ef9e00d2749f897f027e266fd1f4d87c51a4cababc3776d651c4eb01f99e34da061008e4e070370aeb3f676f83de1ef12fc1ed55b5ab4b4935df14497369a1cd3c6ad24461858ef8c9fbbf387ce3aed1401f2bd15eedf007c2fa569de0af89be2ff11e8f69a847a2d80b5b4875185644174e4e3e56070c184633d7e7ac4f835ad780fc31a06ada9eb5a19f1778c5a511695a1cf033db15c2e5db00863cb7041e138eb9a00f24a2beb4b5d0ec7e36fc33f1acbadfc37b4f046bfa1d91beb1bfd3ec1acd27daaedb08206efb98392786c8c115f25d001457d43a3c7e07f047ecc3e0cf186afe0db0d7f5b96f6e20844b1aa09a4f3a700cec065d15138539190be9905dc9e19f8eff00023c5fafa78434af0b788bc3452549f48844492c7d70400320a871839c1008f4a00f2cfda0fc09a37c3ef17697a768914915bcda45b5dca2590b9f35f716393d07038af31ad5f1278ab56f175fa5eeb37b25fdd24296eb2c806446a30abc0ed5954005145140051451400514514005145140051451400514514005145140051451401f4a5e7fc98cd87fd86cff00e8c7acdfd9a3c71a6ebfa76a7f09bc5afbb41d7c1161339e6d6e8f2bb49e9b88047fb407f78d787b789f586d097443ab5f1d195fcd1a71b97fb387ce777979db9c93ce2b3e295e095248dda391086574382a47420f63401f457edd798fe30e9982415d120c11ff005da7af66b0f15e9775f0e2d3e39cb246daed9786a5d29d5b8dd77e60453f5326e1feec83ad7c75a3c3aefc60f1a69da7ea7e22336a1720c11ea3afdec8c91aa8670ad236e2075c0f56f7af4ff8d1abe8ff000fbe15e85f0b341d6adf5cb94ba7d4b5abeb27dd0b4a72123047071c6476d8b9e4e0005dfd86e579fe35decb23b4923e9570ccec72589962c926af7ec8fa5eff0009fc42d57c3f6f6d79e3fb3b551a5c73aab346a43659037192463f050783cfcf3a1788f56f0bde9bcd1b54bdd22eca18cdc585c3c12152412bb94838e071ed4dd0f5fd4fc35a8c77fa46a173a65ec7f76e2d2568dc7a8c820e3da803ed8fd9aa3f8c77fe35bad43c7b71a941a22dbbc696fa9e22f3672463646003c00c73802be25d6e368759d4237055d6e24520f6218d6fdffc5cf1bea7a9c3a8dc78b7596be814ac53adf488d182304295236e7be3ad72f73732de5c4b71712bcf3cae5e496462ccec4e4924f2493ce6803d3fc3bf00f50f1afc2c1e2cf0bdf1d7b5482e5a0bfd02dedff7f6cb96daea771326405380a3ef1c6769af4ef833e19d53e097c2af889e2cf1659cba236a3a7ff6769b657aa639a7958381f21e40c95ea3a063d057ce5e1cf156b3e11bff00b6e89aa5de93778da65b399a3623d0e0f23d8d4fe28f1bf883c697093ebdad5f6af247c21bc9da409fee82703f0a00f5efd90bc416cfe30d6bc13a9b7fc4abc59a7cb64ea7a79aaac54ffdf2641f5229ff00b596a50e89a87857e1dd84a24b2f0ae991c52953f7ee1d416247aed087fe06697f67cf01e87e1b1a6fc50f14f89f4ab4d274d6927874a8e6dd7b2cc859514a6063e6018004e78e80d78e78d3c5373e35f16eafaf5de45c6a37525c32e73b0312428f603007d2803eb7f16dff008dfe1d7c31f0543f0674e92ebc3f7364b3dd5fe9f662f6779d80c96421b19e73f2f07238c62bc63e2bfc2cf15af8425f891f103574b4f126a97290c7a4cf6c91dc4eaaaaa1c84c04c2af236f619e5abcebc2df12fc59e0a89e1d07c45a8e95039cb436d72cb193ebb338cfbe2b3bc45e2ad67c5b7df6cd6f55bcd5aeb1812de4ed2b01e8371381ec28032ebe87fdb9ff00e4b158ff00d81a0ffd19357cf15a3aef88f56f13de2ddeb3aa5eead76a82313df5c3cd2040490bb98938049e3dcd007be7c5bff934af853ff5f32ff396bd13c5b7fe37f875f0c7c150fc19d3a4baf0fdcd92cf757fa7d98bd9de7603259086c679cfcbc1c8e318af8feefc4babdfe9169a55d6ab7b73a5da12d6f6535c3bc10939c944276af53d07735a9e16f897e2cf0544f0e83e22d474a81ce5a1b6b9658c9f5d99c67df1401e8bf15fe1678ad7c212fc48f881aba5a789354b94863d267b648ee27555550e42602615791b7b0cf2d5bbfb4e7fc92ff81fff0062f2ff00e89b6af0cf1178ab59f16df7db35bd56f356bac604b793b4ac07a0dc4e07b0a66a9e23d5b5bb5b1b6d4754bdbfb6b18fc9b486eae1e44b74c01b630c484185518181c0f4a00f7cd33fe4c7b56ffb0faffe85157ce4aa59800092780077ad15f12eae9a1be8abaadeae8cf279ada70b8716ecfc7cc63ced2781ce33c55182792da68e686468a58d83a488486560720823a11401f5df8dfc71a6fece7f0d7c17e01bbf0be99e27bcb9b43a8ea769a97cc91cacd90769072776f504f4082a3f81df1f3c39e31f17378324f00e87e18d3fc45049653cda5a04f38ec6da8e028c839603ddbdcd7ca9ae788755f135f7db758d4ef356bcda13ed17d70f349b4741b989381e9556cef27d3eee1bab59e4b6b981d648a685ca3c6e0e432b0e41040208a00fa67f672d323f057c54f883f0d3579c5adceab673e9904f2702475dc171fef23961f4ae5be167ecedf1034cf8c3a02df7876e6ced74bd520b9b8bf9976db7971ca189493a3e42e00193923a5701e08bad3bc69f10219fc77e29d4ac527073ad3334f324c17111776258282179e70001c0e47d0fa068b77a16b3a5eb7e37f8e7a66b7e12d2674bd82d2d75579e5bc68cef8c3479e4865538f9cf18f7a00f29fda4359b9f0efed35afeab64fe5ddd8de5a5cc2de8e90c4c3f515f407c5ed6746f0b7c34f157c4cd1e5097fe3cd3ac6c605070c8cc8c2423dfcbe4fbc75f395f59bfed23f1afc417969a8e9fe1f86f19ae525d5e6f2d4429b2351900e5f6ed38e9c1e78ad1fda2bc5fa32d87853e1ff867515d5345f0c5a9496f62398ee6e9befb2e382060f20919761db3401dcfec8de27bdb9f0178ebc21e1fd4a3d2bc5f3817fa5492ec22560a03280c08fe050720f0f9ec6a5f0feb9fb4e6bbac4d60f757ba42c019a6bdd534fb782da300139f30c5861c7f0e7afa735f2e59dedc69d7515cda4f2dadcc4c1a39a1728e87d411c835d3eb9f173c6de24d30e9daa78ab56beb1236b5bcd76e51c7fb433f37e39a00f67f80d7b75a97c37fda12f2fe65b9beb8d384b3cc854ac9232dd9661b78c1249e38e78ae6bf632ff92f3a47fd7b5cff00e8a6af21d33c47ab68d677f67a7ea97b63697e823bb82dae1e38ee500202c8aa4071866e0e7a9f5a668baeea5e1cbf4bed2751bad2ef50155b9b29da19141182032904645007d35fb2aca60fda4bc7f200094b3d41803ed77153fc3fe2d87f6b9f076a3e15f1135b5a78fac1a5bed16f15446932124b43f4030a47a056e4a9cfcd1a5f8af5bd0f51b8d434dd6750d3efee55966bab5ba78a594310cc19d48241201393c915534dd4ef346be86f74fbb9ec6f206df15c5b48639233eaac0820fd2803dabf65ad426f077c6e6f0d6b50496d1ead0dc68b7b6d37055c8c8047aee40bff000235d2fc60f19c7f083e27fc36f0ee9b3f9d69e06b683ed253832cb290d3f1d8b4783ff0335f3c5d789357bdd6c6b373aa5edc6ae245946a12dc3b5c075c6d6f309dd9181839e302a0d5355bdd6efe6bed46f2e350bd98ee96e6ea5692490e319666249e00eb401f57fed576fa6fc37f870fa168f2a11e2fd7a6d725d9c8310556c7d379423e9543e03586a9a7fece9e23d67e1edb4775e3d6bff2679123492e6283e5f9630dfec9247ae5ba9031f32eade23d5b5e4b44d4f54bcd452d2210db2dddc3ca218c7444dc4ed5e07038a9fc33e30d73c197ad79a0ead79a45cb0dad259ccd1971e8d83c8f63401f65fc24b2f8a371f0ebe225dfc41b8bf2973a3cf1d85a6a2c04db84526f611f551ca8e715f0ed75171f153c6775a94fa849e2bd6bedb3c7e4c93adfcaacd1ff0070e1beeffb3d2b97a00fa1fc77ff00265bf0e3fec3373ffa32eea6f803ff0026ebf19ffebda3ff00d024af039fc47ab5d68b6da34daa5ecda45b39920d3e4b876b789c924b2c64ed527737207f11f5a34ff12eafa569d7ba7d8eab7b67617a02dd5adbdc3c715c01d048a0e1ba9ea0f5a00bde04f02eaff11bc496fa16870a5c6a33abba249208c10aa58f278e80d646a5a7cda4ea3756372a16e2da5786450720329208cf7e41af43f809f12f49f84de28d43c457f67717da845612c5a6c516df2c4ed800c849042e3238cf535e75797936a1793dd5c399279e4696473fc4c4924fe64d00434514500145145001451450014514500145145001451450014514500145145006c785bc1bae78d750fb0e83a55dead74065a3b588bec1eac7a28f738adaf177c1af1b7812c45eebbe1abeb0b3c806e1903c6a7b6e65242fe38af435f8d9a6f813e05693e18f02dedc69fe25bd98cfaddfc7118a5ef85493af195504740a7d4d5afd9b7e357885fe2258786bc43aa5d7883c3daf39b0b9b3d4e66b850ce0852bbc9c7380474209ef8a00f1ff0001f82352f88be2bb1f0ee90223a8de6ff2bcf7d89f22339c9c1c70a6b375bd22e340d6b50d2eef6fdaac6e24b69761caef462ad83dc641afa0be13f8362f007eda36de1fb724dad9de5e0833c91135a4ae809ee42b019f6ab7e2afd9efc2ba9fc44d76db5bf8a1a5e8de22d4b529e6874b4b733795e64acc89249bd4062197e5ed9ef401f32d15db78b7e0ff0088bc23f1213c13716eb3eaf34f1c36a613fbbb8121c23a93d8fbf4c1cf4af4cd47f66bf06f85af5746f147c5ad3749f11955f32ce3b169628188c80f26f18ea3960bc1cd00786787f44b9f12ebda6e9167b0ddea17315a43e61c2ef770ab93d8648abde38f066a3f0ffc537fe1ed5bca1a85932acbe43ef4cb206183819e1857a35b7c28d5fe117ed03e07d2354786e526d5ec2e2d6f2d89315c446e540619e878e476f70413ea5f1c3e0b786b58f8c1aeea9e2df887a6f84cea7246d67646233ccc82244df27cca230595b19ea0751401f25515eabe32f80771e04f8ada3784357d6628ec35678becbad450178ca48c5158a6e18c30c11bb8073922b9af8adf0d6f3e16f8f6ff00c317131be92dca18ae12228274750cac1727d718c9e41a00e3e8af66f15feccfa9e87e3ff0c782b4fd5a2d57c41ac5a8ba9e2680c31d92e093b9b73640d8e73807e51c722b79ff0066cf03a6b07c3a7e2fe9a3c4e24f23ec86c1843e7671e5f99e6637678f5cf18cd007cf75d67c35f863ad7c54d6aeb4ad085b9bab6b47bd93ed326c5f2d5954e0e0f3971c554f1ff81355f86fe2bbef0f6b31aa5f5a30cb46729229195753dc1041fd0f22bda3f6198da6f8a7aec6832cde1fb8503d499a0a00f9da8afa1740fd973c39acdf1f0fff00c2d2d27fe133c153a5dbdb9922591412d1f9bb86e23073819183c5796689f09bc41ae7c4c3e0486044d716ea4b59048c447194c9772d8fba02939c72318ea28038da2be847fd9b3c0e9ac1f0e9f8bfa68f13893c8fb21b0610f9d9c797e67998dd9e3d73c6335c5689f01357baf8d707c36d5ee9349bf91a406f1233347b5616955d46577060bea319e7904500798515f42dafecbde1bb1d71bc3de20f8a3a5e97e24925f2a0d3a2b6f34825b11891b780acc369d9db70e4f7f20f893f0ff51f863e32d47c39aa147b9b4618962cec95186e575cf6208fa1c8ed401ccd15abe14f0bea3e34f1169fa1e9307da350be94450c79c0cf724f6000249ec01af6ed5bf661f0d6977bff0008fbfc54d2078cb84fecc96dca43e69e9119771da49c0e4679fbb401e51f12fe18eb5f0a75f8b46d745b8bc92dd6e97ecd26f5d8c580e7039ca9ae4ebe9ffdadf45b1d7ff686d0f4dd53578b41b19f498565d4668fcc4806f9ce4a8233c803af7ac3d07f669f05f89f56b7d2f49f8c1a76a1a85c36d8ade0d2dd9dce32703cdec0139ec05007cf9457a278f3e0e5c7867e2a2f81344d453c4fa93347107b78bcac4ac32508dcd8da39273c739c60d7a0afecbfe18b6d563f0d6a1f1534bb5f19c8553fb312d19e25948e2232ee1f31240e80f3f76803e7aa2bd27c37f03755d4fe3443f0df56b95d1f5169258dee447e7200b0b4aaca32bb95828c723ef7e15de5afecbde1bb1d71bc3de20f8a3a5e97e24925f2a0d3a2b6f34825b11891b780acc369d9db70e4f700f9ea8aecfc5df0c2f3c0bf12cf83f5cbc82c996ea285f5139f2562908c4dce3e50ad93e9823b541f147c17a7f80bc5f73a3699e21b5f13da4488c350b300212c3257866191ecc7fa000e4e8a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00edbc4bf08b5af0bf80340f195c4d6771a36b4db206b69199e36c13b64054007e561c13f74d687ece7a1dcebdf1b3c1f0db46ce60d423bb90a8c85488f98c4fa0c2feb5a9f0bfe3eb7833c2d73e12f116816be2ff094f279a34fba7d8d031392d1be0e39e718ebc823273d1c9fb4a681e0dd26fad7e19f812dfc257d7b198a5d5a7b96b9b8453d426ec91ea32c467b71401d6f87355b7d67f6f792e6d5c4910bcb983729c82d1d8c91b7fe3c86be7ef8ac5bfe16878c0b13bbfb62f393d7fd7bd58f84ff00115fe19fc46d2fc5925936af259b4ccd6ed3f94653244f1925f6b63efe7a1ce3debd557f693f04eadadbf88fc41f0aecaffc4e921962bb86f0a472107e43226dda580032c41ce3381d2803b5f8f167ad5efc5ef83b16912451f8c5ac2dd8c971d15d5f20c9dca8224247a66a8fc73d43e091f881a98f125b7886efc4ea5535297400896e670801c095f8e8071fcf35e1fe28f8d5e24f137c4f8fc7724c96dab5bcc925aa46331c0887e58c03d57ae73d727d6bd1752fda0be1d78b750feddf13fc2782fbc47c3493db6a4f14170e07de740307fe041bea680385f87c9e213f153e1c4bae0d4fc99356b1364fa80936b45e7c7feacbf55c11f778e4568fed5ac5be3f78bb249c4900193dbecf1d41e2ff008fdaa78cfe26f873c577da7c10d9e83716f2596916afb238e38a457d81b0796da016c7a71818ae67e2b78f3fe16678ff0057f13fd87fb37fb41d1becbe779be5ed8d53ef6d5cfddcf41d6803d8ff006b991868df0a250c44bfd828dbc1e73b63e735e923c209f1ef59f833f10046b2285306b4e07024b7dd200dec644907d196be6ef8bbf187fe169d8784ed7fb23fb33fb0ac058eefb4f9de7e028dd8d8bb7eef4e7af5af5bf84fe2bd6be187ecabe34d46f0bda43a95d7d9745590157692540923a67f8401b863ba350067782fc5de20f8a1fb5dcbae7866e6dd08b8944725d02f08b18d7cbe40209dc98200fe26073dea97c5bd4fe0749acf8924d1edbc4c7c46cf3b41716450597daf2d86f9db784dfcf03a74ed5e43f0dfe216abf0bfc5d65e21d1ca1bab7cab4528ca4a8c30c8c07623f2383dabd73fe17efc323ab9f119f84307fc249bfcecff006937d97cdce77f97b76e73cfdcfc7bd0078a78a22d7a2d4ffe2a34d45351280ffc4d0482629ce3eff38e0e3f1af70fd87095f8a1af90704787ae391ff5da0af1ff00893f11355f8a3e2ebcf10eb0c9f6a9f0ab144311c31af0a8a0f61fa924f7adcf81df173fe14d78a350d63fb27fb63ed7a74961e4fda7c8d9b9e36dfbb63671b318c77ebc7200cfd9fdd87c6cf05b06218ea90e4e7d5b9af66b5b2d7eebf6ded57fe11b96de0bb8aeda499ee94b4420f2544990082720e063b915f3c7c3ff0015ff00c20de35d17c41f65fb77f66dd25cfd9fccf2fccda73b7760e3eb835d74bf1e355b4f8d579f11b47b44d3eeae262ed632c9e72142815a3660172081d703071e9401dbfc5bd4fe0749acf8924d1edbc4c7c46cf3b41716450597daf2d86f9db784dfcf03a74ed547f66f8b5e8bf697f09ffc2469a8a6a256e4ff00c4d0482629f659f1f7f9c7071f8d5cff0085fbf0c8eae7c467e10c07c49bfcecff006937d97cdce77f97b76e73cfdcfc7bd729a67ed0baa8f8e16bf12758b14d4eeadfcc55d3e297c88d6330bc4a8ac43602efcf43939f5cd0060f8d647ff85ddaf3ee3bc788673bb3ce7ed2d5e8bfb6f003e36bfbe9b6f9fcdebc735af12ff6bf8d6ffc43f66f27ed5a8497ff0066f3376ddd297d9bb0338ce338fc2ba4f8dff15ffe171f8d8f887fb2ff00b1f36d1dbfd9bed1e7fddddceedabd73d31401dd7ec4c2dffe178db79db7ccfb05c791bbaefc0ce3df6eff00d6bc77c5cf76de2ed69af770bf37d399b77def33cc6dd9f7ce693c25e29d47c13e24d3f5dd266f2350b1944b1391919e8411dc104823d09af6fd5ff693f05ea97fff00092bfc2ab06f1a921fedb2ddb35b79a3a4a6200063900f3cff00b5de801dfb72827e31580ea4e8d6ff00fa326ad7d06da0fd95be181d7af6246f895e2480a585b48016d3adcf57607a1e84fa9dabfc2d5c378bbf686b7f18fc65d03c797fe158e48b4b82389b4a92f37accc864657dfe5f1867071b4fddf7ae8fc57fb4d781fc71ac3eabaf7c218753bf7554334faf4990a3a00045803d87a9f5a00a9fb18c91ea3f1ea3bad42433de359dd4d1cb31dced31037364f24952fcfd6ae6bde27f8196fe2ad46e2ffc3de355d623bd91ee24fb444184e24258ff00acebbb35e69adfc4fb3b6f1f697e28f03f87a3f04be9e89e5dac5746e55a40cdb9c9655e1958295c741ef5e89a97ed0bf0fbc4d7dfdbde21f84d697fe28e1a49e2d41e3b79df1f79e3c60fd1837d6803aef09fc51d23e2efed87e0fd7f46b4bbb3b7fb1cd6f22deaa2bb3adb5cf3f2b30c60a8ebdabc23c6b23ffc2eed79f71de3c4339dd9e73f696adad1be3dde59fc6fb6f88f7ba3dadc4b097034db322da3d861789543056e8181c9049c76edc3eb5e25fed7f1adff00887ecde4fdab5092ff00ecde66edbba52fb37606719c671f85007b1fedbc00f8dafefa6dbe7f37af01afa1746f1a0fda2ff69af0ceaf268d0e9b6b1f966e6d2e2e16e23f2a10cec58b2a8208e318af2cf8c7abe95ae7c50f135ee89143169325e3adb0b74091945f943281c007191f5a00e368a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028af76bbf036829fb2359789d74c846befab981aff009f30c7bdc6deb8c600af09a0028af7cfda9be17da689f1674dd0bc17e1e9144da445726c74d85e5666f3260cdb464f4519fa5785c3a6dddc6a096115acd25f3cbe4adaa464ca64ce3605ebbb3c63ae6802bd156350d36ef49bd96cafad66b3bc89b6c96f71198e443e854f20d4fac787b54f0f5e2d9eaba6de69976ca1d60bc81e290a92402158038383cfb50050a2bac3f08fc7034efb79f07eba2cf1bbcefece9b6e3d7eef4f7e95c99041208c114016f46d56e342d5ec753b460b77673c7730b32ee01d1832923bf205757f12fe32f8afe2ccf6cfe23d445c456d9f26da18c471464f52147527d4e4d7135e85fb3ef87f4ef147c62f0c695ab5a477da7dcceeb35bcb9dae046e7071ee050079ed15dafc6ad1acbc3df15fc57a669b6e969616b7f2450c11fdd4507802a85b7c2ff18de68ffdad6fe15d667d34aef1771d84ad195fef060b823dfa5007334518aea64f853e348b4afed37f096b49a785de6e5b4f94205fef676f4f7e9401cb5157f46d0354f115c496fa4e9b77a9cf1c66678ace0695950100b10a090012067a722abd8585d6a9790da595b4b777533048a0810bbbb1e8154724fb0a00828ab1a8e9b77a45ecb677d6b3595e4276c96f71198e443e854e083f5ae864f853e358b4afed37f096b69a785de6e4e9f2840bfdecede9efd280396a28a9acacae351ba8adad2096eae656db1c30a17773e800e49a00868ae8f5df86de2df0bd82df6b1e19d5b4bb338ff48bbb2922419e80960003ec6b2f4df0f6abacdb5e5ce9fa65e5f5bd9a87b996dadde44814e705c804283b4f5f43e9401428ad9d73c17e20f0d1b21abe89a8698d7a0b5b2dddb3c4661903e50c067a8fcc7ad5ed43e1678cb4ad28ea77be14d6ad34f55dcd733d84a88abea495e07b9a00e628a2a6b2b1b9d4aee2b5b3b796eae656db1c30217773e814724d0043457bbfece7f0df5ff0e7c78f082f893c357fa7da4ed7217fb4ac9d2390fd96638f99704f19c7b57987c4cb7ff8b9de2b8208ff00e6317691c71aff00d37700003f9500730acc872a4a9f5071495d3ea1f0b7c65a5694753bdf0a6b569a7aaee6b99ec254455f524af03dcd7331c6d2c8a88a5dd88555519249e800a004a2ba7d43e16f8cb4ad28ea77be14d6ad34f55dcd733d84a88abea495e07b9ae62800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803ebaf03ff00c223ff000c7ba6ff00c26bfda5fd89fdaf267fb2b6f9de6798fb7ef718eb9af3ecfece5e9e36ff00c8353de789b476fd8dac7441ab589d6575832b69c2e53ed013cc73b8c79dd8e4738ef5f3fd007d7dfb4378c07813f6b1f03eb85fcb82dac2d5666271885e69d24ffc719aa1d3be1ddb784bf6b1f17ebd7b16cd0b41b69fc4a5bf85b7c7b801f476723feb9d701fb67789348f147c52d3aef45d56cb57b44d1e189a7b0b849d038966254b29233820e3dc576df13be32e85ab7ece1617167a85acbe32d76cecf47d4e28a65370915bb48ccce99dca18eee48e4483b628023f1df82a0f893f1fbe18f896ca1034df18416da84ea0670f02869d0fd11547d735950fc47d235afdb39b59d6637bbd2e0be7d3ed02446508c886289c200491bc6ee3a6ecf6ad9f803f18741d03e08ea4dab5fd9c3e23f0a8bb6d160b89d525944f1921635272df396076e70315e45fb35f8fb47f87ff001774dd6bc439fb1149616ba652e60775c0931d7d41239c31a00f78f1f695fb40783fc55adf8ba2d685e78774f925be1025e22c06d1097d8616c73b060f04fa1279af97fe2878e21f88be33bef10c3a3c1a235e6d696d6ddcb21900c33f41cb63278eb93debdabc41fb3f59f8a3c5f75e20d4be2d786af3c377170d70f7f2ea3baebcb2c4ed087e5dd8e3ef7e1dabc7fe2fbf837fe138bb8bc0904b1787a1558a392591dccce33b9c6f39009e067b0cf7a00e2ebd4bf65eff0092f3e0ff00faf97ffd14f5a5fb3bea5e04b98fc4de18f1c456366358b511e9fae5ddba39b19406048761f2677020f0329c9e6bd0be197c26f0d7c10f1743e36f147c43f0f5f58e98b24b656ba4dcf9d35d314651f2f5e8c4e173ce390334015fc35e04b1f1efed9fe21b4d4e25b8b0b3bfb9be96ddc6565d846d523b8dcca48ee011debd0754d0be3f4bf119f5db3d52c61d1e3bacc3a42ea082dfece1b88d931824a8c16eb93c115e01e00f8e8be1cfda06ebc79776ee34fd46ee7375020cba412938c7a95f94fbedc77aeabc49fb3a786bc49afdd6bbe1df899e17b7f0a5dcad705af6ef65c5a86258a797dc8cf018a9e99a00e8be2269fe11f873fb62e8ba96a51c16fa0ddaa6a1382a0c514eeb2a0720741e6aab9f4249aea3c45ff0bcbc3fe3d9fc61a16a23c71e126ba69a2b1d32ed1e192d492447e5f50db703720639e79efe01a35afc2dd07e328b1be9ef3c47e03ff50d7b36f85d5ca8fde8f2c86640c3d0704f07033ea7e05f84369f0f3c7b6de29d23e2e787acfc1f05d2dc168752c4f3421b3e4bc7f75891f29cb1fa678a005fd9935e87c4ff00b40f8f75587465f0fadd687752369aad9103f9d6e1c7dd5eac18e30319c578bfecf5ff0025b3c17ff6138bf9d7b07813e35f84e3fdaabc4fe22966163e1bd76d9f4e4bb91762a9c43fbd6fee876849c9e9bf271cd3bc03f043c33f0b7e2468fe22d6fe26f86e4d2ad6f164b24b6ba569ae0e7085fb228c82cd9200cf23ad00646b5ace83e1ff00db52f350f12f96ba3c1aa1323cabb923730623761e8ae50e7b633dabd23c443e39787fc7b3f8c341d4478e3c24d74d34563a65da3c325ae4911f97d436dc0dc818e79e7bf8ff008a75cf026a7fb4febb79e2911eb5e0fbcba28d756572c51728a1650d136580239c1e84f52315da781be10da7c3cf1edb78a748f8b9e1eb3f07c174b705a1d4713cd086cf92f1fdd6247ca72c4f3d33c5007cf3f1135e87c4fe37d675587465f0fadd5c191b4d56dc207e8e3eeaf56dc71818ce2bd0ff00668d6fc51a5eb3ae5b782fc2f16b7e22bdb4f261d4a570a34c5e41932c36f24af5233b71ce48ae57e3af8bb4bf1d7c59f126bba3295d32ee7530929b77ed4542f8edb8a96e79f9b9af4afd98fc51e1f6f0878efc13aa6b70f85f51f1040a969aacec1138565d8cd918fbdd09190cc3af500f6bf81fe19f885ff090eada578fbc53a6789f43d42ca58a7d31b515ba951c91d171f2ae0b02071c8e2bcbff00651d5e5f067833e34ea76891cf71a5d9433c2b3aee5678d6e8aee1df902ba3f807e03f07fc0af1eb5ff887e24787ee754b8b692de0b7b4ba510c684862f2c8c4052768014e339e335c07c1bf1068fa0781be3bd85eeb3a7dbdc5ed979364b25dc6a6ed80ba1fb9c9fde7de5fbb9fbc3d450066fc33f8d5e3bf157c50d3750b9d30fc41d7a08668f4db59c246b6aee54b4a36a80b80b8c9c019ea2bdc7e14e91f17f4ef89b69378bfc61a65ee9f74ce97da2cba9a48f82ad8090818521b1c2f607ad786fec93e3bd03c19e35d62df5ebd5d223d5f4e7b2835563b45b3960796fe1071d4f19519aeefe187c23f0b7c21f895a5788fc4bf13b40ba114ec6ca2b3b80cd333ab2879589c46a031249247fb5ea01e03f17b47b5d03e2978bb4eb28c43676daa5c470c4a3011048d851ec0715ec5fb34793e05f855f11be24450453eb5a6c4b6560f2a6e10b30196c7b974cfb291dcd793fc72b9b5bdf8bde2ebab2bcb7bfb4b8d4659e2b9b495658a4563b81565241ebd8d77bfb3878ebc3c9a0f8bbe1ef8b2fd749d1fc4908f275193012de750402c4f001f94e4f194c13cd00751fb307c77f1bf897e32e95a36b7aecfac69fa979fe6457603796cb0c92068f8f90e57181c609e3d395f066b9aa787ff00696f13dce87e164f166b4752bf8eced246da21733b7efb38c0c282327006e3cd779f073e147863e0c7c4fd2f5ef11fc4af0dcc6232ad84165760f985e275df3336046bb4b77c13819ec713e097c46f0d786be3cfc416d575386c2cf5d92f6dacf5a4706388b4e595838e02b0c10d9c642fd6803d3fe14e91f17f4ef89b69378bfc5fa65ee9f74ce97da2cba9a48f82ad8090818521b1c2f607ad78af85e4baf007ed37e24b7f0b784a2f135f417d79069b60c762db1f30e240718015415c9c000f5aecfe187c23f0b7c21f895a57893c4bf13b40ba58a76367159dc066999d4a879589c46a01249248ff006bd5bf0f3e22785fc33fb49fc466d4759b5b7b0d7bed10d9ebb6f32bc311770e0891490011fc59c02a33ec01dcfc29d27e2fe9df136d26f17f8bf4cbdd3ee99d2fb459753491f055b0121030a436385ec0f5af92be2f68f6ba07c52f1769d651886cedb54b88e18946022091b0a3d80e2bdfbe187c23f0b7c21f895a4f893c4bf13b40ba58a76367159dc066999d4a879589c46a371249247fb5ebcb3fc2cd37e32fc6bf89f2c7af471e9d622e3558afac765c45302c081b83631863c83d8d007cf94514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001457a57c2df80dae7c4bd36ef5937963e1ff0dd9b6db8d635597cb841ee17fbc46467a019eb9ae9f56fd962f2e742bcd53c19e2dd17c74b64bbae6d74b9479e83d4282d9e878c827b03401e1d450460e0d1400515e9bfb42fc27b1f83be38b7d0ec2fae2fe196c23bb32dc850c199dd48e3b7c83f3af32a0028a28a0028a28a0028a28a0028af40d0be1b596abf063c4de3492f268ef34abe82d22b6503cb904857249eb9009e95e7f400515e9bfb42fc27b1f83be38b7d0ac2fae2fe092c63bb32dc850c199e45238edf20fcebcca800a28a2800a2bd3bc45f09ac746f80be16f1f477d7125f6af7f2da4968c17ca455698020f5cfee875f535e634005145140051457a6fc29f84f63e3ff0003fc43d72eafae2d66f0d5825dc114214accc5666c3679c7ee874f53401e654514500145145001451450015d77857e27eafe0df08f897c3fa625b430ebe890dddd98c99c46b9cc6ad9c0560c41e3b9ae468a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00f43f13fc64bcf107c2cf0f78121d3a1d3b4cd25ccaf2432126ea43b8ee71d3ab31fa9f6ab7fb34789aefc33f1afc2b25acac8b79789613a03c491ca76107d46483f503d2b5b55f81d67a87c0dd13c77e149350d5ef0cad06b167f2c82d58641655550c17201e49e1d4fa9a93f65af86baaf89be2968fac35a4b0687a34c2faeafe6529127979655dc7824b01c76193da80343c5bf0717c65fb566b5e0dd35bec569717c6e6595064411346269081ff0002200f52056a789f51f807a46bd73e111e16d5bc9b698da4be2686f9cc8920255a41196daca08f4c1c70bd33b7f08fe25e99affed91abeb0b2a8b3d5da7b2b398f47daaab19ff8108863dd80af10f15fc2ff0013d97c4ad43c34348bcb8d55ef1d218d6227ce05ced901e9b4820eee9cf3401ecffb5bde68ba77ed0da1dc78834f9756d163d261373670ca6279577ce000c08239c1eb563e13e8df07fe2ef8a1746d27e18ea90aa219ae6f27d5e6f2ade31fc4c449dce001dc9f4c9199fb666897de21f8f3a3695a75b3dddfdde976d0c3046325dccb3003ff00af57be2417f809f0d53e1bf85a19aefc49aac626f116ad6b1336d047fa95603d0e3d9493d5f800e0754f875e1bf897f1ed3c25f0ea36b2d099fc9374d23cca046099a652c492bc1dbce0f1d335d6dcde7c05d13c58de0b97c27a8df5bc571f629fc4cda83ab8941d8d204040da0e79000e33b4f7c4fd8f7518fc2df1cf4f875547b27bfb49ad60f3d0a7ef1b057afaec2a3dce2ba8f1a7c74f883e11f1bde786ee7c01e1892fd6e1a3811744919ae57276ba624f9830c1e3d6803c73e36fc3093e127c43d47c3c676bab540b35acee0069217195271dc72a7dd4d751f003e1ef87fe2668be3bd2af6cfcef12db696d7da3cc26742aca0860541dac0b18fa83d4d62fed01e25f18789bc7be6f8e34a8346d72ded2280db5b2155f2f2cea7976c93bcf43db1d41a93f66af18ff00c215f19fc3578f26cb6b99fec33fa1497e419f60c55bfe03401d97ecabf05740f89bff000915ff008aa266d32dc4565687ce68f37529e082a4125401c1e3e71591f013e0fd87893e2deb3a2f8b6dda4d2bc3f6f752ea28b2346331379782ca411f31ddc119dbf5af42f8ee7fe19fbc31e1bf0ce8ce91decfe21b8f123f95c0d91cc45b2b7b6d09c7ac66baff008b69a7782be1e7c42f881a5cab8f1fdb5841643206d12467ce03dd94bb1f71401f294bf10eeedbc31aef85f4d862b4f0f6a77e2f7ecec0bc91ed3f2287273803039ce71d6b93a28a00fb53f69fd6be197867e21d8ddf8b3c3f7de2bd6a6d3a254b28ae4dbc16f087930c4a90599896e39185eddfc73e35fc2ff0a2f80341f88fe014b8b5f0f6a529b5b9d3ae5cbb5a4c3777249c65181c93fc241c1aea7f6e6f0c6aa7e23697ac2d84f2699369915ba5d22164f3164909424743865e0f5cf151f8b2c2e3c09fb1b68fa46b30bda6a9aceaff006982d261b6448c12db8a9e40c2a9ff00b6828028c3e00f00fc14f01787f5af1fe9175e29f126bd17daadb478ae1ade2b6870082eca41ce186739e4e00f949aa7e32f86be0bf1efc2abef881f0eed2eb467d26511eaba15ccc66f2d491f3a331271f303d70403c02b83b5fb5969d71e30f0ff00807c75a4c4f77a04da3a5b3cb08dcb6f2025b0f8fba7e62bcf742299f0974c9fc01fb337c4ed7b5a8e4b3b7f104515869f14e3699db6c8a1901ea0994f3e9193da802c6a5e18d4fc63fb24fc2cd1b47b47bdd46ef5db88e2853b9f32ef249ec001924f000cd71ff193c1de05f84de1eb5f09dbc435ff001f6049a96aab712086c89e7ca440c14b76f981c0e4f2401ec3e08f8bf27c18fd953c03ad43a645a9493ea73da9595b1b2337370d215ff68aa151e84e4e7183e4ff00b487c33b089ad7e247849cde7843c46de7b32f26d6e1892c8de809ddc1e8c197d3201a90f803c03f053c05e1fd6bc7fa45d78a7c49af45f6ab6d1e2b86b78ada1c020bb290738619ce793803e526a9f8cbe1af82fc7bf0aafbe207c3bb4bad19f499447aae8573319bcb5247ce8cc49c7cc0f5c100f00ae0ed7ed65a75c78c3c3fe01f1d69313dde81368e96cf2c2372dbc8096c3e3ee9f98af3dd08a67c25d327f007eccdf13b5ed6a392cedfc4114561a7c538da676db2286407a82653cfa464f6a00cef02fc39f03f807e11d9fc42f8876173ae4bab4e61d2b468266883282df3b1520f3b58f27006de0935e81f0eb50f016b3f06be30ea1e0ad2ef7409a4d1f65f69775399923c47398de3724921b738209e36f41df94f89da6dd78eff00659f86fab68b0c97b0685e65a5fc50296684e36ee6039032839f4707bd2fecf1e1cd4f4df811f19b53bbb19adac6f74911db4d2a1513148a72fb73d40debcf4e7d8d00715e1ef877a0dffecbde27f18cf66cfe21b2d692ce0baf39c05888b7caec0769ff0058fc919e7daa5fd993e1bf87fe22ea1e2d8b5fb26bd4b0d21eeadc2ccf1ec901c03f2919fa1e2ba7f879a7dceb9fb1978f2cb4f85eeeee1d712e5e0886e7f2c0b525b03b00ac7e8a6b43f632f0eea76e9e3bd5a6b09e2d35f467812e648caa3c99ced527a9c039c74e33d6803e60a2b4349f0e6adaf47792699a65e6a31d9c7e75cbda40f28853fbce541da383c9acfa0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a00eb3c01f15bc55f0c2ee59fc35ac4da779d8f361c2c914b8e9b9181527df19f7ae87c73fb497c41f883a5c9a66abaeb269d2aed96dace1481651e8c54648f6271ed5e7763a5deea6ceb67693ddb20cb0822672a3df029f7ba2ea1a6a07bcb0b9b542701a7859013f88a00ad04f25acf1cd0c8f0cd1b07492362acac0e41047420d7ac5cfed5df142eb413a53f895c4653cb6b94b78d6e0af4c7981739ff006873ef5e55656571a8dd476d696f2dd5cca76a430a17773e800e4d472c4f04af1c88d1c884ab238c15238208ec6803b4bdf8d3e33d47c6da7f8bae359f37c43a7c420b6bd36b08d88030c6c09b4f0edc904f3f4aeabfe1aefe2d7fd0d9ff0094db4ffe355e3f450074be36f893e24f889aec1ad7883536bdd4e089618ae1228e1288accca008d546416639ebcd77763fb5b7c51b0d2458278884a15762dccf6b149328ff007caf27dce4fbd78fd14017358d62fbc41a9dcea3a95dcd7d7d72e649ae2772ceedea49aab1c8f0c8b246c51d08656538208e84536a7b8b0bab48a1967b69618a71ba27910aac83d549ea391d3d68036bc73f107c41f123594d57c49a89d4afd215b7594c491e2352485c2281d598f4ef4fd67e23f8935ff09e93e18d43537b9d0f4a62d6768d1a0f28f3fc4177370481b89c03c57374500145145007add87ed5df142c3559afff00e12537124c8a8f14d6b0f9442e704205001e7a8c13c6738ae27c7bf123c47f12f565d4bc49a9c9a8dca2ec8c3008912e73b511400a3e839ef9ae6a8a00ef3e1dfc73f1afc2e824b6f0feb0d058c8c5dace78d668777721581da7dc633dea97c43f8b7e2bf8a3750cde24d5a4be5873e4c0aab1c3167a95450067dcf3ef5c851401d0dffc42f106a5e0ad37c23737fe6787b4e99ae2d6cfc98c797231724ef0bbcf323f0491cfb0ab1a37c50f13e81e11d4bc2d65a9edd035124dcd8cb04532312072bbd4943c039520e403d40aa167e0ad72ff00c2b7de25b7d3a59742b19560b8bd046c8dd8a80a79ce7e75e9eb58b401de7c3bf8e7e35f85d0496de1fd61a0b1918bb59cf1acd0eeee42b03b4fb8c67bd52f887f16fc57f146ea19bc49ab497cb0e7c9815563862cf52a8a00cfb9e7deb90a2803b3f871f18bc5bf0aa69dbc37aab59c370419ada445961908e84ab0201f7183ef5b3af7ed25f11bc4716ad05f788de4b4d52dcda5cdb0b78446622181551b7e4cee3965c31e324e05799d1401d6fc3af8ade28f857a84d77e1ad4dac5a701678991648a50338dcac08e32707a8c9e79aeaf53fdaa3e276a97734f27890c4b2c0d6cd0476b0f95b1b1b86d28464e3ef7de1c80715e4f4500751e0af89be24f87b6dac5be81a89b08b56805bdd81123ef419c60b03b480cdc8e79ae5e8a2800a28a2800a2ac69da7dc6ada85ad8d9c4d7177732ac30c49d5dd880aa3dc92055af12786b53f08eb573a46b168f61a95b15135bc84164ca8619c123a107f1a00cda28a2800a28a2800a28a2800a2ac69da7dc6ada85ad8d9c4d7177732ac30c49d5dd880aa3dc92055af12786b53f08eb573a46b168f61a95b15135bc84164ca8619c123a107f1a00cda28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803e97fd9af52b8f87ff047e2af8ded2616d7d1a43676939456f2e500ed386041f9a64e0823815abfb3cfc7af883f147e22daf867c472c1e26d02f22945f4571a7c2ab146118ee251146376d1f3641ce3ae29fe16f1a3fc16fd92f43d4a1d234ed56eb5fd62466b4d56132c2ca0b8de54119c08131cf715b5f047e2fdc7c7587c4be059746b1f094d73a6c97116a5e1a56b5d8559570e32723e71dfa6477a00f25f87be12d65bf688d793e1adde9f6f2687717b716b3ea049b75b757311190ad91b64001fc735c97837e1cf8b7e3df8ab59bdb158249de57bcd4751ba610dbc2ceccc4b1038c9ce000781d302bd1ff661dde1df86ff0017bc57808f6ba40b4b790ffcf47590e3fefa11fe7583f03fe27f85f49f02f8abc05e3092fb4dd235d74946aba72ee92165c7cac0024a9da3a03d5811ce40066f8f3f66bf12782bc313788edf51d23c4da2c0c12e2eb44ba33790738cb82a38c91c8ce33ce2b17e18fc10f12fc5486f2ef4c16b63a4d91c5ceaba94de4db4478382d8249c1078071919c64577de27f02eb9f0bfe1b6b3ad7807c6f6fe25f016b2c2cb5368215591320aaac88e18afdfc654ab7ccbc74c5ad13c12ba07c1cd207c46f1e5d7877c2dac3fdb34ff000ee9d6a269ee070c25638e0720f391caf20e050070ff00123f67bf107c3cf0f43e21fb7e97e21f0fc9208bfb4746b9f3a38d8f003703193c6464678e0915e615f56f882cfc2be18fd907c47ff08a5fea5a8695aceaf0a4726ab1ac6fe62bc65b685ed884f3ec6be52a00ee7e0afc349fe2b7c42d37424dc9665bcfbe9d7fe595bae0b9cf627851eec2bdebf69ed5b46f88df06347f107876dd134df0feb72e8d0f958dab084da187a29f2e323d98569fc28f845aaf853e006a2da7dfe97a378c3c5f12fefb55b9307d9ec8e7017009dcca49e07f18cf2b5069bf06752f097eccff0012340d4b55d1f537565d6203a4dd19fcbf2c233eecaae32b163f13401f2ff817c07ad7c47f1141a1e81666f2fa505b19dab1a0eaeec780a38e7dc0e4902bd5eeff0063af1809a3b7d3b57f0f6b578b2a45756d617c5a4b4dcc177c8a501da3392473d7835aff00046edfc0bfb377c4ef1969e4c7accb3c5a54570870f0ab18c1653d8feff39f551e9591fb16d84b7ff1cad6e44d22259595cdccd86203a95d986f519914f3dc0a00e564fd9fbc449078e244bcd2e63e0f206a491cee59be52731fc9c8f958738e54d627c2ef853adfc59d6aeb4dd15ada136b6ed753dcdec8638624040f99829c139e38f5f435ed9fb38ebebe3af1ff00c5cd29c978fc55a75edc2e7f88991801f5c4ec7f0aceb997fe1467ecd915a2fee7c59e3dfdeca7a3c1600703db72b7fe456feed007987c39f829e22f89d7ba8268e6d23d374f245ceb179298ace31ebbcae4e4738c671d7157fe24fc00d7fe1d68506bc6f74cf10681349e48d4b46b8f3e247ec1f818ce08c8c8ed9c902bddb58d23c0fa2fece9f0fbc35e23f15ddf852d357b71ab4bf62b379cdec8c15cef2aa785322f07d17fbb5c94de26f859e0af827e37f0ae81e31bcf11dc6b22296dedaeb4e962092a32f2094007453927f84500709e16fd98bc61e2df09e91e24b5974cb6d2751f31bcfbdb9310b74462a5e525701491c60927238eb8a1f14fe00f883e15e9361ac5ddde9dac68b7afe545a8e9539962df8242925475dad82323835e89fb50de5cf863e1efc2cf04a5c3c51dbe8e977796e870b24842aab30ef865971f5351789256d0ff0062af0bdaca099356d6e496357fe08d5a6e47e283fefaa004d6bfe296fd8b342b654d93788f5c79e45e84a21719ff00c831fe75e6fe24f821aff83bc15a7f8935fb8b0d1d2fc8fb2e99772b8bd9467ef79410e0639392303af2403f69f87bc25e17b3d1be17687ac5cd9cde27d3b4833695a4dd37eee4b9312334ccbd4ed2ad8cfab119238f85fe2a789fc4de29f1c6ab73e2d9646d6a199ede5858616df6b11e5a2ff0a839c7e7c92490077c4cf85fac7c2bf14ae81ab3db5c5eb4293ab58bb488caf90304a839e0f6ab1f143e0febff0008ee74ab7d7fecc26d46dbed31adbc85b60ce0abe546181ea0647bd7d43e28f0bd9788be2a785fe22eb203786344f085a6b774e4644928323449ee492081df6e3bd656b3a2dd7ed2d67f0735bbe8c08ae2eb511aae3eec50c7306db9ec36a1507fda1401f3af8abe0e6bfe11d3bc2b7179f6796ebc491acb63a6dbb3bdd6d6dbb77a6d0013b800324e73e86bbeb3fd8f3c592ac36d79aef86f4bd72741243a2dd6a1fe94c319c6d55233f4247bd5fbad57c45fb407ed272ddf842fa3d3534dc8b1bf703cbb3b484edf37183d4b640f59074ea377c2de1cf867e21f8c3a4bb78ffc41e29f1749a9452fdb60b258ede79918367246427c9d41c6071da803e6ef11f87750f09eb97ba3eab6cd69a8d9c8629a16e4ab0f71c107a823a820d6a7c39f87faa7c4ef16d9f873473025f5d07657b962b1a8442c4b10091c2e3a7522badfda8b534d57e3d78c278f1b52e23838f58e248cfea86bb3fd8badd6c3c61e2af134d8fb3e87a1cd3127b312083ff7ca3d0050d33f639f195f996de5d57c3f65aa80cd16973df11732a8cfcdb021da08e467079e40af208fc21accde293e1b8f4e9e5d705cb5a1b145cc9e682415e3d083cf4efd2bd23f66c7d43c5bfb457872f2eae66babd92ea5bcb8b976259b6c4eec58fbe31f8d7ad7c36d4e0ff8599f1efe20410a497fa14174d61bb90093361ff1108fc18fad0079f0fd8e3c5c51ad975bf0db6bcb1f9a7435d433758c6718db8cfe38f7af0fd474ebad22fee6c6f607b5bcb691a19a19461a375382a47a822ba8f86fa8ead7ff00167c377b05c4f3eaf71abc0fe7ee264776946e24f539c9cfb135d87ed702cc7c7df130b3007fc7bf9db7a799e426efe99f7cd0050fd98342fedff8ebe1280a6f482e4ddb71c2f948d203ff007d2afe95e9df10bf66af17fc4cf88fe27d63fb4f42b0bebdbb966b4d26f2f88bc92052446c5154edca2a9e4f7e7158bfb175bad878c7c55e269b1f67d0f439a624f6624107fef947ae67f66c7d43c59fb45786ef2eae66babd92ea5bcb8b976259b6c4eec58fbe31f8d0070ba17c37f11f88fc68de13b1d325975d499e096d8e0794c84872edd005c727a7e75e95abfec8de2db0d3afa6b0d5b40d7efec23325de95a5de992ea203afc85464fb673d866aa78a7e33eb5e0df8b7f12751f0e8b7824d5aeae6c4ddb47ba48a21232868db236b1c2b679e40f4a93f63ff00b7c9f1f7416b56936797726e883c18bc97fbdea376cfc71401e2f5e81f0c3e07789be2d69dacde787d2d9d34bf2c489712946959f76153e523236f3b8803239ae7be2135b3f8f7c4cd67b7ec8753b930ece9b3cd7db8f6c62bdbbc2b713782ff00633f125fc53b5b5d7887595b48e48ced6318d81973ee23941f6268030753fd913c636de1cb9d5b4cd4344f1235a8ff0048b2d1aeda79d0fa01b402473c673c719a96cbf63bf195ed94c23d4fc3ff00db5145e6be84350dd76831d18052a0f6eb8f7adffd91f52b8f0a783fe2c78a23768d74ed257cae7869b6cac9f882a3fefaae7ff63ab3b9d63e3f69d7af3c8ef6d05d5dceecc499331b21dc7be5a4079a00c1fd9a3c352ea9f1f3c2f6371032bd9ddbdc4a8eb831b42acfc8ec43201f5af4bf88dfb3478bbe247c45f136b0356d02cf50bebb967b4d1eeaf88bb780122325029db940a793f5c527ecc97905efc64f891e38f97ec361677d7cadd879929753f4daaf5e3bf0a2ff0057d7fe36785af05ccf73ab5ceb56f2cb7058977cca0bb13e9b7767db3401cd2f83b5b7f151f0d2e9970fae8b83686c5573279a0e0afe879e98e7a57b00fd8e3c5c51ad975bf0db6bcb1f9a7435d433758c6718db8cfe38f7af63b37b3d2be36fc79f1ada451cd7fe1ed291ad323216536d976faee84827d0b7ad7ca9f0df51d5affe2cf86ef60b89e7d5e7d5e07f3f71323bb4a37127a9ce4e7d89a00e7a4d07518b5c6d19aca71aaadc7d94d9ec3e6f9bbb6ecdbd739e315ecf67fb1e78b25586daf35df0de97ae4e8248745bad43fd2986338daaa467e848f7aeabe21783357f197ed85abdb7832ee3d2f51b510de4fa8b8052d0ac118793041c9f99463fbcddb934ef0b7873e19f887e30e92ede3ff1078a7c5d26a514bf6d82c963b79e6460d9c91909f27507181c76a00f9bbc47e1dd43c27ae5ee8faadb35a6a367218a685b92ac3dc7041ea08ea08359d5ea5fb516a69aafc7af184f1e36a5c47071eb1c4919fd50d796d00145145001451450014514500145145001451450014514500145145007d2973f197e1178a3e1af83fc2de25d2fc572ff0060daaa13a7a411a3cc50076e65c919071903ad65cff1ebc15f0fbc2bab695f0b3c357fa6ea1aac660b9d6758915a748fa6102b30cf3c72003ce09af9fe8a00f54d07e2ae91a1fecf9e22f03c505f7f6e6b1a8a5cc9701105b8854c442eedfbb3fbb3fc38f9bad741e0df8b5e08f117c30b0f01fc46d3f535b7d2e66974fd5f4729e6c60963b5837a6e23a3646380464f85d1401ed7f10fe2ef84ad3e1a37c3df879a65fdb68b7174b777fa86aaca67ba75da46029c01944e78fba381cd744ff183e17fc49f03786ac7e2169dae43acf876d45a452e905365ca0006393c6422e4103073835f3951401ee5f17be36f84bc67f09340f07f86341bcf0fae99a81b8fb33ec684c604aaa7ccdc599c870cd95ea5b93804f957816e742b2f16e9773e2686eae34386612dd41668af24aabcec01994618800f3d09ac2a2803d07e39fc5593e2e78feef5a4492db4c8d56db4fb59300c502e7008048049258e09e4e33c56afecf9f1634af85fab788575fb7bcbbd1f58d2e4b1962b18d1df792369c3328c6d2e3af715e5345007b57c12f89ba6f83bc1faf7873c6ba2df5f781bc44fb0dcdaa731dc205c9427009036138390554e0e6bd9be14df7807c1ff000cbe22f89bc15a4ea90da59e9ef00d735c7512dd4cca76c3185e0286f2f3c024b2f0702be7cf877f1ff5cf01f879fc3b3e9ba5789bc38d2194697adda89a38d8e4929cf192738391d78e4d47f133e3e788be256956da349058685e1eb66dd1693a441e4c191d0b0c9ce33d381df19a00e9bf638b7d407c6ab2bfb650ba7d8dadc4ba8cee7091406361963dbe629f97b1ae3be39fc4a7f8a5f11b52d61095d3508b5d3e2c60476e8484e3b679623d58d6e6b7fb456a575f0fbfe110d0f41d27c2fa7cf02417f3e990ec9af42a8077b71f7b9ddd49c9e704e7c96803ddbc33f173c11e31f86fa4f833e2658ea83fb14b0d3359d1f619638cff000306e3a003a1042af008c9e6fc7fe2cf86d7163a4685e11f0cdddb69d6d7427bcd6b5060da85caf4640036d0b8e40c819c602f39f2da2803d3bf689f8a9a7fc5df883fdb5a55bdd5ae9d159c569045788ab200bb89c85660065ce39abdf11fe2c685e30f047c34f0cda5bea10d9f87adf66a5e6c68be6c8c230e62c39c8f964c676fde15e4745007af7c69f8e29e36f8b9a7f8c3c30b77a6a6990dbc765f6b555910c6ccdc856618dcc78cf23ad67fc7df885e19f8a3e27b3f11e87617ba6ea5736c8baac1711a089a7500078d95896c8e0e40fba0e324d798d1401ee3f113f687b7f13fc0ff000b780f4cb7bbb79ed20821d52e275454996150234421892b9f98e40c151ea697c19fb44c1e0ffd9ff57f055bdb5d0f10dccb3476d7aaabe4c56f2ecf33e6ddb8370fc018e54e78af0da2803d37f67df8bb6ff083c65717fa858bea3a4dfda3d95e430e3cc08c41dcb920120af4246413cd7a5f837e2afc0ff84fe30b4d5fc3de1ef106a9312fbaeef4a3359a94618850b00cc4e012c410a4e18f43f33d1401b3e35d6e2f12f8cb5ed5e1f33c9d42fe7bb4f3800fb5e4661b80240383ce09fad779f0c3e2ae8de03f85ff001074496daf64d77c476e96904d122181230181de4b8232246e8a7b579551401ea1fb3a7c4ed1be1278f27f106b36d79771ad84b05ba59468cc2562b82db9970bb43723279e951fc15f8cadf0cfc57a95dea966759d175a81ed755b3c80d323124b0cf1b865b83c10c4719c8f33a2803e88d1fe24fc1cf8537937887c13a3eb9acf894ab7d8935b282dec59863236f24807fda3fed0eb5e09adeb379e22d62f754d4276b9bebc99a79e56eacec4927f33d2a951401eabf0c3e2ae8de03f85ff001074496daf64d77c476e96904d122181230181dc4b8232247e8a7b545fb3a7c4ed1be1278f27f106b36b79771ad84b05ba59468cc2562b82db9970bb437232791c5797d1401eb9f08fe31693a0e91e25f0bf8d74eb8d63c2fe21759ee4da3017104e0e7cc5c900f214f5eaa3dc1e897e2f7803e13681ab5afc2eb0d5ee35fd52136f26bdad940f6f11ea2255c73d3b0e40277600af01a2800af55f1afc55d1b59f81de0bf02e976d7b15ce933c9757d2dc222c7248dbcfc843927991ba81dabcaa8a00f55f0a7c58d2bc35f013c5be0c482f7fb7f5bbc8e417291a790b0298b2a5b76ec9db20c6dc7cc39a3e007c55d1fe12def89f51d42daf6e350bdd2a4b1b06b4446547620e5cb32e065539009ebc579551401ed7f00fe357867e13f857c5b67ab68b77ad5e6b66181add42081ed86e122b316c825647e8a72719f6e8bc3df14be0e7c2792e3c45e0ad175dd4bc53244cb671eb453c9b12c307054f3c71fc448246464d7ce545007a97c21f8e171e02f1aeb3aaeb76cdaee99e208e48759b524069c4849671db7659b8e84311c751db68ff00127e0e7c28bd9bc43e09d1f5cd67c4a55bec49ad9416f62cc319f97924027fbc7fda1d6be77a2803d6fe0c7c7693c05f12b55f11f88609759b7d6e2961d4c47812b798e1cbae703391f7720609e9815def837e2afc0ff84fe30b4d5fc3de1ef106a9312fbaeef4a3359a94618850b00cc4e012c410a4e18f43f33d1401f43782bc3fe1ff0012e89f17be26f8974dfb4e92d25c1d20df128cf752bbb28c2b60b02d183c91f31eb835f3cd5e7d775293478f486bfb96d2e394ce964656f25642305c26719c77aa340051451400514514005145140051451400514514005145140051451400e8e379a458e356791c8555519249e800afa2fe2a7ecd5a6fc3df81969aef9d2c9e2db496dcead1f9bba38965dd88f6e3820b46339e704f7ac1fd97fc156326afaa78ff00c42bb7c35e128bed8c58644d72066341ea41f9b1ebb077aebfe1978b6ffe33784be3adb6a789af352b35d5e08339d8d16e2a8bec36c2a3e82803c53e0bf85e2f197c55f0b68f711acd6b737f1f9f130c87894ef753f55522ad7c74b3d32d7e2d78aedb42b18acb4ab2bb36a905b26238cc6046df4cb2b1fa9aeebf62cd263bdf8ceba84c3f75a4e9d71785cf45e0479fca435dc7c25fda5f5ef187c61d37c3d63a4e9961e14d56ee447d323b652c51833348efd59cf2cc4f079e2803e50a7f932795e6f96de5676efc1db9f4cd7d1de0ff00845e18d5fe3e7c43b8bf890782bc252dcdf5c5b270876b311163fba36bf1e898ef527867f6baf10eb5e3cd3f4bb8d2f4a5f065edd2591d096d1364703b041ce3258039fee9c741401f35538c4e23126c6f2c9c07c719f4cd7bc7897c0fe05f867fb4c6a3a7789cbc5e0fb4717b1daa46d2efdf1aba4240e76866239ea1707ad747e11fdabf5df14fc49d2f42b9d2f4c1e09d4af63d38687f6342b1c323845e7bb0c824743cf02803e62a7fd9e5d88fe5bec73856da70c7d01ef5f4df84be05f876cff686f1cc5a9c424f07784a36d4e5b793952ac8248e26cf55505baf5d9839c9a93c19fb51789be23fc4fd23c393e8fa54de14d4ef63b41a33db2958612d80c1faee51f367a657803b0071dfb55784342f006b1e12f0f691a6c165756fa3452df4b12e1a795895cb9ee7f764ff00c0abc3abde7f684f8917fa1fed39aaebba6185ee74678adedbcf8fcc4056101b23bfcccf5ecbf0a3e3378ba5f07df78ffe21dcd869be10b7529696f0d8a24fa8cbc8023cf6c83f53dc004d007c434e30c82212ec6f2c9da1f1c67d335f477c28d213f696f8dde20f16f8874f0fa469f08bc934bb6c9126d012083fdac8524f4dc41f5af4ff0008f8a7e2f6bbe3ab5d2bc43e018ad7e1f5e49f659b4a6b08fc9b681b201ddd4e38cf63ce00ec01f1053bca7f2cc9b1bcb076efc719f4cd7d6df05fc2fa57c2ef1efc6ed51ed8de695e1ab49608a22d82d1b33c8230c7f8b112ae7deac7ece9f1b75af8b7e37baf066b3a4e91ff00088cfa7cc46956d66a915ba2e0003d4738e7d73c5007c7f455ad56182df54bc8ad5fccb6499d627273b90310a7f2c57d21fb3f6a563f0fbf678f887e30bfd2a1d584d790584769723f77315dbb437aae67cb0ee011401f33b44ea8ae51823676b11c1fa1a6d7d79f0a7e2aeabf1d3c09f12749f1a5be9f3e8fa7690d7703436ab10b560ae576e3d36e41ea36f5ae2be1f01e25fd907e20e99857b9d1f5186fa3c8e56366889fd1253f8d007cf14b1c6d2b84452ec4e02a8c935f46f86ca7c0dfd9baf75c91563f1578dd8db586e1f3c368010641e99058e47f7e3f4aef2d7c0fe2ff0081df0ef40b6f87be143aa78bf55805d6adae1b7598db6464431eee06338f4e32412dc007c6cca518ab02ac0e083d45257d4ff1f342d67c53f0234bf1878d3444d1bc6f61a97d8679442226bb8181da580f7c63d30d8c66be5eb2101bc83ed2246b6f317cd10e3795cf3b73c671d280191c124c18c71b385196daa4e07a9a657d8e9e2ef8b10c5a745f0b3e1ccbe1af095bc49b2d6f6ce2596e8ff13485c8241f51c9eb9e6b87fda53c09a64ffb46f86f4ad3ec63b37d723b26bdb78170a2696778dce074ca8527df27b9a00c0fda5bc1ba2780b4bf877a3e9fa7dbda6adfd8ab73a94d12e1e79182aee7ff00812498fa9af0fafb9be35fc3ad117e20eaff00127e202bb784f4582decf4fd2e15dcfa84806e0180e89bdd970719c1ce17ef78b7866fb51fdac3e36e9b63ac05b0f0f5aabcc34eb43b23b6b54c65171fc4c76296ebcf18000001e0a90c8f1bbac6cc89f7980242fd4d32be8cd6ff006bdd5fc3de266d3fc1ba6e9561e0ab194c106982d576dcc2a71b9dba82c0678e9919c9e4c1f1dfe166956ff1e7c2b6ba2da2dae99e2bfb1dcfd92318589a59763800741c06f6dc7a01401f3e4713cce12346763d15464d3554b1000249e0015f5bfc7efda5f5af879f16b53d27c2761a6597d89618aeaf25b5124b747606d84ff0a2eec60639dc73cd6a7ed19f1523f84daee8da9f86b41d2ec3c69ae69f1dd5fea72db8924863e42aa03c025b702c7a8451ce06003e3578da2728ea51870558608a238da57088a5dcf0154649afa5bf682d54f8ff00e007c3df1c6b3676f078a2f2ea5b6967823d86684194648f4fdda11e9b8e3ad3fe13f887c55a67c33b1b6f853e02bb3aec8e4ea7e25bbb58dc4a79f921673b703a60e718e9924d007ccce8d1b95652aca70411822bbff0bfc2493c43f0abc51e3993544b2b4d1258e016ed096370ec54001b236f2ebd8f5af68fda674dd5352f821e11f11f8d349834df1e7f693595c3c48aad2c3b6520b6d247f0467af1938c6715d26b1f1fbc5be1efd993c3de2a69ad06bdabea6f6f19fb2208d604328fb98c7fcb21cffb5401f19819381c9a74913c2e52446471d558608af70f87df17fc3df0dbc15ab7886d2de1d57e28ea97ac44b776a5a2b288924ba9e99272783fc4b9e1483d7e97e31b9fda3be0afc406f175bdacfaf785edd351b1d5618163936e1d8c6768c631191efb87719a00f97a9d244f16dde8c9b86e1b86323d6bea5f0a78ad3e0efec99a4eb10e95677faaeb7ad4925b8bf8b7a46ca5944a54fdeda20181ea41ed5d3f833e2d7fc2ccf80be2cf137c43d174df101f0e5d23d9878046b24b85d8ad8edbd941c7556c107b807c6662758d6428c118e0311c1fc69b5f60fc08f8bfad7c759bc59e16f18d9e9d75e1c5d1e5b90905a2c4b6a5595542e3d98907a82a0835c1fec9c91e8ba1fc52f16491866d274168e2661fc4e1dc01ef9857f3a00f9ea8009e8335ecdfb20e8035df8eba233a8786c639eee40467a46cabff008f32d67e99f1cb52f02fc57f18f8a347b5b0bf93569aee202fa22e8b1bca594ae08e8028c74238a00f29a28eb4500145145001451450014514500145145001451450014514500145145007d65f10be295d7ecbfa17877e1e7840d94daa5bdbfdaf5ab99e1f315e793070067af19e7f87655dfd9eff0069bf137c47f89967e19f120d3db4fd4609e302ded446c5c465c0273d08561f88af9028a00fa73e0868b2fc39f06fc76d4dced9b4bb693478256ebe6e6553ff008f7975cc7ec5ba4c77ff001ae0bd947eef4ab0b9bc2c7a2fca22cffe45af0aa2803e8bfd9e3c67a6f89bc49f137c39aa5ea6992f8e6d664b6ba9c80ab331970a4fa9f3891ebb71d48ccdf0eff664d67c01e2e83c4df1165b1d03c31a1ceb76f3bdda49f6a643b915029270580e08048e00c9af9baac5d6a3777a91a5c5d4d3ac6308b2c85828f4193c5007b8e9a3c37fb4a7c5df19cfacea53e87a8ea5116f0f9795121691176451cb956eaa10e148e8d839c56e7c2ffd9e354f859e2c83c65f125ecfc3fe1fd065fb526fba8e57bb99398c46aa4ff10070704e00c7391f3554f757f757bb3ed3732dc79636a79ae5b68f419e9401f4ff00c14f8816bf153c6bf16f4abdb98f4bbdf1c59bc7a799ce0290b222479eec1241c0ebb0d687eceffb327893c0ff001574dd6bc58f65a6258f9cf6b682e52596edb632ee50a4e11776e24e0e4018e6be4904a9041c11d08a9aeaf6e2fa5f32e6796e24c6ddf2b9638f4c9a00fa07e0cfc268ff00685f8bbe2af116a5233f876db5192f2e114e1ee8cb23b47129ec0807273c0c01d723b0f8d7f05be2f7c59d76331e8967a678734f5f274bd2a3be8824118e01201c6e200ce381c01c0e7e48a33401f427ec9fe21b4d3ef7c71e0db8d5c687a8f886c3ecd61a9acbb047709e605dae08c13e66463aedc0e48ad78fe10fc65d206a179e2ef8837be12d12cd199b53bad7a49565201da11124dc7271d7079e013c1f992a7b9d42eaf1235b8b99a758c6116490b051e833d2803e8af0e5edde91fb21f8eb5abcba92e350f116b296df6a99cbbcca0c7b8966e493897ad55fd918ae8361f13bc5ac3e6d1f407546ff0069f73803dc9840af9e28a002be89f1c6ff000b7ec75e07d3788e7d6f5496fa551fc51a9936fe9e51af9da8a00fa1fe0f95f0cfecb9f15f5ec625d425874953ea3e55207e1704fe153fec61159f89351f1df836fd992cf5cd18f98ca704046d991ee04c48fa57ceb6b124f7314524a208ddc2b48c321013c93f4eb5f41dff0088fc0df02bc05ae695e09f121f16f8bb5f845acfabc56e618eced8fde54e4e18fb3139c138c0040388fda2fe24c3f113e21dc7f67154f0f692834ed3228fee08938de07fb44123fd9da3b57bdfc4dd3fc75f1b6c7c3be30f857e21bd7b29ac63b6bed26cb5636ad6b3a962c5977aae7e6c1eff002823208af8d2a7b4bfb9b0666b6b896dd986d631395247a1c5007a8fc6ed17c4fe0c874bd1bc45e3f97c4d7f3299ef74917f35c2d8b83f2062cc54b104f60473db04d5fd99e7d0edbe3678665f10344962b33946b8c08c4db1bca2d9ff006f6e3df15e624e4e4f268a00fb1358f82ff12f5cf8c4756f1678a23b0f0bb6ac86099f52f9268ccbfba82184118661b57040ea4fcdde3bab69bc5dfb79ac722660d2b64801fe158ed0303ff7f187e75f234f7d73751c51cd712cd1c436c6b2396083d003d2a0a00fadfc19f1a3fe169fc51f1bf807c6179f6af0e789269acb4c2d80b68e8ec2109ee40073ddd57d4d70ff00006ee3f819fb435ee87e2a75b2578a6d225b973b6342c55a39327a2b6c5c1f4704f7af00a2803e84b1fd8e3c4d63e2c73af5cd8d87832d65f366d75eee30925b039caae77062bea0019ea7bf5be1cf17da7c6afdb0b43bcd2d77681a242d15ab1046e8a18e421c0ed991c63db19e6be569351bb9ad52da4ba99ed90e521690945fa0e82abd007a278858fc48f8fd7a8c7ce4d5fc42605c7fcf37b8d8a3fef9c5757fb656b8bab7c73d4edd3ee69b6b6f66b8e9f73cc38fa1908af10a2803e8cfda702787fc15f07fc2b3b32ad96902e6ea38fa96711827eb94931f5af4bf8dbf0e7c71f11ae3c3d37c3cd66dadbe1e47a746b07d9b5016d6f063397700e586ddbeb8c1181ce7e28a9d2fae63b57b65b8956d9cee6843908c7d48e86803e95fdace0ff846fe1bfc2af0ec1a88d5ed12d26b93a8a92cb74db62c48a72720ef62393c30a93e2ff85353f11fecd1f0cf52d084371e1fd1b4e79b52904ca0c733796b8c139243990607393cd7cbf532de5c25b35b2cf22dbb1dcd0873b09f523a66803dab4afd9e62f891f0d744d77e1ddcbeafaea6e8b5bd22eaee247864e02b46085014e09f989c86183906ba3d72cadff673f823af785af6f6d6e3c77e2c644bab4b59049f62b55cf0e47720b8fabf190a49f9c6d6f2e2c65f36da792de5c637c4e55b1f5151bbb48ecccc5998e4b13924d007d11fb4d87f0e7c33f843e15c847b6d24de5c463fe7a3ac633ff7d799f9d17457c2dfb135a2052b2f8935e2cdea5518f3f4ff00465fcebe76a2803e88fd9d037877e0bfc62f1316f2dbfb3974f824ee1dd5c1fd5e3abdfb3869ade36f821f133c1ba3dc431f8a2f8c52c30cae10cd10c64027fdd604f6de33d6be69a92dee25b499658257865539578d8ab0fa11401f5efc0ef83fabfc0bd13c79e2ef12c9696dabdae8530874d827596689482e1dca9217734602f27386f4af9da7f84f7f6df092dfe204d7d6d1e9f717c6c21b43bbce9186ecb0e318f95bbf6ae2a69e4b995a59a4796473967762493ee4d77ff11be2f49e35f0b7863c3363a62689a06856e152d2394c8669c8f9e66381c924e076dcdc9cd0079ed145140051451400514514005145140051451400514514005145140051451401b7e0ef046b9e3ed6a3d27c3fa6cda9df38dde5c4000abdd998f0a3a72481cd7a76b5fb20fc46d1f4a9ef96cacb5136ebba5b4b0bb124e83bfcb8193ec093e99acff05fc6cb7f87df0875af0ee83677365e29d6271f69d691d576403808847cc0e33cf62ec476acbfd9fbc4fa9f87fe3378527b1b8944977a9416970a18fefa396408e1bd786cf3dc03da803ce994a9208208e083da8afa3f58f837a67c40fdaefc45e152f358e90f2c97970d67b55d330090edc820664703a74268f0ff00c27f823a9f8a3fe10e3e31d72eb5f9e736f05fc11c6b67e6e4858c1284b1cfcb9e031e84645007ce1457ac786bf679d575df8d97bf0f25bd8ade4b0776b9bed99510280448ab9e4b064c0cff001726bb2d37e1d7c07f1078813c2da778b3c469ab4b21820d5678e2fb1c92f200c6c07693d3a67fbd401f3ad15b5e34f0b4fe0bf156a9a15c4f15ccb633b426781b29201d187b1183f8d757f043e0f4df173c417714b7aba4e85a643f6ad4f529318862e7819e371c375e00524f4c100e074fb19753bfb6b3b75dd3dc4ab0c6beacc703f535d87c61f8612fc23f1949e1d9f528b549e382399e58632814b6485c127b60fe35edff000c7e1efc17f137c4ad0ad3c23e23d70eafa75e477691ea912f91a82c2c1d8210aa41c293ce38078ae67c53e09b9fda03f6a9f13e936978b690add4893ddbaeef2a1b75589881dce54003de803e7fa2be8ad37e1d7c07f1078813c2da778b3c469ab4b21820d5678e2fb1c92f200c6c07693d3a67fbd5e1fe34f0b4fe0bf156a9a15c4f15ccb633b426781b29201d187b1183f8d0062d15ea1f05be0e41f1122d675bd7755fec1f08e871892fefc2ee724f48e31fdee3dfa818248aec97e0dfc38f897e1ed7a5f867ad6b6daf68d6c6edf4ed6923c5dc4bd4c655460f41cf72010339a00f39f83bf09aebe2eebda869d05fc5a5c56362f7d35d4d19750aaca31804727767f035c1d7d3bfb25e8b6e9f0e7e29eb17fa9c7a2d9cd649a71d4a45c8b756593cc603b901930075381deb3748f829f0c3e28e87ad5afc3cf106b7278a34bb56ba583578d163bb55ebb405040270339e370c83401f3a515ebff0a7e0ce8dad783750f1cf8e3599f42f08da4df668fec881ae6f26feec790401ce3383dfa004d69f8a3e0f782bc4df0e757f197c34d5b54b98f4575fed2d2f5854f3a38dba48a54018ea7be406e4118a00e27c01f09aebc75e10f1978896fe2b0b4f0ddaadc48258cb79ec43908a41e0fc98ff00810ae0ebeabf835e1fd1edbf652f134fe23d64e81a56b1aaaacd771a6f95e18cc7fbb8d7bb3323af7c024f635c8eb7f067c01e2ff869aef8a7e1b6b3ab4f73e1f559350d3f5954ded1724b8daa31c063d483b48e0d00781515ec1f0c3e0b691aa7832ebc75e3bd666d03c2114bf67b7fb2286b9bd97382b1820803208ce0f20f4009ad7f107c1df0378bfe1eeb5e2bf865abea93be84049a9693acaa79ab160fef14a803180c7be42b7208c100f08a2bd3fe0e7c27d27c6d63ad6bde27d7d7c3fe18d1d01b8923c35c4ec47dc8d4e79e9ce0f24000e78ec6ebe0ff00c38f1f7807c4faefc3ad5b5b4d43c396ff006abbb2d6d63c4d080cc594a01838463d4f4c10339a00f9fe8a2bd37c4bf0bf4bd2be04f84fc736b7376fa86a97d359dd412b29850a34a14a00a08c88c1e49eb401e65457b7f883f6778fc39fb3cd9f8f6f2eae535bb892294d8e57ca8eda562b19236eedc7e539ce39c638ac38fe14e95a5fc047f1deb775770ea9a85f7d9346b28595639941c3c8e0a9381b64e847dd1cf3401e59457bec3f057c0bf0cfc3ba5df7c55d67548358d5231710685a22a196188f4694b03cfb71c8206706b9bf8c9f07b49f08787f42f17f847569b5bf07eb24c70cd72a04d04c3398df00027e56ec39561e8480793514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401e8bf117e0e4de05f03f837c5116a5fdab61e22b6f3894b7f2c5ac9b55bca2db8ee3cb0cf1f70f15d4fec95e089b5af89507896ec7d9fc3de1b57bebcbd9462356543b1777ae7e6fa29f6ac4f86ffb43ebdf0ffc3cfe1d9f4fd33c4be1c672e34cd660f3638c9393b39e3279c1c8c93c0c9a5f887fb46f897c77a17fc23f05ae9de1af0ee72da668b07931c9e81ce7919ec303d471401eb9f01bc4e7c4bf10fe32fc4a48e46fb2e9b712dba052582b9678c607f16c800fcebc47f67df0a5ef8bfe30f85ad2ce37616f7d15eceeab911c513876627b7ddc0f7603bd7adfc14f11df7c29fd983c65e30d3ca43aa5dead05b5abc8a1958298c1c83d461e518f635c8df7ed61aea6877b63e1ff000df877c25757ebb6f350d1acbca9a427a9073c13cf27247620d007ac787e686fbe3efc51f8a69aacd6ba1785f114f159c6aef7db6211b463771b49849cfa95208ea3cab5dd6fc3ff001ae5bcd07e1f7c244d3f5e9dbed097b05fe592356cbfee8aaa2e7a7deefc5707f0bbe307883e12ea57773a33dbcd05ea08ef2c6f63f320b8519c065c83c64f208ea7d6bb6d4bf6aad6a2d1ef34ff000bf86bc3de0afb6a95b9bad16c8453be7ae1b381f5c123b11401e3179692d8ddcf6d3aec9e1768e45c8386070464707915f42fc30f36dbf641f89f3e9e0fdbe4d4218a7318cb7d9f30673ed8693f026be75eb5defc25f8cfaefc21bebe934c8edafac2fe3115e69d7c85e09d4670480410402c33ee720d007a27ec51a299be295e6bd342c6c745d367b87b8dbf2a3b008067d4a990fd01ab1fb334370de25f18fc55bfd4a7b0d3f42492eaf2ded116492f0cbbdda2f9b8dbf2f5f52b8231918b7dfb5af898e95ab691a4e85e1ed0747d42d64b5367a7d934422dea55a452ae3f7983d482381c75cf0df0b7e2ff00883e126a37773a2b5bcd6f7a822bbb1bd8bcc82e1467019720f193c823a9f5a00ef35dd6fc3ff1ae5bcd07e1f7c244d3f5e9dbed097b05fe592356cbfee8aaa2e7a7deefc57895e5a4b63773db4ebb2785da391720e181c1191c1e457b3ea5fb556b5168f79a7f85fc35e1ef057db54adcdd68b64229df3d70d9c0fae091d88af13eb401d6b7857c5da7fc374d7c2dcc7e0fbfbafb3968ae818a49973c3c41b20fc9c165ec39e95eb7fb205ab78766f1c78eaf730e8ba4e8b340f2b0c2c92b157080f7384e9eacbeb5e79f0c3e39eb7f0cf4fbed263b3d3f5df0fdf36fb8d235683ce819b006e033c1e07a8381c71537c47f8f9af7c41d161d063b3d3bc39e1b8583ae91a2dbf930b30e417e79c1e71c0ef8c8cd007a0c568fe1dfd88669638a47fedfd7434aeaa48544700127b0dd6e07d5bde93f637b47f0fea5e32f1d5e030e8da368f2c6f3303b5e462ae141ee7119e07f797d46797f0cfed4be29f0cf86f45f0ec3a6e8b73a0e9d0bdbc961736ad225e23306266cb9c904120aedfbc720d50f891fb446bbe3ff000e47e1cb7d3b4cf0cf871183b69ba341e547210723773c8079c0006719ce0500731e25f0af8bbc37e0ff000fdceacb7317873550d73a6afda8490390065822b108df3f700f27debd6fe0bdb3783ff672f8ade24d4730d9eb3047a5590618f3a4c4884afae0ca3fef96f435c57c3ffda1758f05f863fe119bfd1f48f1678751cc90e9faddb79cb031393b0e781924e083d4e3193593f143e357887e2a7d8e0d47ecb61a4d97fc7a693a6c5e55b43d4642e4e4e38c93c76c64d007a7fc67b47f0d7ecb9f0974758a4f2af5e4d4e49369da19959d413ea44e71eca7d293e075a3f847f678f8b3e27d40182cb56b45d26cf7823ce90ac884afa8ccca323fbade86b16dff006b9f13bc169a7ea5a0f87755d02ded22b41a3dd5933c044608593e67621f04027a600e3bd727f157e3af883e2b416563790d9e95a2589cdb695a6c5e5c087046e232727048f419380327201e89fb418953e02fc165b107fb23ec12198c7f73ed3b22ce7df3e6ff00e3d4ff00d9d2093c23f077e2bf8bb515f274cb9d34e996a64e16e276575da3d70ce83fe047d0d70bf0e3f683d67c07e1b93c3575a5695e28f0dbb99574dd66dfcd48989c929cf19249c1079248c64d67fc50f8e3e20f8a36f6761771d9e93a1d91cdb691a5c3e4db467901b6e4e4e091e83270064d0077de17f06f847e18fc16d27e21f89f416f16ea9addd34161a74b318ada0552e37498fbc4f96c7073d40c0c135dff0087fc676579fb357c49f12daf8334cf08437308d2e26d36265fb5072232493f78032e38ff006abc6be1bfed21adf807c28de18b9d2349f13682ae6586cf5783cc10b1393b79c63249c1079270451e34fda6fc59e3bf066a5e17d4ad7494d2af268e545b5b6689ad550a158e2c3e026533f3063f3373d3001e4b5f58fc13f0443f17bf67dd1346bb71169fa378b1ae2fa46380b6cb0191f9ec0f99b73d89cd7c9d5dd7853e337883c1bf0fbc41e0fd345ac7a76b6d9b99d918cea0a85654218280ca3072a7827a5007d05e1cf11dd7ed216df18f43b2216def3fb3c68f091858618a7214e3b0202b11db26b8bf8b9e29d2afbe377827c1966ebff08a784aeacf4b009f91d84882773efc6d3fee13debcbbe13fc5fd77e0eeaf7fa8e8496924f796a6d1c5e46ceaa0b2b0701597e60578ce4727835c5cf3c9753c934d234b348c5dddce4b3139249f5cd007b2fed866f8fc7bd7fed81c4422b6fb2eee9e5792bf77db76ff00c735d2fc45b797c15fb25f823c39a92795ac6ada93ea51dabe43c70fef0838ed90f1ff00df67deb0f4bfdac75c8f4ab0835cf0d787bc55a869c812cb54d5acfccb88b1d096cf27a72304f724f3591e14f14dd7c67f8dba3eade38d7ed6ceda2996e269eedc450c70c47ccf26307819c1007b92727a807955cdacd672f97710c90498cec914a9fc8d455dff00c78f8830fc4df8a7ae6bd6bbbec12c8b0da6f182628d4229c76dd82d8ff6ab80a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028af75f833e1af08784be1deaff0012bc5f6d6daecd6f37d9749d065917134bc0deebce5724f5180158e09c574ff0fbf689b6f89de2eb0f0878cfc1de1d93c3fac4cb6518b2b331496cee76c6558b1fe22064608ce41e30403e777f156b32787a3d05b54bb6d16397cf5d3cccde4ac9cfcc1338cf279f7acbaec7e25fc3e9fc15f13b59f09da2cb7d25b5df936ca8a5a4955b0d18c0eac5597a77ae96fbf659f89fa7e92ba8cde1797c8201648e789e541eac8ac5bf4e3be2803ccef34abdd3e2b796eacee2da2b94f32179a26459578f99491c8e4723d6aad7d31fb57e897fe24f8ade11f01e816df6db9d3f4786daded91957739de48cb1007c88879f4ae0bfe1937e2bff00d0a527fe06db7ff1ca00f24a2b73c4fe07d73c1de247f0feafa7bdb6b28501b347595f2e0140361209208e073cd77171fb2dfc50b5d0db5593c2b3fd9d53cc6896689a70b8ce7ca0dbff000c67da803cae8a08c1c1e08ade83c09aedcf832e3c5915817f0fdbdc8b396f04a9849485214ae777f12f38c734018345743a3fc3ef10ebde17d57c4761a64971a2e9442de5d8750b1138c0c120b7519c038c8cd2785bc01aff008cecf57bbd1b4f3776ba4c1f69be98ca91a411e18ee25d87656e073c1a00c77d36ee3b14be6b5996c9dcc69726322366fee86e84f1d2a186192e2548a246965760a88832cc4f0001dcd7ab7c42f14e9a3e087c37f0b69b7d0dddc406eeff0051489b26295e4fddab7a10acd59ffb37e843c43f1c3c1f6acbbd63bd17447fd71532f3ff007c50079f5f585d69974f6d796d2da5cc78df0ce851d7232320f23820fe35057d13f16fe047c49f895f10bc59e2ad3fc333cba74d7b20b769268a39268a3fdda32a330620aa0238e4118cd7cfa6c2e45f1b236f28bc12793f67287ccdf9c6cdbd77678c75cd0041457ab9fd95be292e8c7523e149bca0bbfc9f3e2f3f6e33feaf76ecfb633ed5c17843406d7fc67a2e8b2232bdedfc366c8410c37c8108f6eb4019fa8e957ba44a915f59dc594ae82454b889a36653901802391c1e7daaad7be7ed5ff6df1c7ed1171a1e91692df5ddb416da75bdbc0b92edb3cc200f406439f4c1af23f15f8075ef056beba1eb163f67d5982e2d229a39e4cb7dd0446cd827b03cf238e450073f457ab9fd95be292e8c7523e149bca0bbfc9f3e2f3f6e33feaf76ecfb633ed5e54f13c72b44c8cb22b6d2846083d318f5a006d5a974abd874f86fe4b3b88ec6662b1dcb44c23723390ad8c13c1e9e86bd2ad3f65df89f7ba08d5e2f0acff6664f316279a259d9719cf945b7fe18cfb5773fb49c32f85fe11fc21f0898cc53a69ed7b730e3e65959538c7aee7945007ce5456f78d7c07aefc3bd6174af11581d3b50312ce21695243b18900e5188ec78eb4ed7bc01aff86741d1b5ad534f369a6eb0864b199a543e7a80092143161f787503ad0073f4514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145001451450014514500145145005fd4fc3faa68d6f673ea1a6de58c1791f9b6d25cc0f1ace980772160030c11c8cf515dbfece7e1e93c49f1b3c216c88ce21bf4bc7da3a2c3fbd24fb7c98fc6bd0f49f1a780be31fc2ef0e7853c6dae4de12d7bc3886dec75416c66865870005603a7caa8082472a083c91525a78f7e1e7ecfda16a89e01d527f17f8d35084db7f6dcb6e6182cd0f5f2d5ba9e878dd92064e06080771e0ebcd32ffe3d7c65f88d244b7a9e14b695ad918641952368f70fc20700ff00b75e3df05bc6de2df197ed01e1bbb9b5ebe7bdbdd455ee5bce3b5e204b491edce02940c318c01d3a537f673f8a1a1f83354f1268fe2d328f0ef89ec5acaf2e6305de238601c8192461dc7009c906bd17e1537c12f82de3c835993c7571e22bc4493ecd3a69d2ac168194afcdb43177209518e06492071401e5bfb46789ae354f8fde2abeb1b99639a0bb1671490390ca6241110a4723956e9ea6bd5fc397771fb36781d3c55e2ebfbad53c77ab424691a15ddcbbada21eb2caa4f5f5ee3ee8e4b11c67c01f157c3cb7f887aef8cfc7fa98b4be1746eb4db692d669d0cb23bb34ac2346e57e5c648e493d4035abe37d3be137c42f12de6bbadfc67bdbabfb96c93fd81721635fe1441b78503803fae4d005dfd93e13e32f1f78cfe20f896fa09f50d26d3ed22f75260228e7977812b9fe15558d871c0078e82b77c13e1d5f0ffc52b2f18ea5f1d3c37a8ca2e3ccbc8c6a4079f11cee8f05f18c1e0741c63a5791fc01f8a3a27c3fd67c43a4788229ae3c25e22b46b0bc78d7f7b1afcc124c0f676040e7e6c8ce3076e5f067c10f074779a95df8d2fbc6cad1b7d8b47b1b47b57dc410be64a78e320ff0f4fba7a100f3af8cb2e973fc55f15cda2cd0cfa5cba8cd2412dbb068d833124a91c1192718e2bd33e1ac336bbfb28fc48d2ada369ee6df55b2b98e1419662f2429c0f5f90d780b6371c0207604e6bdf3f656f8bbe19f85b078cbfe1259b09750dbcf696de4bc9e7cf0b3b2282aa429c95c16c0cf7a00f5ed36dac7c2fe05f12fc18b358e5d52cfc2175aaea32ae0efbe60adb33fec865fc0afa579478a26ff008541fb3568fe1c8cf93e20f1ac9fda77d8e1e3b318f2d0f71b805e3de41583f03fe2e59699f1beefc51e32bcf2ac7578eee3d427f2de40048a580da80b637055000e063b0ae5be387c44ff00859bf12355d6612469aac2db4f8f1b425b26426076cf2d8ec58d007075f417ec5364b17c47d6b5e9d47d9b45d1a7b8673d989503ff001ddff957cfb5ef9fb377c45f03fc3ff07f8e61f15de5c79fadc70d80b2b586432bdb90eb2b2b81b5481293cb03f271ee01ccfc3bf8a1e30f10fc71f0dead36b57b71a85eead04722895b6346f28568c26701369231d00af7db1d1749d1bf685f8cbe3736b1dd7fc22960b7b6f01036fda5edb7b37d72920cfab935c1f8307c1bf82ba9378cad3c6171e35d520466d2b4a4b2780c6e4100c848c6464f276e3390a4815c9fc1ff008e96ba5f8e7c5b3f8d564b9d13c630cb06aad0292d1172d8651d7680eeb81c80463a608073be04f8a1e2dbef8c3a1eb6fad5edc6a977a9c2926656db22bc8018f6e71b08246de8074af6f6f07d9dc7ede1e4594682de195753b845030927d94484fd4c854fd5ab97f0c5afc1cf82fac8f16c1e309fc75a85ae65d2b4982c9a0db27f0b4ae78cae739f971d769231599f03be33e97a4fc4ef19f8efc61a98b6d56f6c271691ac1248249dd94aa2ed56da0040a3710307ad007b2fc606ff00851fe1ff0012f8e7c35041acf8ab5cd525b5bbd709120d29589db12af3820055e7ab609fe15af21fd962288eabe3df88bab86d56fbc35a6497f17da0ef67b87591b792792d88d867fdbcd637c00f8aba2e8d67e26f07f8eaea45f08f88607696728f2b5bdce38900505b2703900fcca87b1aa9f027e25e87f0d3c4fe24d175c91b53f07ebd6d269b77756d1b0253e654995480d82acdc6370ddd323040323c09f143c5b7df18743d6df5abdb8d52ef538524ccadb645790031edce361048dbd00e95ef76bf0f745d5ff6dfd655a28decb4e8575a9a0da0a79de544791ff5d240ff005ae2fc316bf073e0beb23c5b078c27f1d6a16b9974ad260b26836c9fc2d2b9e32b9ce7e5c75da48c5723f09be3d4be1bf8e373e36f112b5c43ab1961d43c95c98e39082368f442a9c7f7571d68032758f8ade2cf891f16a0d52db5abeb3bbbbd4523b058a6655b656902c6aaa0e380467d4e739cd7af7ed044f8dff6b8f0b680ade725a3d85a4a99e0032199cffdf0f9fc2b3bc35a37c09f87fe3fd3fc49ff0009d5ceb36b1ddadcd969d1584a16d086dcad2b804b0538c0001240c82335c35efc61b187f6999bc7d187bdd2a3d58c88554ab496c07941806c107cb008071e871400cfdac35b6d73e3c789886dd1dab4569181db644a187fdf5babaafdb0ca68973f0fbc231f0ba26811023d19b087f1fdc83f8d6cf886c7e075e7c4793c717be3cbad42d6fef96f5b4582c24dcb233ee6f31f19080924ae036381935c9fc45f16f827e2ff00ed1d717dadeb97167e09911214d42da1757da90f1f2b2165cc99192a783d3bd00785d157f5f874fb7d77528b48b896ef4a8ee645b49e65daf2421884661818257048c0eb542800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2803ffd9, 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', '11-100', '06-08-2021 03:08 PM [EAT +03:00]', 'employer', 'https://kpro.netlify.app/', '9b945ee15998a7d24714d88adaccf2e0', 'CM858235891');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`enc_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`member_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `enc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
