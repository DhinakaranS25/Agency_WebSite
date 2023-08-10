-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 12, 2022 at 04:42 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `agro_agency`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE IF NOT EXISTS `addcart` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(25) NOT NULL,
  `edate` varchar(10) NOT NULL,
  `price` bigint(12) NOT NULL,
  `qty` bigint(12) NOT NULL,
  `total` bigint(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `p_id`, `u_id`, `edate`, `price`, `qty`, `total`) VALUES
(11, 5, 'dhina', '2022-04-21', 40, 55, 2200),
(12, 1, 'dhina', '2022-04-24', 40, 55, 2200),
(15, 18, 'dhina', '2022-05-02', 30, 120, 3600),
(16, 14, 'dhina', '2022-05-06', 50, 67, 3350),
(18, 19, 'dhina', '2022-05-08', 30, 60, 1800),
(19, 15, 'dhina', '2022-05-10', 15, 1, 15),
(26, 11, 'gowtham', '2022-05-27', 6, 55, 330),
(27, 14, 'aish', '2022-05-12', 50, 77, 3850),
(28, 1, 'naren', '2022-05-28', 40, 66, 2640),
(29, 1, 'dipin', '2022-12-14', 350, 3, 1050);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`adminid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `password`) VALUES
('admin', 'admin'),
('dhina', 'dhina');

-- --------------------------------------------------------

--
-- Table structure for table `checkout`
--

CREATE TABLE IF NOT EXISTS `checkout` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `p_id` bigint(12) NOT NULL,
  `u_id` varchar(50) NOT NULL,
  `edate` varchar(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  `location` text NOT NULL,
  `transactionid` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `checkout`
--

INSERT INTO `checkout` (`id`, `p_id`, `u_id`, `edate`, `name`, `mobile`, `email`, `location`, `transactionid`) VALUES
(1, 1, 'dipin', '2022-12-14', 'dipin', 0, 'dipin@gmail.com', 'erode', '');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_subject` varchar(250) NOT NULL,
  `comment_text` text NOT NULL,
  `comment_status` int(1) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `customers`
--


