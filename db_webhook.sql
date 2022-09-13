-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 13, 2022 at 07:10 PM
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
-- Table structure for table `ayc_coinbase_transactions`
--

DROP TABLE IF EXISTS `ayc_coinbase_transactions`;
CREATE TABLE IF NOT EXISTS `ayc_coinbase_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` varchar(50) NOT NULL,
  `event_type` varchar(20) NOT NULL,
  `data_id` varchar(50) NOT NULL,
  `data_code` varchar(10) NOT NULL,
  `localamount` float NOT NULL,
  `localcurrency` varchar(10) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ayc_coinbase_transactions`
--

INSERT INTO `ayc_coinbase_transactions` (`id`, `event_id`, `event_type`, `data_id`, `data_code`, `localamount`, `localcurrency`, `customer_name`, `customer_email`, `payment_status`, `created_at`) VALUES
(2, '286e5b9c-fb6e-4d89-a695-92dc35deb5fe', 'charge:created', '5fb71070-ed3d-45c5-98b2-2bcd9b3baa05', '9CBVAWJ2', 10, 'USD', 'amit singh', 'abc@abc.com', 1, '2022-09-12 05:14:13'),
(3, '01d14652-4020-4640-9324-d879f46956ba', 'charge:created', 'ddb936a0-7709-45b7-843b-78a640a7a92c', '2LEE2C48', 0.01, 'USD', 'Amita Singh', 'dellwhatthehell@gmail.com', 1, '2022-09-12 05:22:39');

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `charge_created`
--

INSERT INTO `charge_created` (`serial_no`, `event_id`, `event_type`, `data_id`, `data_code`, `localamount`, `localcurrency`, `customer_name`, `customer_email`, `created_at`) VALUES
(2, '92578df9-2771-49be-8a66-2973e0386236', 'charge:created', '6bdb93e7-2d63-40a5-a951-a518c8a80e58', 'A4J4XEZ3', '10.00', 'USD', 'amit singh', 'abc@abc.com', ''),
(3, 'b410c3d6-8fbd-434e-80ce-fb03a1e9bb4b', 'charge:created', 'a0164741-2d82-4e8f-92bb-11491375e8ba', '9CAVMNZ2', '10.00', 'USD', 'amit singh', 'abc@abc.com', ''),
(4, '9828e9e1-3b1d-481d-88e0-90b9604d58cc', 'charge:created', 'e2bd11c7-7741-472a-98f5-3a6d27d1654d', '65X47Z6T', '10.00', 'USD', 'amit singh', 'abc@abc.com', ''),
(5, '2d0a919d-2e1e-43b3-9732-0d7ba9b807a8', 'charge:created', '758db67f-be46-4fe3-8120-d9a8c3cc55ae', 'CRDE3LW9', '10.00', 'USD', 'amit singh', 'abc@abc.com', ''),
(6, 'a5817efb-433e-44c0-aa00-b0a456b8bc5b', 'charge:created', 'a0828543-39f6-442f-9d58-9da2d770a79c', 'APXBRG3R', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T15:58:06Z'),
(7, '99ca402d-46af-4814-b6ca-dbde6c01af77', 'charge:created', 'b86ddc1e-bf80-480c-9db7-c02dfc57e70b', '3HHHNDMK', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T15:58:09Z'),
(8, '95273a4d-46fa-452f-9f5a-b532f2328f19', 'charge:created', '76fb2034-40df-4772-994f-59d86669f295', '4XQA43RR', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T15:59:08Z'),
(9, '91f69899-7b6f-4fd8-ac08-d29f7dbbcff0', 'charge:created', '8a36f281-5f98-4f53-ac75-025ae917a3a2', 'N3AD9GJH', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T16:00:17Z'),
(10, '9c80344f-a573-4d0d-8067-f05c8ffe4fea', 'charge:created', '4df9ab4b-984d-4b1c-845f-110b6ec4d607', 'CLKY3CLD', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:41:50Z'),
(11, 'd17b9a64-6a42-410e-a01b-9bb89f9b367e', 'charge:created', 'ea244888-3f5b-4057-9bc2-130bf83edd4b', 'MW22M6GY', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:41:59Z'),
(12, 'a5497654-af37-4a12-bcb7-fa537b80d598', 'charge:created', '46b33fc9-7149-4b91-a992-089d309ea1e0', '3XRMGWYE', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:44:07Z'),
(13, '474c5f33-aeec-4d54-8690-36b082740527', 'charge:created', '9bc25431-776a-48da-8b29-863cab697e3f', 'BBVXBH67', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:49:20Z'),
(14, '25a36342-110b-4a23-a03d-20b90a2b99e3', 'charge:created', '25125475-122d-4ab6-bddb-7dec6a3f8915', 'N2VPMLKR', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:49:23Z'),
(15, '362e6b82-210b-4ded-b1b6-0a44bea8446d', 'charge:created', '740a621a-3663-4b15-972b-9b2aabb8b8ab', 'AEHQMAB6', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:52:26Z'),
(16, 'a68ddac9-b1cd-451e-99fa-afa0a561d661', 'charge:created', '10e72eb1-eaac-4ef1-9bae-9fd5b51b47bb', 'D9539PGL', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:52:49Z'),
(17, '36c19747-8b95-4716-8734-ea21b77f31d1', 'charge:created', '81babd6c-4890-4d5d-8cd0-4d3463c91172', 'RLG3DN74', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12T04:31:39Z'),
(18, '3bdf9ea6-2051-4ac8-871d-0ce11b03c19e', 'charge:created', 'bcc7ecc6-be88-436e-a888-7d6dbbaf646f', 'FJWXQ622', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12T05:12:55Z'),
(19, 'bee79214-c55d-4e0a-950d-27fb234388db', 'charge:created', '3cce4ea0-ecaf-4e76-bc8d-cb8b453a76ea', 'CLTPH9QB', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12 05:13:30'),
(20, 'b5f3d0a8-2adf-4a7d-a0dc-3986e5fd6ff4', 'charge:created', 'a73573c9-a8e5-43a7-a5d4-ac5f6d263f30', '4P5GW8AQ', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12 11:11:01');

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_failed`
--

