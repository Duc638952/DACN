-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2021 at 06:11 PM
-- Server version: 8.0.21
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `ad_id` int NOT NULL AUTO_INCREMENT,
  `ad_usern` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ad_passw` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `ad_email` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`ad_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pd_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `cart_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `cart_qty` tinyint NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `cat_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
('BT', 'Bottom'),
('JK', 'Jacket'),
('TS', 'Tshirt');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `id_library` int NOT NULL AUTO_INCREMENT,
  `pd_id` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  `img_lib` varchar(50) COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`id_library`),
  KEY `pd_id` (`pd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`id_library`, `pd_id`, `img_lib`) VALUES
(1, '3DS', '3DS1.jpg'),
(2, '3DS', '3DS2.jpg'),
(3, '3DS', '3DS3.jpg'),
(4, 'SLD', 'SLD1.jpg'),
(5, 'SLD', 'SLD2.jpg'),
(6, 'ANGEL', 'angel1.jpg'),
(7, 'ANGEL', 'angel2.jpg'),
(8, 'ANGEL', 'angel3.jpg'),
(9, 'ANGEL', 'angel4.jpg'),
(10, 'HS', 'hs1.jpg'),
(11, 'HS', 'hs2.jpg'),
(12, 'HS', 'hs3.jpg'),
(13, 'HS', 'hs3.jpg'),
(14, 'HS', 'hs4.jpg'),
(15, '3DLOGO', '3d_logo1.jpg'),
(16, '3DLOGO', '3d_logo2.jpg'),
(17, '3DLOGO', '3d_logo3.jpg'),
(18, '3DLOGO', '3d_logo4.jpg'),
(19, '3DLOGO', '3d_logo5.jpg'),
(20, 'CCG', 'ccg1.jpg'),
(21, 'CCG', 'ccg2.jpg'),
(22, 'CCG', 'ccg3.jpg'),
(23, 'CCG', 'ccg4.jpg'),
(24, 'CCG', 'ccg5.jpg'),
(25, 'CVC', 'city1.jpg'),
(26, 'CVC', 'city2.jpg'),
(27, 'CVC', 'city3.jpg'),
(28, 'CVC', 'city4.jpg'),
(29, 'CVC', 'city5.jpg'),
(30, 'PBG', 'pbg1.jpg'),
(31, 'PBG', 'pbg2.jpg'),
(32, 'PBG', 'pbg3.jpg'),
(33, 'PBG', 'pbg4.jpg'),
(34, 'PBG', 'pbg5.jpg'),
(35, 'PBR', 'pbr1.jpg'),
(36, 'PBR', 'pbr2.jpg'),
(37, 'PBR', 'pbr3.jpg'),
(38, 'PBR', 'pbr4.jpg'),
(39, 'PBR', 'pbr5.jpg'),
(40, 'PCJ', 'pcj1.jpg'),
(41, 'PCJ', 'pcj2.jpg'),
(42, 'PCJ', 'pcj3.jpg'),
(43, 'PCJ', 'pcj4.jpg'),
(44, 'PCJ', 'pcj5.jpg'),
(45, 'AGLOGO', 'ag1.jpg'),
(46, 'AGLOGO', 'ag2.jpg'),
(47, 'AGLOGO', 'ag3.jpg'),
(48, 'AGLOGO', 'ag4.jpg'),
(49, 'AGLOGO', 'ag5.jpg'),
(50, 'BEAR', 'b1.jpg'),
(51, 'BEAR', 'b2.jpg'),
(52, 'BEAR', 'b3.jpg'),
(53, 'CH', 'ch1.jpg'),
(54, 'CH', 'ch2.jpg'),
(55, 'CH', 'ch3.jpg'),
(56, 'CH', 'ch4.jpg'),
(57, 'CH', 'ch5.jpg'),
(58, 'DP', 'dp1.jpg'),
(59, 'DP', 'dp2.jpg'),
(60, 'DP', 'dp3.jpg'),
(61, 'DP', 'dp4.jpg'),
(62, 'DP', 'dp5.jpg'),
(63, 'LA', 'la1.jpg'),
(64, 'LA', 'la2.jpg'),
(65, 'LA', 'la3.jpg'),
(66, 'LA', 'la4.jpg'),
(67, 'LA', 'la5.jpg'),
(68, 'MC', 'mc1.jpg'),
(69, 'MC', 'mc2.jpg'),
(70, 'MC', 'mc3.jpg'),
(71, 'MC', 'mc4.jpg'),
(72, 'PC', 'pc1.jpg'),
(73, 'PC', 'pc2.jpg'),
(74, 'PC', 'pc3.jpg'),
(75, 'PC', 'pc4.jpg'),
(76, 'PC', 'pc5.jpg'),
(77, 'RB', 'rb1.jpg'),
(78, 'RB', 'rb2.jpg'),
(79, 'RB', 'rb3.jpg'),
(80, 'RB', 'rb4.jpg'),
(81, 'RB', 'rb5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE IF NOT EXISTS `order_detail` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `adress` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `cart_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `pd_id` int NOT NULL,
  `order_qty` tinyint NOT NULL,
  `order_price` float NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `pd_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pd_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pd_desc` text CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `pd_price` int NOT NULL,
  `pd_img` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `cat_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`pd_id`),
  KEY `fk_product_category` (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pd_id`, `pd_name`, `pd_desc`, `pd_price`, `pd_img`, `cat_id`) VALUES
