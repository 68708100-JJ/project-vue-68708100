-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2026 at 07:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `firstName` varchar(50) NOT NULL,
  `lastName` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `firstName`, `lastName`, `phone`, `username`, `password`) VALUES
(1, 'สมชาย', 'ใจดี', '0812345678', 'somchai', 'pass1234'),
(2, 'วิภา', 'สุขสันต์', '0898765432', 'wipa', 'wipa2025'),
(3, 'John', 'Doe', '0991122334', 'johnd', 'securepwd'),
(4, 'สมยอช', 'ใจเด็ด', '0825360612', 'somyoht', 'pass123458'),
(5, 'วินาที', 'สุขกันเถอะเรา', '0825360613', 'winate', 'wipa2028785'),
(6, 'Johny', 'Doeiei', '0825360614', 'johny', 'securepw7878d');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `emp_id` varchar(10) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `active` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
<<<<<<< HEAD
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`emp_id`, `full_name`, `department`, `salary`, `active`, `created_at`) VALUES
('EMP001', 'นายสมชาย ใจดี', 'ฝ่ายขาย', '25000.00', 1, '2023-01-15 10:00:00'),
('EMP002', 'นางสาววิภา สุขสันต์', 'ฝ่ายการตลาด', '30000.00', 1, '2023-02-20 10:00:00'),
('EMP003', 'นายจอห์น โด้', 'ฝ่ายไอที', '35000.00', 1, '2023-03-10 10:00:00'),
('EMP004', 'นางสมยอช ใจเด็ด', 'ฝ่ายบัญชี', '28000.00', 1, '2023-04-05 10:00:00'),
('EMP005', 'นายวินาที สุขกันเถอะเรา', 'ฝ่ายขาย', '26000.00', 0, '2023-05-12 10:00:00');

--
=======
>>>>>>> 8620955fdb1d087a94ffcf79ee5c9ef05d0e8fa8
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