INSERT INTO `payment_failed` (`serial_no`, `event_id`, `event_type`, `data_id`, `data_code`, `localamount`, `localcurrency`, `customer_name`, `customer_email`, `created_at`, `failed_status`) VALUES
(1, '1b37f9c5-6369-4ca2-8de6-521c9d9adbdb', 'charge:failed', '740a621a-3663-4b15-972b-9b2aabb8b8ab', 'AEHQMAB6', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T17:52:32Z', 'CANCELED'),
(2, '7091380f-9c4f-430a-bb9c-1ff62038944b', 'charge:failed', '4df9ab4b-984d-4b1c-845f-110b6ec4d607', 'CLKY3CLD', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T18:41:57Z', 'EXPIRED'),
(3, '81ccb5ca-a9c9-44fc-98c5-dfd3ee1c6f56', 'charge:failed', '10e72eb1-eaac-4ef1-9bae-9fd5b51b47bb', 'D9539PGL', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-11T18:52:54Z', 'EXPIRED'),
(4, '31ba8ef9-56c4-4028-a61d-8e5b3088e7c0', 'charge:failed', 'ddb936a0-7709-45b7-843b-78a640a7a92c', '2LEE2C48', '0.01', 'USD', 'Amita Singh', 'dellwhatthehell@gmail.com', '2022-09-12 05:23:02Z', 'CANCELED'),
(5, 'c97b7a23-9024-4ece-8ebd-5c25896812ee', 'charge:failed', '81babd6c-4890-4d5d-8cd0-4d3463c91172', 'RLG3DN74', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12 05:31:44Z', 'EXPIRED'),
(6, 'fd92f3d0-2362-4652-a2bc-834b1b50882d', 'charge:failed', '5bff3db1-da98-4999-aec1-b62990f4dffb', 'HFNCDB6Y', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12 12:01:18', 'EXPIRED'),
(7, 'bd570f56-64e1-4a01-ba43-60070a49c2aa', 'charge:failed', 'a73573c9-a8e5-43a7-a5d4-ac5f6d263f30', '4P5GW8AQ', '10.00', 'USD', 'amit singh', 'abc@abc.com', '2022-09-12 12:11:06', 'EXPIRED');

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
