-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 28, 2021 at 02:52 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `da2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `adminid` int(11) NOT NULL,
  `adminName` varchar(255) NOT NULL,
  `adminPass` varchar(200) NOT NULL,
  `adminUser` varchar(200) NOT NULL,
  `adminEmail` varchar(200) NOT NULL,
  `level` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`adminid`, `adminName`, `adminPass`, `adminUser`, `adminEmail`, `level`) VALUES
(3, 'admin0001', '202cb962ac59075b964b07152d234b70', 'admin001', 'thinh@gmail.com', 1),
(4, 'Thinh Nguyen', '202cb962ac59075b964b07152d234b70', 'thinhadmin', 'thinh@gmail.com', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brandid` int(11) NOT NULL,
  `brandName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brandid`, `brandName`) VALUES
(1, 'VINFAS'),
(2, 'OPPO'),
(3, 'NIKE');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `cartid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(200) NOT NULL,
  `sid` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `productName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`cartid`, `productid`, `quantity`, `sid`, `image`, `price`, `productName`) VALUES
(13, 1, 1, 'ed5cmv6h5rjmb7qk6dgac4bk83', ' b8f2cabeeb.jpg ', ' 1500', 'way 001'),
(14, 2, 2, 'ed5cmv6h5rjmb7qk6dgac4bk83', ' b2ecb4f412.jpg ', ' 10000', 'way 002'),
(15, 3, 4, 'ed5cmv6h5rjmb7qk6dgac4bk83', ' 677827eeac.jpg ', ' 2000', 'way 003');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `catid` int(11) NOT NULL,
  `catName` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`catid`, `catName`) VALUES
(1, 'Xe  Máy'),
(2, 'Smart Phone'),
(3, 'Đồ Gia Dụng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `comment` text NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_comment` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id`, `customer_id`, `productid`, `comment`, `name`, `date_comment`) VALUES
(3, 1, 1, 'san pham rat tuyet', 'thinhdz', '2021-02-21 22:58:36'),
(4, 1, 1, 'hello admin', 'thinhdz', '2021-02-21 23:45:22'),
(5, 1, 1, 'hihi hahahaha', 'thinhdz', '2021-02-22 01:42:34'),
(6, 1, 1, 'kaka', 'thinhdz', '2021-02-22 01:43:49'),
(7, 2, 1, 'hihi', 'thinhvip', '2021-02-22 01:53:54'),
(8, 2, 1, 'SAN PHAM TOT', 'thinhvip', '2021-02-22 01:55:50'),
(9, 1, 7, 'hay', 'thinhdz', '2021-04-28 12:10:05');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `country` varchar(200) NOT NULL,
  `zipcode` varchar(255) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`id`, `name`, `address`, `city`, `country`, `zipcode`, `phone`, `email`, `password`) VALUES
(1, 'thinhdz', 'quan1', 'bac lieu', 'vn', '700000', '19373636', 'thinhadmin@email.com', '123'),
(2, 'thinhvip', 'vien nam', 'Bac Lieu', '0', '112233', '0941406918', 'thinhadmin@gmail.com', '123'),
(3, 'admin5', 'quan1', 'bac lieu', '0', '700000', '19373636', 'admin5@email.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log`
--

CREATE TABLE `tbl_log` (
  `logid` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `adminName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_log`
--

INSERT INTO `tbl_log` (`logid`, `productName`, `price`, `quantity`, `status`, `date_order`, `adminName`) VALUES
(10, 'TI VI SANZO', '1800', 2, 1, '2021-02-19 13:47:20', 'Thinh Nguyen'),
(11, 'way 003', '8000', 4, 0, '2021-02-20 11:11:29', 'Thinh Nguyen'),
(17, 'TI VI SANZO', '1800', 2, 0, '2021-02-21 01:57:50', 'Thinh Nguyen'),
(18, 'TI VI SANZO', '1800', 2, 1, '2021-02-21 03:39:24', 'Thinh Nguyen');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date_order` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `productid`, `productName`, `customer_id`, `quantity`, `price`, `image`, `date_order`, `status`) VALUES
(11, 4, 'TI VI SANZO', 1, 2, '1800', ' 35f9ec1d4d.jpg ', '2021-02-14 07:27:38', 2),
(13, 3, 'way 003', 1, 4, '8000', ' 677827eeac.jpg ', '2021-02-20 11:10:50', 2),
(14, 7, 'way 0987', 1, 1, '1000', ' 511609b97b.jfif ', '2021-04-28 12:10:47', 0),
(15, 2, 'way 002', 1, 1, '10000', ' b2ecb4f412.jpg ', '2021-04-28 12:22:02', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `productid` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `catid` int(11) NOT NULL,
  `brandid` int(11) NOT NULL,
  `productDesc` text NOT NULL,
  `type` int(30) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`productid`, `productName`, `catid`, `brandid`, `productDesc`, `type`, `price`, `image`) VALUES
(1, 'way 001', 1, 1, ' <p>xe vip pro</p>', 1, ' 1500', ' b8f2cabeeb.jpg '),
(2, 'way 002', 1, 2, ' <p>xe vip proo</p>', 1, ' 10000', ' b2ecb4f412.jpg '),
(3, 'way 003', 1, 2, ' <p>vip</p>', 1, ' 2000', ' 677827eeac.jpg '),
(5, 'way 0019', 1, 2, ' <p>vv</p>', 1, ' 1000', ' d295bc4c21.jfif '),
(6, 'way 0098', 1, 1, ' <p>vv</p>', 1, ' 100', ' 9ada446e0b.jfif '),
(7, 'way 0987', 1, 2, ' <p>bb</p>', 1, ' 1000', ' 511609b97b.jfif ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_silder`
--

CREATE TABLE `tbl_silder` (
  `id` int(11) NOT NULL,
  `sliderName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_silder`
--

INSERT INTO `tbl_silder` (`id`, `sliderName`, `image`, `type`) VALUES
(3, 'slider1', '6609c687d5.jpg', 1),
(4, 'slider2', '402f1e5009.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wishlist`
--

CREATE TABLE `tbl_wishlist` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `productName` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_wishlist`
--

INSERT INTO `tbl_wishlist` (`id`, `productid`, `productName`, `image`, `price`, `customer_id`) VALUES
(6, 2, 'way 002', ' b2ecb4f412.jpg ', ' 10000', 1),
(8, 7, 'way 0987', ' 511609b97b.jfif ', ' 1000', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brandid`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_log`
--
ALTER TABLE `tbl_log`
  ADD PRIMARY KEY (`logid`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `tbl_silder`
--
ALTER TABLE `tbl_silder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `adminid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brandid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_log`
--
ALTER TABLE `tbl_log`
  MODIFY `logid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_silder`
--
ALTER TABLE `tbl_silder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_wishlist`
--
ALTER TABLE `tbl_wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
