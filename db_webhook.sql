-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 13, 2022 at 08:00 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_webhook`
--

-- --------------------------------------------------------

--
-- Table structure for table `charge_created`
--

DROP TABLE IF EXISTS `charge_created`;
CREATE TABLE IF NOT EXISTS `charge_created` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `data_id` varchar(200) NOT NULL,
  `data_code` varchar(200) NOT NULL,
  `localamount` varchar(200) NOT NULL,
  `localcurrency` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charge_created`
--

INSERT INTO `charge_created` (`serial_no`, `event_id`, `event_type`, `data_id`, `data_code`, `localamount`, `localcurrency`, `customer_name`, `customer_email`, `created_at`) VALUES
(21, '891c90fd-e6c8-44f0-b2df-91719666f8b0', 'charge:created', '25d9c818-3f77-4e8e-a689-c70d2fffaa39', '325G6FDP', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-13 19:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `payment_failed`
--

DROP TABLE IF EXISTS `payment_failed`;
CREATE TABLE IF NOT EXISTS `payment_failed` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `data_id` varchar(200) NOT NULL,
  `data_code` varchar(200) NOT NULL,
  `localamount` varchar(200) NOT NULL,
  `localcurrency` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  `failed_status` varchar(200) NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_failed`
--

INSERT INTO `payment_failed` (`serial_no`, `event_id`, `event_type`, `data_id`, `data_code`, `localamount`, `localcurrency`, `customer_name`, `customer_email`, `created_at`, `failed_status`) VALUES
(8, 'df648e92-fb91-4d73-9418-d3ab86af0e44', 'charge:failed', '25d9c818-3f77-4e8e-a689-c70d2fffaa39', '325G6FDP', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-13 19:55:07', 'CANCELED');

-- --------------------------------------------------------

--
-- Table structure for table `payment_success`
--

DROP TABLE IF EXISTS `payment_success`;
CREATE TABLE IF NOT EXISTS `payment_success` (
  `serial_no` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(200) NOT NULL,
  `event_type` varchar(200) NOT NULL,
  `data_id` varchar(200) NOT NULL,
  `data_code` varchar(200) NOT NULL,
  `localamount` varchar(200) NOT NULL,
  `localcurrency` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `created_at` varchar(200) NOT NULL,
  PRIMARY KEY (`serial_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
