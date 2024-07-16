-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 16, 2024 at 08:00 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fast_pass`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_number` int(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `full_name`, `email`, `phone_number`, `password`) VALUES
(1, 'TEST', 'test@gmail.com', 777123272, '827ccb0eea8a706c4c34a16891f84e7b'),
(2, 'safaa nassor mohamed', 'safaamohd406@gmail.com', 625208080, '827ccb0eea8a706c4c34a16891f84e7b'),
(3, 'Mukhtar Mohammed Saleh', 'mukhtar@gmail.com', 622203508, '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Bin Abass', 'abass@gmail.com', 718622621, '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `operator`
--

CREATE TABLE `operator` (
  `operator_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `operator`
--

INSERT INTO `operator` (`operator_id`, `username`, `password`) VALUES
(1, 'mukht4rr', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `swing`
--

CREATE TABLE `swing` (
  `swing_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `qr_code` longblob NOT NULL,
  `total_tickets` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `swing`
--

INSERT INTO `swing` (`swing_id`, `customer_id`, `qr_code`, `total_tickets`, `total_price`, `status`, `time`) VALUES
(1, 3, 0x71725f636f6465732f71725f313732313033383434362e706e67, 9, 21000, 1, '2024-07-15 10:14:06'),
(2, 3, 0x71725f636f6465732f71725f313732313033383438392e706e67, 16, 42000, 1, '2024-07-15 10:14:49'),
(3, 1, 0x71725f636f6465732f71725f313732313033383533332e706e67, 13, 29000, 1, '2024-07-15 10:15:33'),
(4, 1, 0x71725f636f6465732f71725f313732313033383732302e706e67, 2, 5000, 1, '2024-07-15 10:18:40'),
(5, 4, 0x71725f636f6465732f71725f313732313035313932372e706e67, 4, 10000, 1, '2024-07-15 13:58:47'),
(6, 3, 0x71725f636f6465732f71725f313732313037303530392e706e67, 5, 13000, 1, '2024-07-15 19:08:29'),
(7, 3, 0x71725f636f6465732f71725f313732313037313131332e706e67, 20, 50000, 1, '2024-07-15 19:18:33'),
(8, 1, 0x71725f636f6465732f71725f313732313037373630372e706e67, 11, 27000, 1, '2024-07-15 21:06:47'),
(9, 3, 0x71725f636f6465732f71725f313732313037383136382e706e67, 4, 10000, 1, '2024-07-15 21:16:08'),
(10, 3, 0x71725f636f6465732f71725f313732313037393032362e706e67, 2, 5000, 1, '2024-07-15 21:30:26'),
(11, 1, 0x71725f636f6465732f71725f313732313038303630372e706e67, 2, 5000, 1, '2024-07-15 21:56:47'),
(12, 1, 0x71725f636f6465732f71725f313732313038363131342e706e67, 12, 26000, 1, '2024-07-15 23:28:34'),
(13, 3, 0x71725f636f6465732f71725f313732313130363437342e706e67, 6, 15000, 1, '2024-07-16 05:07:54'),
(14, 1, 0x71725f636f6465732f71725f313732313130363635342e706e67, 15, 35000, 1, '2024-07-16 05:10:54'),
(15, 1, 0x71725f636f6465732f71725f313732313130373733322e706e67, 2, 5000, 1, '2024-07-16 05:28:52'),
(16, 1, 0x71725f636f6465732f71725f313732313130373838312e706e67, 4, 10000, 1, '2024-07-16 05:31:21'),
(17, 1, 0x71725f636f6465732f71725f313732313130373931382e706e67, 10, 25000, 1, '2024-07-16 05:31:58'),
(18, 1, 0x71725f636f6465732f71725f313732313130373933312e706e67, 10, 25000, 1, '2024-07-16 05:32:11'),
(19, 1, 0x71725f636f6465732f71725f313732313130373933322e706e67, 10, 25000, 1, '2024-07-16 05:32:12'),
(20, 3, 0x71725f636f6465732f71725f313732313130383834312e706e67, 32, 80000, 1, '2024-07-16 05:47:21');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `ticket_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `qr_code` longblob NOT NULL,
  `adults` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `amount_paid` int(11) NOT NULL,
  `ticket_type` varchar(20) NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`ticket_id`, `customer_id`, `qr_code`, `adults`, `children`, `amount_paid`, `ticket_type`, `status`, `time`) VALUES
(16, 1, 0x71725f636f6465732f71725f313732303936343535382e706e67, 2, 5, 9000, 'entrance', 1, '2024-07-15 09:12:54'),
(17, 3, 0x71725f636f6465732f71725f313732303936343632362e706e67, 5, 4, 14000, 'entrance', 0, '2024-07-15 19:37:30'),
(18, 3, 0x71725f636f6465732f71725f313732303936343734322e737667, 5, 4, 14000, 'entrance', 1, '2024-07-15 09:12:54'),
(19, 3, 0x71725f636f6465732f71725f31373230393634373835, 5, 4, 14000, 'entrance', 1, '2024-07-15 09:12:54'),
(20, 3, 0x71725f636f6465732f71725f313732313033323437302e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 09:12:54'),
(21, 3, 0x71725f636f6465732f71725f313732313033343831382e706e67, 1, 7, 9000, 'entrance', 1, '2024-07-15 09:13:38'),
(22, 1, 0x71725f636f6465732f71725f313732313033383734362e706e67, 2, 2, 6000, 'entrance', 1, '2024-07-15 10:19:06'),
(23, 4, 0x71725f636f6465732f71725f313732313035313930362e706e67, 2, 4, 8000, 'entrance', 1, '2024-07-15 13:58:26'),
(24, 3, 0x71725f636f6465732f71725f313732313037303439372e706e67, 3, 3, 9000, 'entrance', 1, '2024-07-15 19:08:17'),
(25, 1, 0x71725f636f6465732f71725f313732313037353232362e706e67, 2, 2, 6000, 'entrance', 1, '2024-07-15 20:27:06'),
(26, 1, 0x71725f313732313037353834332e706e67, 2, 2, 6000, 'entrance', 1, '2024-07-15 20:37:23'),
(27, 1, 0x71725f313732313037353835372e706e67, 2, 2, 6000, 'entrance', 1, '2024-07-15 20:37:37'),
(28, 1, 0x71725f313732313037353836342e706e67, 2, 2, 6000, 'entrance', 1, '2024-07-15 20:37:44'),
(29, 1, 0x71725f313732313037353931362e706e67, 5, 8, 18000, 'entrance', 1, '2024-07-15 20:38:36'),
(30, 1, 0x71725f313732313037363031342e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:40:15'),
(31, 1, 0x71725f313732313037363032342e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:40:24'),
(32, 1, 0x71725f313732313037363033322e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:40:32'),
(33, 1, 0x71725f313732313037363034352e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:40:45'),
(34, 1, 0x71725f313732313037363035322e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:40:52'),
(35, 1, 0x71725f313732313037363037312e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:41:11'),
(36, 1, 0x71725f313732313037363038382e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 20:41:28'),
(37, 1, 0x71725f313732313037363236392e706e67, 5, 5, 15000, 'entrance', 1, '2024-07-15 20:44:29'),
(38, 1, 0x71725f313732313037363339342e706e67, 4, 2, 10000, 'entrance', 1, '2024-07-15 20:46:34'),
(39, 1, 0x71725f313732313037373530302e706e67, 6, 9, 21000, 'entrance', 1, '2024-07-15 21:05:00'),
(40, 3, 0x71725f313732313037383133352e706e67, 6, 3, 15000, 'entrance', 1, '2024-07-15 21:15:35'),
(41, 1, 0x71725f313732313038343830342e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-15 23:06:44'),
(42, 1, 0x71725f313732313038353331302e706e67, 50, 100, 200000, 'entrance', 1, '2024-07-15 23:15:10'),
(43, 1, 0x71725f313732313038363130302e706e67, 60, 30, 150000, 'entrance', 1, '2024-07-15 23:28:20'),
(44, 1, 0x71725f313732313130383230302e706e67, 2, 2, 6000, 'entrance', 1, '2024-07-16 05:36:40'),
(45, 3, 0x71725f313732313130383832382e706e67, 1, 1, 3000, 'entrance', 1, '2024-07-16 05:47:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `operator`
--
ALTER TABLE `operator`
  ADD PRIMARY KEY (`operator_id`);

--
-- Indexes for table `swing`
--
ALTER TABLE `swing`
  ADD PRIMARY KEY (`swing_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticket_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `operator`
--
ALTER TABLE `operator`
  MODIFY `operator_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `swing`
--
ALTER TABLE `swing`
  MODIFY `swing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `ticket_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `swing`
--
ALTER TABLE `swing`
  ADD CONSTRAINT `swing_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket`
--
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
