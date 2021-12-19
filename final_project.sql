-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2021 at 06:21 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `acceptedorderlist`
--

CREATE TABLE `acceptedorderlist` (
  `o_id` int(11) NOT NULL,
  `o_name` varchar(20) NOT NULL,
  `o_type` varchar(20) NOT NULL,
  `o_description` varchar(1000) NOT NULL,
  `o_price` varchar(20) NOT NULL,
  `o_ordered_by` int(20) DEFAULT NULL,
  `o_posted_by` int(20) DEFAULT NULL,
  `o_image` varchar(100) DEFAULT NULL,
  `o_time` datetime DEFAULT NULL,
  `o_updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acceptedorderlist`
--

INSERT INTO `acceptedorderlist` (`o_id`, `o_name`, `o_type`, `o_description`, `o_price`, `o_ordered_by`, `o_posted_by`, `o_image`, `o_time`, `o_updatetime`) VALUES
(2, 'test2', 'test2', 'test2', '12300', 3, 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `acceptedrefundrequest`
--

CREATE TABLE `acceptedrefundrequest` (
  `r_id` int(11) NOT NULL,
  `r_from` int(30) NOT NULL,
  `r_to` int(30) NOT NULL,
  `r_addname` varchar(30) NOT NULL,
  `r_addprice` varchar(30) NOT NULL,
  `r_addtype` varchar(30) NOT NULL,
  `r_adddescription` varchar(500) NOT NULL,
  `r_reason` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `acceptedrefundrequest`
--

INSERT INTO `acceptedrefundrequest` (`r_id`, `r_from`, `r_to`, `r_addname`, `r_addprice`, `r_addtype`, `r_adddescription`, `r_reason`) VALUES
(1, 1, 2, 'ds', '100', 'fhdh', 'hdffffffffffffffffffffff', 'dhffffffffffffff'),
(2, 1, 11, '11', '111', '111', '111', '11fdfafcw'),
(3, 1, 34, 'rakib1', '100', 'no type', 'no description', 'no reason'),
(4, 1, 2, 'RUSTIC', '1000000', 'Natural', 'Shabby chic furnishings are often either distressed or appear that way; paint tends to have antique-style finishes. The Shabby Chic colour palettes include white, cream and pastels. Light light fixture and wall hangings may be ornate and continue the feminine vibe of shabby chic design.', 'Bad work.'),
(5, 1, 5, '', '1000000', 'Natural', 'Shabby chic is vintage-inspired style, but compared to Bohemian and other styles, tends to be more feminine, soft and delicate.\r\n\r\nShabby chic furnishings are often either distressed or appear that way; paint tends to have antique-style finishes. The Shabby Chic colour palettes include white, cream and pastels. Light light fixture and wall hangings may be ornate and continue the feminine vibe of shabby chic design.', 'Not Good At All');

-- --------------------------------------------------------

--
-- Table structure for table `adds`
--

CREATE TABLE `adds` (
  `id` int(11) NOT NULL,
  `add_name` varchar(20) NOT NULL,
  `add_type` varchar(20) NOT NULL,
  `add_desc` varchar(1000) NOT NULL,
  `add_price` varchar(20) NOT NULL,
  `posted_byname` varchar(20) NOT NULL,
  `posted_by` int(20) DEFAULT NULL,
  `add_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adds`
--

INSERT INTO `adds` (`id`, `add_name`, `add_type`, `add_desc`, `add_price`, `posted_byname`, `posted_by`, `add_image`) VALUES
(3, 'BOHEMIAN', 'Vintage', 'Bohemian is a popular style for home design and fashion. It reflects a carefree lifestyle with little rules, except to follow your hearts desire.\r\n\r\nBohemian homes may include vintage furniture and light fixtures, globally inspired textiles and rugs, displays of collections, and items found in widely varied sources including flea markets and during one’s travels.\r\n\r\nIt’s not uncommon to spot floor pillows and comfortable seating spaces when incorporating the bohemian style. This eclectic style can incorporate an ultra-glam chandelier paired with a well-worn rug and a mid-century chair. Within the Bohemian style, there’s a laissez-faire attitude where anything goes as long as you love it.', '600000', 'd_abid', 1, NULL),
(4, 'CONTEMPORARY', 'Modern', 'Modern and contemporary are two styles frequently used interchangeably. Contemporary is different from modern because it describes design based on the here and now.\r\n\r\nThe primary difference separating modern and contemporary design style is that modern is a strict interpretation of design that started in the 20th century. Contemporary on the other hand, is more fluid and can represent a sense of currency with less adherence to one particular style. For example, contemporary style may include curving lines, whereas modern design does not. You can refer to modern vs contemporary article for more information.', '700000', 'd_abid', 1, NULL),
(5, 'RUSTIC', 'Natural', 'Rustic design is drawn from natural inspiration, using raw and often unfinished elements including wood and stone.\r\n\r\nRustic design may incorporate accessories from the outdoors with warmth emulating from the design and architectural details that may include features like vaulted ceilings adorned with wood beams or reclaimed wood floors.\r\n\r\nMany designs now integrate rustic design with more modern furnishings and accessories.', '50000', 'd_abid', 1, NULL),
(6, 'SHABBY CHIC', 'Vintage', 'Shabby chic is vintage-inspired style, but compared to Bohemian and other styles, tends to be more feminine, soft and delicate.\r\n\r\nShabby chic furnishings are often either distressed or appear that way; paint tends to have antique-style finishes. The Shabby Chic colour palettes include white, cream and pastels. Light light fixture and wall hangings may be ornate and continue the feminine vibe of shabby chic design.', '100000', 'd_ayesha', 2, NULL),
(7, 'TRADITIONAL', 'Natural', 'Traditional design style offers classic details, sumptuous furnishings, and an abundance of accessories. It is rooted in European sensibilities.\r\n\r\nTraditional homes often feature dark, finished wood, rich colour palettes, and a variety of textures and curved lines. Furnishings have elaborate and ornate details and fabrics, like velvet, silk and brocade, which may include a variety of patterns and textures.\r\n\r\nThere’s depth, layering and dimensionality within most traditional designs.', '50000', 'd_ayesha', 2, NULL),
(8, 'TRANSITIONAL', 'Vintage', 'Transitional is a very popular style because it borrows from both traditional and modern design to facilitate a space that’s not “too much,” in terms of one style or another. There’s a sense of balance that’s appealing and unexpected.\r\n\r\nA transitional design may incorporate modern materials, such as steel and glass, and then unite them with plush furnishings.\r\n\r\nTransitional design also includes relatively neutral colour palettes, creating a calming and relaxed space that manages to feel both stylish and sleek, as well as warm and inviting.\r\n', '200000', 'd_ayesha', 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(20) NOT NULL,
  `a_uname` varchar(20) NOT NULL,
  `a_name` varchar(20) NOT NULL,
  `a_password` varchar(20) NOT NULL,
  `a_phone` varchar(20) NOT NULL,
  `a_email` varchar(20) NOT NULL,
  `a_dob` varchar(20) NOT NULL,
  `a_gender` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_uname`, `a_name`, `a_password`, `a_phone`, `a_email`, `a_dob`, `a_gender`) VALUES
(1, 'a_ayesha', 'amin', 'pikachu', '01911111111', 'ayesha@email.com', '18/10/2021', 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `admintoken`
--

CREATE TABLE `admintoken` (
  `id` int(11) NOT NULL,
  `userid` int(20) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `decoapprovallist`
--

CREATE TABLE `decoapprovallist` (
  `dapp_id` int(11) NOT NULL,
  `dapp_uname` varchar(20) NOT NULL,
  `dapp_name` varchar(20) NOT NULL,
  `dapp_password` varchar(20) NOT NULL,
  `dapp_phone` varchar(20) NOT NULL,
  `dapp_email` varchar(20) NOT NULL,
  `dapp_address` varchar(50) NOT NULL,
  `dapp_yoe` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `decorators`
--

CREATE TABLE `decorators` (
  `d_id` int(11) NOT NULL,
  `d_uname` varchar(20) NOT NULL,
  `d_name` varchar(20) NOT NULL,
  `d_password` varchar(20) NOT NULL,
  `d_phone` varchar(20) NOT NULL,
  `d_email` varchar(20) NOT NULL,
  `d_address` varchar(50) NOT NULL,
  `d_yoe` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `decorators`
--

INSERT INTO `decorators` (`d_id`, `d_uname`, `d_name`, `d_password`, `d_phone`, `d_email`, `d_address`, `d_yoe`) VALUES
(1, 'd_abid', 'Abid_Israk', 'abid@1998', '+01711900234', 'abid@email.com', 'Somewhere', 5),
(2, 'd_ayesha', 'Ayesha Amin', 'ayesha123', '01911900234', 'ayesha@email.com', 'Narayanganj', 2),
(3, 'd_abid', 'Abid Israk', 'abid@1998', '+01711900234', 'abid@email.com', 'Somewhere', 5),
(4, 'ass', 'asas', 'assaa', 'sasss', 'assaasas@gmail.com', 'aasasaassaas', 4),
(5, 'ass1', 'asas1', 'assaa', 'sasss', 'assaasas@gmail.com', 'aasasaassaas', 4),
(6, '121', '112', '1212', '121', '211', '211', 21),
(7, 'rifat', 'rifat1', '12345689', '01866515460', 'rifat@gmail.com', 'Dhaka, Bangladesh', 5),
(8, 'rifat', 'rifat2', '12345689', '01866515460', 'rifat@gmail.com', 'Dhaka, Bangladesh', 5),
(9, 'rifat khan', 'rifat12', '12345689', '01866515460', 'rifat1@gmail.com', 'Dhaka, Bangladesh', 4),
(10, 'ass', 'rifat12', '1212', '121', 'rifat@gmail.com', 'Dhaka, Bangladesh', 4),
(11, 'aqib', 'Ihsan  Aqib', '123456', '01866515460', 'aqib@gmail.com', 'Dhaka, Bangladesh', 2),
(12, 'Rakib', 'Rakib Khan', '123456', '01866515460', 'rakib@gmail.com', 'Dhaka, Bangladesh', 2);

-- --------------------------------------------------------

--
-- Table structure for table `decoratorstoken`
--

CREATE TABLE `decoratorstoken` (
  `id` int(11) NOT NULL,
  `userid` int(20) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `houseowners`
--

CREATE TABLE `houseowners` (
  `h_id` int(11) NOT NULL,
  `h_uname` varchar(20) NOT NULL,
  `h_name` varchar(20) NOT NULL,
  `h_password` varchar(20) NOT NULL,
  `h_phone` varchar(20) NOT NULL,
  `h_email` varchar(20) NOT NULL,
  `h_dob` varchar(20) NOT NULL,
  `h_gender` varchar(20) NOT NULL,
  `h_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `houseowners`
--

INSERT INTO `houseowners` (`h_id`, `h_uname`, `h_name`, `h_password`, `h_phone`, `h_email`, `h_dob`, `h_gender`, `h_address`) VALUES
(1, 'ho_abid', 'ragib', 'abid@1998', '01811111111', 'abid@email.com', '23/12/2000', 'Male', 'Somewhere'),
(3, 'ho_sadguy', 'sadguy', 'sadguy', '000000000000', 'sadguy@email.com', '29/02/2000', 'sad', 'sadplanet');

-- --------------------------------------------------------

--
-- Table structure for table `houseownerstoken`
--

CREATE TABLE `houseownerstoken` (
  `id` int(11) NOT NULL,
  `userid` int(20) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

CREATE TABLE `moderator` (
  `m_id` int(11) NOT NULL,
  `m_uname` varchar(20) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `m_password` varchar(20) NOT NULL,
  `m_phone` varchar(20) NOT NULL,
  `m_email` varchar(20) NOT NULL,
  `m_dob` varchar(20) NOT NULL,
  `m_gender` varchar(20) NOT NULL,
  `m_address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moderator`
--

INSERT INTO `moderator` (`m_id`, `m_uname`, `m_name`, `m_password`, `m_phone`, `m_email`, `m_dob`, `m_gender`, `m_address`) VALUES
(1, 'aaaaa', 'UTCHAS', '123456', '12345678901', 'utchas@gmail.com', '2021-10-10', 'male', 'dhaka'),
(2, 'aaaaa', 'aaaa', '123456', '12345678901', 'utchas1@gmail.com', '2021-10-10', 'male', 'dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `moderatorapprovallist`
--

CREATE TABLE `moderatorapprovallist` (
  `ma_id` int(11) NOT NULL,
  `ma_uname` varchar(20) NOT NULL,
  `ma_name` varchar(20) NOT NULL,
  `ma_password` varchar(20) NOT NULL,
  `ma_phone` varchar(20) NOT NULL,
  `ma_email` varchar(50) NOT NULL,
  `ma_dob` varchar(20) NOT NULL,
  `ma_gender` varchar(20) NOT NULL,
  `ma_address` varchar(50) NOT NULL,
  `ma_reason` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moderatorapprovallist`
--

INSERT INTO `moderatorapprovallist` (`ma_id`, `ma_uname`, `ma_name`, `ma_password`, `ma_phone`, `ma_email`, `ma_dob`, `ma_gender`, `ma_address`, `ma_reason`) VALUES
(8, 'rakib1234', 'rakib khan', '12345677', '01866515460', 'rakib1@gmail.com', '2021-12-21', 'male', 'dkaka', 'interested'),
(9, 'aqib', 'aqib dd', '1234567', '123456789', 'aqib@gmail.com', '2001-10-10', 'male', 'tangail', 'no reson'),
(10, 'aqib1', 'aqib dd', '1234567', '123456789', 'aqib1@gmail.com', '2001-10-10', 'male', 'tangail', 'no reson'),
(11, 'sgsgsgg', 'gsgdgggg', 'gggxvvgvfv', '123451', 'fz@gmail.com', '2021-12-02', 'female', 'fzffzf', 'zzffzdzfd'),
(12, 'sdsdf', 'fdsadf', 'sfdafsa', '1234321', 'sfad@gmail.com', '2021-12-22', 'female', 'sfdsddf', 'sdfdsdf'),
(13, 'fafafa', 'sfsfa', 'afaffsa', '11111', 'ggdgff@gmail.com', '2021-12-15', 'male', 'fadfdf', 'fsfdfdf'),
(14, 'ddassd', 'adadssa', '112q21', '1223343434', 'dsknf@gmail.com', '2021-12-25', 'male', 'adsf', 'afsfs');

-- --------------------------------------------------------

--
-- Table structure for table `moderatortoken`
--

CREATE TABLE `moderatortoken` (
  `id` int(11) NOT NULL,
  `userid` int(20) NOT NULL,
  `token` varchar(64) NOT NULL,
  `created_at` datetime NOT NULL,
  `expired_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `moderatortoken`
--

INSERT INTO `moderatortoken` (`id`, `userid`, `token`, `created_at`, `expired_at`) VALUES
(114, 1, 'VuMclsYc1ItYAkwFxk6TGsa3wvztHIPxv8jAn6mTV7RuhHuC3pzYKKlHyQe2oQyC', '2021-12-18 14:13:21', '2021-12-18 14:13:33'),
(115, 1, 'pYQOW1g6X5JFZjxjCtpsHolBi1pYKXTMu8Xzl4tJUadEywyNWghwfpHdBx2b1Q2d', '2021-12-18 14:21:29', '2021-12-18 14:21:53'),
(116, 1, 'd0mZp1px8Wmvl4VHuUpGVVEICiM8JgUeqvE7dee3KkS4SlH4wu97TFTFkwHcnERu', '2021-12-18 14:30:20', '2021-12-18 14:30:23'),
(117, 1, 'pooYH3uunOK3jjg851BSRuILwLGZlrh0nkIfstjcO7532SCFssGMv9GkiB88wdEA', '2021-12-18 14:47:56', NULL),
(118, 1, 'oKOhIOwSKZJdfoJW5EK72wA8mz6Wb7FpdfnxRcvwyABhhFX5K5HiMHfppfuFaz9J', '2021-12-18 14:49:13', NULL),
(119, 1, '815ZCNLAmMQE5Y5DUSLfkhmPC1GS6rbytaAMUTcJC6o9V4MEDTAYmAHRyGmmlQ5W', '2021-12-18 14:49:56', '2021-12-18 14:50:02'),
(120, 1, 'ophiRXmMjixPHPp5bjkTE0HW2eOgpwtUVB0DuGROtZmwi7b7vstIjZni74BdybhC', '2021-12-18 14:50:31', '2021-12-18 14:51:32'),
(121, 1, 'OBH3Bk23B1uuUEJwIvC3ZdXEr9E5q8J03uWCchESPCnvpALWrMOF43b8DfyezmWJ', '2021-12-18 14:54:06', '2021-12-18 15:50:08'),
(122, 1, 'WZwYOdmwp3vifTFnJYktDR8bnigMb4HvuYPcwlzuC3zsxYsSCPsKxZjuQYNIl1ES', '2021-12-18 15:05:10', NULL),
(123, 1, 'gRz36l8fJA7ZzJ8O6PKsuRo9MqW4tRHvcvTTyuDV1B5Yxd8eNX7hf9fxK8Ts1jwO', '2021-12-18 15:13:36', '2021-12-18 15:13:43'),
(124, 1, 'm0vPrSORcWEJC1H6WAOOMKr35TJlzs7mBLcZrny5YhKUCGvuTp2ALpNxulCGzE7b', '2021-12-18 15:13:56', '2021-12-18 15:46:46'),
(125, 1, 'tOGfoDdQDIUym6KckXJ5S1MUOZLI2RNNWqbh8pkus5fmRVYYAA6M1oSdoLpgUUdg', '2021-12-18 16:07:31', '2021-12-18 16:26:35'),
(126, 1, 'DIHYAIZTid7TbapUEAtKDfVYL0Al3I4nPnRivXJxyglotDPMAEcoP5briP8QEnG4', '2021-12-18 16:41:06', '2021-12-18 16:42:14'),
(127, 1, 'G2U5bAHQ4DIXba9H6qgu9Ou1npWT1zmBC8EgaL6aF9Y3VC2AO2BRSJRu7SBNLC8E', '2021-12-18 17:26:36', NULL),
(128, 1, 'SGoI8Edlt4nFSR45lNWMTtPN0xrrsPsFjvEIJSxj1KW2b5nLAl7LDhrVzKrBOf7g', '2021-12-19 02:08:37', NULL),
(129, 1, 'hIupdbobRW7O9zaugRuMGDlEbfA0ailUxZoVzZdEdx58LZm4x377hV0Sxbu2TlBm', '2021-12-19 02:28:41', '2021-12-19 03:00:32'),
(130, 1, 'CspJAIH06Kimkiq5B2tJmeNLGMqJky6i7syFtKXJHXbykmkZVJQcEIIbjK0VUwZk', '2021-12-19 03:00:45', '2021-12-19 03:00:54'),
(131, 1, 'RxMR6UWdSzCNd0Bn5ayWQbW2EkxUfLcN6nygd0mqU7g4xbHAVNXF0CIMBn3Zs0yq', '2021-12-19 03:01:21', '2021-12-19 03:02:11'),
(132, 1, 'uE0IfT9ITE5jlbGdWhfaE7jE3BLIlugBhFrnGA1MbyY1izPbN5CFGtgJi63Al1mI', '2021-12-19 03:02:27', '2021-12-19 03:16:59'),
(133, 1, 'gc4GDVwsProIiaVogsQP1XMkQ5whuvsLwn1dL0PMieujuQ82dyoxypzaArZ8RftG', '2021-12-19 03:18:22', '2021-12-19 04:02:14'),
(134, 1, 'gJX6eI8haDSgf2rHza4FYVo97AJHALedXYXBAP3W6tnpZdSlYnec5hVmO1p42yAO', '2021-12-19 04:18:20', '2021-12-19 04:18:34'),
(135, 1, 'h5YFxLwf0vRUqXtvPbcXC7vKBeCrYC21mOfr1xYCRY4TZ0plFYdQws8wjOoWitr1', '2021-12-19 04:43:16', '2021-12-19 04:43:58'),
(136, 1, 'UbCy3aNoze7r4PdZ6kn3ViKfnNpMDebcm5M5he67RnwB15e1Vdbd2DrtC57qMqCb', '2021-12-19 04:46:48', '2021-12-19 04:51:24'),
(137, 1, '79wMFujQwzUopMGYqKijheiHVt4nPrj6XIg2YEAiLBtDpIVqqxt92bgPej2VcDIu', '2021-12-19 04:59:41', '2021-12-19 05:01:41'),
(138, 1, 'OECBWtq7wDdjADEitYu4Q4uAz5Zy2se31Y7QLbGwyM78j78W1FkRr6ksjclOZw48', '2021-12-19 05:04:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `o_id` int(11) NOT NULL,
  `o_name` varchar(20) NOT NULL,
  `o_type` varchar(20) NOT NULL,
  `o_description` varchar(1000) NOT NULL,
  `o_price` varchar(20) NOT NULL,
  `o_ordered_by` int(20) NOT NULL,
  `o_posted_by` int(20) NOT NULL,
  `o_posted_byname` varchar(20) NOT NULL,
  `o_image` varchar(255) DEFAULT NULL,
  `o_time` datetime NOT NULL,
  `o_updatetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orderlist`
--

INSERT INTO `orderlist` (`o_id`, `o_name`, `o_type`, `o_description`, `o_price`, `o_ordered_by`, `o_posted_by`, `o_posted_byname`, `o_image`, `o_time`, `o_updatetime`) VALUES
(2, 'BOHEMIAN', 'Vintage', 'Bohemian is a popular style for home design and fashion. It reflects a carefree lifestyle with little rules, except to follow your hearts desire.\r\n\r\nBohemian homes may include vintage furniture and light fixtures, globally inspired textiles and rugs, displays of collections, and items found in widely varied sources including flea markets and during one’s travels.\r\n\r\nIt’s not uncommon to spot floor pillows and comfortable seating spaces when incorporating the bohemian style. This eclectic style can incorporate an ultra-glam chandelier paired with a well-worn rug and a mid-century chair. Within the Bohemian style, there’s a laissez-faire attitude where anything goes as long as you love it.', '600000', 1, 1, 'd_abid', NULL, '2021-11-01 09:47:09', '2021-11-01 09:47:09'),
(3, 'CONTEMPORARY', 'Modern', 'Modern and contemporary are two styles frequently used interchangeably. Contemporary is different from modern because it describes design based on the here and now.\n\nThe primary difference separating modern and contemporary design style is that modern is a strict interpretation of design that started in the 20th century. Contemporary on the other hand, is more fluid and can represent a sense of currency with less adherence to one particular style. For example, contemporary style may include curving lines, whereas modern design does not. You can refer to modern vs contemporary article for more information.', '700000', 3, 1, 'd_abid', NULL, '2021-11-01 09:48:03', '2021-11-01 09:48:03'),
(4, 'RUSTIC', 'Natural', 'Rustic design is drawn from natural inspiration, using raw and often unfinished elements including wood and stone.\n\nRustic design may incorporate accessories from the outdoors with warmth emulating from the design and architectural details that may include features like vaulted ceilings adorned with wood beams or reclaimed wood floors.\n\nMany designs now integrate rustic design with more modern furnishings and accessories.', '50000', 3, 1, 'd_abid', NULL, '2021-11-01 09:48:52', '2021-11-01 09:48:52'),
(5, 'SHABBY CHIC', 'Vintage', 'Shabby chic is vintage-inspired style, but compared to Bohemian and other styles, tends to be more feminine, soft and delicate.\n\nShabby chic furnishings are often either distressed or appear that way; paint tends to have antique-style finishes. The Shabby Chic colour palettes include white, cream and pastels. Light light fixture and wall hangings may be ornate and continue the feminine vibe of shabby chic design.', '100000', 1, 2, 'd_ayesha', NULL, '2021-11-01 09:49:30', '2021-11-01 09:49:30'),
(6, 'TRADITIONAL', 'Natural', 'Traditional design style offers classic details, sumptuous furnishings, and an abundance of accessories. It is rooted in European sensibilities.\r\n\r\nTraditional homes often feature dark, finished wood, rich colour palettes, and a variety of textures and curved lines. Furnishings have elaborate and ornate details and fabrics, like velvet, silk and brocade, which may include a variety of patterns and textures.\r\n\r\nThere’s depth, layering and dimensionality within most traditional designs.', '50000', 1, 2, 'd_ayesha', NULL, '2021-11-01 09:50:20', '2021-11-01 09:50:20'),
(7, 'TRANSITIONAL', 'Vintage', 'Transitional is a very popular style because it borrows from both traditional and modern design to facilitate a space that’s not “too much,” in terms of one style or another. There’s a sense of balance that’s appealing and unexpected.\r\n\r\nA transitional design may incorporate modern materials, such as steel and glass, and then unite them with plush furnishings.\r\n\r\nTransitional design also includes relatively neutral colour palettes, creating a calming and relaxed space that manages to feel both stylish and sleek, as well as warm and inviting.\r\n', '200000', 3, 2, 'd_ayesha', NULL, '2021-11-01 09:51:03', '2021-11-01 09:51:03');

-- --------------------------------------------------------

--
-- Table structure for table `refundrequest`
--

CREATE TABLE `refundrequest` (
  `r_id` int(11) NOT NULL,
  `r_from` int(30) NOT NULL,
  `r_to` int(30) NOT NULL,
  `r_addname` varchar(30) NOT NULL,
  `r_addprice` varchar(30) NOT NULL,
  `r_addtype` varchar(30) NOT NULL,
  `r_adddescription` varchar(500) NOT NULL,
  `r_reason` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `refundrequest`
--

INSERT INTO `refundrequest` (`r_id`, `r_from`, `r_to`, `r_addname`, `r_addprice`, `r_addtype`, `r_adddescription`, `r_reason`) VALUES
(8, 1, 2, 'RUSTIC', '1000000', 'Natural', 'Shabby chic furnishings are often either distressed or appear that way; paint tends to have antique-style finishes. The Shabby Chic colour palettes include white, cream and pastels. Light light fixture and wall hangings may be ornate and continue the feminine vibe of shabby chic design.', 'Bad work.');

-- --------------------------------------------------------

--
-- Table structure for table `rejectedorderlist`
--

CREATE TABLE `rejectedorderlist` (
  `o_id` int(11) NOT NULL,
  `o_name` varchar(20) NOT NULL,
  `o_type` varchar(20) NOT NULL,
  `o_description` varchar(1000) NOT NULL,
  `o_price` varchar(20) NOT NULL,
  `o_ordered_by` int(20) DEFAULT NULL,
  `o_posted_by` int(20) DEFAULT NULL,
  `o_image` varchar(100) DEFAULT NULL,
  `o_time` datetime DEFAULT NULL,
  `o_updatetime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rejectedorderlist`
--

INSERT INTO `rejectedorderlist` (`o_id`, `o_name`, `o_type`, `o_description`, `o_price`, `o_ordered_by`, `o_posted_by`, `o_image`, `o_time`, `o_updatetime`) VALUES
(1, 'test', 'test', 'test', '1230', 1, 2, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rejectedrefundrequest`
--

CREATE TABLE `rejectedrefundrequest` (
  `r_id` int(11) NOT NULL,
  `r_from` int(30) NOT NULL,
  `r_to` int(30) NOT NULL,
  `r_addname` varchar(30) NOT NULL,
  `r_addprice` varchar(30) NOT NULL,
  `r_addtype` varchar(30) NOT NULL,
  `r_adddescription` varchar(500) NOT NULL,
  `r_reason` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rejectedrefundrequest`
--

INSERT INTO `rejectedrefundrequest` (`r_id`, `r_from`, `r_to`, `r_addname`, `r_addprice`, `r_addtype`, `r_adddescription`, `r_reason`) VALUES
(1, 1, 2, 'ds', '100', 'fhdh', 'hdffffffffffffffffffffff', 'dhffffffffffffff'),
(9, 1, 11, '11', '111', '111', '111', '11fdfafcw'),
(10, 1, 3, 'rakib', '100', 'no type', 'no description', 'no reason'),
(11, 1, 5, '', '1000000', 'Natural', 'Shabby chic is vintage-inspired style, but compared to Bohemian and other styles, tends to be more feminine, soft and delicate.\r\n\r\nShabby chic furnishings are often either distressed or appear that way; paint tends to have antique-style finishes. The Shabby Chic colour palettes include white, cream and pastels. Light light fixture and wall hangings may be ornate and continue the feminine vibe of shabby chic design.', 'Not Good At All');

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE `report` (
  `rp_id` int(11) NOT NULL,
  `rp_description` varchar(30) NOT NULL,
  `rp_submittedby` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wantedpost`
--

CREATE TABLE `wantedpost` (
  `wp_id` int(11) NOT NULL,
  `wp_type` varchar(20) NOT NULL,
  `wp_budget` varchar(20) NOT NULL,
  `wp_description` varchar(500) NOT NULL,
  `wp_posted_by` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wantedpost`
--

INSERT INTO `wantedpost` (`wp_id`, `wp_type`, `wp_budget`, `wp_description`, `wp_posted_by`) VALUES
(3, 'natutal', '10000', 'nural decoration', 3),
(4, 'natural', '1223', 'nural decoration', 3),
(5, 'natural', '111122', 'nural decoration', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acceptedorderlist`
--
ALTER TABLE `acceptedorderlist`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `acceptedrefundrequest`
--
ALTER TABLE `acceptedrefundrequest`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `adds`
--
ALTER TABLE `adds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_post` (`posted_by`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `admintoken`
--
ALTER TABLE `admintoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `decoapprovallist`
--
ALTER TABLE `decoapprovallist`
  ADD PRIMARY KEY (`dapp_id`);

--
-- Indexes for table `decorators`
--
ALTER TABLE `decorators`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `decoratorstoken`
--
ALTER TABLE `decoratorstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `houseowners`
--
ALTER TABLE `houseowners`
  ADD PRIMARY KEY (`h_id`);

--
-- Indexes for table `houseownerstoken`
--
ALTER TABLE `houseownerstoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moderator`
--
ALTER TABLE `moderator`
  ADD PRIMARY KEY (`m_id`);

--
-- Indexes for table `moderatorapprovallist`
--
ALTER TABLE `moderatorapprovallist`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `moderatortoken`
--
ALTER TABLE `moderatortoken`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `add_order` (`o_ordered_by`),
  ADD KEY `add_posted` (`o_posted_by`);

--
-- Indexes for table `refundrequest`
--
ALTER TABLE `refundrequest`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `rejectedorderlist`
--
ALTER TABLE `rejectedorderlist`
  ADD PRIMARY KEY (`o_id`),
  ADD KEY `reject_order` (`o_ordered_by`),
  ADD KEY `reject_posted` (`o_posted_by`);

--
-- Indexes for table `rejectedrefundrequest`
--
ALTER TABLE `rejectedrefundrequest`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `report`
--
ALTER TABLE `report`
  ADD PRIMARY KEY (`rp_id`),
  ADD KEY `submittedby` (`rp_submittedby`);

--
-- Indexes for table `wantedpost`
--
ALTER TABLE `wantedpost`
  ADD PRIMARY KEY (`wp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acceptedorderlist`
--
ALTER TABLE `acceptedorderlist`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `acceptedrefundrequest`
--
ALTER TABLE `acceptedrefundrequest`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `adds`
--
ALTER TABLE `adds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `a_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admintoken`
--
ALTER TABLE `admintoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `decoapprovallist`
--
ALTER TABLE `decoapprovallist`
  MODIFY `dapp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `decorators`
--
ALTER TABLE `decorators`
  MODIFY `d_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `decoratorstoken`
--
ALTER TABLE `decoratorstoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houseowners`
--
ALTER TABLE `houseowners`
  MODIFY `h_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `houseownerstoken`
--
ALTER TABLE `houseownerstoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `moderator`
--
ALTER TABLE `moderator`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `moderatorapprovallist`
--
ALTER TABLE `moderatorapprovallist`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `moderatortoken`
--
ALTER TABLE `moderatortoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT for table `orderlist`
--
ALTER TABLE `orderlist`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `refundrequest`
--
ALTER TABLE `refundrequest`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rejectedorderlist`
--
ALTER TABLE `rejectedorderlist`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rejectedrefundrequest`
--
ALTER TABLE `rejectedrefundrequest`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `report`
--
ALTER TABLE `report`
  MODIFY `rp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wantedpost`
--
ALTER TABLE `wantedpost`
  MODIFY `wp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adds`
--
ALTER TABLE `adds`
  ADD CONSTRAINT `add_post` FOREIGN KEY (`posted_by`) REFERENCES `decorators` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD CONSTRAINT `add_order` FOREIGN KEY (`o_ordered_by`) REFERENCES `houseowners` (`h_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `add_posted` FOREIGN KEY (`o_posted_by`) REFERENCES `decorators` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rejectedorderlist`
--
ALTER TABLE `rejectedorderlist`
  ADD CONSTRAINT `reject_order` FOREIGN KEY (`o_ordered_by`) REFERENCES `houseowners` (`h_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reject_posted` FOREIGN KEY (`o_posted_by`) REFERENCES `decorators` (`d_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `report`
--
ALTER TABLE `report`
  ADD CONSTRAINT `submittedby` FOREIGN KEY (`rp_submittedby`) REFERENCES `houseowners` (`h_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
