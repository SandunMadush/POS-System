-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2020 at 07:34 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kdupos`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand`, `status`) VALUES
(1, 'Munchee', 'Active'),
(2, 'Maliban', 'Active'),
(3, 'Elephant House', 'Active'),
(4, 'Magic', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `cashier`
--

CREATE TABLE `cashier` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cashier`
--

INSERT INTO `cashier` (`id`, `username`, `password`, `status`) VALUES
(2, 'prince', '1998', 'Active'),
(3, 'sam', '2001', 'Active'),
(4, 'salindu', '2009', 'Active'),
(5, 'cooray', '1967', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `category` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `category`, `status`) VALUES
(1, 'Biscuit', 'Active'),
(2, 'Chocolate', 'Active'),
(3, 'Drinks', 'Active'),
(5, 'Ice Cream', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `cost_price` int(11) NOT NULL,
  `retail_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `barcode` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product`, `description`, `cat_id`, `brand_id`, `cost_price`, `retail_price`, `qty`, `barcode`, `status`) VALUES
(1, 'Cream Cracker', 'Cream Cracker by Munchee.', 1, 1, 50, 60, 20, 111000, 'Active'),
(2, 'Tikiri Marie', 'Tikiri Marie by Maliban.', 1, 2, 45, 50, 11, 222000, 'Active'),
(4, 'Vanilla IceCream', 'Ice Cream', 5, 4, 45, 60, 100, 333000, 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `cashier` varchar(255) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `pay` int(11) NOT NULL,
  `balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `date`, `cashier`, `subtotal`, `pay`, `balance`) VALUES
(1, '2020/01/04', '', 1650, 2000, 350),
(2, '2020/01/04', '', 2820, 3000, 180),
(3, '2020/01/04', '', 850, 1000, 150),
(4, '2020/01/04', '', 250, 300, 50),
(5, '2020/01/04', '', 420, 500, 80),
(6, '2020/01/04', '', 600, 1000, 400),
(7, '2020/01/04', '', 480, 500, 20),
(8, '2020/01/05', '', 300, 1000, 700),
(9, '2020/01/05', '', 450, 500, 50),
(10, '2020/01/05', '', 100, 1000, 900),
(11, '2020/01/05', '', 50, 100, 50),
(12, '2020/01/05', '', 360, 500, 140),
(13, '2020/01/05', '', 240, 300, 60),
(14, '2020/01/05', '', 120, 150, 30),
(15, '2020/01/05', '', 180, 200, 20),
(16, '2020/01/05', '', 240, 500, 260),
(17, '2020/01/05', '', 60, 100, 40),
(18, '2020/01/05', '', 180, 1000, 820),
(19, '2020/01/05', '', 150, 500, 350),
(20, '2020/01/05', '', 120, 2000, 1880),
(21, '2020/01/05', '', 120, 150, 30),
(22, '2020/01/06', '', 120, 150, 30),
(23, '2020/01/08', '', 300, 500, 200),
(24, '2020/01/08', 'sam', 100, 100, 0),
(25, '2020/01/08', 'prince', 180, 200, 20),
(26, '2020/01/13', 'sam', 120, 200, 80),
(27, '2020/01/13', 'prince', 300, 500, 200),
(28, '2020/01/13', 'prince', 180, 200, 20),
(29, '2020/01/16', 'prince', 300, 500, 200),
(30, '2020/01/16', 'prince', 300, 500, 200),
(31, '2020/01/16', 'sam', 60, 100, 40),
(32, '2020/01/16', 'salindu', 100, 1000, 900),
(33, '2020/01/16', 'salindu', 270, 500, 230),
(34, '2020/01/27', 'prince', 330, 500, 170),
(35, '2020/01/29', 'prince', 280, 300, 20),
(36, '2020/01/29', 'prince', 280, 300, 20),
(37, '2020/01/29', 'prince', 330, 500, 170);

-- --------------------------------------------------------

--
-- Table structure for table `sales_product`
--

CREATE TABLE `sales_product` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `sell_price` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_product`
--

INSERT INTO `sales_product` (`id`, `sales_id`, `product_id`, `sell_price`, `qty`, `total`) VALUES
(1, 2, 111000, 60, 32, 1920),
(2, 2, 222000, 50, 18, 900),
(3, 3, 111000, 60, 10, 600),
(4, 3, 222000, 50, 5, 250),
(5, 4, 222000, 50, 5, 250),
(6, 5, 111000, 60, 7, 420),
(7, 6, 222000, 50, 12, 600),
(8, 7, 111000, 60, 8, 480),
(9, 8, 222000, 50, 6, 300),
(10, 9, 222000, 50, 9, 450),
(11, 10, 222000, 50, 2, 100),
(12, 11, 222000, 50, 1, 50),
(13, 12, 111000, 60, 6, 360),
(14, 13, 111000, 60, 4, 240),
(15, 14, 111000, 60, 2, 120),
(16, 15, 111000, 60, 3, 180),
(17, 16, 111000, 60, 4, 240),
(18, 17, 111000, 60, 1, 60),
(19, 18, 111000, 60, 3, 180),
(20, 19, 222000, 50, 3, 150),
(21, 20, 111000, 60, 2, 120),
(22, 21, 111000, 60, 2, 120),
(23, 22, 111000, 60, 2, 120),
(24, 23, 111000, 60, 5, 300),
(25, 24, 222000, 50, 2, 100),
(26, 25, 111000, 60, 3, 180),
(27, 26, 111000, 60, 2, 120),
(28, 27, 111000, 60, 5, 300),
(29, 28, 111000, 60, 3, 180),
(30, 29, 111000, 60, 5, 300),
(31, 30, 222000, 50, 6, 300),
(32, 31, 111000, 60, 1, 60),
(33, 32, 222000, 50, 2, 100),
(34, 33, 222000, 50, 3, 150),
(35, 33, 111000, 60, 2, 120),
(36, 34, 111000, 60, 3, 180),
(37, 34, 222000, 50, 3, 150),
(38, 35, 222000, 50, 2, 100),
(39, 35, 111000, 60, 3, 180),
(40, 36, 111000, 60, 3, 180),
(41, 37, 111000, 60, 3, 180),
(42, 37, 222000, 50, 3, 150);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cashier`
--
ALTER TABLE `cashier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_product`
--
ALTER TABLE `sales_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cashier`
--
ALTER TABLE `cashier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sales_product`
--
ALTER TABLE `sales_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
