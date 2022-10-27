-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 01:14 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'Mobile', 1, 2, NULL, '2022-10-15 12:56:41', NULL),
(3, 'Computer', 1, 2, 2, '2022-10-15 12:57:52', '2022-10-15 13:13:44'),
(6, 'Tablet', 1, 2, NULL, '2022-10-16 19:26:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `customer_image`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Anusorn Petchsom', 'upload/customer/1746745380378574.png', '0812569322', 'anusornp@gmail.com', '452 ssdfa, sdfasdf, sdfasdf,Bankok 153698', 1, 2, 2, '2022-10-15 02:30:06', '2022-10-15 04:05:56'),
(2, 'Hasan Mesook', 'upload/customer/1746751195222928.jpg', '01396334933', 'hasan5@gmail.com', 'India', 1, 2, 2, '2022-10-15 02:33:50', '2022-10-15 04:02:32'),
(5, 'Toyd', 'upload/customer/1747756266765602.jpg', '0818546832', 'Toyd@gmail.com', '73/9 Ratchaburi', 1, NULL, 2, '2022-10-19 08:04:26', '2022-10-26 06:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending,1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_no`, `date`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '2022-10-19', 'First invoice entry', 0, 2, NULL, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(2, '2', '2022-10-19', 'Add new invoice 2 mobiles phone', 1, 2, 2, '2022-10-19 08:12:43', '2022-10-23 23:48:38'),
(3, '3', '2022-10-19', 'back order', 1, 2, 2, '2022-10-19 10:07:56', '2022-10-23 23:43:38'),
(5, '4', '2022-10-24', 'Winter sale', 0, 2, NULL, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(6, '5', '2022-10-24', 'It is a long established fact that a reader ', 0, 2, NULL, '2022-10-23 20:27:28', '2022-10-23 20:27:28'),
(7, '6', '2022-10-24', 'order new', 1, 2, 2, '2022-10-23 23:55:57', '2022-10-23 23:56:13'),
(8, '7', '2022-10-24', 'Fill stock', 1, 2, 2, '2022-10-24 00:01:09', '2022-10-24 00:01:22'),
(9, '8', '2022-10-26', 'test invoice', 1, 2, 2, '2022-10-25 21:44:10', '2022-10-25 21:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_details`
--

CREATE TABLE `invoice_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `selling_qty` double DEFAULT NULL,
  `unit_price` double DEFAULT NULL,
  `selling_price` double DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_details`
--

INSERT INTO `invoice_details` (`id`, `date`, `invoice_id`, `category_id`, `product_id`, `selling_qty`, `unit_price`, `selling_price`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-10-19', 1, 2, 1, 1, 200, 200, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(2, '2022-10-19', 1, 2, 2, 1, 200, 200, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(3, '2022-10-19', 1, 2, 5, 1, 250, 250, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(4, '2022-10-19', 1, 2, 9, 1, 200, 200, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(5, '2022-10-19', 1, 3, 4, 1, 250, 250, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(6, '2022-10-19', 1, 6, 6, 1, 200, 200, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(7, '2022-10-19', 1, 6, 7, 1, 200, 200, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(8, '2022-10-19', 1, 6, 8, 1, 200, 200, 1, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(9, '2022-10-19', 2, 2, 5, 1, 250, 250, 1, '2022-10-19 08:12:43', '2022-10-19 08:12:43'),
(10, '2022-10-19', 2, 2, 9, 1, 220, 220, 1, '2022-10-19 08:12:43', '2022-10-19 08:12:43'),
(11, '2022-10-19', 3, 3, 4, 1, 250, 250, 1, '2022-10-19 10:07:56', '2022-10-19 10:07:56'),
(15, '2022-10-24', 5, 2, 1, 1, 120, 120, 1, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(16, '2022-10-24', 5, 2, 2, 1, 125, 125, 1, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(17, '2022-10-24', 5, 2, 5, 1, 130, 130, 1, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(18, '2022-10-24', 5, 2, 9, 1, 120, 120, 1, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(19, '2022-10-24', 6, 6, 6, 2, 120, 240, 1, '2022-10-23 20:27:28', '2022-10-23 20:27:28'),
(20, '2022-10-24', 6, 6, 7, 3, 150, 450, 1, '2022-10-23 20:27:28', '2022-10-23 20:27:28'),
(21, '2022-10-24', 6, 6, 8, 1, 170, 170, 1, '2022-10-23 20:27:28', '2022-10-23 20:27:28'),
(22, '2022-10-24', 7, 2, 5, 1, 150, 150, 1, '2022-10-23 23:55:57', '2022-10-23 23:55:57'),
(23, '2022-10-24', 7, 3, 4, 1, 130, 130, 1, '2022-10-23 23:55:57', '2022-10-23 23:55:57'),
(24, '2022-10-24', 8, 2, 5, 1, 155, 155, 1, '2022-10-24 00:01:09', '2022-10-24 00:01:09'),
(25, '2022-10-24', 8, 3, 4, 1, 155, 155, 1, '2022-10-24 00:01:09', '2022-10-24 00:01:09'),
(26, '2022-10-26', 9, 6, 22, 5, 200, 1000, 1, '2022-10-25 21:44:10', '2022-10-25 21:44:54');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_10_14_183435_create_suppliers_table', 2),
(6, '2022_10_15_031246_create_customers_table', 3),
(7, '2022_10_15_181800_create_units_table', 4),
(8, '2022_10_15_192806_create_categories_table', 5),
(9, '2022_10_16_033513_create_products_table', 6),
(10, '2022_10_16_131239_create_purchases_table', 7),
(11, '2022_10_18_100509_create_invoices_table', 8),
(12, '2022_10_18_100653_create_invoice_details_table', 8),
(13, '2022_10_18_100730_create_payments_table', 8),
(14, '2022_10_18_100801_create_payment_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('toyashi@gmail.com', '$2y$10$VLDqZZryDpSVD6SjYOvZMuKudwRz05Cy9IodB/hwpGD5OiTsqXQFO', '2022-10-07 01:47:40'),
('scubatoy@gmail.com', '$2y$10$UPjT0njhXXvCx4HBzmpB1u.VfA0CSpZzkxzvhIBVLIzAcWpZ9e.WO', '2022-10-07 03:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `paid_status` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_amount` double DEFAULT NULL,
  `due_amount` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `discount_amount` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `invoice_id`, `customer_id`, `paid_status`, `paid_amount`, `due_amount`, `total_amount`, `discount_amount`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 'partial_paid', 1100, 400, 1500, 200, '2022-10-19 08:04:26', '2022-10-26 15:08:56'),
(2, 2, 1, 'partial_paid', 440, 10, 450, 20, '2022-10-19 08:12:43', '2022-10-26 15:12:00'),
(3, 3, 1, 'partial_paid', 100, 100, 200, 50, '2022-10-19 10:07:56', '2022-10-19 10:07:56'),
(5, 5, 1, 'partial_paid', 400, 80, 480, 15, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(6, 6, 5, 'partial_paid', 700, 110, 810, 50, '2022-10-23 20:27:28', '2022-10-23 20:27:28'),
(7, 7, 5, 'partial_paid', 220, 50, 270, 10, '2022-10-23 23:55:57', '2022-10-26 23:24:54'),
(8, 8, 5, 'full_paid', 300, 0, 300, 10, '2022-10-24 00:01:09', '2022-10-26 23:21:50'),
(9, 9, 5, 'full_paid', 900, 0, 900, 100, '2022-10-25 21:44:10', '2022-10-25 21:44:10');

-- --------------------------------------------------------

--
-- Table structure for table `payment_details`
--

CREATE TABLE `payment_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `current_paid_amount` double DEFAULT NULL,
  `date` date DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_details`
--

INSERT INTO `payment_details` (`id`, `invoice_id`, `current_paid_amount`, `date`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1000, '2022-10-19', NULL, '2022-10-19 08:04:26', '2022-10-19 08:04:26'),
(2, 2, 400, '2022-10-19', NULL, '2022-10-19 08:12:43', '2022-10-19 08:12:43'),
(3, 3, 100, '2022-10-19', NULL, '2022-10-19 10:07:56', '2022-10-19 10:07:56'),
(5, 5, 400, '2022-10-24', NULL, '2022-10-23 17:49:33', '2022-10-23 17:49:33'),
(6, 6, 700, '2022-10-24', NULL, '2022-10-23 20:27:28', '2022-10-23 20:27:28'),
(7, 7, 150, '2022-10-24', NULL, '2022-10-23 23:55:57', '2022-10-23 23:55:57'),
(8, 8, 250, '2022-10-24', NULL, '2022-10-24 00:01:09', '2022-10-24 00:01:09'),
(9, 9, 900, '2022-10-26', NULL, '2022-10-25 21:44:10', '2022-10-25 21:44:10'),
(10, 1, 100, '2022-10-27', 2, '2022-10-26 15:08:56', '2022-10-26 15:08:56'),
(11, 2, 40, '2022-10-27', 2, '2022-10-26 15:12:00', '2022-10-26 15:12:00'),
(12, 7, 20, '2022-10-27', 2, '2022-10-26 23:10:20', '2022-10-26 23:10:20'),
(13, 8, 50, '2022-10-27', 2, '2022-10-26 23:21:50', '2022-10-26 23:21:50'),
(14, 7, 50, '2022-10-27', 2, '2022-10-26 23:24:54', '2022-10-26 23:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `supplier_id`, `unit_id`, `category_id`, `name`, `quantity`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 2, 'IIPhone 14', 20, 1, 2, NULL, '2022-10-16 00:10:01', '2022-10-18 08:02:14'),
(2, 4, 3, 2, 'IPhone 14 Pro', 30, 1, 2, NULL, '2022-10-16 00:13:10', '2022-10-18 08:02:09'),
(4, 3, 3, 3, 'Macbook Pro 15\"', 18, 1, 2, NULL, '2022-10-16 00:30:04', '2022-10-24 00:01:22'),
(5, 3, 3, 2, 'IPhone 14 Pro Max', 18, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-24 00:01:22'),
(6, 4, 3, 6, 'Ipad Air 5', 5, 1, 2, 2, '2022-10-16 00:13:10', '2022-10-18 02:39:24'),
(7, 4, 3, 6, 'Ipad Pro', 5, 1, 2, 2, '2022-10-16 00:13:10', '2022-10-17 14:00:17'),
(8, 14, 3, 6, 'Ipad Pro2', 10, 1, 2, 2, '2022-10-16 00:13:10', '2022-10-18 07:13:29'),
(9, 14, 3, 2, 'Samsung Galaxy S22', 9, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(10, 14, 3, 2, 'huawei p50 ', 10, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(11, 14, 3, 2, 'huawei p50 Lite', 20, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(12, 14, 3, 2, 'huawei p50 Pro', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(13, 14, 3, 2, 'redmi note 11', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(14, 14, 3, 2, 'redmi note 11 Pro', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(15, 14, 3, 2, 'redmi note 11 Pro plus', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(16, 14, 3, 2, 'vivo v25', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(17, 14, 3, 2, 'vivo v25 Pro', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(18, 14, 3, 2, 'vivo v25 5G', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(19, 14, 3, 2, ' Xiaomi 12', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(20, 14, 3, 2, ' Xiaomi 12 Lite 5G', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(21, 14, 3, 2, ' Xiaomi 12 Pro 5G', 50, 1, 2, NULL, '2022-10-16 00:52:21', '2022-10-23 23:54:09'),
(22, 3, 2, 6, 'Test Product', 15, 1, 2, NULL, '2022-10-25 21:39:38', '2022-10-25 21:44:54');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `purchase_no` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `buying_qty` double NOT NULL,
  `unit_price` double NOT NULL,
  `buying_price` double NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Pending,1=Approved',
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `purchases`
--

INSERT INTO `purchases` (`id`, `supplier_id`, `category_id`, `product_id`, `purchase_no`, `date`, `description`, `buying_qty`, `unit_price`, `buying_price`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 5, 'ea-0001', '2022-10-18', 'Toy phone', 1, 120, 120, 1, 2, NULL, '2022-10-17 12:20:16', '2022-10-18 02:38:58'),
(4, 14, 6, 7, 'ea-0002', '2022-10-18', 'sky', 5, 120, 120, 1, 2, NULL, '2022-10-17 12:24:36', '2022-10-17 14:00:17'),
(5, 4, 6, 6, 'ea-0003', '2022-10-18', 'Model 2021', 4, 200, 800, 1, 2, NULL, '2022-10-17 14:05:05', '2022-10-18 02:39:24'),
(6, 3, 3, 4, 'ea-0003', '2022-10-18', 'New Product', 4, 300, 1200, 1, 2, NULL, '2022-10-17 14:05:05', '2022-10-18 02:39:29'),
(7, 3, 2, 5, 'ea-1001', '2022-10-18', 'new product', 1, 120, 120, 1, 2, NULL, '2022-10-18 02:33:10', '2022-10-18 07:11:04'),
(9, 14, 6, 8, 'ea-1004', '2022-10-18', 'fill stock', 10, 150, 1500, 1, 2, NULL, '2022-10-18 07:13:20', '2022-10-18 07:13:29'),
(10, 14, 2, 1, 'ea-1005', '2022-10-18', 'fill stock', 20, 100, 2000, 1, 2, NULL, '2022-10-18 08:01:54', '2022-10-18 08:02:14'),
(11, 14, 2, 2, 'ea-1005', '2022-10-18', 'fill stock', 30, 110, 3300, 1, 2, NULL, '2022-10-18 08:01:54', '2022-10-18 08:02:09'),
(12, 14, 2, 9, 'ea-1005', '2022-10-18', 'fill stock', 25, 105, 2625, 1, 2, NULL, '2022-10-18 08:01:54', '2022-10-18 08:02:03'),
(13, 3, 2, 5, 'ea-2001', '2022-10-24', 'add new stock', 10, 125, 1250, 1, 2, NULL, '2022-10-23 23:48:10', '2022-10-23 23:48:22'),
(14, 3, 2, 5, 'ea-2002', '2022-10-24', 'fill stock', 20, 125, 2500, 1, 2, NULL, '2022-10-23 23:52:20', '2022-10-23 23:52:31'),
(15, 3, 2, 9, 'ea2003', '2022-10-24', 'fill stock', 10, 120, 1200, 1, 2, NULL, '2022-10-23 23:53:49', '2022-10-23 23:54:10'),
(16, 3, 3, 4, 'ea2003', '2022-10-24', 'fill stock', 20, 150, 3000, 1, 2, NULL, '2022-10-23 23:53:49', '2022-10-23 23:54:04'),
(17, 3, 2, 5, 'ea2004', '2022-10-24', 'fill', 20, 150, 3000, 1, 2, NULL, '2022-10-23 23:59:37', '2022-10-24 00:00:17'),
(18, 3, 3, 4, 'ea2004', '2022-10-24', 'fill', 20, 150, 3000, 1, 2, NULL, '2022-10-24 00:00:06', '2022-10-24 00:00:12'),
(19, 3, 6, 22, 'ea-4001', '2022-10-26', 'test process', 20, 200, 4000, 1, 2, NULL, '2022-10-25 21:42:26', '2022-10-25 21:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `name`, `mobile_no`, `email`, `address`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(3, 'Advice', '0821436655', 'support@advice.co.th', '75 Mahte sd Rd, sdfa, Bangkok,Thailand, 569533', 1, 2, 2, '2022-10-14 13:13:21', '2022-10-14 13:47:36'),
(4, 'Banana IT', '08464213541', 'banana@gmail.com', 'Banana Shop', 1, 2, 2, '2022-10-14 13:15:44', '2022-10-14 13:47:27'),
(14, 'JIB', '0821436655', 'support@jib.co.th', '75 Mahte sd Rd, sdfa, Bangkok,Thailand, 569533', 1, 2, 2, '2022-10-14 13:13:21', '2022-10-14 13:47:36');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'KG', 1, 2, NULL, '2022-10-15 11:51:39', NULL),
(3, 'PCG', 1, 2, NULL, '2022-10-15 11:54:16', NULL),
(4, 'GM', 1, 2, NULL, '2022-10-16 01:33:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `username`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'User', 'user@gmail.com', '2022-10-07 02:39:53', '$2y$10$pLGzmpZSUP1jHBX0fCRyvu3V65WnGlfWgDZEcBpAfLYEOhc42s6Ha', 'user', NULL, NULL, '2022-10-05 23:40:41', '2022-10-05 23:40:41'),
(2, 'Scubatoy', 'scubatoy@gmail.com', '2022-10-07 02:39:53', '$2y$10$vxPFLxu96ToKvdNq91shWefsvbpai3OQdiuuxaymlnfqNzB5mh0qm', 'scubatoy', '202210081023C930D628-2CDF-454F-8E32-A5E31F800969.jpg', NULL, '2022-10-06 04:38:32', '2022-10-14 11:14:32'),
(4, 'Demo', 'demo@gmail.com', NULL, '$2y$10$1bjAhy6N4x3vjcc0fKI1AO2ECuswO6WOc/h/o2HcPP4kuua95f0xq', 'demo', NULL, NULL, '2022-10-06 05:00:51', '2022-10-06 05:00:51'),
(8, 'Toyashi', 'toyashi@gmail.com', '2022-10-07 02:02:14', '$2y$10$ZAFApq2aZyTtcxZD3fdDTuYpyhAQ/ynJbsvcNUJt1gB/k6dv9PGga', 'toyashi', '202210081546user1-128x128.jpg', NULL, '2022-10-07 02:01:47', '2022-10-08 08:46:12');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_details`
--
ALTER TABLE `invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
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
-- Indexes for table `payment_details`
--
ALTER TABLE `payment_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `invoice_details`
--
ALTER TABLE `invoice_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `payment_details`
--
ALTER TABLE `payment_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
