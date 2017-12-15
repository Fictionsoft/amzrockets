# --------------------------------------------------------
# Host:                         127.0.0.1
# Server version:               5.5.5-10.1.25-MariaDB
# Server OS:                    Win32
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2017-12-15 12:06:21
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping database structure for amzrockets
DROP DATABASE IF EXISTS `amzrockets`;
CREATE DATABASE IF NOT EXISTS `amzrockets` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `amzrockets`;


# Dumping structure for table amzrockets.fit_f2lt_brands
DROP TABLE IF EXISTS `fit_f2lt_brands`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_brands: 3 rows
/*!40000 ALTER TABLE `fit_f2lt_brands` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_brands` (`id`, `name`, `status`, `created`, `modified`) VALUES
	(7, 'SAMSUMG', 1, '2015-11-23 08:56:00', '2016-02-16 19:21:59'),
	(5, 'Amana', 1, '2015-11-23 08:50:53', '2016-02-16 19:22:34'),
	(8, 'LG', 1, '2015-11-23 09:08:28', '2016-02-16 19:21:48');
/*!40000 ALTER TABLE `fit_f2lt_brands` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_categories
DROP TABLE IF EXISTS `fit_f2lt_categories`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_category_id` int(11) NOT NULL DEFAULT '0',
  `slug` varchar(222) NOT NULL DEFAULT '0',
  `name` varchar(222) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `photo` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_categories` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_categories` (`id`, `main_category_id`, `slug`, `name`, `order`, `status`, `created`, `modified`, `photo`) VALUES
	(28, 1, 'home-products', 'Home Products', 1, 1, '0000-00-00 00:00:00', '2017-10-18 16:12:04', '');
/*!40000 ALTER TABLE `fit_f2lt_categories` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_category_sizes
DROP TABLE IF EXISTS `fit_f2lt_category_sizes`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_category_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size_id` int(11) NOT NULL DEFAULT '0',
  `category_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_category_sizes: ~13 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_category_sizes` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_category_sizes` (`id`, `size_id`, `category_id`) VALUES
	(25, 1, 2),
	(26, 2, 2),
	(27, 3, 2),
	(33, 1, 14),
	(34, 2, 14),
	(35, 3, 14),
	(38, 4, 15),
	(39, 5, 15),
	(40, 2, 23),
	(41, 3, 24),
	(55, 1, 1),
	(56, 2, 1),
	(57, 3, 1);
/*!40000 ALTER TABLE `fit_f2lt_category_sizes` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_comments
DROP TABLE IF EXISTS `fit_f2lt_comments`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_comments: ~5 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_comments` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_comments` (`id`, `user_id`, `product_id`, `comment`, `created`, `updated`) VALUES
	(1, 114, 21, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.', '2015-10-18 14:13:28', '2015-10-18 14:13:28'),
	(2, 114, 21, 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', '2015-10-18 14:16:37', '2015-10-18 14:16:37'),
	(3, 114, 23, 'good', '2015-11-05 03:37:59', '2015-11-05 03:37:59'),
	(4, 114, 24, 'vary nice', '2015-11-07 14:46:29', '2015-11-07 14:46:29'),
	(5, 114, 46, 'fgdf', '2015-11-28 14:47:28', '2015-11-28 14:47:28');
/*!40000 ALTER TABLE `fit_f2lt_comments` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_contents
DROP TABLE IF EXISTS `fit_f2lt_contents`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_contents` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `content` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_contents: 2 rows
/*!40000 ALTER TABLE `fit_f2lt_contents` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_contents` (`id`, `title`, `name`, `content`, `status`, `created`, `updated`) VALUES
	(1, 'Amazon Exclusive Holiday Offer', 'header_content', 'The More You Get, The More You Save! This offer won\'t last long so take advantage of it today .', 1, '2017-12-03 02:01:22', '2017-12-03 09:01:22'),
	(2, 'We Need Your Help !', 'slider_bottom_content', 'Our premium <b> Wallet </b> is back in stock on Amazon.com. We\'re trying to do a big marketing push to increase awareness about the importance of our <b> Brand. </b> <br/><b>The More You Get, The More You Save!</b> ', 1, '2017-12-03 02:01:43', '2017-12-03 09:01:43');
/*!40000 ALTER TABLE `fit_f2lt_contents` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_countries
DROP TABLE IF EXISTS `fit_f2lt_countries`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `iso_code_2` char(2) NOT NULL DEFAULT '',
  `iso_code_3` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_countries_name_zen` (`name`),
  KEY `idx_iso_2_zen` (`iso_code_2`),
  KEY `idx_iso_3_zen` (`iso_code_3`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;

# Dumping data for table amzrockets.fit_f2lt_countries: 243 rows
/*!40000 ALTER TABLE `fit_f2lt_countries` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_countries` (`id`, `name`, `iso_code_2`, `iso_code_3`) VALUES
	(240, 'Aaland Islands', 'AX', 'ALA'),
	(1, 'Afghanistan', 'AF', 'AFG'),
	(2, 'Albania', 'AL', 'ALB'),
	(3, 'Algeria', 'DZ', 'DZA'),
	(4, 'American Samoa', 'AS', 'ASM'),
	(5, 'Andorra', 'AD', 'AND'),
	(6, 'Angola', 'AO', 'AGO'),
	(7, 'Anguilla', 'AI', 'AIA'),
	(8, 'Antarctica', 'AQ', 'ATA'),
	(9, 'Antigua and Barbuda', 'AG', 'ATG'),
	(10, 'Argentina', 'AR', 'ARG'),
	(11, 'Armenia', 'AM', 'ARM'),
	(12, 'Aruba', 'AW', 'ABW'),
	(13, 'Australia', 'AU', 'AUS'),
	(14, 'Austria', 'AT', 'AUT'),
	(15, 'Azerbaijan', 'AZ', 'AZE'),
	(16, 'Bahamas', 'BS', 'BHS'),
	(17, 'Bahrain', 'BH', 'BHR'),
	(18, 'Bangladesh', 'BD', 'BGD'),
	(19, 'Barbados', 'BB', 'BRB'),
	(20, 'Belarus', 'BY', 'BLR'),
	(21, 'Belgium', 'BE', 'BEL'),
	(22, 'Belize', 'BZ', 'BLZ'),
	(23, 'Benin', 'BJ', 'BEN'),
	(24, 'Bermuda', 'BM', 'BMU'),
	(25, 'Bhutan', 'BT', 'BTN'),
	(26, 'Bolivia', 'BO', 'BOL'),
	(27, 'Bosnia and Herzegowina', 'BA', 'BIH'),
	(28, 'Botswana', 'BW', 'BWA'),
	(29, 'Bouvet Island', 'BV', 'BVT'),
	(30, 'Brazil', 'BR', 'BRA'),
	(31, 'British Indian Ocean Territory', 'IO', 'IOT'),
	(32, 'Brunei Darussalam', 'BN', 'BRN'),
	(33, 'Bulgaria', 'BG', 'BGR'),
	(34, 'Burkina Faso', 'BF', 'BFA'),
	(35, 'Burundi', 'BI', 'BDI'),
	(36, 'Cambodia', 'KH', 'KHM'),
	(37, 'Cameroon', 'CM', 'CMR'),
	(38, 'Canada', 'CA', 'CAN'),
	(39, 'Cape Verde', 'CV', 'CPV'),
	(40, 'Cayman Islands', 'KY', 'CYM'),
	(41, 'Central African Republic', 'CF', 'CAF'),
	(42, 'Chad', 'TD', 'TCD'),
	(43, 'Chile', 'CL', 'CHL'),
	(44, 'China', 'CN', 'CHN'),
	(45, 'Christmas Island', 'CX', 'CXR'),
	(46, 'Cocos (Keeling) Islands', 'CC', 'CCK'),
	(47, 'Colombia', 'CO', 'COL'),
	(48, 'Comoros', 'KM', 'COM'),
	(49, 'Congo', 'CG', 'COG'),
	(50, 'Cook Islands', 'CK', 'COK'),
	(51, 'Costa Rica', 'CR', 'CRI'),
	(52, 'Cote D\'Ivoire', 'CI', 'CIV'),
	(53, 'Croatia', 'HR', 'HRV'),
	(54, 'Cuba', 'CU', 'CUB'),
	(55, 'Cyprus', 'CY', 'CYP'),
	(56, 'Czech Republic', 'CZ', 'CZE'),
	(57, 'Denmark', 'DK', 'DNK'),
	(58, 'Djibouti', 'DJ', 'DJI'),
	(59, 'Dominica', 'DM', 'DMA'),
	(60, 'Dominican Republic', 'DO', 'DOM'),
	(61, 'Timor-Leste', 'TL', 'TLS'),
	(62, 'Ecuador', 'EC', 'ECU'),
	(63, 'Egypt', 'EG', 'EGY'),
	(64, 'El Salvador', 'SV', 'SLV'),
	(65, 'Equatorial Guinea', 'GQ', 'GNQ'),
	(66, 'Eritrea', 'ER', 'ERI'),
	(67, 'Estonia', 'EE', 'EST'),
	(68, 'Ethiopia', 'ET', 'ETH'),
	(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK'),
	(70, 'Faroe Islands', 'FO', 'FRO'),
	(71, 'Fiji', 'FJ', 'FJI'),
	(72, 'Finland', 'FI', 'FIN'),
	(73, 'France', 'FR', 'FRA'),
	(75, 'French Guiana', 'GF', 'GUF'),
	(76, 'French Polynesia', 'PF', 'PYF'),
	(77, 'French Southern Territories', 'TF', 'ATF'),
	(78, 'Gabon', 'GA', 'GAB'),
	(79, 'Gambia', 'GM', 'GMB'),
	(80, 'Georgia', 'GE', 'GEO'),
	(81, 'Germany', 'DE', 'DEU'),
	(82, 'Ghana', 'GH', 'GHA'),
	(83, 'Gibraltar', 'GI', 'GIB'),
	(84, 'Greece', 'GR', 'GRC'),
	(85, 'Greenland', 'GL', 'GRL'),
	(86, 'Grenada', 'GD', 'GRD'),
	(87, 'Guadeloupe', 'GP', 'GLP'),
	(88, 'Guam', 'GU', 'GUM'),
	(89, 'Guatemala', 'GT', 'GTM'),
	(90, 'Guinea', 'GN', 'GIN'),
	(91, 'Guinea-bissau', 'GW', 'GNB'),
	(92, 'Guyana', 'GY', 'GUY'),
	(93, 'Haiti', 'HT', 'HTI'),
	(94, 'Heard and Mc Donald Islands', 'HM', 'HMD'),
	(95, 'Honduras', 'HN', 'HND'),
	(96, 'Hong Kong', 'HK', 'HKG'),
	(97, 'Hungary', 'HU', 'HUN'),
	(98, 'Iceland', 'IS', 'ISL'),
	(99, 'India', 'IN', 'IND'),
	(100, 'Indonesia', 'ID', 'IDN'),
	(101, 'Iran (Islamic Republic of)', 'IR', 'IRN'),
	(102, 'Iraq', 'IQ', 'IRQ'),
	(103, 'Ireland', 'IE', 'IRL'),
	(104, 'Israel', 'IL', 'ISR'),
	(105, 'Italy', 'IT', 'ITA'),
	(106, 'Jamaica', 'JM', 'JAM'),
	(107, 'Japan', 'JP', 'JPN'),
	(108, 'Jordan', 'JO', 'JOR'),
	(109, 'Kazakhstan', 'KZ', 'KAZ'),
	(110, 'Kenya', 'KE', 'KEN'),
	(111, 'Kiribati', 'KI', 'KIR'),
	(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK'),
	(113, 'Korea, Republic of', 'KR', 'KOR'),
	(114, 'Kuwait', 'KW', 'KWT'),
	(115, 'Kyrgyzstan', 'KG', 'KGZ'),
	(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO'),
	(117, 'Latvia', 'LV', 'LVA'),
	(118, 'Lebanon', 'LB', 'LBN'),
	(119, 'Lesotho', 'LS', 'LSO'),
	(120, 'Liberia', 'LR', 'LBR'),
	(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY'),
	(122, 'Liechtenstein', 'LI', 'LIE'),
	(123, 'Lithuania', 'LT', 'LTU'),
	(124, 'Luxembourg', 'LU', 'LUX'),
	(125, 'Macao', 'MO', 'MAC'),
	(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD'),
	(127, 'Madagascar', 'MG', 'MDG'),
	(128, 'Malawi', 'MW', 'MWI'),
	(129, 'Malaysia', 'MY', 'MYS'),
	(130, 'Maldives', 'MV', 'MDV'),
	(131, 'Mali', 'ML', 'MLI'),
	(132, 'Malta', 'MT', 'MLT'),
	(133, 'Marshall Islands', 'MH', 'MHL'),
	(134, 'Martinique', 'MQ', 'MTQ'),
	(135, 'Mauritania', 'MR', 'MRT'),
	(136, 'Mauritius', 'MU', 'MUS'),
	(137, 'Mayotte', 'YT', 'MYT'),
	(138, 'Mexico', 'MX', 'MEX'),
	(139, 'Micronesia, Federated States of', 'FM', 'FSM'),
	(140, 'Moldova', 'MD', 'MDA'),
	(141, 'Monaco', 'MC', 'MCO'),
	(142, 'Mongolia', 'MN', 'MNG'),
	(143, 'Montserrat', 'MS', 'MSR'),
	(144, 'Morocco', 'MA', 'MAR'),
	(145, 'Mozambique', 'MZ', 'MOZ'),
	(146, 'Myanmar', 'MM', 'MMR'),
	(147, 'Namibia', 'NA', 'NAM'),
	(148, 'Nauru', 'NR', 'NRU'),
	(149, 'Nepal', 'NP', 'NPL'),
	(150, 'Netherlands', 'NL', 'NLD'),
	(151, 'Netherlands Antilles', 'AN', 'ANT'),
	(152, 'New Caledonia', 'NC', 'NCL'),
	(153, 'New Zealand', 'NZ', 'NZL'),
	(154, 'Nicaragua', 'NI', 'NIC'),
	(155, 'Niger', 'NE', 'NER'),
	(156, 'Nigeria', 'NG', 'NGA'),
	(157, 'Niue', 'NU', 'NIU'),
	(158, 'Norfolk Island', 'NF', 'NFK'),
	(159, 'Northern Mariana Islands', 'MP', 'MNP'),
	(160, 'Norway', 'NO', 'NOR'),
	(161, 'Oman', 'OM', 'OMN'),
	(162, 'Pakistan', 'PK', 'PAK'),
	(163, 'Palau', 'PW', 'PLW'),
	(164, 'Panama', 'PA', 'PAN'),
	(165, 'Papua New Guinea', 'PG', 'PNG'),
	(166, 'Paraguay', 'PY', 'PRY'),
	(167, 'Peru', 'PE', 'PER'),
	(168, 'Philippines', 'PH', 'PHL'),
	(169, 'Pitcairn', 'PN', 'PCN'),
	(170, 'Poland', 'PL', 'POL'),
	(171, 'Portugal', 'PT', 'PRT'),
	(172, 'Puerto Rico', 'PR', 'PRI'),
	(173, 'Qatar', 'QA', 'QAT'),
	(174, 'Reunion', 'RE', 'REU'),
	(175, 'Romania', 'RO', 'ROU'),
	(176, 'Russian Federation', 'RU', 'RUS'),
	(177, 'Rwanda', 'RW', 'RWA'),
	(178, 'Saint Kitts and Nevis', 'KN', 'KNA'),
	(179, 'Saint Lucia', 'LC', 'LCA'),
	(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT'),
	(181, 'Samoa', 'WS', 'WSM'),
	(182, 'San Marino', 'SM', 'SMR'),
	(183, 'Sao Tome and Principe', 'ST', 'STP'),
	(184, 'Saudi Arabia', 'SA', 'SAU'),
	(185, 'Senegal', 'SN', 'SEN'),
	(186, 'Seychelles', 'SC', 'SYC'),
	(187, 'Sierra Leone', 'SL', 'SLE'),
	(188, 'Singapore', 'SG', 'SGP'),
	(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK'),
	(190, 'Slovenia', 'SI', 'SVN'),
	(191, 'Solomon Islands', 'SB', 'SLB'),
	(192, 'Somalia', 'SO', 'SOM'),
	(193, 'South Africa', 'ZA', 'ZAF'),
	(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS'),
	(195, 'Spain', 'ES', 'ESP'),
	(196, 'Sri Lanka', 'LK', 'LKA'),
	(197, 'St. Helena', 'SH', 'SHN'),
	(198, 'St. Pierre and Miquelon', 'PM', 'SPM'),
	(199, 'Sudan', 'SD', 'SDN'),
	(200, 'Suriname', 'SR', 'SUR'),
	(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM'),
	(202, 'Swaziland', 'SZ', 'SWZ'),
	(203, 'Sweden', 'SE', 'SWE'),
	(204, 'Switzerland', 'CH', 'CHE'),
	(205, 'Syrian Arab Republic', 'SY', 'SYR'),
	(206, 'Taiwan', 'TW', 'TWN'),
	(207, 'Tajikistan', 'TJ', 'TJK'),
	(208, 'Tanzania, United Republic of', 'TZ', 'TZA'),
	(209, 'Thailand', 'TH', 'THA'),
	(210, 'Togo', 'TG', 'TGO'),
	(211, 'Tokelau', 'TK', 'TKL'),
	(212, 'Tonga', 'TO', 'TON'),
	(213, 'Trinidad and Tobago', 'TT', 'TTO'),
	(214, 'Tunisia', 'TN', 'TUN'),
	(215, 'Turkey', 'TR', 'TUR'),
	(216, 'Turkmenistan', 'TM', 'TKM'),
	(217, 'Turks and Caicos Islands', 'TC', 'TCA'),
	(218, 'Tuvalu', 'TV', 'TUV'),
	(219, 'Uganda', 'UG', 'UGA'),
	(220, 'Ukraine', 'UA', 'UKR'),
	(221, 'United Arab Emirates', 'AE', 'ARE'),
	(222, 'United Kingdom', 'GB', 'GBR'),
	(223, 'United States', 'US', 'USA'),
	(224, 'United States Minor Outlying Islands', 'UM', 'UMI'),
	(225, 'Uruguay', 'UY', 'URY'),
	(226, 'Uzbekistan', 'UZ', 'UZB'),
	(227, 'Vanuatu', 'VU', 'VUT'),
	(228, 'Vatican City State (Holy See)', 'VA', 'VAT'),
	(229, 'Venezuela', 'VE', 'VEN'),
	(230, 'Viet Nam', 'VN', 'VNM'),
	(231, 'Virgin Islands (British)', 'VG', 'VGB'),
	(232, 'Virgin Islands (U.S.)', 'VI', 'VIR'),
	(233, 'Wallis and Futuna Islands', 'WF', 'WLF'),
	(234, 'Western Sahara', 'EH', 'ESH'),
	(235, 'Yemen', 'YE', 'YEM'),
	(236, 'Serbia', 'RS', 'SRB'),
	(238, 'Zambia', 'ZM', 'ZMB'),
	(239, 'Zimbabwe', 'ZW', 'ZWE'),
	(241, 'Palestinian Territory', 'PS', 'PSE'),
	(242, 'Montenegro', 'ME', 'MNE'),
	(243, 'Guernsey', 'GG', 'GGY'),
	(244, 'Isle of Man', 'IM', 'IMN'),
	(245, 'Jersey', 'JE', 'JEY');
/*!40000 ALTER TABLE `fit_f2lt_countries` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_dashboards
DROP TABLE IF EXISTS `fit_f2lt_dashboards`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `order` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_dashboards: 10 rows
/*!40000 ALTER TABLE `fit_f2lt_dashboards` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_dashboards` (`id`, `name`, `url`, `image`, `order`, `status`) VALUES
	(9, 'Users', 'users', '1428675836_MESSENGER_-_MSN.png', 6, 1),
	(16, 'Settings', 'settings', 'settings.png', 11, 1),
	(3, 'Categories', 'categories', 'category.png', 3, 0),
	(17, 'Products', 'products', 'products.png', 5, 1),
	(18, 'Faq', 'faqs', 'faq.png', 8, 0),
	(19, 'FAQ Category', 'faq_categories', 'faq_category.png', 7, 0),
	(23, 'Sliders', 'sliders', 'sliders_icon.png', 9, 1),
	(21, 'Main Category', 'main_categories', 'main_category.png', 2, 0),
	(22, 'Brands', 'brands', '1448169359_brand_icon.png', 4, 0),
	(24, 'Contents', 'contents', 'content_icom.png', 10, 1);
/*!40000 ALTER TABLE `fit_f2lt_dashboards` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_faqs
DROP TABLE IF EXISTS `fit_f2lt_faqs`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_faqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_category_id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `answer` text,
  `status` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_faqs: 6 rows
/*!40000 ALTER TABLE `fit_f2lt_faqs` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_faqs` (`id`, `faq_category_id`, `question`, `slug`, `answer`, `status`) VALUES
	(82, 10, 'Is it possible to give an add in efair?', 'is-it-possible-to-give-an-add-in-efair', 'No, it is not possible yet to give add post in efair, but this feature will be added soon', 1),
	(83, 1, 'What is efair payment policy?', 'what-is-efair-payment-policy', 'Efair payment is very easy. You can pay using any Back Cart like (VISA, MASTER,American Express) and other. Efair payment is very easy. You can pay using any Back Cart like (VISA, MASTER,American Express) and other.', 1),
	(84, 9, 'What is efair refund policy?', 'what-is-efair-refund-policy', 'Efair refund policy is very easy. efair will refund your cash within 7 days for any valid case.Efair refund policy is very easy. efair will refund your cash within 7 days for any valid case.Efair refund policy is very easy. efair will refund your cash within 7 days for any valid case.', 1),
	(85, 1, 'How can i make payment online?', 'how-can-i-make-payment-online', 'You can make payment thought efair payment method in directly. You can make payment thought efair payment method in directly. You can make payment thought efair payment method in directly. You can make payment thought efair payment method in directly. ', 1),
	(86, 9, 'Is it possible to get refund after buy a product from efair', 'is-it-possible-to-get-refund-after-buy-a-product-from-efair', 'Yes possible.', 1),
	(88, 2, 'How to pament method', 'how-to-pament-method', 'what is answer', 1);
/*!40000 ALTER TABLE `fit_f2lt_faqs` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_faq_categories
DROP TABLE IF EXISTS `fit_f2lt_faq_categories`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_faq_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `type` varchar(10) NOT NULL,
  `slug` varchar(222) NOT NULL,
  `note` text NOT NULL,
  `order` tinyint(2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_faq_categories: 5 rows
/*!40000 ALTER TABLE `fit_f2lt_faq_categories` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_faq_categories` (`id`, `name`, `type`, `slug`, `note`, `order`, `status`) VALUES
	(1, 'Payment  Policy', 'Payment', 'payment-policy', '', 2, 1),
	(2, 'Account', 'General', 'account', '', 1, 1),
	(9, 'Refund Policy', 'Payment', 'refund-policy', '', 3, 1),
	(10, 'Add Posting', 'General', 'add-posting', '', 1, 1),
	(15, 'dfgsdg', 'General', '', '', 0, 1);
/*!40000 ALTER TABLE `fit_f2lt_faq_categories` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_main_categories
DROP TABLE IF EXISTS `fit_f2lt_main_categories`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_main_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(222) NOT NULL,
  `order` tinyint(2) DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

# Dumping data for table amzrockets.fit_f2lt_main_categories: 1 rows
/*!40000 ALTER TABLE `fit_f2lt_main_categories` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_main_categories` (`id`, `name`, `slug`, `order`, `status`, `created`, `updated`) VALUES
	(1, 'General', 'general', 1, 1, '0000-00-00 00:00:00', '2016-02-16 19:01:13');
/*!40000 ALTER TABLE `fit_f2lt_main_categories` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_payments
DROP TABLE IF EXISTS `fit_f2lt_payments`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `payment_method_name` varchar(100) DEFAULT NULL,
  `payment_method_code` varchar(100) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `vendor_email` varchar(100) DEFAULT NULL,
  `vendor_name` varchar(50) DEFAULT NULL,
  `vendor_password` varchar(50) DEFAULT NULL,
  `transaction_mode` varchar(50) DEFAULT NULL,
  `test_url` varchar(255) DEFAULT NULL,
  `production_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_payments: 3 rows
/*!40000 ALTER TABLE `fit_f2lt_payments` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_payments` (`id`, `title`, `payment_method_name`, `payment_method_code`, `status`, `vendor_email`, `vendor_name`, `vendor_password`, `transaction_mode`, `test_url`, `production_url`) VALUES
	(1, 'Credit Card', 'Direct One', 'direct_one', 1, '', '', '', '0', '', ''),
	(2, 'Coin', 'iXenCenter', 'coin', 1, 'admin@ixencenter.com', '', '', '1', '', ''),
	(3, 'Cash', 'Cash', 'cash', 1, NULL, NULL, NULL, '1', NULL, NULL);
/*!40000 ALTER TABLE `fit_f2lt_payments` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_photos
DROP TABLE IF EXISTS `fit_f2lt_photos`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_photos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(222) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_photos: ~17 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_photos` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_photos` (`id`, `product_id`, `name`, `created`, `modified`) VALUES
	(1, 20, '1443846080_404.png', '2015-10-02 21:21:20', '2015-10-02 21:21:20'),
	(23, 20, 'gallery2.jpg', '2015-10-03 00:45:36', '2015-10-03 00:45:36'),
	(24, 21, 'create-your-own-website.gif', '2015-10-31 11:19:57', '2015-10-31 11:19:57'),
	(26, 23, '1446607404_girl1.jpg', '2015-11-04 03:23:24', '2015-11-04 03:23:24'),
	(27, 23, 'gallery3.jpg', '2015-11-04 03:23:33', '2015-11-04 03:23:33'),
	(29, 24, '1446705651_gallery1.jpg', '2015-11-05 06:40:51', '2015-11-05 06:40:51'),
	(30, 25, '1446709842_girl3.jpg', '2015-11-05 07:50:42', '2015-11-05 07:50:42'),
	(31, 26, '1446710003_girl3.jpg', '2015-11-05 07:53:23', '2015-11-05 07:53:23'),
	(32, 27, 'recommend1.jpg', '2015-11-05 08:02:26', '2015-11-05 08:02:26'),
	(33, 37, '1448096941_shirt3.jpg', '2015-11-21 09:09:01', '2015-11-21 09:09:01'),
	(34, 37, '1448096946_shirt4.jpg', '2015-11-21 09:09:06', '2015-11-21 09:09:06'),
	(35, 37, '1448096951_shirt5.jpg', '2015-11-21 09:09:11', '2015-11-21 09:09:11'),
	(36, 39, '1448097173_shirt1.jpg', '2015-11-21 09:12:53', '2015-11-21 09:12:53'),
	(37, 39, '1448097181_shirt4.jpg', '2015-11-21 09:13:01', '2015-11-21 09:13:01'),
	(38, 45, '1448623816_1448092761_shirt5.jpg', '2015-11-27 11:30:16', '2015-11-27 11:30:16'),
	(39, 45, '1448624020_1448096931_shirt2.jpg', '2015-11-27 11:33:40', '2015-11-27 11:33:40'),
	(40, 50, 'singal_flaower.gif', '2015-11-30 06:06:43', '2015-11-30 06:06:43');
/*!40000 ALTER TABLE `fit_f2lt_photos` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_products
DROP TABLE IF EXISTS `fit_f2lt_products`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) unsigned DEFAULT NULL,
  `discount` float NOT NULL,
  `free` varchar(255) DEFAULT NULL,
  `name` varchar(222) NOT NULL,
  `coupon_code` varchar(222) NOT NULL,
  `model` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `cover_photo` varchar(222) NOT NULL,
  `store_link` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mail_required` tinyint(1) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_products` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_products` (`id`, `category_id`, `brand_id`, `discount`, `free`, `name`, `coupon_code`, `model`, `price`, `cover_photo`, `store_link`, `description`, `status`, `mail_required`, `created`, `modified`) VALUES
	(32, 28, 0, 10, 'Buy <span>1</span> Get', 'Ebax Elastic Wallet', 'G1SAVE10', NULL, 14, 'v1_aaaaaaaaaaaaaaaaa.jpg', 'https://www.amazon.com/s/ref=nb_sb_noss?url=me%3DA382VH6AJCBCCV&field-keywords=wallets+for+men', '', 1, 1, '0000-00-00 00:00:00', '2017-12-02 20:08:14');
/*!40000 ALTER TABLE `fit_f2lt_products` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_product_brands
DROP TABLE IF EXISTS `fit_f2lt_product_brands`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_product_brands` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(222) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

# Dumping data for table amzrockets.fit_f2lt_product_brands: 0 rows
/*!40000 ALTER TABLE `fit_f2lt_product_brands` DISABLE KEYS */;
/*!40000 ALTER TABLE `fit_f2lt_product_brands` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_product_visitors
DROP TABLE IF EXISTS `fit_f2lt_product_visitors`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_product_visitors` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `product_id` int(10) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_product_visitors: 32 rows
/*!40000 ALTER TABLE `fit_f2lt_product_visitors` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_product_visitors` (`id`, `product_id`, `created`) VALUES
	(1, 32, '2017-12-01 09:53:49'),
	(2, 31, '2017-12-01 09:54:54'),
	(3, 32, '2017-12-01 10:07:57'),
	(4, 32, '2017-12-01 10:08:34'),
	(5, 24, '2017-12-01 10:18:49'),
	(6, 24, '2017-12-01 10:20:12'),
	(7, 25, '2017-12-01 10:20:16'),
	(8, 29, '2017-12-01 10:25:54'),
	(9, 31, '2017-12-01 10:25:59'),
	(10, 32, '2017-12-01 10:27:48'),
	(11, 30, '2017-12-01 10:36:24'),
	(12, 32, '2017-12-01 10:37:37'),
	(13, 32, '2017-12-01 12:56:02'),
	(14, 31, '2017-12-01 12:56:06'),
	(15, 30, '2017-12-01 12:56:13'),
	(16, 32, '2017-12-01 14:55:29'),
	(17, 31, '2017-12-01 14:55:33'),
	(18, 32, '2017-12-01 18:25:47'),
	(19, 31, '2017-12-01 18:25:51'),
	(20, 32, '2017-12-01 18:25:55'),
	(21, 32, '2017-12-01 18:26:40'),
	(22, 31, '2017-12-01 18:26:44'),
	(23, 26, '2017-12-01 18:41:27'),
	(24, 32, '2017-12-01 19:04:07'),
	(25, 31, '2017-12-01 19:04:12'),
	(26, 32, '2017-12-02 19:50:09'),
	(27, 31, '2017-12-02 19:50:16'),
	(28, 30, '2017-12-02 19:53:41'),
	(29, 32, '2017-12-02 20:09:01'),
	(30, 32, '2017-12-04 15:48:21'),
	(31, 32, '2017-12-05 06:04:43'),
	(32, 32, '2017-12-05 19:52:16');
/*!40000 ALTER TABLE `fit_f2lt_product_visitors` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_settings
DROP TABLE IF EXISTS `fit_f2lt_settings`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(222) NOT NULL,
  `value` varchar(222) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_settings: ~4 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_settings` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_settings` (`id`, `key`, `value`) VALUES
	(1, 'site_name', 'Ebax Store'),
	(2, 'site_email', 'info@amzrockets.com'),
	(3, 'site_logo', '1511210004_logo_ebax.png'),
	(4, 'slider_status', '1');
/*!40000 ALTER TABLE `fit_f2lt_settings` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_sizes
DROP TABLE IF EXISTS `fit_f2lt_sizes`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `size` varchar(50) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_sizes: ~5 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_sizes` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_sizes` (`id`, `size`, `order`, `status`, `created`, `modified`) VALUES
	(1, 'S', 1, 1, '0000-00-00 00:00:00', '2015-11-07 16:02:38'),
	(2, 'M', 2, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(3, 'L', 3, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(4, '32', 4, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
	(5, '34', 5, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');
/*!40000 ALTER TABLE `fit_f2lt_sizes` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_sliders
DROP TABLE IF EXISTS `fit_f2lt_sliders`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cover_photo` varchar(255) NOT NULL,
  `name` varchar(222) NOT NULL DEFAULT '0',
  `slug` varchar(222) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_sliders: ~0 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_sliders` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_sliders` (`id`, `cover_photo`, `name`, `slug`, `order`, `status`, `created`, `modified`) VALUES
	(5, '1510775890_banner.png', 'dd', 'dd', 0, 1, '0000-00-00 00:00:00', '2017-11-15 19:58:10');
/*!40000 ALTER TABLE `fit_f2lt_sliders` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_users
DROP TABLE IF EXISTS `fit_f2lt_users`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `first_name` varchar(222) DEFAULT NULL,
  `last_name` varchar(222) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address_line1` varchar(255) DEFAULT NULL,
  `address_line2` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(222) DEFAULT NULL,
  `username` varchar(222) DEFAULT NULL,
  `photo` varchar(222) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_generated` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

# Dumping data for table amzrockets.fit_f2lt_users: ~30 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_users` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_users` (`id`, `role`, `first_name`, `last_name`, `phone`, `address_line1`, `address_line2`, `city`, `state`, `zip`, `country`, `email`, `password`, `username`, `photo`, `status`, `is_paid`, `token`, `token_generated`, `date_created`, `date_updated`) VALUES
	(1, 'admin', 'MD', 'Admin', '01736348772', 'Dhaka', 'Mohakhali', 'Dhaka', '', '', 'Bangladesh', 'info@amzrockets.com', '5a2007541c6a802176bb5aa41c9c7311e38d3c41', 'info@amzrockets.com', '', 1, 0, '', '0000-00-00 00:00:00', '2017-09-21 00:52:20', '0000-00-00 00:00:00'),
	(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgrtfh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'fgrtfah@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'himu.sbp000@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mizan92cse@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'cfhfgh@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfgdfg@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(8, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'abdullah736799@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(9, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'tahsanaziz20@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mizan92cse@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dfsghytsrdhydst@yaggg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(12, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ebaxteam1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'accountant@rudras.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'admin@test.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bshshsh@ggahsh.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(16, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nbanerjee924@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(17, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'test@testvvv.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(18, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ebaxteam@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iqbal@iqbal.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dddd@ggg.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(21, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asfcas@fff.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(22, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'huskk@huskk.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(23, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'hhhhk2HJ@HHJH.COM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(24, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'nbanerjee55555924@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rghdfg@gmail.copkm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'vbmhkjkjhj@gjhhgh.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'iqbalmirza088@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(28, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'dash@dash.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(29, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'davidsc10950@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
	(30, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'drubo_if@yahoo.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `fit_f2lt_users` ENABLE KEYS */;