-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE IF NOT EXISTS `gallery` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id`, `image`) VALUES
(1, 'img/01.jpg'),
(2, 'img/02.webp'),
(3, 'img/03.webp'),
(4, 'img/04.webp'),
(5, 'img/05.webp'),
(6, 'img/06.webp');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(255) NOT NULL,
  `custom_email` text NOT NULL,
  `invoice_date` varchar(255) NOT NULL,
  `invoice_due_date` varchar(255) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `shipping` decimal(10,0) NOT NULL,
  `discount` decimal(10,0) NOT NULL,
  `vat` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `notes` text NOT NULL,
  `invoice_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=65 ;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice`, `custom_email`, `invoice_date`, `invoice_due_date`, `subtotal`, `shipping`, `discount`, `vat`, `total`, `notes`, `invoice_type`, `status`) VALUES
(62, '3', '', '28/04/2022', '28/04/2022', '220', '0', '0', '0', '220', '', 'receipt', 'paid'),
(56, '1', '', '27/04/2022', '28/04/2022', '130', '0', '10', '0', '130', '', 'invoice', 'paid'),
(57, '1', '', '27/04/2022', '28/04/2022', '130', '0', '10', '0', '130', '', 'invoice', 'paid'),
(58, '1', '', '27/04/2022', '28/04/2022', '130', '0', '10', '0', '130', '', 'receipt', 'paid'),
(59, '2', '', '27/04/2022', '28/04/2022', '130', '0', '10', '0', '130', '', 'receipt', 'paid'),
(60, '2', '', '27/04/2022', '28/04/2022', '130', '0', '10', '0', '130', '', 'receipt', 'paid'),
(61, '3', '', '28/04/2022', '28/04/2022', '220', '0', '0', '0', '220', '', 'receipt', 'paid'),
(63, '4', '', '29/04/2022', '29/04/2022', '60', '0', '0', '0', '60', '', 'invoice', 'open'),
(64, '5', '', '15/04/2022', '16/04/2022', '40', '0', '0', '0', '40', '', 'receipt', 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE IF NOT EXISTS `invoice_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(255) NOT NULL,
  `product` text NOT NULL,
  `qty` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `discount` varchar(255) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `invoice_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `category` varchar(100) NOT NULL,
  `sub_cat` varchar(120) NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` bigint(6) NOT NULL,
  `image` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category`, `sub_cat`, `title`, `price`, `image`) VALUES
(1, 'Fertilizers', '', 'SPIC-UREA', 350, 'mimg/spic urea.jpg'),
(2, 'Fertilizers', '', 'SPIC-SUPER', 900, 'mimg/spic super.jpg'),
(3, 'Fertilizers', '', 'WASTE DECOMPOSER', 270, 'mimg/waste decomposer.jpg'),
(4, 'Fertilizers', '', 'NEEM CAKE (veppam punnaku)', 2000, 'mimg/neem punnaku.jpg'),
(5, 'Fertilizers', '', '2-4-D', 190, 'mimg/2 4 D.jpg'),
(6, 'Fertilizers', '', 'PANJAKAVIYA', 100, 'mimg/panjakaviya.jpg'),
(7, 'Seeds', '', 'PEARL MILLET', 30, 'mimg/kambu seed.jpg'),
(8, 'Seeds', '', 'PADDY (IR-20)', 30, 'mimg/paddy seed.jpg'),
(9, 'Pesticides', '', 'ROUNDUP 5L', 1450, 'mimg/roundup.jpg'),
(10, 'Pesticides', '', 'ROUNDUP 1L', 290, 'mimg/round up 1 l.jpg'),
(11, 'Pesticides', '', 'MONOCHROPTOPUS', 150, 'mimg/mono.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL,
  `proudct_id` varchar(55) NOT NULL,
  `product_name` varchar(55) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--


-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_price` bigint(6) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `products`
--


-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `email` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`),
  UNIQUE KEY `userid` (`userid`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `userid`, `password`, `mobile`, `email`) VALUES
(9, 'dipin', 'dipin', 9988776653, 'dipin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE IF NOT EXISTS `review` (
  `id` bigint(12) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `review` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `review`
--


-- --------------------------------------------------------

--
-- Table structure for table `review_table`
--

CREATE TABLE IF NOT EXISTS `review_table` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) NOT NULL,
  `user_rating` int(1) NOT NULL,
  `user_review` text NOT NULL,
  `datetime` int(11) NOT NULL,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `review_table`
--

INSERT INTO `review_table` (`review_id`, `user_name`, `user_rating`, `user_review`, `datetime`) VALUES
(1, 'dhina', 5, 'super', 1649823968),
(6, 'hh', 5, 'good', 1650254534),
(7, 'dhina', 4, 'good', 1650349520),
(8, 'dhina', 4, 'good', 1650349520),
(9, 'dhina', 4, 'good', 1650349520),
(10, 'dhina', 4, 'good', 1650349520),
(11, 'dhina', 5, 'good', 1653026035),
(12, 'dhina', 5, 'good', 1653026035),
(13, 'dhina', 5, 'good', 1653026035),
(14, 'dhina', 5, 'good', 1653026035);

-- --------------------------------------------------------

--
-- Table structure for table `store_customers`
--

CREATE TABLE IF NOT EXISTS `store_customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address_1` varchar(255) NOT NULL,
  `address_2` varchar(255) NOT NULL,
  `town` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `name_ship` varchar(255) NOT NULL,
  `address_1_ship` varchar(255) NOT NULL,
  `address_2_ship` varchar(255) NOT NULL,
  `town_ship` varchar(255) NOT NULL,
  `postcode_ship` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `store_customers`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone`, `password`) VALUES
(1, 'Liam Moore', 'admin', 'admin@codeastro.com', '7896541250', 'd00f5d5217896fb7fd601412cb890830');
