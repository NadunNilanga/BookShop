-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2020 at 06:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `book_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `rec_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `t_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `daily_stocks`
--

CREATE TABLE `daily_stocks` (
  `rec_no` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `invoice_id` int(11) NOT NULL,
  `rec_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `sub_total` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `invoice_total` decimal(10,2) NOT NULL,
  `cash` decimal(10,2) NOT NULL,
  `balance` decimal(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=active, 1 deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_descriptiion` varchar(255) NOT NULL,
  `item_qty` decimal(10,2) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `bar_code_value` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL COMMENT '0=active, 1 =deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_descriptiion`, `item_qty`, `unit_price`, `bar_code_value`, `created_at`, `status`) VALUES
(1, 'sdasd', '45.00', '450.00', '12346', '2020-05-05 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `privilages`
--

CREATE TABLE `privilages` (
  `privilage_id` int(11) NOT NULL,
  `privilage` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `privilages`
--

INSERT INTO `privilages` (`privilage_id`, `privilage`, `created_at`) VALUES
(1, 'dsdgdgd', '2020-04-10 18:13:15');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL COMMENT '0=active,1=deleted'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `password`, `created_at`, `status`) VALUES
(2, 'fgdgf', 'dfgdfgd', '2020-04-10 18:14:00', 0),
(4, 'nadun', 'ttt', '2020-05-01 18:30:00', 0),
(5, 'nadun2', '13', '2020-04-04 18:30:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_privilages`
--

CREATE TABLE `user_privilages` (
  `user_privilage_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `privilage_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user_privilages`
--

INSERT INTO `user_privilages` (`user_privilage_id`, `user_id`, `privilage_id`, `created_at`) VALUES
(1, 4, 1, '2020-11-17 17:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `login_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout_at` timestamp NULL DEFAULT NULL,
  `in_use` int(11) NOT NULL DEFAULT 1 COMMENT '1=inuse 0=expired'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `token`, `user_id`, `login_at`, `logout_at`, `in_use`) VALUES
(1, '4_20201118_005715', 4, '2020-11-17 19:27:15', '2020-11-17 19:27:17', 0),
(2, '4_20201118_005717', 4, '2020-11-17 19:27:17', '2020-11-17 19:27:39', 0),
(3, '4_20201118_005801', 4, '2020-11-17 19:28:01', '2020-11-17 19:28:17', 0),
(4, '4_20201118_005857', 4, '2020-11-17 19:28:57', '2020-11-17 19:31:45', 0),
(5, '4_20201118_010148', 4, '2020-11-17 19:31:48', '2020-11-17 19:33:11', 0),
(6, '4_20201118_010331', 4, '2020-11-17 19:33:31', '2020-11-19 03:02:54', 0),
(7, '4_20201119_083254', 4, '2020-11-19 03:02:54', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`rec_id`) USING BTREE,
  ADD KEY `invoice_id` (`invoice_id`) USING BTREE,
  ADD KEY `item_id` (`item_id`) USING BTREE;

--
-- Indexes for table `daily_stocks`
--
ALTER TABLE `daily_stocks`
  ADD PRIMARY KEY (`rec_no`) USING BTREE,
  ADD KEY `item_id` (`item_id`) USING BTREE;

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`invoice_id`) USING BTREE;

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`) USING BTREE;

--
-- Indexes for table `privilages`
--
ALTER TABLE `privilages`
  ADD PRIMARY KEY (`privilage_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`) USING BTREE;

--
-- Indexes for table `user_privilages`
--
ALTER TABLE `user_privilages`
  ADD PRIMARY KEY (`user_privilage_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`,`privilage_id`) USING BTREE,
  ADD KEY `privilage_id` (`privilage_id`) USING BTREE;

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_idfk` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `rec_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `daily_stocks`
--
ALTER TABLE `daily_stocks`
  MODIFY `rec_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `privilages`
--
ALTER TABLE `privilages`
  MODIFY `privilage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_privilages`
--
ALTER TABLE `user_privilages`
  MODIFY `user_privilage_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `daily_stocks`
--
ALTER TABLE `daily_stocks`
  ADD CONSTRAINT `daily_stocks_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_privilages`
--
ALTER TABLE `user_privilages`
  ADD CONSTRAINT `user_privilages_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_privilages_ibfk_2` FOREIGN KEY (`privilage_id`) REFERENCES `privilages` (`privilage_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD CONSTRAINT `user_idfk` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