# Dumping structure for table amzrockets.fit_f2lt_wish_lists
DROP TABLE IF EXISTS `fit_f2lt_wish_lists`;
CREATE TABLE IF NOT EXISTS `fit_f2lt_wish_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

# Dumping data for table amzrockets.fit_f2lt_wish_lists: ~13 rows (approximately)
/*!40000 ALTER TABLE `fit_f2lt_wish_lists` DISABLE KEYS */;
REPLACE INTO `fit_f2lt_wish_lists` (`id`, `user_id`, `product_id`, `status`, `created`, `modified`) VALUES
	(1, 0, 0, 0, '2015-10-16 15:58:39', '2015-10-16 15:58:39'),
	(2, 0, 0, 0, '2015-10-16 15:59:11', '2015-10-16 15:59:11'),
	(3, 0, 0, 0, '2015-10-16 16:00:36', '2015-10-16 16:00:36'),
	(4, 0, 0, 0, '2015-10-16 16:00:54', '2015-10-16 16:00:54'),
	(5, 0, 0, 0, '2015-10-16 16:01:58', '2015-10-16 16:01:58'),
	(6, 0, 13, 0, '2015-10-16 16:15:24', '2015-10-16 16:15:24'),
	(7, 0, 13, 0, '2015-10-16 16:26:01', '2015-10-16 16:26:01'),
	(8, 0, 13, 0, '2015-10-16 16:26:09', '2015-10-16 16:26:09'),
	(9, 0, 12, 0, '2015-10-16 16:26:21', '2015-10-16 16:26:21'),
	(27, 114, 23, 0, '2015-11-04 15:13:43', '2015-11-04 15:13:43'),
	(33, 114, 14, 0, '2015-11-10 16:50:20', '2015-11-10 16:50:20'),
	(34, 114, 46, 0, '2015-11-25 11:04:01', '2015-11-25 11:04:01'),
	(35, 114, 12, 0, '2015-11-25 11:05:13', '2015-11-25 11:05:13');
/*!40000 ALTER TABLE `fit_f2lt_wish_lists` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
