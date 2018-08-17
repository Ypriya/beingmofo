-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 13, 2015 at 07:48 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `beingmofo`
--

-- --------------------------------------------------------

--
-- Table structure for table `optiongroups`
--

CREATE TABLE IF NOT EXISTS `optiongroups` (
`OptionGroupID` int(11) NOT NULL,
  `OptionGroupName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `optiongroups`
--

INSERT INTO `optiongroups` (`OptionGroupID`, `OptionGroupName`) VALUES
(1, 'color'),
(2, 'size');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
`OptionID` int(11) NOT NULL,
  `OptionGroupID` int(11) DEFAULT NULL,
  `OptionName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`OptionID`, `OptionGroupID`, `OptionName`) VALUES
(1, 1, 'red'),
(2, 1, 'blue'),
(3, 1, 'green'),
(4, 2, 'S'),
(5, 2, 'M'),
(6, 2, 'L'),
(7, 2, 'XL'),
(8, 2, 'XXL');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE IF NOT EXISTS `orderdetails` (
`DetailID` int(11) NOT NULL,
  `DetailOrderID` int(11) NOT NULL,
  `DetailProductID` int(11) NOT NULL,
  `DetailName` varchar(250) COLLATE latin1_german2_ci NOT NULL,
  `DetailPrice` float NOT NULL,
  `DetailSKU` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `DetailQuantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
`OrderID` int(11) NOT NULL,
  `OrderUserID` int(11) NOT NULL,
  `OrderAmount` float NOT NULL,
  `OrderShipName` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipAddress2` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderCity` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderState` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderZip` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderCountry` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `OrderPhone` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderFax` varchar(20) COLLATE latin1_german2_ci NOT NULL,
  `OrderShipping` float NOT NULL,
  `OrderTax` float NOT NULL,
  `OrderEmail` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `OrderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `OrderShipped` tinyint(1) NOT NULL DEFAULT '0',
  `OrderTrackingNumber` varchar(80) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcategories`
--

CREATE TABLE IF NOT EXISTS `productcategories` (
`CategoryID` int(11) NOT NULL,
  `CategoryName` varchar(50) COLLATE latin1_german2_ci NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `productcategories`
--

INSERT INTO `productcategories` (`CategoryID`, `CategoryName`) VALUES
(1, 'Running'),
(2, 'Walking'),
(3, 'HIking'),
(4, 'Track and Trail'),
(5, 'Short Sleave'),
(6, 'Long Sleave');

-- --------------------------------------------------------

--
-- Table structure for table `productmap`
--

CREATE TABLE IF NOT EXISTS `productmap` (
`ProductID` int(10) NOT NULL,
  `P_Cat_No` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=166 DEFAULT CHARSET=latin1;

--
-- RELATIONS FOR TABLE `productmap`:
--   `P_Cat_No`
--       `product_cats` -> `P_Cat_No`
--

--
-- Dumping data for table `productmap`
--

INSERT INTO `productmap` (`ProductID`, `P_Cat_No`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(32, 1),
(33, 1),
(73, 1),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(106, 4),
(107, 4),
(108, 4),
(109, 4),
(110, 4),
(111, 4),
(112, 4),
(113, 4),
(114, 4),
(115, 4),
(116, 4),
(117, 4),
(118, 4),
(119, 4),
(120, 5),
(121, 5),
(122, 5),
(123, 5),
(124, 5),
(125, 5),
(126, 5),
(127, 5),
(128, 5),
(129, 5),
(130, 5),
(131, 5),
(132, 5),
(133, 5),
(134, 5),
(135, 5),
(136, 5),
(137, 5),
(138, 5),
(139, 5),
(140, 5),
(141, 5),
(142, 5),
(143, 6),
(144, 6),
(145, 6),
(146, 6),
(147, 6),
(148, 6),
(149, 6),
(150, 6),
(151, 6),
(152, 6),
(153, 6),
(154, 6),
(155, 6),
(156, 6),
(157, 6),
(158, 6),
(159, 6),
(160, 6),
(161, 6),
(162, 6),
(163, 6),
(164, 6),
(165, 6);

-- --------------------------------------------------------

--
-- Table structure for table `productoptions`
--

CREATE TABLE IF NOT EXISTS `productoptions` (
`ProductOptionID` int(10) unsigned NOT NULL,
  `ProductID` int(10) unsigned NOT NULL,
  `OptionID` int(10) unsigned NOT NULL,
  `OptionPriceIncrement` double DEFAULT NULL,
  `OptionGroupID` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `productoptions`
--

INSERT INTO `productoptions` (`ProductOptionID`, `ProductID`, `OptionID`, `OptionPriceIncrement`, `OptionGroupID`) VALUES
(1, 1, 1, 0, 1),
(2, 1, 2, 0, 1),
(3, 1, 3, 0, 1),
(4, 1, 4, 0, 2),
(5, 1, 5, 0, 2),
(6, 1, 6, 0, 2),
(7, 1, 7, 2, 2),
(8, 1, 8, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
`ProductID` int(12) NOT NULL,
  `ProductSKU` varchar(50) COLLATE latin1_german2_ci NOT NULL,
  `ProductName` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `ProductPrice` float NOT NULL,
  `ProductWeight` float NOT NULL,
  `ProductCartDesc` varchar(250) COLLATE latin1_german2_ci NOT NULL,
  `ProductShortDesc` varchar(1000) COLLATE latin1_german2_ci NOT NULL,
  `ProductLongDesc` text COLLATE latin1_german2_ci NOT NULL,
  `ProductThumb` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `ProductImage` varchar(100) COLLATE latin1_german2_ci NOT NULL,
  `ProductCategoryID` int(11) DEFAULT NULL,
  `ProductUpdateDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ProductStock` float DEFAULT NULL,
  `ProductLive` tinyint(1) DEFAULT '0',
  `ProductUnlimited` tinyint(1) DEFAULT '1',
  `ProductLocation` varchar(250) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=991 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductSKU`, `ProductName`, `ProductPrice`, `ProductWeight`, `ProductCartDesc`, `ProductShortDesc`, `ProductLongDesc`, `ProductThumb`, `ProductImage`, `ProductCategoryID`, `ProductUpdateDate`, `ProductStock`, `ProductLive`, `ProductUnlimited`, `ProductLocation`) VALUES
