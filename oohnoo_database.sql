-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2021 at 09:50 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `details`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'TV', 'This Category for all kinds of TV', '1577028849.png', 0, 2, 2, '2019-12-22 09:34:09', '2019-12-24 04:14:32'),
(2, 'Freez', 'All of freez', '1577115684.png', 1, 2, 2, '2019-12-23 09:41:25', '2019-12-25 21:37:06'),
(3, 'test status', 'test', '1577308526.png', 0, 2, 2, '2019-12-25 21:15:26', '2019-12-25 21:36:05'),
(6, 'Freez 2', NULL, NULL, 0, 1, NULL, '2019-12-26 07:52:47', '2019-12-26 07:52:47'),
(7, 'Television', NULL, NULL, 0, 1, NULL, '2019-12-26 07:56:28', '2019-12-26 07:56:28'),
(8, 'Cooker', NULL, NULL, 0, 1, NULL, '2019-12-26 07:57:55', '2019-12-26 07:57:55'),
(9, 'Freez 7', NULL, NULL, 1, 1, 1, '2019-12-26 08:20:48', '2019-12-26 08:21:16'),
(10, 'Test item', NULL, NULL, 0, 1, NULL, '2019-12-27 09:33:05', '2019-12-27 09:33:05'),
(11, 'Speaker', NULL, NULL, 1, 1, NULL, '2020-01-28 16:10:24', '2020-01-28 16:10:24');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(255) UNSIGNED NOT NULL,
  `full_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `care_of` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organization` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remind_status` int(1) DEFAULT NULL,
  `referral` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_contact` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referral_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_date` date DEFAULT NULL,
  `created_by` int(255) DEFAULT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `full_name`, `email`, `password`, `contact`, `care_of`, `phone`, `dob`, `gender`, `job`, `organization`, `present_address`, `address`, `post_code`, `city`, `state`, `zip_code`, `country`, `image`, `status`, `remind_status`, `referral`, `referral_contact`, `referral_address`, `details`, `remember_token`, `verify_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(5, 'Test Customer', 'test@customer.com', NULL, '01932431352', 'Test father name', '01933432324', '2020-01-17', 'Female', 'Test job', 'Test org', 'Test Address pre', 'Test address per', NULL, NULL, NULL, NULL, NULL, '1580241906.jpg', '1', NULL, 'Test ref', '01943567890', 'Test address', 'Test Test tEs', NULL, NULL, 1, NULL, '2020-01-28 20:05:07', '2020-01-28 20:05:07'),
