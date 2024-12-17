-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2024 at 05:33 PM
-- Server version: 10.6.20-MariaDB
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoiceo_ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_area`
--

CREATE TABLE `business_area` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `area_name` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `business_area`
--

INSERT INTO `business_area` (`id`, `user_id`, `area_name`, `note`, `status`) VALUES
(1, 112, 'Web Design', 'this is  test', 0),
(3, 112, 'Sale Marketing', 'marketing business', 0),
(6, 112, 'HR', 'This is HR', 0),
(10, 112, 'D & A Support', 'Data and Analytics Support', 0),
(11, 112, 'HubSpot Support', '', 0),
(24, 112, 'abcd', 'abcd', 0);

-- --------------------------------------------------------

--
-- Table structure for table `certificate`
--

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL,
  `property_address` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `first` varchar(255) NOT NULL,
  `second` varchar(255) NOT NULL,
  `third` varchar(255) NOT NULL,
  `forth` varchar(255) NOT NULL,
  `fifth` varchar(255) NOT NULL,
  `comment` text NOT NULL,
  `sign` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `certificate`
--

INSERT INTO `certificate` (`id`, `property_address`, `c_name`, `date`, `first`, `second`, `third`, `forth`, `fifth`, `comment`, `sign`) VALUES
(3, 'Chinar Park Auckland', 'Ankit', '2024-08-16', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'demo test', ''),
(4, 'abcd', 'ashish', '2024-08-15', 'good', 'good', 'good', 'good', 'good', 'no', '');

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('1tcafrvf7taesd639al6tm31h6cnt9tp', '49.43.7.101', 1734431317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313331373b),
('44duhodo4bu6npug8otofcrrb12u539f', '49.43.7.101', 1734431317, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313331373b),
('506imrh01d51hasmbmsvslf285o8b4ng', '49.43.7.247', 1732182140, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323138323134303b6573686f705f757365725f646174617c613a33323a7b733a323a226964223b733a333a22313832223b733a343a226c6f676f223b733a303a22223b733a31303a22757365725f656d61696c223b733a303a22223b733a31323a22636f6d70616e795f6e616d65223b733a303a22223b733a363a22635f6e616d65223b733a303a22223b733a393a22627573695f6e616d65223b733a303a22223b733a363a22757365726964223b733a303a22223b733a393a2266697273746e616d65223b733a303a22223b733a393a2266756c6c5f6e616d65223b733a363a22736174697368223b733a383a226c6173746e616d65223b733a303a22223b733a353a22656d61696c223b733a31393a2273617469736831323340676d61696c2e636f6d223b733a393a226d6f62696c655f6e6f223b733a303a22223b733a353a2270686f6e65223b733a31303a2239393236303330383936223b733a333a22707764223b733a363a22313233343536223b733a343a2274797065223b733a313a2232223b733a383a2270686f6e655f6e6f223b733a303a22223b733a31303a22635f70617373776f7264223b733a303a22223b733a383a226f72675f6e616d65223b733a313a2235223b733a383a226f72675f74797065223b733a31323a224f7267616e69736174696f6e223b733a373a22636f756e747279223b733a303a22223b733a343a2263697479223b733a363a22496e646f7265223b733a373a2261646472657373223b733a333a22707534223b733a333a226f7470223b733a313a2230223b733a373a22757365725f6964223b733a333a22313132223b733a343a22726f6c65223b733a383a22456e67696e656572223b733a383a227265715f6e616d65223b733a303a22223b733a393a22627573695f61726561223b733a313a2236223b733a353a22696d616765223b733a303a22223b733a31303a226773745f6e756d626572223b733a303a22223b733a363a22737461747573223b733a313a2231223b733a373a22636865636b6564223b733a313a2230223b733a31323a22637265617465645f64617465223b733a31303a22303030302d30302d3030223b7d),
('6e6pa55lek2uh9sn0pjjfriuv6lt35ui', '49.43.7.101', 1734431366, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313335323b),
('6hi7f3vu9jtp3a1cv3dt3p45s0gpuc3p', '49.43.7.247', 1732175557, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323137353535373b),
('73vu7gja5spo58atv7pet45u0ra6gs7a', '49.43.7.247', 1733822800, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733333832323637343b),
('bv5n1s9ia11fla9jks09559utb2lmquk', '52.112.49.104', 1734431362, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313336323b),
('dhtilbq87nh0hchreatn1h1l28u26s3d', '49.37.39.255', 1733852933, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733333835323638323b6573686f705f757365725f646174617c613a33323a7b733a323a226964223b733a333a22323036223b733a343a226c6f676f223b733a303a22223b733a31303a22757365725f656d61696c223b733a303a22223b733a31323a22636f6d70616e795f6e616d65223b733a303a22223b733a363a22635f6e616d65223b733a303a22223b733a393a22627573695f6e616d65223b733a303a22223b733a363a22757365726964223b733a303a22223b733a393a2266697273746e616d65223b733a303a22223b733a393a2266756c6c5f6e616d65223b733a31323a22536179616e204d6f6e64616c223b733a383a226c6173746e616d65223b733a303a22223b733a353a22656d61696c223b733a31373a2274657374696e6740676d61696c2e636f6d223b733a393a226d6f62696c655f6e6f223b733a303a22223b733a353a2270686f6e65223b733a333a22313233223b733a333a22707764223b733a383a223233343536373839223b733a343a2274797065223b733a313a2232223b733a383a2270686f6e655f6e6f223b733a303a22223b733a31303a22635f70617373776f7264223b733a303a22223b733a383a226f72675f6e616d65223b733a313a2235223b733a383a226f72675f74797065223b733a31323a224f7267616e69736174696f6e223b733a373a22636f756e747279223b733a303a22223b733a343a2263697479223b733a333a226b6f6c223b733a373a2261646472657373223b733a303a22223b733a333a226f7470223b733a313a2230223b733a373a22757365725f6964223b733a333a22313132223b733a343a22726f6c65223b733a373a224d616e61676572223b733a383a227265715f6e616d65223b733a303a22223b733a393a22627573695f61726561223b733a323a223130223b733a353a22696d616765223b733a303a22223b733a31303a226773745f6e756d626572223b733a303a22223b733a363a22737461747573223b733a313a2231223b733a373a22636865636b6564223b733a313a2230223b733a31323a22637265617465645f64617465223b733a31303a22303030302d30302d3030223b7d),
('doj9onuej7cmom9mj3gr9e6985vfc0vu', '49.43.7.101', 1734432437, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313435333b),
('ffjodvme6hs2c6o9g1svplhj1t9tc4cj', '49.37.39.255', 1733954631, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733333935343631303b),
('g9mg36312najeduqs07h7nsieq6shi43', '49.43.7.247', 1732186733, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323138363039303b),
('ge6b7b1m014hkjfrjeds6j42eoiuf4tg', '52.112.49.112', 1732178376, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323137383337363b),
('ggg0fl0kkg5l7714fg706ur2d6445nqf', '52.112.49.104', 1734431328, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313332383b),
('iqcjom7llde57mdnvt70hk5r02okq1ll', '49.43.7.247', 1732184745, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323138333733383b6573686f705f757365725f646174617c613a33323a7b733a323a226964223b733a333a22313833223b733a343a226c6f676f223b733a303a22223b733a31303a22757365725f656d61696c223b733a303a22223b733a31323a22636f6d70616e795f6e616d65223b733a303a22223b733a363a22635f6e616d65223b733a303a22223b733a393a22627573695f6e616d65223b733a303a22223b733a363a22757365726964223b733a303a22223b733a393a2266697273746e616d65223b733a303a22223b733a393a2266756c6c5f6e616d65223b733a343a2272617669223b733a383a226c6173746e616d65223b733a303a22223b733a353a22656d61696c223b733a31373a227261766931323340676d61696c2e636f6d223b733a393a226d6f62696c655f6e6f223b733a303a22223b733a353a2270686f6e65223b733a31303a2239393037353635363536223b733a333a22707764223b733a383a223132333435363738223b733a343a2274797065223b733a313a2232223b733a383a2270686f6e655f6e6f223b733a303a22223b733a31303a22635f70617373776f7264223b733a303a22223b733a383a226f72675f6e616d65223b733a313a2235223b733a383a226f72675f74797065223b733a31323a224f7267616e69736174696f6e223b733a373a22636f756e747279223b733a303a22223b733a343a2263697479223b733a363a22696e646f7265223b733a373a2261646472657373223b733a31373a2256696a6179206d61676572207075346666223b733a333a226f7470223b733a313a2230223b733a373a22757365725f6964223b733a333a22313132223b733a343a22726f6c65223b733a373a224d616e61676572223b733a383a227265715f6e616d65223b733a303a22223b733a393a22627573695f61726561223b733a313a2236223b733a353a22696d616765223b733a303a22223b733a31303a226773745f6e756d626572223b733a303a22223b733a363a22737461747573223b733a313a2231223b733a373a22636865636b6564223b733a313a2230223b733a31323a22637265617465645f64617465223b733a31303a22303030302d30302d3030223b7d),
('j4q9bc35r407hrl05o6n42quric7dfc0', '49.43.7.101', 1734431373, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733343433313335303b),
('n815s98bvs9e564v19mhu5qq4ql6acve', '49.37.39.255', 1733830789, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733333832393833323b6573686f705f757365725f646174617c613a33323a7b733a323a226964223b733a333a22323038223b733a343a226c6f676f223b733a31333a2244617368626f6172642e706e67223b733a31303a22757365725f656d61696c223b733a303a22223b733a31323a22636f6d70616e795f6e616d65223b733a393a22436f6d70616e792031223b733a363a22635f6e616d65223b733a31303a22437573746f6d65722032223b733a393a22627573695f6e616d65223b733a303a22223b733a363a22757365726964223b733a303a22223b733a393a2266697273746e616d65223b733a303a22223b733a393a2266756c6c5f6e616d65223b733a303a22223b733a383a226c6173746e616d65223b733a303a22223b733a353a22656d61696c223b733a32303a22726571756573746f723240676d61696c2e636f6d223b733a393a226d6f62696c655f6e6f223b733a303a22223b733a353a2270686f6e65223b733a303a22223b733a333a22707764223b733a383a223132333435363738223b733a343a2274797065223b733a313a2231223b733a383a2270686f6e655f6e6f223b733a303a22223b733a31303a22635f70617373776f7264223b733a303a22223b733a383a226f72675f6e616d65223b733a313a2235223b733a383a226f72675f74797065223b733a31323a224f7267616e69736174696f6e223b733a373a22636f756e747279223b733a303a22223b733a343a2263697479223b733a303a22223b733a373a2261646472657373223b733a303a22223b733a333a226f7470223b733a313a2230223b733a373a22757365725f6964223b733a333a22313132223b733a343a22726f6c65223b733a393a22526571756573746572223b733a383a227265715f6e616d65223b733a31323a22526571756573746f72203220223b733a393a22627573695f61726561223b733a323a223130223b733a353a22696d616765223b733a303a22223b733a31303a226773745f6e756d626572223b733a303a22223b733a363a22737461747573223b733a313a2231223b733a373a22636865636b6564223b733a313a2230223b733a31323a22637265617465645f64617465223b733a31303a22303030302d30302d3030223b7d),
('po28fqamko4vgu210trj15enl7m9rpj9', '49.43.7.247', 1732186090, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323138363039303b),
('u8kcpvhh0d1u6kn3dmc58sp695jkj8rj', '49.43.7.247', 1732183738, 0x5f5f63695f6c6173745f726567656e65726174657c693a313733323138333733383b6573686f705f757365725f646174617c613a33323a7b733a323a226964223b733a333a22313132223b733a343a226c6f676f223b733a303a22223b733a31303a22757365725f656d61696c223b733a303a22223b733a31323a22636f6d70616e795f6e616d65223b733a303a22223b733a363a22635f6e616d65223b733a303a22223b733a393a22627573695f6e616d65223b733a303a22223b733a363a22757365726964223b733a303a22223b733a393a2266697273746e616d65223b733a353a2241646d696e223b733a393a2266756c6c5f6e616d65223b733a303a22223b733a383a226c6173746e616d65223b733a333a2273656e223b733a353a22656d61696c223b733a32303a227376656c746f7365687240676d61696c2e636f6d223b733a393a226d6f62696c655f6e6f223b733a31303a2237353435343535343536223b733a353a2270686f6e65223b733a313a2230223b733a333a22707764223b733a363a22313233343536223b733a343a2274797065223b733a313a2233223b733a383a2270686f6e655f6e6f223b733a303a22223b733a31303a22635f70617373776f7264223b733a303a22223b733a383a226f72675f6e616d65223b733a323a223532223b733a383a226f72675f74797065223b733a31323a224f7267616e69736174696f6e223b733a373a22636f756e747279223b733a363a22696e64696132223b733a343a2263697479223b733a383a22696e646f72652032223b733a373a2261646472657373223b733a31303a2270697468616d70757232223b733a333a226f7470223b733a313a2230223b733a373a22757365725f6964223b733a323a223335223b733a343a22726f6c65223b733a313a2230223b733a383a227265715f6e616d65223b733a303a22223b733a393a22627573695f61726561223b733a313a2230223b733a353a22696d616765223b733a303a22223b733a31303a226773745f6e756d626572223b733a303a22223b733a363a22737461747573223b733a313a2233223b733a373a22636865636b6564223b733a313a2230223b733a31323a22637265617465645f64617465223b733a31303a22303030302d30302d3030223b7d);

-- --------------------------------------------------------

--
-- Table structure for table `companylist`
--

CREATE TABLE `companylist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `note` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `companylist`
--