('3DLOGO', '3D LOGO VERSITY JACKET', 'Flocked insignia-Leather sleeve - Zip pocket - Oversized shoulder, regular length - Model is 183cm/6 feet wearing size Large', 175, '3d_logo.jpg', 'JK'),
('3DS', '3D LOGO SHORT', 'Heavy cotton - Embroidered AFGK logo on the side - Elastic waist - Model is 176cm wearing size Medium ', 70, '3ds.jpg', 'BT'),
('AGLOGO', 'ANGEL LOGO TEE', 'Angel&Classic 3D logo print - 100% cotton\r\n230gsm - Choose your normal size for slightly oversized fit', 60, 'ag.jpg', 'TS'),
('ANGEL', 'ANGEL JEANS', 'Straight leg - Loose fit, Slightly elastic - Model is 177cm 60KG wearing size Small - Angel print on the back pocket - Heavy denim \r\n\r\n', 90, 'angel.jpg', 'BT'),
('BEAR', 'BEAR', '100% cotton - 220gsm - Model is 181cm 68kg wearing size Large - A Few good bears ', 60, 'bear.jpg', 'TS'),
('CCG', 'CEO COLLAGE JACKET', '2021 BOSS WAY - Extra lining, extra warm - CEO embroidered patch on the back - Flocked “23” on the sleeve - More details for you to find… - Model is 6”1/184cm 72KG wearing size Large', 200, 'ccg.jpg', 'JK'),
('CH', 'CHILD HOOD', '100% cotton - Retro style\r\n220gsm - Model is 181cm 68kg wearing size Large', 60, 'ch.jpg', 'TS'),
('CVC', 'CITY VIEW COLLAGE JACKET', 'Heavy winter jacket - 90% wool - Doncare logo on the chest - Flocked city print - Regular length, oversized shoulder - Model 1: 183cm, 65kg wearing size Large - Model 2: 176cm, 60kg wearing size Medium - Model 3: 164cm, 48kg wearing size Small', 225, 'city.jpg', 'JK'),
('DP', 'DAFT PUNK', 'Daft Punk theme print - 100% cotton\r\n230gsm - “You are the light behind a cloud. You are the end and the beginning.”', 60, 'dp.jpg', 'TS'),
('HS', 'HEART SHORT', 'Flocked AFGK patch - Heavy embroidered heart and “A” star - Elastic waist - Model is 176cm wearing size Medium', 70, 'hs.jpg', 'BT'),
('LA', 'LIFE ATTITUDE', '100% cotton - 230gsm - Choose your normal size for slightly oversized fit  - “This is my life, This is my attitude”', 65, 'la.jpg', 'TS'),
('MC', 'MECHANIC LOGO', '100% cotton - 220gsm - Model is 181cm 68kg wearing size Large - 3D Mechanic logo on the back ', 66, 'mechanic.jpg', 'TS'),
('PBG', 'PANELLED BIKER JACKET-GREEN', 'Zipped pockets - Zip detailing at the cuffs - Customized “A” logo zipper - Snap button collar - Logo patch at the back - True to size - Model is 183cm 75KG wearing size Large', 185, 'pbg.jpg', 'JK'),
('PBR', 'PANELLED BIKER JACKET-RED', 'Zipped pockets - Zip detailing at the cuffs - Customized “A” logo zipper - Snap button collar - Logo patch at the back - True to size - Model is 183cm 75KG wearing size Large', 185, 'pbr.jpg', 'JK'),
('PC', 'PROPER CUNT', '100% Cotton - 240gsm - Choose your regular size for slightly oversized fit - “I’m a cunt, but the proper one”', 65, 'pc.jpg', 'TS'),
('PCJ', 'PROM COLLAGE JACKET', 'Flocked DONCARE logo on the chest - Leather sleeve - Back to high school for one last dance - Model is 6feet wearing Large', 200, 'pcj.jpg', 'JK'),
('RB', 'RAINBOW', '100% cotton - 220gsm - Model is 181cm 68kg wearing size Large - Life is like a rainbow', 60, 'rb.jpg', 'TS'),
('SLD', '3D LOGO STRAIGHT LEG DENIM', 'Non-elastic material - Straight leg - Mid-waist - All-over 3D logo print - Model is 183cm 70kg wearing size M ', 90, 'sld.jpg', 'BT');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `user_fullname` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `user_phone` int NOT NULL,
  `user_adress` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  `user_email` varchar(250) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `library`
--
ALTER TABLE `library`
  ADD CONSTRAINT `fk_library_product` FOREIGN KEY (`pd_id`) REFERENCES `product` (`pd_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