(6, 'Test Customer', NULL, NULL, '01823232323', 'Test Father\'s name', '01823232323', '2020-02-04', 'Female', 'House wife', NULL, 'Test present address', 'Test permanent address', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 'Test ref', '01823232323', 'Test ref address', 'test', NULL, NULL, 1, NULL, '2020-02-10 06:26:20', '2020-02-10 06:26:20'),
(7, 'Test Customer Account', NULL, NULL, '01703034247', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Test Customer Address, 789789, TXT, Country', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-07 14:59:44', '2020-09-07 14:59:44'),
(8, 'test test', NULL, NULL, '01703034249', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'testtest test', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-07 15:38:54', '2020-09-07 15:38:54'),
(9, 'Test customer contact', NULL, NULL, '01703034244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customer Long address', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-09-08 03:24:31', '2020-09-14 14:27:47'),
(10, 'New Customer', NULL, NULL, '01825322625', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Customer Has Shipping Address', NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 02:15:20', '2020-10-06 02:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_123746_create_products_table', 1),
(4, '2019_12_14_183244_create_categories_table', 1),
(5, '2019_12_20_055844_create_roles_table', 1),
(6, '2019_12_20_060002_create_role_users_table', 1),
(7, '2019_12_20_083303_create_vendors_table', 1),
(8, '2019_12_22_150137_create_subcategories_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(255) NOT NULL,
  `product_id` int(255) DEFAULT NULL,
  `sales_id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(11,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `product_id`, `sales_id`, `name`, `price`, `qty`, `total`, `created_at`, `updated_at`) VALUES
(12, NULL, 10, 'Test item 1', '5.00', 20, '100.00', '2020-09-01 19:37:10', '2020-09-01 19:37:10'),
(13, NULL, 10, 'Test item 2', '10.00', 10, '100.00', '2020-09-01 19:37:10', '2020-09-01 19:37:10'),
(14, NULL, 10, 'Test item 3', '6.00', 6, '36.00', '2020-09-01 19:37:10', '2020-09-01 19:37:10'),
(15, NULL, 10, 'Test item 4', '2.00', 40, '80.00', '2020-09-01 19:37:10', '2020-09-01 19:37:10'),
(16, NULL, 10, 'Test item 5', '3.00', 30, '90.00', '2020-09-01 19:37:10', '2020-09-01 19:37:10'),
(17, NULL, 11, 'test product', '20.00', 10, '200.00', '2020-09-02 13:11:18', '2020-09-02 13:11:18'),
(18, NULL, 11, 'test product 2', '10.00', 100, '1000.00', '2020-09-02 13:11:18', '2020-09-02 13:11:18'),
(19, NULL, 12, 'Test product 1', '10.00', 100, '1000.00', '2020-09-07 14:46:56', '2020-09-07 14:46:56'),
(20, NULL, 12, 'Test Product 2', '5.00', 20, '100.00', '2020-09-07 14:46:56', '2020-09-07 14:46:56'),
(21, NULL, 12, 'Test Product 3', '15.00', 20, '300.00', '2020-09-07 14:46:56', '2020-09-07 14:46:56'),
(22, NULL, 13, 'test', '12.00', 121, '1452.00', '2020-09-07 15:38:54', '2020-09-07 15:38:54'),
(23, NULL, 14, 'Product', '10.00', 10, '100.00', '2020-09-07 15:41:13', '2020-09-07 15:41:13'),
(24, NULL, 15, 'Test product 2', '20.00', 20, '400.00', '2020-09-08 03:24:31', '2020-09-08 03:24:31'),
(25, NULL, 15, 'Product 3', '30.00', 10, '300.00', '2020-09-08 03:24:31', '2020-09-08 03:24:31'),
(26, NULL, 16, 'Sale item 1', '10.00', 10, '100.00', '2020-09-08 04:54:30', '2020-09-08 04:54:30'),
(27, NULL, 16, 'sale item 3', '20.00', 5, '100.00', '2020-09-08 04:54:30', '2020-09-08 04:54:30'),
(28, NULL, 16, 'sale item 4', '30.00', 10, '300.00', '2020-09-08 04:54:30', '2020-09-08 04:54:30'),
(29, NULL, 17, 'Test', '10.00', 10, '100.00', '2020-09-10 00:16:39', '2020-09-10 00:16:39'),
(30, NULL, 18, 'test', '10.00', 1, '10.00', '2020-09-13 07:17:40', '2020-09-13 07:17:40'),
(34, NULL, 19, 'new item 2', '10.00', 1, '10.00', '2020-09-13 17:17:32', '2020-09-13 18:04:26'),
(36, NULL, 19, 'TEst Item new add', '60.00', 2, '120.00', '2020-09-13 18:04:26', '2020-09-13 18:04:26'),
(37, NULL, 20, 'Test product default added', '5.00', 50, '250.00', '2020-09-14 06:20:42', '2020-09-14 06:20:42'),
(38, NULL, 20, 'Test product new added', '10.00', 100, '1000.00', '2020-09-14 06:20:42', '2020-09-14 06:20:42'),
(39, NULL, 21, 'Test product 1', '12.00', 12, '144.00', '2020-10-05 08:27:45', '2020-10-05 08:27:45'),
(40, NULL, 21, 'Test Product 2', '11.00', 11, '121.00', '2020-10-05 08:27:45', '2020-10-05 08:27:45'),
(41, NULL, 22, 'Small Parts', '300.00', 2, '600.00', '2020-10-06 02:15:20', '2020-10-06 02:15:20');

-- --------------------------------------------------------

--
-- Table structure for table `order_returns`
--

CREATE TABLE `order_returns` (
  `id` bigint(20) NOT NULL,
  `sales_id` bigint(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `return_date` datetime DEFAULT NULL,
  `delivery_man` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) DEFAULT NULL,
  `updated_by` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_returns`
--

INSERT INTO `order_returns` (`id`, `sales_id`, `comment`, `return_date`, `delivery_man`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(8, 21, 'Test', '2020-10-06 00:00:00', NULL, 1, NULL, '2020-10-06 06:49:08', '2020-10-06 06:49:08');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(255) NOT NULL,
  `sales_id` int(255) NOT NULL,
  `paid_amount` decimal(11,2) NOT NULL,
  `payment_date` datetime NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `received_by` int(255) NOT NULL,
  `actual_payment_date` datetime DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `sales_id`, `paid_amount`, `payment_date`, `payment_type`, `received_by`, `actual_payment_date`, `details`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(13, 19, '120.00', '2020-10-14 00:00:00', 'Cash', 1, NULL, NULL, '1', 1, NULL, '2020-10-15 03:36:03', '2020-10-15 03:36:03');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cat_id` int(11) NOT NULL,
  `sub_cat_id` int(11) DEFAULT NULL,
  `purchase_quantity` int(11) NOT NULL,
  `sold_quantity` int(11) DEFAULT NULL,
  `unit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `purchase_price` decimal(8,2) NOT NULL,
  `selling_price` decimal(8,2) DEFAULT NULL,
  `serial_no` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_alert` int(255) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `cat_id`, `sub_cat_id`, `purchase_quantity`, `sold_quantity`, `unit`, `brand`, `vendor_id`, `purchase_price`, `selling_price`, `serial_no`, `stock_alert`, `image`, `status`, `note`, `purchase_date`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(4, 'Smart TV 24\"', 1, 1, 0, NULL, NULL, 'walton', 1, '8000.00', '10000.00', '7987987', 5, NULL, 1, NULL, '2020-02-14', 2, 1, '2019-12-24 04:26:09', '2020-02-08 05:51:11'),
(5, 'Freez 32 Litter blue color', 2, 8, 0, NULL, NULL, 'Jamuna', 3, '32000.00', '34000.00', '80989080989', 5, NULL, 1, 'test', '2020-01-27', 1, NULL, '2020-01-28 11:08:30', '2020-01-28 11:08:30'),
(6, 'Test Product Pen', 10, NULL, 100, NULL, 'Pcs', 'Test Matador', 4, '4.00', '5.00', 'test 9898', 5, NULL, 1, 'Test notes', '2020-10-24', 1, NULL, '2020-10-25 13:03:28', '2020-10-25 13:03:28');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'SuperAdmin', 'Developer', '2019-12-22 09:30:25', '2019-12-22 09:30:25'),
(2, 'Admin', 'Administrator', '2019-12-22 09:30:25', '2019-12-22 09:30:25'),
(3, 'Editor', 'Manager', '2019-12-22 09:30:25', '2019-12-22 09:30:25'),
(4, 'Sales', 'Sales Manager', '2019-12-22 09:30:25', '2019-12-22 09:30:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 4, 3, '2020-01-28 11:57:38', '2020-01-28 11:57:38'),
(4, 4, 4, '2020-01-28 11:57:38', '2020-01-28 11:57:38'),
(5, 4, 5, '2020-01-28 11:57:38', '2020-01-28 11:57:38'),
(6, 3, 12, NULL, NULL),
(9, 2, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(255) NOT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `customer_id` int(255) NOT NULL,
  `sub_total` decimal(11,2) DEFAULT NULL,
  `discount` decimal(11,2) DEFAULT NULL,
  `shipping` decimal(11,2) DEFAULT NULL,
  `gtotal` decimal(11,2) NOT NULL,
  `paid` decimal(11,2) DEFAULT NULL,
  `due` decimal(11,2) DEFAULT NULL,
  `sales_date` datetime NOT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `referral_name` varchar(255) DEFAULT NULL,
  `referral_contact` varchar(255) DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `sold_by` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '0',
  `print_status` int(11) DEFAULT NULL,
  `created_by` int(255) NOT NULL,
  `updated_by` int(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `order_no`, `customer_id`, `sub_total`, `discount`, `shipping`, `gtotal`, `paid`, `due`, `sales_date`, `payment_type`, `referral_name`, `referral_contact`, `shipping_address`, `image`, `details`, `sold_by`, `status`, `print_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(11, NULL, 6, '1200.00', NULL, NULL, '1250.00', '500.00', '750.00', '2020-10-01 04:22:08', 'Nagod', NULL, NULL, NULL, NULL, 'test', NULL, '1', NULL, 1, NULL, '2020-10-01 04:37:47', '2020-09-02 13:11:18'),
(12, NULL, 6, '1400.00', NULL, '100.00', '1500.00', '500.00', '1000.00', '2020-09-07 00:00:00', 'bKash', NULL, NULL, NULL, NULL, 'Test Notes', NULL, '1', NULL, 1, NULL, '2020-09-07 14:46:56', '2020-09-07 14:46:56'),
(13, 20, 8, '1452.00', NULL, '100.00', '1552.00', '1000.00', '552.00', '2020-09-07 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, 1, NULL, '2020-10-05 08:20:39', '2020-09-07 15:38:54'),
(14, NULL, 7, '100.00', NULL, '100.00', '200.00', '100.00', '100.00', '2020-09-07 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Test notes', NULL, '1', NULL, 1, NULL, '2020-09-07 15:41:13', '2020-09-07 15:41:13'),
(15, NULL, 9, '700.00', NULL, '150.00', '850.00', '800.00', '50.00', '2020-09-08 00:00:00', 'bKash', NULL, NULL, NULL, NULL, 'Test notes', NULL, '0', NULL, 1, NULL, '2020-09-14 15:07:58', '2020-09-14 15:07:58'),
(16, NULL, 7, '500.00', NULL, '100.00', '600.00', '600.00', '0.00', '2020-09-08 00:00:00', NULL, NULL, NULL, NULL, NULL, 'Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Test notes Tes', NULL, 'on', NULL, 1, 1, '2020-09-13 10:06:33', '2020-09-13 10:06:33'),
(17, NULL, 7, '100.00', '10.00', '20.00', '110.00', '110.00', '0.00', '2020-09-10 00:00:00', 'bKash', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 1, NULL, '2020-09-10 00:16:39', '2020-09-10 00:16:39'),
(18, NULL, 7, '10.00', '0.00', '0.00', '10.00', '10.00', '0.00', '2020-09-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '1', '0', NULL, 1, NULL, '2020-09-13 07:26:44', '2020-09-13 07:18:17'),
(19, NULL, 7, '130.00', '20.00', '10.00', '120.00', '120.00', '0.00', '2020-09-13 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', NULL, 1, 1, '2020-09-14 13:29:39', '2020-09-14 13:29:39'),
(20, NULL, 7, '1250.00', '0.00', '0.00', '1250.00', '0.00', '1250.00', '2020-09-14 00:00:00', NULL, NULL, NULL, NULL, NULL, NULL, '1', '3', 1, 1, 1, '2020-10-06 04:25:29', '2020-10-06 04:25:29'),
(21, 21, 7, '265.00', '0.00', '20.00', '285.00', '0.00', '285.00', '2020-10-05 00:00:00', NULL, NULL, NULL, 'Same as Customer address', NULL, NULL, '1', '3', 6, 1, 1, '2020-10-06 06:14:07', '2020-10-06 06:14:07'),
(22, 25, 10, '600.00', '0.00', '60.00', '660.00', '0.00', '660.00', '2020-10-06 00:00:00', NULL, NULL, NULL, 'Customer has different address.', NULL, NULL, '1', '0', 1, 1, 1, '2020-10-06 04:17:01', '2020-10-06 04:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `name`, `details`, `parent_id`, `image`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CRT', 'test', 1, '1577028884.png', 1, 2, 1, '2019-12-22 09:34:44', '2020-01-27 20:38:55'),
(2, 'walton', 'test of sub category!!', 2, '1577293693.png', 1, 2, 1, '2019-12-25 11:08:13', '2020-01-27 20:41:59'),
(3, 'Cooker min size', NULL, 8, NULL, 1, 1, 1, '2019-12-26 08:00:15', '2020-01-27 20:41:52'),
(4, 'test sub category', NULL, 10, NULL, 1, 1, 1, '2019-12-27 09:33:28', '2020-01-27 20:41:46'),
(5, 'LCD', NULL, 1, NULL, 1, 1, NULL, '2020-01-27 20:40:34', '2020-01-27 20:40:34'),
(6, 'LED', NULL, 1, NULL, 1, 1, NULL, '2020-01-27 20:43:21', '2020-01-27 20:43:21'),
(7, 'Smart', NULL, 1, NULL, 1, 1, NULL, '2020-01-27 20:46:49', '2020-01-27 20:46:49'),
(8, 'Deep', NULL, 2, NULL, 1, 1, NULL, '2020-01-28 10:19:53', '2020-01-28 10:19:53'),
(9, 'Computer Speacker', NULL, 11, NULL, 1, 1, NULL, '2020-01-28 16:12:53', '2020-01-28 16:12:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `contact`, `email`, `email_verified_at`, `password`, `image`, `status`, `created_by`, `updated_by`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Rocky', '1825322626', 'rirchse@gmail.com', NULL, '$2y$10$t8qVMhtF1MV5fhPFs0X5ReZEOWqgpAm2DCjLYzsj2AUtre1BXSTay', NULL, 1, 1, 1, NULL, '2019-12-22 09:30:25', '2020-10-15 03:13:12'),
(4, 'Mokter Hossain Hanif', '01725770129', 'hanif@chalanbeel.com', NULL, '$2y$10$hHPhegtmrRW5JzCzwix1iumXpPCwhbw.JTngu7uI6Gv5OIljJn7aq', NULL, NULL, 1, 1, NULL, '2019-12-26 08:26:09', '2020-09-10 07:34:36'),
(5, 'Sales Manager', '01625322626', 'sales@manager.com', NULL, '$2y$10$t8qVMhtF1MV5fhPFs0X5ReZEOWqgpAm2DCjLYzsj2AUtre1BXSTay', NULL, 1, 1, 1, NULL, '2020-01-28 11:57:38', '2020-01-28 15:55:10'),
(12, 'Editor Account', '01234567890', 'editor@account.com', NULL, '$2y$10$1i8WKChLBWkKninzPOCgr.CxFsaca3sQb1L4ja2TELJtXvJpEFENu', NULL, 0, 1, NULL, NULL, '2020-09-11 08:01:25', '2020-09-11 08:01:25'),
(13, 'Sales Manager Account', '01912121212', 'manager@sales.com', NULL, '$2y$10$XSkm6REhJgAUq7N22hYwWeJNuy0RHlRQEXIuttI7llqmKFu8JY.GC', NULL, 1, 1, 1, NULL, '2020-09-11 08:05:25', '2020-09-11 16:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default.png',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `contact`, `email`, `address`, `business_name`, `status`, `details`, `image`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Helal Uddin', '1792892198', 'helal96889@gmail.com', 'bangladesh', 'CBT', 1, 'test vendor', '1577028756.png', 2, NULL, '2019-12-22 09:32:36', '2019-12-25 21:47:41'),
(2, 'Rocky', '1778573396', 'rocky@chalanbeel.com', 'Ganadangar', 'CBT', 0, NULL, 'default.png', 1, NULL, '2019-12-27 09:28:08', '2019-12-27 09:28:25'),
(3, 'New vendor', '1932431352', 'test@email.com', 'test address', 'Test Business', 1, NULL, 'default.png', 1, NULL, '2019-12-27 09:30:39', '2019-12-27 09:30:39'),
(4, 'Vendor Name', '01625322626', NULL, NULL, 'Vendor business Name', 1, NULL, 'default.png', 1, NULL, '2020-01-28 16:40:01', '2020-01-28 16:40:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_returns`
--
ALTER TABLE `order_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_contact_unique` (`contact`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(255) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `order_returns`
--
ALTER TABLE `order_returns`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_user`
--
ALTER TABLE `role_user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