INSERT INTO `companylist` (`id`, `user_id`, `company_name`, `note`, `status`) VALUES
(1, 112, 'Mindcrew', '', 0),
(3, 112, 'Zeny', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `emails`
--

CREATE TABLE `emails` (
  `id` int(11) NOT NULL,
  `sender_email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `received_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_logs`
--

CREATE TABLE `email_logs` (
  `id` int(11) NOT NULL,
  `sender` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `received_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `email_logs`
--

INSERT INTO `email_logs` (`id`, `sender`, `subject`, `message`, `received_at`) VALUES
(2, 'unknown', 'No Subject', 'No Message', '2024-10-02 10:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `email_otp`
--

CREATE TABLE `email_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `message2` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `forgot_otp`
--

CREATE TABLE `forgot_otp` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `create_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `forgot_otp`
--

INSERT INTO `forgot_otp` (`id`, `email`, `otp`, `create_date`) VALUES
(1, 'ashishyadav990313@gmail.com', 793621, '2024-10-28'),
(7, 'mindstay123@gmail.com', 529436, '2024-10-18'),
(8, 'requestor2@gmail.com', 893735, '2024-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `org_list`
--

CREATE TABLE `org_list` (
  `id` int(11) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `busi_name` varchar(255) NOT NULL,
  `userid` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `type` int(11) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `c_password` varchar(255) NOT NULL,
  `org_name` varchar(255) NOT NULL DEFAULT '5',
  `org_type` varchar(255) NOT NULL DEFAULT 'Organisation',
  `country` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `otp` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT '0',
  `req_name` varchar(255) NOT NULL,
  `busi_area` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `gst_number` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `checked` int(11) NOT NULL DEFAULT 0,
  `created_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `org_list`
--

INSERT INTO `org_list` (`id`, `logo`, `user_email`, `company_name`, `c_name`, `busi_name`, `userid`, `firstname`, `full_name`, `lastname`, `email`, `mobile_no`, `phone`, `pwd`, `type`, `phone_no`, `c_password`, `org_name`, `org_type`, `country`, `city`, `address`, `otp`, `user_id`, `role`, `req_name`, `busi_area`, `image`, `gst_number`, `status`, `checked`, `created_date`) VALUES
(1, '', '', '', '', '', '', '', '', '', 'admin@gmail.com', '', '', '123456', 0, '', '', '5', 'Organisation', '', '', '', 0, 0, '0', '', 0, '', '', 1, 0, '0000-00-00'),
(20, '', '', '', '', '', '', '', 'saket', '', 'saket123@gmail.com', '', '9926030896', '123456', 2, '', '', '5', 'Organisation', '', 'indore', 'pu4', 0, 112, 'Observer', '', 3, '', '', 1, 0, '0000-00-00'),
(112, '', '', '', '', '', '', 'Admin', '', 'sen', 'sveltosehr@gmail.com', '7545455456', '0', '123456', 3, '', '', '52', 'Organisation', 'india2', 'indore 2', 'pithampur2', 0, 35, '0', '', 0, '', '', 3, 0, '0000-00-00'),
(174, '', '', '', 'sanjay', 'Indore', '', '', '', '', 'ritusveltose1@gmail.com', '', '', '123456', 0, '9988776655', '', '5', 'Organisation', '', 'Indore', '', 0, 112, '0', 'ritu', 3, '', '', 0, 0, '0000-00-00'),
(176, '', '', '', '', '', '', '', 'Anujesh Yadav', '', 'anujeshsveltosest@gmail.com', '', '9090909090', '123456', 2, '', '', '5', 'Organisation', '', 'Indore', '', 0, 112, 'Engineer', '', 1, '', '', 1, 0, '0000-00-00'),
(177, '', '', '', '', '', '', '', 'vikram singh ', '', 'vikramjupitech123@gmail.com', '', '9090909090', '123456', 2, '', '', '5', 'Organisation', '', 'Indore', '', 0, 112, 'Manager', '', 3, '', '', 1, 0, '0000-00-00'),
(178, '', '', '', '', '', '', '', 'Sanjay', '', 'ashishyadav990313@gmail.com', '', '9039908424', '12345678', 2, '', '', '5', 'Organisation', '', 'Indore', '', 0, 0, 'Manager', '', 1, '', '', 1, 0, '0000-00-00'),
(180, '', '', '', '', '', '', '', 'shyam', '', 'shyam123@gmail.com', '', '9039908424', '123456', 2, '', '', '5', 'Organisation', '', 'Indore', '', 0, 112, 'Engineer', '', 1, '', '', 1, 0, '0000-00-00'),
(181, '', '', '', '', '', '', '', 'Ashish', '', 'ashishyadav0313@gmail.com', '', '9907036789', '', 2, '', '', '5', 'Organisation', '', 'Indore', '', 0, 112, 'Engineer', '', 3, '', '', 1, 0, '0000-00-00'),
(182, '', '', '', '', '', '', '', 'satish', '', 'satish123@gmail.com', '', '9926030896', '123456', 2, '', '', '5', 'Organisation', '', 'Indore', 'pu4', 0, 112, 'Engineer', '', 6, '', '', 1, 0, '0000-00-00'),
(183, '', '', '', '', '', '', '', 'ravi', '', 'ravi123@gmail.com', '', '9907565656', '12345678', 2, '', '', '5', 'Organisation', '', 'indore', 'Vijay mager pu4ff', 0, 112, 'Manager', '', 6, '', '', 1, 0, '0000-00-00'),
(186, '', '', '', '', '', '', '', 'Gourav', '', 'govrav123@gmail.com', '', '9926030896', '123456', 2, '', '', '5', 'Organisation', '', 'indore', '', 0, 112, 'Manager', '', 1, '', '', 0, 0, '0000-00-00'),
(187, '', '', '', 'ashish', 'null', '', '', '', '', 'ashish@gmail.com', '', '', 'Ashish@123', 1, '9876543210', '', '5', 'Organisation', '', 'INDORE', '', 0, 184, '0', 'vinod', 9, '', '', 1, 0, '0000-00-00'),
(188, '', '', '', '', '', '', '', 'vinod', '', 'vinod@gmail.com', '', '9987654321', 'Vinod@123', 2, '', '', '5', 'Organisation', '', 'INDORE', '', 0, 184, 'Observer', '', 9, '', '', 1, 0, '0000-00-00'),
(196, 'a6image.png', '', 'abcde', 'jupitech', 'indore', '', '', '', '', 'ashish123@gmail.com', '', '', '123456', 1, '9826030896', '', '5', 'Organisation', '', 'indore', '', 0, 112, 'Requester', 'abcde', 3, '', '', 1, 0, '0000-00-00'),
(197, '2024_(11).jpg', '', 'sveltose tech', 'Yugh', 'Indore', '', '', '', '', 'ashishyadav13@gmail.com', '', '', '123456', 1, '7225862195', '', '5', 'Organisation', '', 'indore', '', 0, 195, 'Requester', 'abcde', 3, '', '', 1, 0, '0000-00-00'),
(200, 'crm1.jpg', '', 'crm management', 'ashok', '', '', '', '', '', 'crm123@gmail.com', '', '', '123456', 2, '9039908424', '', '5', 'Organisation', '', 'Indore', 'Indore', 0, 0, 'Requester', 'ashok', 0, '', '', 0, 0, '0000-00-00'),
(201, 'androgynous-avatar-non-binary-queer-person.jpg', '', 'Sveltose', 'Ankit', 'Vijay Nager PU4', '', '', '', '', 'sveltosehr123@gmail.com', '', '', '123456', 1, '9039808787', '', '5', 'Organisation', '', 'INDORE', 'indore', 0, 112, 'Requester', 'Jupitech', 3, '', '', 1, 0, '0000-00-00'),
(202, 'Mindstay__2.png', '', 'Mindstay Technology', 'Mindstay ', '', '', '', '', '', 'mindstay123@gmail.com', '', '', '123456', 2, '8877665544', '', '5', 'Organisation', '', 'Bangalore', '153 LAL BAG COLONY Bangalore', 0, 0, 'Requester', 'Mindstay ', 0, '', '', 0, 0, '0000-00-00'),
(203, '', '', '', '', '', '', '', 'Rahul ', '', 'rahul123@gmail.com', '', '9039908424', '123456', 2, '', '', '5', 'Organisation', '', 'INDORE', '', 0, 112, 'Observer', '', 6, '', '', 1, 0, '0000-00-00'),
(204, 'doctorlogo.jpg', '', 'sveltose tech', 'Parti ', '', '', '', '', '', '', '', '', '123456', 2, '9039908424', '', '5', 'Organisation', '', 'Jaipur', 'MGF Metropolitaian Mall, Jaipur', 0, 0, 'Requester', 'Parti ', 0, '', '', 1, 0, '0000-00-00'),
(205, '51eaW35lsGL__AC_UF1000,1000_QL80_.jpg', '', 'sveltose technology', 'Rajeev', '', '', '', '', '', 'ashishdevelopersveltosest@gmail.com', '', '', '123456', 2, '9926030896', '', '5', 'Organisation', '', 'INDORE', 'sveltoseashish', 0, 0, 'Requester', 'Rajeev', 0, '', '', 1, 0, '0000-00-00'),
(206, '', '', '', '', '', '', '', 'Sayan Mondal', '', 'testing@gmail.com', '', '123', '23456789', 2, '', '', '5', 'Organisation', '', 'kol', '', 0, 112, 'Manager', '', 10, '', '', 1, 0, '0000-00-00'),
(207, '', '', 'Company 1', 'Customer 1 ', '', '', '', '', '', 'requestor@gmail.com', '', '', '23456789', 1, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Requester', 'Requestor 1 ', 10, '', '', 1, 0, '0000-00-00'),
(208, 'Dashboard.png', '', 'Company 1', 'Customer 2', '', '', '', '', '', 'requestor2@gmail.com', '', '', '12345678', 1, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Requester', 'Requestor 2 ', 10, '', '', 1, 0, '0000-00-00'),
(209, '', '', '', '', '', '', '', 'UserEngineer2', '', 'testing@xytr.com', '', '', '12345678', 2, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Engineer', '', 10, '', '', 1, 0, '0000-00-00'),
(210, '', '', '', '', '', '', '', '', '', '', '', '', '', 1, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Requester', '', 15, '', '', 1, 0, '0000-00-00'),
(211, '', '', '', '', '', '', '', '', '', '', '', '', '', 2, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Engineer', '', 10, '', '', 1, 0, '0000-00-00'),
(218, 'as.png', '', '1', '', 'indore', '', '', '', '', 'admin@example.com', '', '', '123456', 1, '7225862195', '', '5', 'Organisation', '', 'INDORE', '', 0, 112, 'Requester', 'Jupitechhh', 11, '', '', 1, 0, '0000-00-00'),
(219, '', '', '1', '', 'hgghk', '', '', '', '', 'gkg@gdgd', '', '', '4545', 1, '4545', '', '5', 'Organisation', '', '', '', 0, 112, 'Requester', '', 24, '', '', 1, 0, '0000-00-00'),
(220, '', '', '', '', '', '', '', 'Sayan Mondal', '', 'testing@gmail.com', '', '123', '23456789', 2, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Manager', '', 11, '', '', 1, 0, '0000-00-00'),
(221, '', '', '', '', '', '', '', 'Engineer 2', '', 'testing@xytr.com', '', '1234', '12345678', 2, '', '', '5', 'Organisation', '', '', '', 0, 112, 'Engineer', '', 11, '', '', 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `report_for` varchar(255) NOT NULL,
  `purpose` text NOT NULL,
  `property_address` varchar(255) NOT NULL,
  `date_of_assessment` varchar(255) NOT NULL,
  `assessor` varchar(255) NOT NULL,
  `occupant` varchar(255) NOT NULL,
  `report_ask_by` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `heat_source` varchar(255) NOT NULL,
  `coverage` varchar(255) NOT NULL,
  `capacity` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `insulation` varchar(255) NOT NULL,
  `matrial` varchar(255) NOT NULL,
  `rvalue` varchar(255) NOT NULL,
  `image4` varchar(255) NOT NULL,
  `image5` varchar(255) NOT NULL,
  `image6` varchar(255) NOT NULL,
  `image7` varchar(255) NOT NULL,
  `image8` varchar(255) NOT NULL,
  `image9` varchar(255) NOT NULL,
  `o_kichan` text NOT NULL,
  `o_bathroom` text NOT NULL,
  `e_kichan` text NOT NULL,
  `e_bathroom` text NOT NULL,
  `image10` varchar(255) NOT NULL,
  `image11` varchar(255) NOT NULL,
  `image12` text NOT NULL,
  `gutter` text NOT NULL,
  `pipes` text NOT NULL,
  `drain` text NOT NULL,
  `m_brrier` text NOT NULL,
  `g_barrier` text NOT NULL,
  `image13` text NOT NULL,
  `image14` text NOT NULL,
  `image15` text NOT NULL,
  `image16` text NOT NULL,
  `image17` text NOT NULL,
  `image18` text NOT NULL,
  `image19` text NOT NULL,
  `image20` text NOT NULL,
  `image21` text NOT NULL,
  `area1` text NOT NULL,
  `area2` text NOT NULL,
  `area3` text NOT NULL,
  `status1` text NOT NULL,
  `status2` text NOT NULL,
  `status3` text NOT NULL,
  `installatin1` text NOT NULL,
  `installatin2` text NOT NULL,
  `installatin3` text NOT NULL,
  `vldy1` text NOT NULL,
  `vldy2` text NOT NULL,
  `vldy3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`id`, `address`, `report_for`, `purpose`, `property_address`, `date_of_assessment`, `assessor`, `occupant`, `report_ask_by`, `contact`, `heat_source`, `coverage`, `capacity`, `image`, `image1`, `image2`, `image3`, `insulation`, `matrial`, `rvalue`, `image4`, `image5`, `image6`, `image7`, `image8`, `image9`, `o_kichan`, `o_bathroom`, `e_kichan`, `e_bathroom`, `image10`, `image11`, `image12`, `gutter`, `pipes`, `drain`, `m_brrier`, `g_barrier`, `image13`, `image14`, `image15`, `image16`, `image17`, `image18`, `image19`, `image20`, `image21`, `area1`, `area2`, `area3`, `status1`, `status2`, `status3`, `installatin1`, `installatin2`, `installatin3`, `vldy1`, `vldy2`, `vldy3`) VALUES
(4, 'auckland', 'ashish', 'testing', 'indore', '2024-08-08', 'test', 'test', 'test', '9926030896', 'Heatpump', 'Living room, open plan kitchen,', '5.5 kW Heating', 'abcdtest4.png', 'abcd3.jpg', 'crm4.jpg', 'art34.jpg', 'Ceiling', 'Glass', 'R3.6/ 165mm thickness', 'a1image9.png', 'a2image9.png', 'a3image9.png', 'a4image9.png', 'a5image9.png', 'a6image9.png', 'abcd', 'abcd', 'abcd', 'abcd', 'flour41.png', 'flour123.png', 'flour222.png', 'Pass', 'Pass', 'Pass', 'Current ', 'Pass', 'seven131.png', 'seven231.png', 'seven331.png', '8118.png', '8218.png', '8318.png', '9121.png', '9221.png', '9321.png', 'Ground floor	', 'Ground floor	', 'Ground floor	', 'Working', 'Working', 'Working', '2024', '2024', '2024', '2031', '2031', '2031');

-- --------------------------------------------------------

--
-- Table structure for table `requestlist`
--

CREATE TABLE `requestlist` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `busi_name` varchar(255) NOT NULL,
  `busi_area` varchar(255) NOT NULL,
  `req_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_no` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `requestlist`
--

INSERT INTO `requestlist` (`id`, `company_name`, `user_id`, `c_name`, `busi_name`, `busi_area`, `req_name`, `email`, `phone_no`, `city`, `password`, `status`) VALUES
(1, '', '112', 'ashish', 'indore', 'dfcdf', '', 'ashishqwe123@gmail.com', '9876543210', 'indore', '123456', 0);

-- --------------------------------------------------------

--
-- Table structure for table `role_permission`
--

CREATE TABLE `role_permission` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `role_permission`
--

INSERT INTO `role_permission` (`id`, `user_id`, `role`, `status`) VALUES
(1, 112, 'Manager', 0),
(2, 0, 'Engineer', 0),
(4, 0, 'Observer', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_list`
--

CREATE TABLE `ticket_list` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_details` varchar(255) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `req_name` varchar(255) NOT NULL,
  `busi_area` varchar(255) NOT NULL,
  `assign_man` varchar(255) NOT NULL,
  `assign_engg` varchar(255) NOT NULL,
  `effort` varchar(255) NOT NULL,
  `ticket_subject` varchar(255) NOT NULL,
  `ticket_descript` text NOT NULL,
  `attachment` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket_list`
--

INSERT INTO `ticket_list` (`id`, `user_email`, `ticket_id`, `ticket_details`, `customer_name`, `req_name`, `busi_area`, `assign_man`, `assign_engg`, `effort`, `ticket_subject`, `ticket_descript`, `attachment`, `status`, `created_date`, `updated_date`) VALUES
(57, 'ashishdevelopersveltosest@gmail.com', 6852, '', '', '201', '6', '183', '182', '', 'Today Testing', '<p>Today Testing</p>\r\n', '51eaW35lsGL__AC_UF1000,1000_QL80_.jpg', 0, '2024-10-21', '0000-00-00'),
(58, 'ashishdevelopersveltosest@gmail.com', 8957, '', '', '201', '3', '', '', '', 'Today Testing', '<p>ticket subject change</p>\r\n', 'as3.png', 0, '2024-10-25', '0000-00-00'),
(60, 'ritusveltose1@gmail.com', 2265, '', '', '201', '6', '183', '182', '', 'test', '<p>gggf</p>\r\n', '1336655137227854971.jpg', 2, '2024-10-28', '0000-00-00'),
(61, 'ashishdevelopersveltosest@gmail.com', 4026, '', '', '201', '6', '183', '182', '', 'test ticket', '<p>test Ticket</p>\r\n', '', 1, '2024-10-28', '0000-00-00'),
(62, '', 6001, '', '', '', '10', '206', '', '', '', '<p>abcd</p>\r\n', '', 0, '2024-10-28', '0000-00-00'),
(63, '', 5143, '', '', '207', '10', '206', '', '', 'test 2', '<p>test 2&nbsp;test 2&nbsp;test&nbsp;</p>\r\n', '', 0, '2024-11-12', '0000-00-00'),
(64, '', 5576, '', '', '208', '10', '', '209', '', 'test ticket 1811.1', '<p>test ticket Creation<br />\r\n1811.1</p>\r\n', '', 0, '2024-11-18', '0000-00-00'),
(65, '', 2426, '', '', '208', '10', '206', '209', '', 'Test_Ticket1811.2', '<p>Test1811.2</p>\r\n', 'Test_SupportHub.png', 0, '2024-11-18', '0000-00-00'),
(66, '', 5805, '', '', '208', '10', '', '', '', 'TestTicket_1811.3', '<p>TestTicket_1811.3</p>\r\n', 'Test_SupportHub1.png', 0, '2024-11-18', '0000-00-00'),
(67, '', 4194, '', '', '208', '10', '206', '209', '', 'TestTicket_1811.4', '<p>Test Ticket 1811.4</p>\r\n', 'Test_SupportHub2.png', 0, '2024-11-18', '0000-00-00'),
(68, 'anujeshsveltosest@gmail.com', 4495, '', '', '201', '6', '183', '182', '', 'Today Testing', '<p>testing</p>\r\n', 'OrderList.pdf', 0, '2024-11-21', '0000-00-00'),
(69, '', 5619, '', '', '208', '11', '220', '', '', 'TestTicket_1012.1', '', 'Test_SupportHub3.png', 0, '2024-12-10', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_reply`
--

CREATE TABLE `ticket_reply` (
  `id` int(11) NOT NULL,
  `reply_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reply` text NOT NULL,
  `suser_id` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ticket_reply`
--

INSERT INTO `ticket_reply` (`id`, `reply_id`, `user_id`, `reply`, `suser_id`, `status`, `created_date`) VALUES
(18, 44, 195, 'abcd', 0, 0, '2024-09-16 16:15:28'),
(19, 44, 195, 'eeeee', 0, 0, '2024-09-16 16:28:24'),
(20, 44, 183, 'fgfgf', 0, 0, '2024-09-16 16:44:09'),
(21, 44, 183, 'testing', 0, 0, '2024-09-16 16:45:57'),
(22, 44, 182, 'engineer', 0, 0, '2024-09-16 17:03:42'),
(23, 45, 195, 'hii', 0, 0, '2024-09-16 17:07:59'),
(24, 45, 183, 'ticket  in process', 0, 0, '2024-09-16 17:12:23'),
(25, 45, 182, 'complete process', 0, 0, '2024-09-16 17:13:55'),
(26, 46, 195, 'requester reply', 0, 0, '2024-09-18 14:13:13'),
(27, 46, 183, 'manager reply', 0, 0, '2024-09-18 14:23:46'),
(28, 46, 182, 'engineer reply', 0, 0, '2024-09-18 14:28:19'),
(29, 47, 201, 'requester reply', 0, 0, '2024-09-27 15:54:07'),
(30, 47, 183, 'manager reply', 0, 0, '2024-09-27 15:56:23'),
(31, 47, 182, 'engineer reply', 0, 0, '2024-09-27 15:58:32'),
(32, 48, 201, 'requester reply', 0, 0, '2024-10-03 12:36:48'),
(33, 48, 201, 'testing', 0, 0, '2024-10-03 13:14:07'),
(34, 48, 182, 'engineer reply', 0, 0, '2024-10-03 13:28:48'),
(35, 48, 182, 'engreply', 0, 0, '2024-10-03 13:29:48'),
(36, 48, 183, 'manager reply', 0, 0, '2024-10-03 14:13:43'),
(37, 51, 201, 'requester reply', 0, 0, '2024-10-03 16:11:04'),
(38, 51, 183, 'manager reply', 0, 0, '2024-10-03 16:14:57'),
(39, 51, 201, 'rework', 0, 0, '2024-10-03 18:15:39'),
(40, 51, 201, 'ghjjhjh', 0, 0, '2024-10-03 18:45:22'),
(41, 51, 182, 'requester reply', 0, 0, '2024-10-07 17:28:39'),
(42, 51, 182, 'ssss', 0, 0, '2024-10-07 17:47:20'),
(51, 54, 201, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 0, 0, '2024-10-08 17:13:57'),
(52, 54, 183, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 0, 0, '2024-10-08 17:15:37'),
(53, 54, 183, 'testing', 0, 0, '2024-10-09 16:26:56'),
(54, 54, 182, 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 0, 0, '2024-10-09 17:37:50'),
(56, 57, 201, 'lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has su', 0, 0, '2024-10-21 13:17:12'),
(64, 57, 182, 'engineer reply', 0, 0, '2024-10-22 17:30:42'),
(65, 57, 183, 'abcd', 0, 0, '2024-10-23 13:17:40'),
(66, 59, 201, 'abcs', 0, 0, '2024-10-26 15:15:18'),
(67, 57, 183, 'aa', 0, 0, '2024-10-26 16:15:39'),
(68, 57, 183, 'test', 0, 0, '2024-10-28 11:33:53'),
(69, 60, 201, 'abcd', 0, 0, '2024-10-28 11:56:03'),
(70, 60, 182, 'testing', 0, 0, '2024-10-28 12:11:27'),
(71, 61, 201, 'requester side test', 0, 0, '2024-10-28 13:19:41'),
(72, 61, 183, 'Manager Side Reply', 0, 0, '2024-10-28 13:25:19'),
(73, 61, 182, 'engineer side reply', 0, 0, '2024-10-28 13:27:15'),
(74, 62, 206, 'hiii', 0, 0, '2024-10-28 22:33:44'),
(75, 64, 209, 'hiii', 0, 0, '2024-11-18 12:57:17'),
(76, 64, 209, 'hiii 2', 0, 0, '2024-11-18 12:57:30'),
(77, 64, 209, 'hello', 0, 0, '2024-11-18 12:58:00'),
(78, 64, 208, 'hello', 0, 0, '2024-11-18 12:58:36'),
(79, 64, 208, 'hello2', 0, 0, '2024-11-18 12:58:46'),
(80, 67, 209, 'hii', 0, 0, '2024-11-18 16:53:08'),
(81, 68, 183, '', 0, 0, '2024-11-21 15:39:31'),
(82, 68, 183, '', 0, 0, '2024-11-21 15:47:53'),
(83, 68, 183, '', 0, 0, '2024-11-21 15:54:25'),
(84, 68, 183, 'requester reply', 0, 0, '2024-11-21 16:27:49'),
(85, 67, 208, 'hiii', 0, 0, '2024-12-10 17:01:57');

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE `userlist` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `busi_area` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`id`, `user_id`, `role`, `full_name`, `busi_area`, `email`, `phone`, `address`, `city`, `password`, `status`) VALUES
(1, 112, 'Admin', 'Ashis', 'Web Development', 'ashishyadav990313@gmail.com', '', '', 'Indore', '123456', 0),
(3, 112, 'User', 'Ritu', 'Indore', 'ritu123@gmail.com', '9999999999', '', 'Indore', '123456', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_area`
--
ALTER TABLE `business_area`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `certificate`
--
ALTER TABLE `certificate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `companylist`
--
ALTER TABLE `companylist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emails`
--
ALTER TABLE `emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_logs`
--
ALTER TABLE `email_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_otp`
--
ALTER TABLE `email_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `forgot_otp`
--
ALTER TABLE `forgot_otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `org_list`
--
ALTER TABLE `org_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestlist`
--
ALTER TABLE `requestlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_permission`
--
ALTER TABLE `role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_list`
--
ALTER TABLE `ticket_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userlist`
--
ALTER TABLE `userlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_area`
--
ALTER TABLE `business_area`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `certificate`
--
ALTER TABLE `certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companylist`
--
ALTER TABLE `companylist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emails`
--
ALTER TABLE `emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_logs`
--
ALTER TABLE `email_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `email_otp`
--
ALTER TABLE `email_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `forgot_otp`
--
ALTER TABLE `forgot_otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `org_list`
--
ALTER TABLE `org_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `requestlist`
--
ALTER TABLE `requestlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_permission`
--
ALTER TABLE `role_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ticket_list`
--
ALTER TABLE `ticket_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ticket_reply`
--
ALTER TABLE `ticket_reply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `userlist`
--
ALTER TABLE `userlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