(1, '000-0001', 'Cotton T-Shirt', 9.99, 3, 'Light Cotton T-Shirt', 'A light cotton T-Shirt made with 100% real cotton.', 'A light cotton T-Shirt made with 100% real cotton.\r\n\r\nMade right here in the USA for over 15 years, this t-shirt is lightweight and durable.', '', '', 5, '2013-06-13 01:00:50', 100, 1, 0, NULL),
(2, '000-0004', 'Los Angeles', 179.99, 8, 'Track and Trail', 'A rugged track and trail athletic shoe', 'A rugged track and trail athletic shoe', '', '', 4, '2013-07-25 19:04:36', NULL, 0, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_cats`
--

CREATE TABLE IF NOT EXISTS `product_cats` (
`P_Cat_No` int(10) NOT NULL,
  `P_Cat_Name` varchar(250) NOT NULL,
  `P_Colour` varchar(20) NOT NULL,
  `SmallQty` int(10) DEFAULT NULL,
  `MediumQty` int(11) DEFAULT NULL,
  `LargeQty` int(11) DEFAULT NULL,
  `XLQty` int(11) DEFAULT NULL,
  `XXLQty` int(11) DEFAULT NULL,
  `Total` int(11) NOT NULL,
  `Price` double NOT NULL,
  `ShortDesc` varchar(500) NOT NULL,
  `LongDesc` varchar(500) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product_cats`
--

INSERT INTO `product_cats` (`P_Cat_No`, `P_Cat_Name`, `P_Colour`, `SmallQty`, `MediumQty`, `LargeQty`, `XLQty`, `XXLQty`, `Total`, `Price`, `ShortDesc`, `LongDesc`) VALUES
(1, 'Always', 'Black', 5, 7, 10, 8, 3, 33, 399, '', ''),
(2, 'Batman Vs. Superman', 'White', 5, 5, 10, 10, 5, 35, 449, '', ''),
(3, 'BruceLEE', 'Red', 0, 6, 8, 6, 3, 23, 449, '', ''),
(4, 'Daredevil', 'Red', 0, 5, 10, 5, 3, 23, 499, '', ''),
(5, 'Dear Women', 'Black', 0, 6, 8, 6, 3, 23, 399, '', ''),
(6, 'Entourage', 'Black', 0, 5, 8, 7, 3, 23, 399, '', ''),
(7, 'Extra Fries', 'Black', 5, 7, 10, 8, 0, 30, 499, '', ''),
(8, 'Fries Before Guys', 'Black', 7, 8, 8, 7, 0, 30, 499, '', ''),
(9, 'Training To Beat GOKU', 'Gray', 0, 0, 10, 10, 3, 23, 449, '', ''),
(10, 'Toxic', 'Gray', 3, 5, 6, 6, 3, 23, 399, '', ''),
(11, 'Let It Grow', 'Black', 0, 0, 10, 10, 3, 23, 399, '', ''),
(12, 'I DonUt  Care', 'White', 7, 7, 6, 0, 0, 20, 399, '', ''),
(13, 'Vocabulary', 'Gray', 8, 5, 6, 0, 0, 19, 399, '', ''),
(14, 'Johny Cash', 'Black', 3, 5, 7, 5, 3, 23, 499, '', ''),
(15, 'Clash Of Clans', 'Black', 0, 10, 10, 10, 3, 33, 449, '', ''),
(16, 'Mojo JOJO', 'Black', 5, 5, 5, 5, 3, 23, 449, '', ''),
(17, 'Professional Sleeper', 'Black', 5, 7, 10, 8, 3, 33, 399, '', ''),
(18, 'Pulp Fiction', 'White', 5, 5, 9, 10, 3, 32, 499, '', ''),
(19, 'Stark TONY', 'Gray', 4, 4, 6, 6, 3, 23, 449, '', ''),
(20, 'You Are Not Beautiful', 'Black', 0, 7, 8, 5, 0, 20, 399, '', ''),
(21, 'Valar Cannabis', 'Black', 0, 6, 8, 6, 3, 23, 449, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`UserID` int(11) NOT NULL,
  `UserEmail` text COLLATE latin1_german2_ci,
  `UserPassword` varchar(500) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFirstName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserLastName` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCity` varchar(90) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserState` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserZip` varchar(12) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserEmailVerified` tinyint(1) DEFAULT '0',
  `UserRegistrationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UserVerificationCode` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserIP` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserPhone` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserFax` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserCountry` varchar(20) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress` varchar(100) COLLATE latin1_german2_ci DEFAULT NULL,
  `UserAddress2` varchar(50) COLLATE latin1_german2_ci DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_german2_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `UserEmail`, `UserPassword`, `UserFirstName`, `UserLastName`, `UserCity`, `UserState`, `UserZip`, `UserEmailVerified`, `UserRegistrationDate`, `UserVerificationCode`, `UserIP`, `UserPhone`, `UserFax`, `UserCountry`, `UserAddress`, `UserAddress2`) VALUES
(1, 'priyavaity5@gmail.com', '123456', 'priya', 'vaity', NULL, NULL, NULL, 0, '2015-08-30 09:14:10', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'yogeshthorat1995@gmail.com', '123456', 'YOGESH', 'THORAT', NULL, NULL, NULL, 0, '2015-09-01 15:02:13', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, ' mankamerohit.07@gmail.com', '456789', 'rohit', 'mankame', NULL, NULL, NULL, 0, '2015-09-10 08:00:19', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, ' chaube.sagar@gmail.com', 'iammofo', 'Sagar', 'Chaube', NULL, NULL, NULL, 0, '2015-09-12 16:34:55', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, ' saiyadav3@gmail.com', 'yt1029', 'Sai', 'Yadav', NULL, NULL, NULL, 0, '2015-09-13 06:11:42', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `optiongroups`
--
ALTER TABLE `optiongroups`
 ADD PRIMARY KEY (`OptionGroupID`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
 ADD PRIMARY KEY (`OptionID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
 ADD PRIMARY KEY (`DetailID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
 ADD PRIMARY KEY (`OrderID`);

--
-- Indexes for table `productcategories`
--
ALTER TABLE `productcategories`
 ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `productmap`
--
ALTER TABLE `productmap`
 ADD PRIMARY KEY (`ProductID`), ADD KEY `fk1` (`P_Cat_No`);

--
-- Indexes for table `productoptions`
--
ALTER TABLE `productoptions`
 ADD PRIMARY KEY (`ProductOptionID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `product_cats`
--
ALTER TABLE `product_cats`
 ADD PRIMARY KEY (`P_Cat_No`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `optiongroups`
--
ALTER TABLE `optiongroups`
MODIFY `OptionGroupID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
MODIFY `OptionID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
MODIFY `DetailID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `productcategories`
--
ALTER TABLE `productcategories`
MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `productmap`
--
ALTER TABLE `productmap`
MODIFY `ProductID` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=166;
--
-- AUTO_INCREMENT for table `productoptions`
--
ALTER TABLE `productoptions`
MODIFY `ProductOptionID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
MODIFY `ProductID` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=991;
--
-- AUTO_INCREMENT for table `product_cats`
--
ALTER TABLE `product_cats`
MODIFY `P_Cat_No` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `productmap`
--
ALTER TABLE `productmap`
ADD CONSTRAINT `fk1` FOREIGN KEY (`P_Cat_No`) REFERENCES `product_cats` (`P_Cat_No`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
