-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 29, 2020 at 11:13 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vegilk_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `advertisement`
--

CREATE TABLE `advertisement` (
  `Ad_Id` int(11) NOT NULL,
  `Supplier_Id` int(11) NOT NULL,
  `Cat_Id` int(11) NOT NULL,
  `Sub_Cat_id` int(11) NOT NULL,
  `Type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Unit_Price` float NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Units` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Selling_place` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Expiration_date` datetime NOT NULL,
  `Ad_Date` datetime NOT NULL,
  `Adver_Status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement`
--

INSERT INTO `advertisement` (`Ad_Id`, `Supplier_Id`, `Cat_Id`, `Sub_Cat_id`, `Type`, `Unit_Price`, `Quantity`, `Units`, `Selling_place`, `Expiration_date`, `Ad_Date`, `Adver_Status`) VALUES
(47, 15, 1, 2, 'මෙම ක්‍රමය', 23, 120, 'Kg', 'ඹෂ සහ වීඩියෝ', '2020-10-14 11:28:59', '2019-11-15 11:28:59', '0'),
(48, 15, 2, 24, 'කර්තකොලම්බු', 80, 120, 'වෙනත්', 'මෙම මැතිවරණ කොට්ඨාශය', '2019-12-16 12:13:01', '2019-11-15 12:13:01', '1'),
(49, 15, 2, 24, 'ෂෂක', 13.9, 200, 'වෙනත්', 'ළුවවන', '2020-01-16 12:21:55', '2019-11-15 12:21:55', '0'),
(63, 20, 1, 1, 'දිගු බොංචි', 85.5, 200, 'Kg', 'වෙළඳ පොළ', '2019-12-20 11:30:55', '2019-11-19 11:30:55', '1'),
(64, 16, 1, 4, 'බීට්රූට් පහත රට', 36.5, 200, 'Kg', 'Market eke', '2019-12-16 12:40:28', '2019-11-19 12:40:28', '1'),
(66, 23, 2, 26, 'deniyaaye ewa', 180, 99, 'Kg', 'homework', '2019-12-28 14:37:27', '2019-11-22 14:37:27', '1'),
(68, 20, 1, 8, 'Rata Gowaaaa', 32, 450, 'Kg', 'market', '2019-12-25 21:24:05', '2019-11-25 09:50:18', '1'),
(69, 27, 1, 1, 'දිගු බොංචි 123', 23, 151, 'Kg', 'market', '2020-01-28 11:35:12', '2019-11-29 11:31:46', '1'),
(70, 29, 2, 26, '3', 150, 2000, 'Kg', 'tapili mulla', '2020-01-05 10:59:25', '2019-12-05 10:59:25', '1'),
(94, 20, 1, 7, 'y', 25, 200, 'Kg', 'ff', '2019-12-25 14:53:43', '2019-12-25 14:53:43', '1'),
(96, 20, 2, 27, 'y', 25, 255, 'Kg', 'g', '2019-12-25 14:56:16', '2019-12-25 14:56:16', '1'),
(97, 20, 2, 24, 'tt', 36, 500, 'Kg', 'guys are doing well', '2020-03-28 14:58:54', '2019-12-25 14:58:54', '1'),
(102, 20, 1, 3, 'f', 5, 55, 'Kg', 'vh', '2019-12-25 15:37:36', '2019-12-25 15:37:36', '1'),
(109, 20, 2, 25, 'hr', 25, 500, 'Kg', 'ddbs ushs', '2019-12-25 16:09:27', '2019-12-25 16:09:27', '1'),
(110, 30, 2, 25, 'niyama ewa', 12, 580, 'Kg', 'gedara', '2020-01-25 16:15:38', '2019-12-25 16:15:38', '1'),
(113, 30, 2, 26, 'pahath bim', 188.5, 280, 'Kg', 'Market', '2020-03-03 06:47:22', '2019-12-26 06:47:22', '1'),
(114, 30, 2, 29, 'dodam ', 45, 200, 'Kg', 'because of the', '2019-12-31 14:58:07', '2019-12-31 14:58:07', '1'),
(115, 32, 1, 6, 'යාපන', 250, 2100, 'Kg', 'බොරැල්ල', '2021-03-02 21:17:51', '2020-01-02 21:17:51', '0'),
(116, 33, 1, 12, 'ලන්කා', 300, 4000, 'Kg', 'පහලළිද', '2021-03-08 21:24:09', '2020-01-02 21:24:09', '0'),
(117, 33, 1, 14, 'කහ', 140, 500, 'Kg', 'මලිතන', '2021-02-26 21:26:49', '2020-01-02 21:26:49', '0'),
(118, 20, 11, 109, 'kelawallaa 2', 400, 250, 'Kg', 'maaalu market', '2020-02-09 11:07:22', '2020-01-08 11:07:22', '1');

-- --------------------------------------------------------

--
-- Table structure for table `advertisement_images`
--

CREATE TABLE `advertisement_images` (
  `Img_Auto_ID` int(11) NOT NULL,
  `Ad_Id` int(11) NOT NULL,
  `Image_ID` int(11) NOT NULL,
  `Image_Url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `advertisement_images`
--

INSERT INTO `advertisement_images` (`Img_Auto_ID`, `Ad_Id`, `Image_ID`, `Image_Url`) VALUES
(43, 47, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_47_5dce3ea489922.jpg'),
(44, 47, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_47_5dce3ea4899f4.jpg'),
(45, 47, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_47_5dce3ea489a84.jpg'),
(46, 48, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_48_5dce48f61146a.jpg'),
(47, 48, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_48_5dce48f611547.jpg'),
(48, 48, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_48_5dce48f611728.jpg'),
(49, 49, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_49_5dce4b0ca2db7.jpg'),
(50, 49, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_49_5dce4b0ca2e76.jpg'),
(51, 49, 15, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/15_49_5dce4b0ca3073.jpg'),
(76, 63, 20, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/20_63_5dd385184813a.jpg'),
(77, 63, 20, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/20_63_5dd3851848214.jpg'),
(78, 63, 20, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/20_63_5dd385184829c.jpg'),
(79, 64, 16, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/16_64_5dd3956438026.jpg'),
(80, 64, 16, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/16_64_5dd3956438094.jpg'),
(81, 64, 16, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/16_64_5dd39564380e2.jpg'),
(83, 66, 23, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/23_66_5dd7a54f98bae.jpg'),
(84, 66, 23, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/23_66_5dd7a54f98c78.jpg'),
(86, 68, 20, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/20_68_5ddb56824f1a9.jpg'),
(87, 69, 27, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/27_69_5de0b44be966c.jpg'),
(88, 69, 27, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/27_69_5de0b44bee064.jpg'),
(89, 69, 27, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/27_69_5de0b44bee155.jpg'),
(90, 70, 29, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/29_70_5de895b776211.jpg'),
(91, 70, 29, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/29_70_5de895b776313.jpg'),
(92, 70, 29, 'http://192.248.85.22/supiripola/mobileappfiles/adingAdverticment/adverphotos/29_70_5de895b7763b1.jpg'),
(136, 97, 20, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/20_97_5e032bdce3d6d.jpg'),
(137, 102, 20, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/20_102_5e0334ea53cb9.jpg'),
(142, 109, 20, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/20_109_5e033c63a3267.jpg'),
(143, 109, 20, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/20_109_5e033c63a34c1.jpg'),
(144, 110, 30, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/30_110_5e033dd744db7.jpg'),
(145, 110, 30, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/30_110_5e033dd7453df.jpg'),
(146, 110, 30, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/30_110_5e033dd74558e.jpg'),
(152, 113, 30, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/30_113_5e040a240b6fa.jpg'),
(153, 114, 30, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/30_114_5e0b14aa625cd.jpg'),
(154, 114, 30, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/30_114_5e0b14aa62877.jpg'),
(155, 115, 32, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/32_115_5e0e10aa308a4.jpg'),
(156, 116, 33, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/33_116_5e0e12253ed67.jpg'),
(157, 116, 33, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/33_116_5e0e12253ef18.jpg'),
(158, 117, 33, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/33_117_5e0e12c3b2a04.jpg'),
(159, 118, 20, 'http://vegi.lk/admin/mobileappfiles/adingAdverticment/adverphotos/20_118_5e156a93592c6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `agri_center`
--

CREATE TABLE `agri_center` (
  `Center_ID` int(11) NOT NULL,
  `Name` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `District_id` int(11) NOT NULL,
  `Contact_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agri_center`
--

INSERT INTO `agri_center` (`Center_ID`, `Name`, `District_id`, `Contact_No`) VALUES
(1, 'හෝමාගම', 1, 112457845),
(2, 'කහතුඩුව', 1, 112457845),
(3, 'කැස්බෑව', 1, 112457845),
(4, 'කොළොන්නාව', 1, 112457845),
(5, 'අගලවත්ත', 8, 112548798),
(9, 'දොඩන්ගොඩ', 8, 112326545),
(10, 'හල්කඳවිල', 8, 112659878),
(11, 'ඉංගිරිය', 8, 112659878),
(12, 'ඉත්තපාන', 8, 112659875),
(13, 'කනන්විල', 8, 112659865),
(14, 'මදුරාවල', 8, 112659875),
(16, 'මොරන්තුඩුව', 8, 11659856),
(19, 'පමුනුගම - අළුබෝමුල්ල', 8, 113659875),
(20, 'පානදුර', 8, 114789621),
(21, 'පැලවත්ත', 8, 11369854),
(22, 'වලගෙදර', 8, 11478521),
(23, 'වරකාගොඩ', 8, 113659875),
(24, 'මතුගම', 8, 112659874),
(26, 'බදුරලිය', 8, 123),
(27, 'බණ්ඩාරගම', 8, 123),
(28, 'බුලත්සිංහල', 8, 123),
(29, 'දොඩන්ගොඩ', 8, 123),
(34, 'මිල්ලනිය', 8, 123),
(36, 'නාගොඩ', 8, 123),
(37, 'පාඩාගොඩ', 8, 123),
(40, 'බෙලිඅත්ත', 7, 1234),
(41, 'අගුණුකොලපැලැස්ස', 7, 1234),
(42, 'ලුනාව', 7, 1234),
(43, 'මෝදරවාන', 7, 1234),
(44, 'නෙටොල්පිටිය', 7, 1234),
(45, 'වීරකැටිය', 7, 1234),
(46, 'කටුවන', 7, 1234),
(47, 'වලස්මුල්ල', 7, 1234),
(48, 'උඩයාල', 7, 1234),
(49, 'මීගස්ආර', 7, 1234),
(50, 'අම්බලන්තොට', 7, 1234),
(51, 'මීගහජදුර', 7, 1234),
(52, 'බඳගිරිය', 7, 1234),
(53, 'බෙරලිහෙල', 7, 1234),
(54, 'යෝදකණ්ඩිය', 7, 1234),
(55, 'වීරවිල', 7, 1234),
(56, 'අහන්ගම', 5, 12345),
(57, 'අහුංගල්ල', 5, 12345),
(58, 'අලුත්වල', 5, 1234),
(59, 'අම්බලන්ගොඩ', 5, 12345),
(60, 'බැද්දේගම', 5, 12345),
(61, 'බටපොල', 5, 12345),
(62, 'ඇත්කඳුර', 5, 12345),
(63, 'ගෝනදෙණිය', 5, 12345),
(64, 'ගොන්ගාලේපුර', 5, 12345),
(65, 'කරංදෙණිය', 5, 12345),
(66, 'කෙරදේවෙල', 5, 12345),
(67, 'කෝදාගොඩ', 5, 12345),
(68, 'කොග්ගල', 5, 12345),
(69, 'ලබුදූව', 5, 12345),
(70, 'නාගොඩ', 5, 12345),
(71, 'නෙළුව', 5, 12345),
(72, 'ඕපාත', 5, 12345),
(73, 'පහලගම්හය', 5, 12345),
(74, 'පරගොඩ', 5, 12345),
(75, 'පිලන', 5, 12345),
(76, 'පිංකන්ද', 5, 12345),
(77, 'පිටිගල', 5, 12345),
(78, 'රත්ගම', 5, 12345),
(79, 'තවලම', 5, 12345),
(80, 'ඌරගස්මන්හන්දිය', 5, 12345),
(81, 'ඌරල', 5, 12345),
(82, 'වදුරඹ', 5, 12345),
(83, 'වලහන්දූව', 5, 12345),
(84, 'වේරගොඩ', 5, 12345),
(85, 'යක්කලමුල්ල', 5, 12345),
(86, 'නියාගම', 5, 12345),
(87, 'ඇල්පිටිය', 5, 112345),
(88, 'අම්බන/ පිනිකහන', 5, 12345),
(89, 'තුනුක්කායි', 21, 123456),
(90, 'පාණ්ඩියන්කුලම්', 21, 123456),
(91, 'ඕලුමඩු', 21, 123456),
(92, 'කොක්කුතුඩුවායි', 21, 123456),
(93, 'කුමුලමුනෙයි', 21, 123456),
(94, 'අලම්පිල්', 21, 123456),
(95, 'මුල්ලයාවලෙයි', 21, 123456),
(96, 'යටියාවල', 13, 12),
(97, 'පුතුකුඩුඉරිප්පු', 21, 123456),
(98, 'අඹන්වල', 13, 12),
(99, 'උඩයාර්කඩ්ඩු', 21, 123456),
(100, 'ඔඩ්ඩුසුඩාන් ', 21, 123456),
(101, 'අලපලාවල', 13, 12),
(102, 'හරංගල', 22, 123456),
(103, 'අලවතුගොඩ', 13, 12),
(104, 'කඳපොල', 22, 123456),
(105, 'කරල්ලියද්ද', 22, 123456),
(106, 'අළුදෙනිය', 13, 12),
(107, 'මල්දෙනිය', 22, 123456),
(108, 'අංකුඹුර', 13, 12),
(109, 'මුංවත්ත', 22, 123456),
(110, 'බටුගොඩ', 13, 12),
(111, 'පල්ලේ බෝවල', 22, 123456),
(112, 'බුළුගහපිටිය', 22, 123456),
(113, 'බෝවල', 13, 12),
(114, 'දඹගහපිටිය', 13, 12),
(115, 'දිගන', 13, 12),
(116, 'ඒදඬුවාව', 13, 12),
(117, 'ගලගෙදර', 13, 12),
(118, 'ගලහා', 13, 12),
(119, 'ගම්පොල', 13, 12),
(120, 'ගිරාගම', 13, 12),
(121, 'ගුන්නෑපාන', 13, 12),
(122, 'හතරලියද්ද', 13, 12),
(123, 'හුළුගඟ', 13, 12),
(124, 'ඉඹුල්දෙනිය', 13, 12),
(125, 'කළුන්තැන්න', 13, 12),
(126, 'තෙල්දෙණිය', 13, 12),
(127, 'කුරුදුවත්ත', 13, 12),
(128, 'කැටවල- ලෙව්ල', 13, 12),
(130, 'රූපහ', 22, 123456),
(131, 'මන්දාරම්පුර', 22, 123456),
(132, 'තෙරිපැහැ', 22, 123456),
(133, 'ගිනිගත්හේන ', 22, 123456),
(134, 'මාරස්සන', 13, 12),
(135, 'මැදමහනුවර', 13, 12),
(136, 'මැදවල', 13, 12),
(137, 'හෙල්බොඩ', 22, 123456),
(138, 'ලිඳුල ', 22, 123456),
(139, 'මැණික්දිවෙල', 13, 12),
(140, 'මතුරට', 22, 123456),
(141, 'නිල්දන්ඩාහින්න ', 22, 123456),
(142, 'මැණික්හින්න', 13, 12),
(143, 'මොරයාය', 13, 12),
(144, 'නුවරඑළිය', 22, 123456),
(145, 'නමදගල', 13, 12),
(146, 'පුඩළුඔය', 22, 123456),
(147, 'නුගේතැන්න', 13, 12),
(148, 'රාගල', 22, 123456),
(149, 'පෙතියාගොඩ', 13, 12),
(150, 'වලපනේ', 22, 123456),
(151, 'රඹුක්පිටිය', 13, 12),
(152, 'විදුලිපුර', 22, 123456),
(153, 'තලාතුඔය', 13, 12),
(154, 'හඟුරන්කෙත', 22, 123456),
(155, 'රිකිල්ලගස්කඩ', 22, 123456),
(156, 'තලවතුර', 13, 12),
(157, 'බකමූණ', 23, 123456),
(158, 'උඩිස්පත්තුව', 13, 12),
(159, 'උල්පතගම', 13, 12),
(160, 'ගල්අමුණ ', 23, 123456),
(161, 'වත්තේගම', 13, 12),
(162, 'වාවින්න', 13, 12),
(163, 'ගිරිතලේ', 23, 123456),
(164, 'වෙඬරුව', 13, 12),
(165, 'වෑවල', 13, 12),
(166, 'වැලිවිට', 13, 12),
(167, 'මැදපිටිය', 13, 12),
(168, 'හිඟුරක්ගොඩ', 23, 123456),
(169, 'නව නගරය', 23, 123456),
(170, 'දැල්පිටිය', 13, 12),
(171, 'පුලස්තිගම', 23, 123456),
(172, 'මුල්ගම', 13, 12),
(173, 'සේවාගම', 23, 123456),
(174, 'අඹේපුස්ස', 16, 14),
(175, 'අරනායක', 14, 14),
(176, '20/8 ඒ අඹගස්වැව', 23, 123456),
(177, 'බටුවත්ත', 14, 14),
(178, 'බැමිණිවත්ත', 14, 14),
(179, '20/2 බී වැලිකන්ද', 23, 123456),
(180, 'දැඩිගම', 14, 14),
(181, '20/2 සී අරලගන්විල', 23, 123456),
(182, '20/2 දිඹුලාගල', 23, 123456),
(184, 'මැදිරිගිරිය', 23, 123456),
(185, 'දැලිවල', 13, 14),
(186, '20/2 ඒ සිරිපුර', 23, 123456),
(187, 'දැරණියගල', 14, 14),
(188, 'ගලිගමුව', 14, 14),
(189, 'ආනමඬුව', 24, 1234567),
(190, 'හාල්දඬුවන', 24, 1234567),
(191, 'ඉඟිණිමිටිය', 24, 1234567),
(192, 'පුලියන්කුලම ඉහළ', 24, 1234567),
(193, 'මාදම්පේ', 24, 1234567),
(194, 'මදුරන්කුලිය', 24, 1234567),
(195, 'මහකුඹුක්කඩවල ', 24, 1234567),
(196, 'කුඩාවැව', 24, 1234567),
(197, 'මුන්නේශ්වරම්', 24, 1234567),
(198, 'නයිනමඩම', 24, 1234567),
(199, 'නාත්තන්ඩිය', 24, 1234567),
(200, 'පනාවල', 14, 14),
(201, 'රාජකදළුව', 24, 1234567),
(202, 'පරගම්මන', 14, 14),
(203, 'සේරුකැලේ ', 24, 1234567),
(204, 'වනාතවිල්ලුව', 24, 1234567),
(205, 'නවගත්තේගම', 24, 1234567),
(206, 'පාලකුඩා', 24, 1234567),
(207, 'තබ්බෝව', 24, 1234567),
(208, 'පුත්තලම', 24, 1234567),
(209, 'අම්බැවිල', 26, 12345678),
(210, 'අයගම', 26, 12345678),
(211, 'බඹරබොටුව ', 26, 12345678),
(212, 'දාමහන', 26, 12345678),
(213, 'දොඩම්පෙ', 26, 12345678),
(214, 'ඇහැලියගොඩ', 26, 12345678),
(215, 'ඇලපාත', 26, 12345678),
(216, 'ඇඹිලිපිටිය', 26, 12345678),
(217, 'ගිලිමලේ', 26, 12345678),
(218, 'ගොඩකවෙල', 26, 12345678),
(219, 'කහවත්ත', 26, 12345678),
(220, 'කලවාන', 26, 12345678),
(221, 'කල්තොට', 26, 12345678),
(222, 'පින්නවල', 14, 14),
(223, 'කිරිඇල්ල', 26, 12345678),
(224, 'රුවන්වැල්ල', 14, 14),
(225, 'කොලොන්න', 26, 12345678),
(226, 'කුරුවිට', 26, 12345678),
(227, 'උස්සාපිටිය', 14, 14),
(228, 'යටියන්තොට', 14, 14),
(229, 'මාරපන', 26, 12345678),
(230, 'නාමල් දෙණිය', 26, 12345678),
(231, 'පූනාකරි', 15, 15),
(232, 'පලෙයි', 15, 15),
(233, 'පුලියන් පූක්තනෙයි', 15, 15),
(234, 'පූනකරි', 15, 15),
(235, 'ඕපනායක', 26, 12345678),
(236, 'රාමනාදපුරම්', 15, 15),
(237, 'මුලංගාවිල්', 15, 15),
(238, 'පල්ලේබැද්ද', 26, 12345678),
(239, 'උරුතිරපුරම්', 15, 15),
(240, 'පඹහින්න', 26, 12345678),
(241, 'කිලිනොච්චිය', 15, 15),
(242, 'අක්කරායන්කුලම්', 15, 15),
(243, 'පනාමුර', 26, 12345678),
(244, 'අඹන්පොල', 16, 16),
(245, 'පැල්මඩුල්ල', 26, 12345678),
(246, 'අලව්ව', 16, 16),
(247, 'පොතුපිටිය', 26, 12345678),
(248, 'පදවි ශ්‍රී පුර', 27, 123456789),
(249, 'පුල්මුඩේ', 27, 123456789),
(251, 'රාස්සගල', 26, 12345678),
(252, 'ගෝමරන්කඩවල', 27, 123456789),
(254, 'රත්මලවින්න', 26, 12345678),
(255, 'කුච්චවේලි', 27, 123456789),
(256, 'රත්නපුර', 26, 12345678),
(257, 'මොරවැව', 27, 123456789),
(258, 'තිඹොල්කැටිය', 26, 12345678),
(259, 'නිලාවලී', 27, 123456789),
(260, 'වැලිගෙපොල', 26, 12345678),
(261, 'සාම්බල්තිව් ', 27, 123456789),
(262, 'කනගරායන් කුලම් ', 28, 1234567890),
(263, 'උප්පුවේලී', 27, 123456789),
(264, 'තම්පලගාමම්', 27, 123456789),
(265, 'නෙඩුන්කෙනී', 28, 1234567890),
(266, 'ඕමන්තෙයි', 28, 1234567890),
(267, 'මුල්ලිපතාන', 27, 123456789),
(269, 'පන්පෙයිමඩු', 28, 1234567890),
(270, 'කුරුන්වන්කර්නි', 27, 123456789),
(271, 'කෝවිල් කුලම්', 28, 1234567890),
(272, 'මඩුකණ්ඩ', 28, 1234567890),
(273, 'කන්තලේ ', 27, 123456789),
(275, 'චෙඩ්ඩිකුලම් ', 28, 1234567890),
(276, 'සාම්පූර්', 27, 123456789),
(277, 'උලුුකුලම් ', 28, 1234567890),
(278, 'මුතූර්', 27, 123456789),
(279, 'කිලිවෙඩ්ඩි ', 27, 123456789),
(280, 'තෝප්පූර්', 27, 123456789),
(281, 'මුන්නම්පොඩිවෙද්දයි', 27, 123456789),
(282, 'සේරුනුවර', 27, 123456789),
(283, 'වාන්ඇල', 27, 123456789),
(284, 'අග්බෝපුර', 27, 123456789),
(285, 'ඊච්චලම්පන්තෙයි ', 27, 123456789),
(286, 'කින්නියා', 27, 123456789),
(287, 'අවුලේගම', 16, 16),
(288, 'බිංගිරිය', 16, 16),
(289, 'බෝයගනේ', 16, 16),
(290, 'දඹදෙණිය', 16, 16),
(291, 'දීගල්ල', 16, 16),
(292, 'දිවුල්ලෑගොඩ', 16, 16),
(293, 'දොඩම්ගස්ලන්ද', 16, 16),
(294, 'දුම්මලසූරිය', 16, 16),
(295, 'ඇහැටුවැව', 16, 16),
(296, 'ගල්ගමුව', 16, 16),
(297, 'ගනේවත්ත', 16, 16),
(298, 'හමන්ගල්ල', 16, 16),
(299, 'හොරොම්බාව', 16, 16),
(300, 'ඉබ්බාගමුව', 16, 16),
(301, 'කනෝගම', 16, 16),
(302, 'කරදගොල්ල', 16, 16),
(303, 'කිතලව', 16, 16),
(304, 'කොබෙයිගනේ', 16, 16),
(305, 'කොටවෙහෙර', 16, 16),
(306, 'කුඹුක්ගැටේ', 16, 16),
(307, 'කුඩාගල්ගමුව', 16, 16),
(308, 'නිවිතිගල', 26, 1234567),
(309, 'කුලියාපිටිය', 16, 16),
(310, 'වැලිගෙපොල', 26, 1234567),
(311, 'කුරුණෑගල', 16, 16),
(312, 'මඩහපොල', 16, 16),
(313, 'මහගිරිල්ල', 16, 16),
(314, 'මහානාන්නේරිය', 16, 16),
(315, 'මහරච්චිමුල්ල', 16, 16),
(316, 'මහව', 16, 16),
(317, 'මැල්සිරිපුර', 16, 16),
(318, 'මාවතගම', 16, 16),
(319, 'මොරගොල්ලාගම', 16, 16),
(320, 'මූනමල්දෙණිය', 16, 16),
(321, 'නාගොල්ලාගම', 16, 16),
(322, 'නාරම්මල', 16, 16),
(323, 'නාථගනේ', 16, 16),
(324, 'නිකවැරටිය', 16, 16),
(325, 'පඬුවස්නුවර', 16, 16),
(326, 'පොල්ගහවෙල', 16, 16),
(327, 'යක්විල', 16, 16),
(328, 'වේරවැල්ල', 16, 16),
(329, 'වෙල්පල්ල', 16, 16),
(330, 'වැල්ලව', 16, 16),
(331, 'ආඩියාගල', 11, 123),
(332, 'ඇලයාපත්තුව', 11, 123),
(333, 'ඉපලෝගම', 11, 123),
(334, 'එප්පාවල', 11, 123),
(335, 'ඇතාකඩ', 11, 123),
(336, 'ගලෙන්බිඳුණු වැව', 11, 123),
(337, 'ගම්බිරිගස් වැව', 11, 123),
(338, 'හොරොව්පතාන', 11, 123),
(339, 'කහටගස්දිගිලිය', 11, 123),
(340, 'කල්ලංචිය', 11, 123),
(341, 'කපුගොල්ලෑව', 11, 123),
(342, 'කටියාව', 11, 123),
(343, 'කැබතිගොල්ලෑව', 11, 123),
(344, 'කෝන්වැව', 11, 123),
(345, 'මඩාටුගම', 11, 123),
(346, 'මරදන්කඩවල', 11, 123),
(347, 'මැදවච්චිය', 11, 123),
(348, 'මිහින්තලේ', 11, 123),
(349, 'මුරියාකඩවල', 11, 123),
(350, 'නෑගම්පහ', 11, 123),
(351, 'නොච්චියාගම', 11, 123),
(352, 'පදවි පරාක්‍රමපුර', 11, 123),
(353, 'පලාගල', 11, 123),
(354, 'පළුගස් වැව', 11, 123),
(355, 'පරංගියාවාඩිය', 11, 123),
(356, 'පේමඩුව', 11, 123),
(357, 'පූනෑව', 11, 123),
(358, 'රඹෑව ', 11, 123),
(359, 'රනෝරාව', 11, 123),
(360, 'රත්මල්ගහ වැව', 11, 123),
(362, 'සිවලාකුලම ', 11, 123),
(363, 'තඹුත්තේගම', 11, 123),
(365, 'තලාව', 11, 123),
(366, 'තන්තිරිමලේ', 11, 123),
(367, 'තිරප්පනේ', 11, 123),
(368, 'යකල්ල', 11, 123),
(369, 'අනුරාධපුර', 11, 123),
(370, 'ශ්‍රාවස්තිපුර', 11, 123),
(371, 'කැකිරාව', 11, 123),
(372, 'රාජාංගනය', 11, 123),
(373, 'වහකෝට්ටේ', 18, 1234),
(374, 'ගලේවෙල', 18, 1234),
(375, 'දේවහුව', 18, 1234),
(376, 'කිඹිස්ස', 18, 1234),
(377, 'දඹුල්ල', 18, 1234),
(378, 'කෝන්ගහවෙල  ', 18, 1234),
(379, 'අළුගොල්ල', 18, 1234),
(380, 'පල්ලෙපොල', 18, 1234),
(381, 'යටවත්ත', 18, 1234),
(382, 'වාලවෙල  ', 18, 1234),
(383, 'පලාපත්වල  ', 18, 1234),
(384, 'තැන්න', 18, 1234),
(385, 'උකුවෙල', 18, 1234),
(386, 'ඇල්කඩුව', 18, 1234),
(387, 'බණ්ඩාරපොල', 18, 1234),
(388, 'වේරගම', 18, 1234),
(389, 'රත්තොට', 18, 1234),
(390, 'හුණුකැට ඇළ', 18, 1234),
(391, 'හත්තොට අමුණ', 18, 1234),
(392, 'පල්ලෙගම', 18, 1234),
(393, 'ඉලුක්කුඹුර', 18, 1234),
(394, 'හෙට්ටිපොල', 18, 1234),
(395, 'හඳුන්ගමුව', 18, 1234),
(396, 'ඇටම්පිටිය', 12, 12345),
(397, 'බඹරපාන ', 12, 12345),
(398, 'බල්ලකෙටුව', 12, 12345),
(399, 'බණ්ඩාරවෙල', 12, 12345),
(400, 'බත්මැඩිල්ල', 12, 12345),
(401, 'බොරලන්ද', 12, 12345),
(402, 'දඹවින්න     ', 12, 12345),
(403, 'දියළුව', 12, 12345),
(404, 'දියතලාව', 12, 12345),
(405, 'ගොරඩියකව', 12, 12345),
(406, 'හල්දුම්මුල්ල   ', 12, 12345),
(407, 'හාලිඇල   ', 12, 12345),
(408, 'කරමැටිය ', 12, 12345),
(409, 'කැප්පෙටිපොල', 12, 12345),
(410, 'කොටවෙර', 12, 12345),
(411, 'කුඹල්වෙල  ', 12, 12345),
(412, 'ලුණුගල', 12, 12345),
(413, 'මඩොල්සිම ', 12, 12345),
(414, 'මහියංගනය', 12, 12345),
(415, 'මස්පන්න', 12, 12345),
(416, 'නාගදීපය', 12, 12345),
(417, 'නිකපොත ', 12, 12345),
(418, 'පස්සර', 12, 12345),
(419, 'රඹුක්පොත ', 12, 12345),
(420, 'රිදීමාලියද්ද', 12, 12345),
(421, 'රිදීපාන', 12, 12345),
(422, 'සපුගොල්ල / කීවනගම', 12, 12345),
(423, 'තැන්නකුඹුර  ', 12, 12345),
(424, 'ඌව පරනගම', 12, 12345),
(425, 'වියළුව', 12, 12345),
(426, 'යටිපලාත  ', 12, 12345),
(427, 'චිලාවතුරෙයි', 17, 19),
(428, 'ඉරනෙයිඉලුපෙයිකුලම්', 17, 19),
(429, 'පී.පී. පොට්කර්නි', 17, 19),
(430, 'පාලම්පඩ්ඩි', 17, 19),
(431, 'මුරුක්කන්', 17, 19),
(432, 'නානාටන්', 17, 19),
(433, 'උලියන්කුලම්', 17, 19),
(434, 'මාන්තෙයි', 17, 19),
(435, 'ආල්කාට්ටිවෙලී', 17, 19),
(436, 'විඩතලතිව්', 17, 19),
(437, 'ඉලුප්පයිකඩවලී', 17, 19),
(438, 'මන්නාරම් දූපත', 17, 19),
(439, 'අකුරැස්ස', 19, 20),
(440, 'බෙරලපනාතර', 19, 20),
(441, 'දංදෙණිය', 19, 20),
(442, 'දෙයියන්දර', 19, 20),
(443, 'දෙනියාය', 19, 20),
(444, 'දික්වැල්ල', 19, 20),
(445, 'හක්මන', 19, 20),
(446, 'කඹුරුපිටිය', 19, 20),
(447, 'කනංකේ', 19, 20),
(448, 'කැකණදුර', 19, 20),
(449, 'කිරින්ද පුහුල්වැල්ල', 19, 20),
(450, 'මඩිහගොඩගම', 19, 20),
(451, 'මාලිම්බඩ', 19, 20),
(452, 'මැදවියන්ගොඩ', 19, 20),
(453, 'මිරිස්ස', 19, 20),
(454, 'මොරවක', 19, 20),
(455, 'පස්ගොඩ', 19, 20),
(456, 'රන්සෑගොඩ', 19, 20),
(457, 'තලල්ල', 19, 20),
(458, 'ඌරුබොක්ක', 19, 20),
(459, 'වැලිගම', 19, 20),
(460, 'විල්පිට', 19, 20),
(461, 'අලුත්වැව', 20, 21),
(462, 'බුත්තල', 20, 21),
(463, 'ඇතිමලේ', 20, 21),
(464, 'හිගුරුකඩුව', 20, 21),
(465, 'කතරගම', 20, 21),
(466, 'ගොටගම', 20, 21),
(467, 'මැදගම', 20, 21),
(468, 'මොණරාගල', 20, 21),
(469, 'ඔක්කම්පිටිය', 20, 21),
(470, 'සියඹලාන්ඩුව', 20, 21),
(471, 'තෙළුල්ල', 20, 21),
(472, 'වැල්ලවාය', 20, 21),
(473, 'දඹගල්ල', 20, 21),
(474, 'නෙල්ලියැද්ද', 20, 21),
(475, 'බිබිල', 20, 21),
(476, 'සෙවනගල', 20, 21),
(477, 'තනමල්විල', 20, 21),
(478, 'බඩල්කුඹුර ', 20, 21),
(479, 'ආඬිඅම්බලම', 6, 23),
(480, 'බඩල්ගම', 6, 23),
(481, 'බෙම්මුල්ල', 6, 23),
(482, 'බෙම්මුල්ල', 6, 23),
(483, 'බියගම', 6, 23),
(484, 'දොම්පේ', 6, 23),
(485, 'ගලහිටියාව', 6, 23),
(486, 'හෙනරත්ගොඩ', 6, 23),
(487, 'ජා-ඇළ', 6, 23),
(488, 'කටාන', 6, 23),
(489, 'කැලණිය', 6, 23),
(490, 'මාබෝදල', 6, 23),
(491, 'මල්වතුහිරිපිටිය', 6, 23),
(492, 'මරදගහමුල', 6, 23),
(493, 'මීරිගම', 6, 23),
(494, 'මිනුවන්ගොඩ', 6, 23),
(495, 'නිට්ටඹුව', 6, 23),
(496, 'නුගපේ - පමුනුගම', 6, 23),
(497, 'පල්ලේවෙල', 6, 23),
(498, 'පස්යාල', 6, 23),
(499, 'සූරියපාලුව', 6, 23),
(500, 'උඩුගම්පොල', 6, 23),
(501, 'උඩුපිල', 6, 23),
(502, 'වැකේ  ', 6, 23),
(503, 'යක්කල', 6, 23),
(504, 'ඌරාපොල', 6, 23),
(505, 'අයිත්යමලේසි', 9, 22),
(506, 'කල්ලඩි', 9, 22),
(507, 'කරදියනාරු', 9, 22),
(508, 'කාත්තන්කුඩී', 9, 22),
(509, 'කොක්කඩිචොලෙයි', 9, 22),
(510, 'මන්ඩපතඩි', 9, 22),
(511, 'මන්දූර්', 9, 22),
(512, 'පලුහමම්', 9, 22),
(513, 'තන්තමලෙයි', 9, 22),
(514, 'වාහරෙයි', 9, 22),
(515, 'වෙල්ලාවලී', 9, 22),
(516, 'කිරන්', 9, 22),
(517, 'කලවන්චිකුඩි', 9, 22),
(518, 'එරාවූර්', 9, 22),
(519, 'වන්තාරුමූලෙයි', 9, 22),
(520, 'වලච්චේන', 9, 22),
(521, 'ආරෙයිපත්තෙයි  ', 9, 22),
(522, 'කොස්ගම', 1, 22),
(523, 'කෝට්ටේ', 1, 22),
(524, 'මාලබේ', 1, 22),
(525, 'මහරගම', 1, 22),
(526, 'පාදුක්ක', 1, 22),
(527, 'නාමල් තලාව', 10, 24),
(528, 'මහඔය', 10, 24),
(529, 'දෙහිඅත්තකන්ඩිය', 10, 24),
(530, 'පදියතලාව', 10, 24),
(531, 'උහන', 10, 24),
(532, 'මායාදුන්න', 10, 24),
(533, 'මධ්‍යම කඳවුර', 10, 24),
(534, 'තම්බිලුවිල්', 10, 24),
(535, 'සමන්තුරෙයි', 10, 24),
(536, 'මල්වත්ත', 10, 24),
(537, 'කල්මුනේ', 10, 24),
(538, 'චේනකුඩිරුප්පු', 10, 24),
(539, 'නිලාවන', 10, 24),
(540, 'සායින්දමරුදු', 10, 24),
(541, 'කාර්තිව්', 10, 24),
(542, 'නින්දවූර්', 10, 24),
(543, 'පාලමුන', 10, 24),
(544, 'අට්ඨාලචේන', 10, 24),
(545, 'එරගම', 10, 24),
(546, 'අක්කරපත්තු (බ)', 10, 24),
(547, 'අක්කරපත්තු (නැ)', 10, 24),
(548, 'හිඟුරාණ', 10, 24),
(549, 'පල්ලන්ඹය', 10, 24),
(550, 'මඩානගම', 10, 24),
(551, 'ලාහුගල', 10, 24),
(552, 'පානම', 10, 24),
(553, 'කෝමාරි', 10, 24),
(554, 'චාවකච්චේරි', 29, 25),
(555, 'කයිතඩ්', 29, 25),
(556, 'නල්ලූර්', 29, 25),
(557, 'වෙලනයි', 29, 25),
(558, 'පුන්ගුඩුතිව්', 29, 25),
(559, 'තොල්පුරම්', 29, 25),
(560, 'කීරිමලෙයි', 29, 25),
(561, 'උරුම්පිරායි', 29, 25),
(562, 'උඩුවිල්', 29, 25),
(563, 'සන්දිලිපායි', 29, 25),
(564, 'අම්පන්', 29, 25),
(565, 'පුලෝලි', 29, 25),
(566, 'කරවෙඩ්ඩි', 29, 25),
(567, 'කරෙයිනගර්', 29, 25),
(568, 'පුට්ටුර්', 29, 25),
(569, 'ගෝනගල', 5, 25),
(570, 'අලව්ව', 16, 26),
(571, 'වීරඹුගෙදර', 16, 16),
(572, 'පොතුහැර', 16, 16),
(573, 'අඹන්පොල', 16, 16),
(574, 'යට්ටෝගොඩ', 14, 16),
(575, 'බටුවත්ත', 14, 16),
(576, 'පරගම්මන', 14, 16),
(577, 'රාජාංගනය වම් ඉවුර', 16, 26),
(578, 'නිවිතිගල', 26, 17),
(579, 'වල්පිට', 6, 17),
(580, 'මහවැලි එල් කලාපය', 11, 10),
(581, 'තාරණ උඩවෙල', 16, 11),
(582, 'උඩුබද්දාව', 16, 11),
(583, 'වැවගම', 16, 11),
(584, 'රස්නායක පුර', 16, 11),
(585, 'රම්බඩගල්ල', 16, 11),
(586, 'රම්බඩගල්ල', 16, 11),
(587, 'පමුණුගම', 8, 90);

-- --------------------------------------------------------

--
-- Table structure for table `agri_center_tamil`
--

CREATE TABLE `agri_center_tamil` (
  `Center_ID` int(11) NOT NULL,
  `Name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `District_id` int(11) NOT NULL,
  `Contact_No` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `buyer_detail`
--

CREATE TABLE `buyer_detail` (
  `Buyer_ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Nic` varchar(50) NOT NULL,
  `Mobile_No` int(11) NOT NULL,
  `Office_No` int(11) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Reg_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `dis_auto_id` int(11) NOT NULL,
  `District_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`dis_auto_id`, `District_name`) VALUES
(1, 'කොළඹ'),
(5, 'ගාල්ල'),
(6, 'ගම්පහ'),
(7, 'හම්බන්තොට'),
(8, 'කළුතර'),
(9, 'මඩකලපුව'),
(10, 'අම්පාර'),
(11, 'අනුරාධපුර'),
(12, 'බදුල්ල'),
(13, 'මහනුවර'),
(14, 'කෑගල්ල'),
(15, 'කිලිනොච්චි'),
(16, 'කුරුණෑගල'),
(17, 'මන්නාරම'),
(18, 'මාතලේ'),
(19, 'මාතර'),
(20, 'මොණරාගල'),
(21, 'මුලතිව්'),
(22, 'නුවරඑළිය'),
(23, 'පොළොන්නරුව'),
(24, 'පුත්තලම'),
(26, 'රත්නපුර'),
(27, 'ත්‍රිකුණාමලය'),
(28, 'වවුනියාව'),
(29, 'යාපනය');

-- --------------------------------------------------------

--
-- Table structure for table `districts_tamil`
--

CREATE TABLE `districts_tamil` (
  `dis_auto_id` int(11) NOT NULL,
  `District_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `economic_centers`
--

CREATE TABLE `economic_centers` (
  `economic_center_id` int(11) NOT NULL,
  `economic_center_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `economic_centers`
--

INSERT INTO `economic_centers` (`economic_center_id`, `economic_center_name`) VALUES
(1, 'Dambulla Economic Center'),
(2, 'Narahenpita Economic Centre'),
(3, 'Meegoda Economic Center'),
(4, 'Keppetipola Economic Center'),
(5, 'Kandy Economic Center'),
(6, 'Nuwaraeliya Economic Center'),
(7, 'Thambuththegama Economic Center'),
(8, 'Norochcholai Economic Center');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories`
--

CREATE TABLE `main_categories` (
  `main_cat_id` int(11) NOT NULL,
  `main_cat_name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_categories`
--

INSERT INTO `main_categories` (`main_cat_id`, `main_cat_name`) VALUES
(1, 'එළවළු'),
(2, 'පලතුරු'),
(3, 'වී'),
(4, 'සහල්'),
(5, 'ධාන්‍ය'),
(6, 'පොල්'),
(7, 'කුළුබඩු'),
(9, 'පලා වර්ග'),
(10, 'මස්'),
(11, 'මාළු'),
(12, 'බිත්තර'),
(13, 'කිරි'),
(14, 'පැණි'),
(15, 'අපනයන බෝග'),
(16, 'සත්වපාලන'),
(17, 'පැල'),
(18, 'බීජ'),
(19, 'බිම්මල්'),
(20, 'පොහොර'),
(21, 'මල්'),
(22, 'කෘෂි උපකරණ'),
(23, 'ප්‍රවාහන'),
(24, 'කෘෂි ශ්‍රමිකයන්'),
(25, 'හෙළ බොජුන්'),
(26, 'කරවල'),
(27, 'අල'),
(28, 'ආයුර්වේද ශාක'),
(29, 'මිරිස් '),
(30, 'මාංශ බෝග'),
(31, 'ගැප්'),
(33, 'තෙල්'),
(34, 'අත්කම්');

-- --------------------------------------------------------

--
-- Table structure for table `main_categories_tamil`
--

CREATE TABLE `main_categories_tamil` (
  `main_cat_id` int(11) NOT NULL,
  `main_cat_name` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `main_sub_categories`
--

CREATE TABLE `main_sub_categories` (
  `sub_catid` int(11) NOT NULL,
  `main_catid` int(11) NOT NULL,
  `sub_catname` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_catstockprice` float DEFAULT NULL,
  `sub_catretailprice` float DEFAULT NULL,
  `sub_cat_imageurl` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_sub_categories`
--

INSERT INTO `main_sub_categories` (`sub_catid`, `main_catid`, `sub_catname`, `sub_catstockprice`, `sub_catretailprice`, `sub_cat_imageurl`) VALUES
(1, 1, 'බෝංචි', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Green Beans/Green-Beans-PNG-Image.png'),
(2, 1, 'කැරට්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/HnbGaM8rJ2LvxPC7qhLz_.png'),
(3, 1, 'ලීක්ස්', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Leeks/hiclipart.com-id_hxzfg.png'),
(4, 1, 'බීට්රූට් - පහත රට', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Beetroot/pngfind.com-beet-png-1243249.png'),
(5, 1, 'බීට්රූට් - උඩරට', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Beetroot/pngfind.com-beet-png-1243249.png'),
(6, 1, 'නොල්කොල්', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Kohlrabi/kisspng-kohlrabi-food-leaf-vegetable-aldi-kohlrabi-5b489704660f17.0552558115314839084181.png'),
(7, 1, 'රාබු', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Radish/Mooli-PNG-File.png'),
(8, 1, 'ගෝවා', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Cabbage/Cabbage-Family-Vegetable-PNG.png'),
(9, 1, 'තක්කාලි', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Tomato/Tomatoes-With-A-Transparent-Background-PNG.png'),
(10, 1, 'බණ්ඩක්කා', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Lady Fingers/Lady-Finger-PNG-Transparent-Image.png'),
(11, 1, 'වම්බටු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ai9egWEyrRcgxyeN_lDR_.png'),
(12, 1, 'මාළු මිරිස්', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Capsicum/5a218ab1b42247.3837096215121476337378.png'),
(13, 1, 'වට්ටක්කා', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Pumpkin/Pumpkin-Patch-PNG-Transparent-Picture.png'),
(14, 1, 'පිපිඤ්ඤා', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Cucumber/cacumber-white.png'),
(15, 1, 'කරවිල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/11CaZramqX_1craMNJI9_.png'),
(16, 1, 'පතෝල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/msa9I2o_Wa601ltEusRe_.png'),
(17, 1, 'වැටකුළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/uMVRdpOuTlmnDDU5c4_B_.png'),
(18, 1, 'දිගු බෝංචි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/kNvD0mRifGoizY1EDQS8_.png'),
(19, 1, 'අළු කෙසෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ELd43Mka2VrAgYwwy9tu_.png'),
(21, 1, 'දෙහි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/bqjG2PBvJk7iWPhtOfPC_.png'),
(22, 1, 'අර්තාපල් - නුවරඑලිය', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Cucumber/cacumber-white.png'),
(23, 1, 'අර්තාපල් - වැලිමඩ', 0, 0, 'http://vegi.lk/admin/vegilkimages/Vegetables/Cucumber/cacumber-white.png'),
(24, 2, 'අඹ', 0, 0, 'http://vegi.lk/admin/vegilkimages/Fruits/Mango/Mango-PNG.png'),
(25, 2, 'පේර', 0, 0, 'http://vegi.lk/admin/vegilkimages/Fruits/Guava/guava_PNG63.png'),
(26, 2, 'අන්නාසි', 0, 0, 'http://vegi.lk/admin/vegilkimages/Fruits/Pineapple/Pineapple-PNG-Background.png'),
(27, 2, 'පැපොල්', 0, 0, 'http://vegi.lk/admin/vegilkimages/Fruits/Papaya/Papaya-PNG-File.png'),
(28, 2, 'කෙසෙල්', 0, 0, 'http://vegi.lk/admin/vegilkimages/Fruits/Banana/Banana-PNG.png'),
(29, 2, 'දොඩම්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-mj2nD2ZCUhLa8GcB90L_.png'),
(30, 2, 'දෙළුම්', 0, 0, 'http://vegi.lk/admin/vegilkimages/Fruits/Delum/delum.png'),
(31, 2, 'අනෝදා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/fWViS8v0d8OBflwJdH8A_.png'),
(32, 2, 'මැන්ගුස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/UgZkoDxQQa3Pg56tSN7J_.png'),
(33, 2, 'රඹුටන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Sg8fP5g-Zq1z0aXEWnY__.png'),
(34, 2, 'කොමඩු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/do4FAM5maC6h9xsP0BVk_.png'),
(35, 2, 'කාමරංගා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Ze3TyGKMMn__dgBVEBgv_.png'),
(36, 2, 'පෙයාර්ස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/nt2EqCgIeFwcX1-DqlMk_.png'),
(37, 2, 'දිවුල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/PpIMPwWMcLPVwPBtRGQq_.png'),
(38, 2, 'ජම්බු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/psepceRHo2XnuAIPs23m_.png'),
(39, 2, 'නෙල්ලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/f-mXKtl2GmnXsPZcanjj_.png'),
(40, 2, 'වෙරළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/1rSmGC__3HDEp5HaKHgP_.png'),
(41, 2, 'මාදං', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/L8EuLZ42sDDT0vNxwJZY_.png'),
(42, 2, 'දූරියන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/fKx4y-GJV1o0WIB9Y6PA_.png'),
(43, 2, 'පැෂන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/SUbbGLR2DSjpPlE42Bcr_.png'),
(44, 2, 'උගුරැස්ස', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/yNCaD6Hj4ZAnokiejK7D_.png'),
(45, 2, 'කජු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/YebwTXRNBJ4cG-EVRlFP_.png'),
(46, 2, 'බෙලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/94NxXyL76veKfz-Bd8lD_.png'),
(47, 2, 'වරකා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4EoCMhB1PRl31AJhz8CO_.png'),
(48, 2, 'මොර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/2jHAhfzgnD7of0ksXCTw_.png'),
(57, 15, 'කරාබු නැටි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/6O88XRg8lY_.png'),
(58, 15, 'කුරුඳු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/QYBSODgSHw_.png'),
(59, 15, 'එනසාල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/NntRSQVLJR_.png'),
(60, 15, 'ගම්මිරිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8zPNFTtRU2_.png'),
(61, 15, 'සාදික්කා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/aFs3pzIQWy_.png'),
(62, 15, 'වැනිලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/MfqK_FrehV_.png'),
(63, 15, 'බුලත්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/CXpfMJwc-e4dEuj3nB5x_.png'),
(64, 15, 'පුවක්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/6oMbSd_zJS_.png'),
(65, 15, 'පැඟිරි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/AVTVuHEjbg_.png'),
(66, 15, 'ගොරකා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/jzgOMVdzgl_.png'),
(67, 15, 'කෝපි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/eC-zy2WimD_.png'),
(68, 15, 'කොකෝවා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/V_TM-zH3lX_.png'),
(69, 15, 'කහ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4ibQMenY62_.png'),
(70, 15, 'ඉඟුරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/lYGBEkMYrB_.png'),
(71, 17, 'පොල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/VRM4UtQ0HS_.png'),
(72, 17, 'කෙසෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Z7BQ-n5gKa_.png'),
(73, 17, 'පේර', NULL, NULL, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/n6jlg8mT7l_.png'),
(74, 17, 'සාදික්කා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/jxqK1sV33p_.png'),
(75, 17, 'කොකෝවා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/aKG78BqgDX_.png'),
(76, 17, 'කජු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/46f7uPpB8Y_.png'),
(77, 17, 'අලිපේර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/RQErCoTSGW_.png'),
(78, 17, 'අඹ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/bb82tMahtp_.png'),
(79, 17, 'රඹුටන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/uqwFKdQRzt_.png'),
(80, 17, 'අන්නාසි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/bc9CXD_Rdi_.png'),
(81, 17, 'කෝපි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_2SpIFN5IS_.png'),
(82, 17, 'අන්නාසි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/agMkSotROJ_.png'),
(83, 17, 'දොඩම්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/VBL_uYeI2m_.png'),
(84, 17, 'දෙළුම්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/lStyW7neof_.png'),
(85, 17, 'දෙහි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/6QSGPTegkoawPn8eMQWc_.png'),
(86, 17, 'දුරියන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Fu2SRZzwSB_.png'),
(87, 17, 'ඩ්‍රැගන් ෆෘට්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Mw9tZDZtZT_.png'),
(88, 17, 'ගම්මිරිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/3ERJCttal7_.png'),
(89, 17, 'පුවක්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/bsxez6Eovt_.png'),
(90, 17, 'වෙනත්පැල ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/cVMr_uHfCn_.png'),
(91, 1, 'ඇඹරැල්ල ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Lyq61Jek6d_.png'),
(92, 1, 'දෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/DS5EDzmiRK_.png'),
(93, 1, 'කැකිරි ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Lk3jJLXPXD_.png'),
(94, 1, 'කොහිල දළු ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/W1dX-XaaNv_.png'),
(95, 1, 'කොහිල ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/WvKnEhg5nq_.png'),
(96, 1, 'අවර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/XEHzEWR5ew_.png'),
(97, 1, 'චව් චව්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/fWRV7Ysbz4_.png'),
(98, 1, 'තුඹ කරවිල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/6_pLR9niYO_.png'),
(99, 16, 'ගවයා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/biEVQE9Mxl_.png'),
(100, 16, 'එළුවා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/VGfzjapUm5_.png'),
(101, 16, 'ඌරා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/1cN0F7r6sL_.png'),
(102, 16, 'කුකුළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/368d9fscLp_.png'),
(103, 16, 'කලුකුමා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/IpACywACKV_.png'),
(104, 16, 'තාරාවා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Hhgc6ZLGVz_.png'),
(105, 16, 'මී ගව', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/FLvU49CUbC_.png'),
(106, 16, 'බල්ලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8QFCIjqGub_.png'),
(107, 16, 'විසිතුරු මසුන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/tqmM33qgg__.png'),
(108, 11, 'බලයා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/fZpobfUxg3_.png'),
(109, 11, 'කෙලවල්ලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/bCfCsrxjOM_.png'),
(110, 11, 'අලගුඩුව', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/mluNJj7JkW_.png'),
(111, 11, 'ඇටවල්ලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/agHoVik0qZ_.png'),
(112, 11, 'තලපත්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/1xS79wLuRM_.png'),
(113, 11, 'තිලාපියා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/WxxE38kNEn_.png'),
(114, 11, 'පරවූ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_yQnnucRmx_.png'),
(115, 11, 'පරාව', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4_LHnloiFb_.png'),
(116, 11, 'ලින්නා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/IRJvKIWYWw_.png'),
(117, 11, 'ඉස්සා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/P3NlwX79sQ_.png'),
(118, 11, 'කකුළුවා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/imf12gs6Sl_.png'),
(119, 11, 'දැල්ලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/GzatqS7uvR_.png'),
(120, 11, 'පොකිරිස්සා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/mSkLgd5YNP_.png'),
(121, 11, 'බූවල්ලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_JWQ1KWnRH_.png'),
(122, 14, 'මී පැණි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/s6Ut65L0sj_.png'),
(123, 14, 'කිතුල් පැණි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/bs5yvrhX5H_.png'),
(124, 14, 'උක් හකුරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/3CMta7UlN3_.png'),
(125, 14, 'තල් හකුරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/V4iwMBGrO3_.png'),
(126, 14, 'උක් පැණි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/yf7kBnb__G_.png'),
(127, 13, 'කිරි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/zcBXlwlHZY_.png'),
(128, 13, 'මී කිරි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/IxovY5HCBc_.png'),
(129, 13, 'යෝගට්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/chDWB5_SPu_.png'),
(130, 27, 'අර්තාපල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/0jBkKAIQQL_.png'),
(131, 27, 'කටු අල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-lJCr5dY5P_.png'),
(132, 27, 'බතල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/botNTyt1cU_.png'),
(133, 27, 'මඤ්ඤොක්කා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/KxIXIziV6b_.png'),
(134, 26, 'කූනිස්සා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/B1pG1o3Hty_.png'),
(135, 26, 'හාල්මැස්සෝ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Vs_4uNSQj0_.png'),
(136, 25, 'ආප්ප', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8dHS1ODD3T_.png'),
(137, 25, 'ඉඳිආප්ප', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/pa58uRuJPB_.png'),
(138, 25, 'කට්ලට්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/7vATGdi106_.png'),
(139, 25, 'තෝසෙ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/noRfs3YG4E_.png'),
(140, 25, 'උඳු වඩේ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/rvmqEEjlxi_.png'),
(141, 25, 'රොටි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/onrf7DnjT3_.png'),
(142, 25, 'කොකිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/yy9dBYpv-IkWiBxH1T90_.png'),
(143, 25, 'ආස්මි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/AHyIT-8nSr_.png'),
(144, 28, 'නෙල්ලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-nQWDZ7wVa_.png'),
(145, 28, 'බෙලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Gco5uRdzLp_.png'),
(146, 28, 'සියඹලා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/VvJyOopFGb_.png'),
(147, 28, 'කෝමාරිකා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4od_NvHHKj_.png'),
(148, 22, 'ටැක්ටර්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/nUThXYIrZQ_.png'),
(149, 22, 'රෝද දෙකේ ටැක්ටර්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/eEJ1cBaKBm_.png'),
(150, 22, 'අස්වනු යන්ත්‍රය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/BPZQM3Ptqu_.png'),
(151, 29, 'වියලි මිරිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/mQad1HF4s2_.png'),
(152, 29, 'නයි මිරිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/T_1Og4Y3q3_.png'),
(153, 29, 'කොච්චි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/5e8PU0eRW8_.png'),
(154, 29, 'අමු මිරිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4uuOiRcktC_.png'),
(155, 25, 'පරිප්පු වඩේ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/RMzCMbLz8r_.png'),
(156, 25, 'කිරිබත්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/AD86sJk_dO_.png'),
(157, 25, 'කැවුම්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/BUPrWJeMEA_.png'),
(158, 25, 'අලුවා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ctlhOsypP__.png'),
(159, 13, 'එළු කිරි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Wu5iy38bU6_.png'),
(160, 13, 'චීස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Go0Fn4Kmbj_.png'),
(161, 13, 'බටර්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/J7F4GlOREe_.png'),
(162, 9, 'ගොටුකොල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/638r4stMa-_.png'),
(163, 9, 'කන් කුං', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/lJD0qEzPFH_.png'),
(164, 9, 'නිවිති', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/KdNg0YkRou_.png'),
(165, 9, 'මුකුණුවැන්න', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/SOzRP5Pyhi_.png'),
(166, 9, 'සාරන', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/r6uoyN9Cyf_.png'),
(167, 12, 'ගම් කුකුල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/JAcE4NrYm3_.png'),
(168, 12, 'වටු කුරුලු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/pwAQ8kjWt7_.png'),
(169, 12, 'ෆාම් බිත්තර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_8PISoNaZr_.png'),
(170, 12, 'තාරා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/YvGr9U4ob9_.png'),
(171, 12, 'කලුකුම් බිත්තර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Ehkqiuqrmr_.png'),
(172, 21, 'අන්තුරියම්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8GXfokbBSp_.png'),
(173, 21, 'පිච්ච මල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Ka5bsL_zCL_.png'),
(174, 21, 'ඕකීඩ්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/RfdcJbXEIS_.png'),
(175, 21, 'කානේෂන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_WFZXHHWhm_.png'),
(176, 21, 'ඩේසි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/O_mEKYKM5J_.png'),
(177, 21, 'නෙලුම් මල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/xQFd_SAi28_.png'),
(179, 21, 'රෝස', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/uU91Y28g2f_.png'),
(180, 4, 'සම්බා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/yZcm5Y4zwI_.png'),
(181, 4, 'රතු කැකුළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ADMhCNQ_Md_.png'),
(182, 4, 'සුදු කැකුළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/M0tiCZAf9Y_.png'),
(183, 4, 'බාස්මතී', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/wn0UaGCM_E_.png'),
(184, 4, 'කළු හීනටි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/F_wRVg_T1h_.png'),
(185, 4, 'ඕලු හාල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/myW1fFg_UH_.png'),
(186, 18, 'එළවළු බීජ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/9ClopJq6HZQf6lNBt-VX_.png'),
(187, 18, 'පළතුරු බීජ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/rgLU5Iga3LS4jasNGj3T_.png'),
(188, 18, 'ලොකු ලූනු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4QGgTfYaus_.png'),
(189, 18, 'වට්ටක්කා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/p6sVYnhuv6_.png'),
(190, 18, 'බඩඉරිඟු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/FDljFFH6uK_.png'),
(191, 10, 'කුකුල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ZCJjSKbbox_.png'),
(192, 10, 'හරක්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/eYO1sBbvq3_.png'),
(193, 10, 'ඌරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/g0RUEsZmp2_.png'),
(194, 10, 'එළු මස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/WDcpr0xmf6_.png'),
(195, 7, 'තුන පහ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/kKurMEmdAe_.png'),
(196, 7, 'අබ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/2zZXhCBe11_.png'),
(197, 7, 'උළුහාල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/84RzYHKfUl_.png'),
(198, 7, 'කරපිංචා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/XBqKbm-CR6_.png'),
(199, 7, 'කහ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/SX9aESBHCm_.png'),
(200, 7, 'කුරුඳු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/BZRZdqT53t_.png'),
(201, 7, 'කොත්තමල්ලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/YLwednzU7S_.png'),
(202, 7, 'ගම්මිරිස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/29D_W_RnaQTyg7J9NVRZ_.png'),
(203, 7, 'තුන පහ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/KbbbDh2dza_.png'),
(204, 7, 'මහදුරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/fQFj-JCtjG_.png'),
(205, 7, 'මිරිස් කුඩු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/5E5VXKfFjZ_.png'),
(206, 7, 'සූදුරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ofpDulkmyE_.png'),
(207, 7, 'සේර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/kzKOj0isns_.png'),
(208, 24, 'කෘෂි කම්කරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/3AX06unZTM_.png'),
(209, 24, 'කරාබු කඩන', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/K38wa85Zn5_.png'),
(210, 24, 'තේ දළු කඩන', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/6sv0LeZ7JH_.png'),
(211, 24, 'පොල් ගස් නඟින්න', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/FePiwuI0e3_.png'),
(212, 24, 'රබර් කිරි කපන', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/y5JBWm-asS_.png'),
(213, 24, 'වතු කම්කරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/d_pRSDiOiE_.png'),
(214, 23, 'ට්‍රක්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/TP9mqzyJzl_.png'),
(215, 23, 'ට්‍රැක්ටරය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/O5HT-MgCRi_.png'),
(216, 23, 'ත්‍රීවිල් රථ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/PCqu4tOUMa_.png'),
(217, 23, 'සයිකලේ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/jtr2xXqY4L_.png'),
(218, 23, 'සිසිල් ට්‍රක්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/pdiJFF_L9N_.png'),
(219, 16, 'මී මැසි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/kJKUKkQlXM_.png'),
(220, 20, 'කාබනික', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/EV4_WVwlZG_.png'),
(221, 20, 'රසායනික', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-qyO7uNPaD_.png'),
(222, 30, 'රටකජු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/RZkeHqHSAM_.png'),
(223, 30, 'මුන් ඇට', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/0Uhrr9PbF5_.png'),
(224, 30, 'කුරක්කන්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/pNDPJrCmKq_.png'),
(225, 30, 'සුදු කව්පි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/kKfuJjzllK_.png'),
(226, 30, 'රතු කව්පි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/26oAeAsWVE_.png'),
(227, 30, 'තල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/eUU0D8zIqj_.png'),
(228, 30, 'උඳු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/S_MwF8Tlhj_.png'),
(229, 30, 'උළුහාල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/pB8WLB5r6HmuV2YNqNJR_.png'),
(230, 31, 'එළවළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ZhOEIBB599_.png'),
(231, 31, 'පළතුරු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-7mo8-uqen_.png'),
(232, 3, 'කැකුළු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-ZcaCqWNjM_.png'),
(233, 3, 'කීරි සම්බ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/WjuAZbMtOm_.png'),
(234, 3, 'බාස්මතී', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_oZcdWpTIk_.png'),
(235, 3, 'සම්බා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/PwGV9Vr48c_.png'),
(236, 3, 'නාඩු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8FlkhQhARM_.png'),
(237, 3, 'දේශීය වී', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/lMXTHqjPPl_.png'),
(238, 30, 'කඩල පරිප්පු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8D-vNGOa7n_.png'),
(239, 30, 'පරිප්පු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/YjCAKe7f4H_.png'),
(240, 30, 'සෝයා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/JmQbAvLRn1_.png'),
(241, 6, 'පොල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/90DaZOiSOF_.png'),
(242, 6, 'තැඹිලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/lBywi0GuBn_.png'),
(243, 6, 'පොල් වතුර', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/-E_yCYK-9R_.png'),
(244, 6, 'කොප්පරා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/GwWTI2syIs_.png'),
(245, 6, 'කොහු ලණු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/3mu67a4cRv_.png'),
(246, 6, 'පොල්කටු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/KQG0DelH0hdmx1AO-Z6__.png'),
(247, 8, 'පොල් කෙඳි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/7CTQlVv70e_.png'),
(248, 8, 'පොල් ලෙලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/NiSZr0HHrB_.png'),
(249, 33, 'පොල් තෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/mA4DRwu0fP_.png'),
(250, 33, 'එළඟි තෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/jrIk4ziF3h_.png'),
(251, 33, 'එළවළු තෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/aefggob57u_.png'),
(252, 33, 'කොහොඹ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/AJMAQI0gqJ_.png'),
(253, 33, 'තල තෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/qvsomC268v_.png'),
(254, 33, 'මී තෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/OFKixSuurs_.png'),
(255, 33, 'සෝයා තෙල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/IQuBmrRZks_.png'),
(256, 28, 'අහු ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/AZ715S86705QnHg9yLun_.png'),
(257, 28, 'ඉරමුසු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/PtH1d669v9su2D4EpIfQ_.png'),
(258, 28, 'කටුවැල්බටු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/nD3mPv9NyFaU8SWjk9n3_.png'),
(259, 28, 'කොහොඹ ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/hTMholLIHuga-CX57_ks_.png'),
(260, 28, 'කෝවක්කා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/2f-PNuQjZG3DFSX34bzI_.png'),
(261, 28, 'තිප්පිලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/ZestuJ1lfM9Xi_K7FAAm_.png'),
(262, 28, 'තෙබු', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/BuRegCz38AjutRe8gneZ_.png'),
(263, 28, 'නික', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/8HoZ62bJUY_.png'),
(264, 28, 'පාවට්ටා', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/NGYCAe0W6j_.png'),
(265, 28, 'පෙනෙළ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Mve2SE2tlL_.png'),
(266, 26, 'අගුලුවා කරවල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/5f0PUwaLht_.webp'),
(267, 26, 'කට්ට කරවල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/fKd53LwQee_.png'),
(268, 26, 'කීලං කරවල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/hDIa8kE0XY_.png'),
(269, 26, 'බලයා කරවල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/mUngwO4AIE_.png'),
(270, 26, 'බොම්බිලි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/mVwuVVwx0V_.png'),
(271, 26, 'මුහුදු කුරුල්ල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/6RZeZPBUuZ_.png'),
(272, 26, 'වැව් කරවල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/CBLZ1V4dfU_.png'),
(273, 27, 'ඉන්නල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/CHqxjUkn-A_.png'),
(274, 27, 'උඩල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/hdOWUbDAYP_.png'),
(275, 27, 'කිරි අල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/828_f4k7li_.png'),
(276, 27, 'ගෝනල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/Jjh1B2wXJt_.png'),
(277, 27, 'දම් අල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_x86Yf_ssB_.png'),
(278, 27, 'නෙළුම් අල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/CITdF2nIoN_.png'),
(280, 27, 'බුත්සරණ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/3deJUvUUue_.png'),
(281, 27, 'රාජ අල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/NPNimGQuSU_.png'),
(282, 27, 'හිඟුරල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/c1sGI524UE_.png'),
(283, 27, 'හුලංකීරිය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_24_qUuS9-_.png'),
(284, 27, 'වැල් අල', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/5vM7ESYdPi_.png'),
(285, 19, 'දුඹුරු බිම්මල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/xZKdIXphZE_.png'),
(286, 19, 'පුල්මෝනරියස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/4vAsXnnGox_.png'),
(287, 19, 'ප්ලුරෝටස්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/qedaLpcFs1_.png'),
(288, 19, 'බෙල්ලන් බිම්මල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/JyaBU_E0C7_.png'),
(289, 19, 'බොත්තම් බිම්මල්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/LYW7fP8Plh_.png'),
(290, 34, 'කුඩය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/UThnss1vbB_.png'),
(291, 34, 'ගෘහ භාණ්ඩ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/XJx58Q1I8d_.png'),
(292, 34, 'පිහි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/_XTJLSFbno_.png'),
(293, 34, 'පොල් නිෂ්පාදන', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/y-a8KVeGf__.png'),
(294, 34, 'බෑග්', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/q9jnWjUKPI_.png'),
(295, 34, 'බෙරය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/FGvA_pJV72_.png'),
(296, 34, 'රෙදිපිළි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/i23d7tDIXT_.png'),
(297, 34, 'වට්ටි', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/zUsYpHfPnt_.png'),
(298, 34, 'වලං', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/nWzCA5Kbj7_.png'),
(299, 34, 'වෙස් මුහුණ', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/9mBQUaayLX_.png'),
(300, 34, 'වේවැල් නිශ්පාදන', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/cyXRIn4DGW_.png'),
(301, 34, 'හිරමනය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/VbILGeIKh9_.png'),
(302, 34, 'වංගෙඩිය', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/717ucWrcMy_.png'),
(303, 22, 'දෑකැත්ත', 0, 0, 'http://vegi.lk/admin/backend/web/uploads/subcatimage/FPsTnCySEI_.png');

-- --------------------------------------------------------

--
-- Table structure for table `main_sub_categories_tamil`
--

CREATE TABLE `main_sub_categories_tamil` (
  `sub_catid` int(11) NOT NULL,
  `main_catid` int(11) NOT NULL,
  `sub_catname` text COLLATE utf8_unicode_ci NOT NULL,
  `sub_catstockprice` float DEFAULT NULL,
  `sub_catretailprice` float DEFAULT NULL,
  `sub_cat_imageurl` text COLLATE utf8_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1567479975),
('m130524_201442_init', 1567479978),
('m190124_110200_add_verification_token_column_to_user_table', 1567479978);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `Status_ID` int(11) NOT NULL,
  `Status_Desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE `order_table` (
  `Order_ID` int(11) NOT NULL,
  `Ad_Id` int(11) NOT NULL,
  `Buyer_Id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Status_Id` int(11) NOT NULL,
  `Remark` varchar(255) NOT NULL,
  `Order_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_detail`
--

CREATE TABLE `supplier_detail` (
  `Supplier_ID` int(11) NOT NULL,
  `Name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Gender` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Nic` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Mobile_No` varchar(100) NOT NULL,
  `Office_No` varchar(100) NOT NULL,
  `sup_district` int(11) NOT NULL,
  `sup_govicenter` int(11) NOT NULL,
  `sup_password` varchar(200) NOT NULL,
  `sup_otp` int(11) NOT NULL,
  `Reg_Date` datetime NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `sup_profile_Image_Id` varchar(255) DEFAULT NULL,
  `Seller_Stat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_detail`
--

INSERT INTO `supplier_detail` (`Supplier_ID`, `Name`, `Gender`, `Nic`, `Address`, `Mobile_No`, `Office_No`, `sup_district`, `sup_govicenter`, `sup_password`, `sup_otp`, `Reg_Date`, `Email`, `sup_profile_Image_Id`, `Seller_Stat`) VALUES
(12, 'සමතා', 'පුරුෂ', '784512541v', 'රශයව ඹශයනෂ ස', '5887452145', '112345678', 8, 5, '123', 123789, '2019-11-04 10:04:00', 'info@gmail.com', 'This is where the url goes...', 1),
(13, 'කුසුමා', 'ස්ත්‍රී', '659878456v', 'ශඹඹවව වඹඹශනක නවඹ', '112456598', '112345678', 8, 6, '123', 123789, '2019-11-04 10:05:51', 'info@gmail.com', 'This is where the url goes...', 1),
(14, 'මධාරා', 'ස්ත්‍රී', '784512456v', 'ෆඹඹ වනන නක', '112548798', '112345678', 8, 16, '123', 123789, '2019-11-04 11:16:34', 'info@gmail.com', 'This is where the url goes...', 1),
(15, 'රුචක සදීප', 'පුරුෂ', '895623456v', '569/ රාගම, ෂඹෂනඛණ', '787985825', '112345678', 8, 24, '123', 123789, '2019-11-05 05:11:54', 'info@gmail.com', 'This is where the url goes...', 1),
(16, 'රන්දුනු', 'ස්ත්‍රී', '894512789v', '654654 කශෂඹන', '175985245', '112345678', 8, 11, '123', 123789, '2019-11-05 06:30:47', 'info@gmail.com', 'This is where the url goes...', 1),
(17, 'මදැයි', 'ස්ත්‍රී', '789456123v', 'යකන', '8521474561', '112345678', 1, 1, '123', 123789, '2019-11-05 07:19:37', 'info@gmail.com', 'This is where the url goes...', 1),
(18, 'රාලහාමි', 'පුරුෂ', '54654', 'තනන්න ණ්‍ර', '75845214', '112345678', 8, 22, '654', 123789, '2019-11-05 07:29:42', 'info@gmail.com', 'This is where the url goes...', 1),
(19, 'වාසනා', 'ස්ත්‍රී', '457898654v', 'වසර ශනය', '1125645', '112345678', 8, 13, '345', 123789, '2019-11-05 07:58:08', 'info@gmail.com', 'This is where the url goes...', 1),
(20, 'පූලස්ති බෙත්මගේ', 'පුරුෂ', '892820520', '629 පත්තර', '715369728', '112345678', 8, 19, '123', 123789, '2019-11-05 09:32:07', 'info@gmail.com', 'This is where the url goes...', 1),
(23, 'මහී සොයිසා', 'පුරුෂ', '1234v', '133/D, ගල්හේනගේ මාවත', '112457865', '112345678', 8, 11, '123', 123789, '2019-11-15 10:28:28', 'info@gmail.com', 'This is where the url goes...', 1),
(24, 'ධනූක චමත්', 'පුරුෂ', '123456520', 'මෙම මැතිවරණ කොට්ඨාශය මාර්තු මාසයේ පැවති', '712200220', '112345678', 8, 12, '123', 123789, '2019-11-25 10:40:40', 'info@gmail.com', 'This is where the url goes...', 1),
(25, 'රයිනී ශ්‍රී', 'ස්ත්‍රී', '123456123', 'ශ්‍රී ලංකාවේ බස්නාහිර පළාතේ', '712200220', '112345678', 1, 4, '123', 123789, '2019-11-25 10:46:13', 'info@gmail.com', 'This is where the url goes...', 1),
(26, 'හැබැයි', 'පුරුෂ', '12345678', 'නව වසරේ', '715369728', '112345678', 1, 1, '123', 123789, '2019-11-25 10:47:56', 'info@gmail.com', 'This is where the url goes...', 1),
(27, 'තිලාන් භාතිය', 'පුරුෂ', '897060520', 'රහම මෙම මැතිවරණ බලප්‍රදේශය', '771959968', '112345678', 1, 4, '123', 123789, '2019-11-28 08:29:01', 'info@gmail.com', 'This is where the url goes...', 1),
(28, 'Heshan Gunasekara', 'පුරුෂ', '892812123v', 'Kurunaagala, Sri Lanka', '771959968', '112345678', 1, 3, '123', 123789, '2019-12-04 10:33:19', 'info@gmail.com', 'This is where the url goes...', 1),
(29, 'Herath ', 'පුරුෂ', '612021139v', 'kandy ', '718999012', '112345678', 1, 2, '123', 123789, '2019-12-05 04:52:35', 'info@gmail.com', 'This is where the url goes...', 1),
(30, 'Namal Rajapaksha', 'පුරුෂ', '892821520v', 'Maatara', '771959968', '112345678', 1, 1, '123', 123789, '2019-12-25 10:44:28', 'info@gmail.com', 'This is where the url goes...', 1),
(31, 'Rohana Dasanayaka', 'පුරුෂ', '701130839v', '217A Haltota 12538', '714414489', '112345678', 8, 34, '123456', 123789, '2020-01-02 05:56:15', 'info@gmail.com', 'This is where the url goes...', 1),
(32, 'herath', 'පුරුෂ', '612021139v', 'tr Todd yhj', '718999012', '112345678', 1, 526, '12345', 123789, '2020-01-02 12:44:46', 'info@gmail.com', 'This is where the url goes...', 1),
(33, 'වසන්ත කූමාර', 'ස්ත්‍රී', '652021139 v', 'කන්මරබ12345', '713035719', '112345678', 10, 527, '12345', 123789, '2020-01-02 15:37:46', 'info@gmail.com', 'This is where the url goes...', 1);

-- --------------------------------------------------------

--
-- Table structure for table `today_price_list`
--

CREATE TABLE `today_price_list` (
  `price_list_id` int(11) NOT NULL,
  `economic_center_id` int(11) NOT NULL,
  `main_cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) NOT NULL,
  `stock_price` float NOT NULL,
  `retail_price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `today_price_list`
--

INSERT INTO `today_price_list` (`price_list_id`, `economic_center_id`, `main_cat_id`, `sub_cat_id`, `stock_price`, `retail_price`) VALUES
(4, 1, 1, 4, 52, 56),
(5, 1, 1, 18, 85, 88),
(6, 1, 2, 45, 500, 560),
(7, 2, 1, 2, 45, 52),
(8, 2, 1, 7, 19, 26),
(9, 3, 2, 27, 28.5, 32.25),
(10, 3, 2, 31, 69, 75.5),
(11, 2, 2, 29, 56, 63),
(12, 3, 1, 10, 17, 32),
(13, 1, 2, 41, 52, 85);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(6, 'pula', 'WdZIuXPzmIRBS-1GydG_h-QCb7BcCDLK', '$2y$13$jLMhMRa3TnjVBJFmWiC/Vu4zMgUnkmo1LRAwiZ2FYHfQ4halWkcjO', NULL, 'pulasthibethmage@gmail.com', 10, 1567482006, 1567488416, '7CTruI6HH7GdAgILFPsNXOCKUKNF6r4A_1567482006'),
(7, 'rasika', 'wMBRAKl-YTFhx9v_3y2v_UT-Awg8GOn0', '$2y$13$CIJp/3cdDxeAGggOOsrlD.OhEICnxrLcf0oNXhKyYnn1m08SWi2be', NULL, 'ssnnetworking@gmail.com', 10, 1567484518, 1567486851, 'CwFUSgAdnGaufsV7ffCGLZihleDF9oXL_1567484518'),
(8, 'admin', '3v_0ALwGQ7V3pmTjgM4K9Lakbgn_ULE2', '$2y$13$r/8UqaK8tvxo3MXLC/PyXOneelcDHjzwpL3g/EyZyMwMCxvBDGpKO', NULL, 'pixelogy360@gmail.com', 10, 1567506285, 1567506541, 'dhxCtRMQ9vzZQM_m_Xi64MMIfj6kwaQ2_1567506285');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `User_ID` int(11) NOT NULL,
  `User_Name` varchar(200) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Login_Attemps` int(11) NOT NULL,
  `User_Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advertisement`
--
ALTER TABLE `advertisement`
  ADD PRIMARY KEY (`Ad_Id`),
  ADD KEY `Suplier_id` (`Supplier_Id`),
  ADD KEY `Category_id` (`Cat_Id`);

--
-- Indexes for table `advertisement_images`
--
ALTER TABLE `advertisement_images`
  ADD PRIMARY KEY (`Img_Auto_ID`),
  ADD KEY `Ad_id` (`Ad_Id`);

--
-- Indexes for table `agri_center`
--
ALTER TABLE `agri_center`
  ADD PRIMARY KEY (`Center_ID`);

--
-- Indexes for table `agri_center_tamil`
--
ALTER TABLE `agri_center_tamil`
  ADD PRIMARY KEY (`Center_ID`);

--
-- Indexes for table `buyer_detail`
--
ALTER TABLE `buyer_detail`
  ADD PRIMARY KEY (`Buyer_ID`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`dis_auto_id`);

--
-- Indexes for table `districts_tamil`
--
ALTER TABLE `districts_tamil`
  ADD PRIMARY KEY (`dis_auto_id`);

--
-- Indexes for table `economic_centers`
--
ALTER TABLE `economic_centers`
  ADD PRIMARY KEY (`economic_center_id`);

--
-- Indexes for table `main_categories`
--
ALTER TABLE `main_categories`
  ADD PRIMARY KEY (`main_cat_id`);

--
-- Indexes for table `main_categories_tamil`
--
ALTER TABLE `main_categories_tamil`
  ADD PRIMARY KEY (`main_cat_id`);

--
-- Indexes for table `main_sub_categories`
--
ALTER TABLE `main_sub_categories`
  ADD PRIMARY KEY (`sub_catid`);

--
-- Indexes for table `main_sub_categories_tamil`
--
ALTER TABLE `main_sub_categories_tamil`
  ADD PRIMARY KEY (`sub_catid`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`Status_ID`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
  ADD PRIMARY KEY (`Order_ID`);

--
-- Indexes for table `supplier_detail`
--
ALTER TABLE `supplier_detail`
  ADD PRIMARY KEY (`Supplier_ID`);

--
-- Indexes for table `today_price_list`
--
ALTER TABLE `today_price_list`
  ADD PRIMARY KEY (`price_list_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advertisement`
--
ALTER TABLE `advertisement`
  MODIFY `Ad_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `advertisement_images`
--
ALTER TABLE `advertisement_images`
  MODIFY `Img_Auto_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `agri_center`
--
ALTER TABLE `agri_center`
  MODIFY `Center_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=588;

--
-- AUTO_INCREMENT for table `agri_center_tamil`
--
ALTER TABLE `agri_center_tamil`
  MODIFY `Center_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `buyer_detail`
--
ALTER TABLE `buyer_detail`
  MODIFY `Buyer_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `dis_auto_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `districts_tamil`
--
ALTER TABLE `districts_tamil`
  MODIFY `dis_auto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `economic_centers`
--
ALTER TABLE `economic_centers`
  MODIFY `economic_center_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `main_categories`
--
ALTER TABLE `main_categories`
  MODIFY `main_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `main_categories_tamil`
--
ALTER TABLE `main_categories_tamil`
  MODIFY `main_cat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `main_sub_categories`
--
ALTER TABLE `main_sub_categories`
  MODIFY `sub_catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT for table `main_sub_categories_tamil`
--
ALTER TABLE `main_sub_categories_tamil`
  MODIFY `sub_catid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `Status_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
  MODIFY `Order_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_detail`
--
ALTER TABLE `supplier_detail`
  MODIFY `Supplier_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `today_price_list`
--
ALTER TABLE `today_price_list`
  MODIFY `price_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
