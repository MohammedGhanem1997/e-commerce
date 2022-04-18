-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2022 at 09:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blue_development`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `job_title`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'Administrator', 'admin@admin.com', NULL, '$2y$10$NIOiJNBAAjA2.GdcyTa5WOZ8K1IJ5ZDU1xKs49yUz5wrQuhVj5kfy', NULL, '2022-04-14 13:58:02', '2022-04-14 13:58:02');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
(1, 'DELL', 'https://upload.wikimedia.org/wikipedia/commons/e/ee/Logo_brand_Adidas.png', NULL, NULL),
(3, 'Philips', 'images/Brand/cat_1650258991.jpg', '2022-04-18 01:28:23', '2022-04-18 03:16:31'),
(4, 'Canon', 'images/Brand/cat_1650258967.png', '2022-04-18 03:16:07', '2022-04-18 03:16:07'),
(5, 'Bosch', 'images/Brand/cat_1650259036.jpg', '2022-04-18 03:17:16', '2022-04-18 03:17:16'),
(6, 'Nesquik', 'images/Brand/cat_1650259055.jpg', '2022-04-18 03:17:35', '2022-04-18 03:17:35'),
(7, 'Rolex', 'images/Brand/cat_1650259080.png', '2022-04-18 03:18:00', '2022-04-18 03:18:00'),
(8, 'Ferrari', 'images/Brand/cat_1650259096.jpg', '2022-04-18 03:18:16', '2022-04-18 03:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `brands_categories`
--

CREATE TABLE `brands_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands_categories`
--

INSERT INTO `brands_categories` (`id`, `product_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 207, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catalogs`
--

CREATE TABLE `catalogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catalogs`
--

INSERT INTO `catalogs` (`id`, `name`, `description`, `parent_id`, `image`, `priority`, `created_at`, `updated_at`) VALUES
(1, 'Appliances', 'description for Appliances', NULL, 'images/categories/cat_1650240598.png', 0, '2022-04-14 13:57:54', '2022-04-17 22:09:58'),
(2, 'Furniture', 'description for Furniture', NULL, 'furniture_cat.jpg', 1, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(3, 'Food', 'description for Food', NULL, 'images/categories/cat_1650260835.jpg', 2, '2022-04-14 13:57:54', '2022-04-18 03:47:15'),
(4, 'Jewelry', 'description for Jewelry', NULL, 'images/categories/cat_1650260861.png', 3, '2022-04-14 13:57:54', '2022-04-18 03:47:41'),
(5, 'TVs', 'description for TV', 1, 'tv_cat.jpg', 0, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(6, 'Refrigerators', 'description for Refrigerators', 1, 'refrigerators_cat.jpg', 1, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(7, 'Cellphones', 'description for Cellphones', 1, 'images/categories/cat_1650260908.jpg', 2, '2022-04-14 13:57:54', '2022-04-18 03:48:28'),
(8, 'Sofas', 'description for Sofas', 2, 'sofas_cat.jpg', 0, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(9, 'Cupboards', 'description for Cupboards', 2, 'cupboards_cat.jpg', 1, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(10, 'Beds', 'description for Beds', 2, 'images/categories/cat_1650260888.jpg', 2, '2022-04-14 13:57:54', '2022-04-18 03:48:08'),
(11, 'Milk', 'description for Milk', 3, 'milk_cat.jpg', 0, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(12, 'Bread', 'description for Bread', 3, 'bread_cat.jpg', 1, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(14, 'LCD', 'description for LCD TVs', 5, 'lcd_cat.jpg', 0, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(15, 'Plasma', 'description for Plasma TVs', 5, 'plasma_cat.jpg', 1, '2022-04-14 13:57:54', '2022-04-14 13:57:54'),
(16, 'LED', 'description for LED TVs', 5, 'images/categories/cat_1650260977.jpg', 2, '2022-04-14 13:57:54', '2022-04-18 03:49:37'),
(17, 'earpods', 'jfliasjg toer gpose]r jgsono;', 7, 'images/categories/cat_1649983540.png', 3, '2022-04-14 22:45:41', '2022-04-14 22:45:41');

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
(3, '2017_10_08_113015_create_products_table', 1),
(4, '2017_10_08_114109_create_orders_table', 1),
(5, '2017_10_08_114503_create_related_products_table', 1),
(6, '2017_10_08_115559_create_order_data_table', 1),
(7, '2017_10_24_071139_add_cart_to_users', 1),
(8, '2017_11_05_070115_create_catalogs_table', 1),
(9, '2017_11_05_071437_add_catalog_to_product', 1),
(10, '2017_11_08_134904_create_units_table', 1),
(11, '2017_11_08_175930_create_properties_table', 1),
(12, '2017_11_09_073633_create_product_property_table', 1),
(13, '2017_11_12_152737_add_priority_to_properties_table', 1),
(14, '2017_11_12_174417_add_type_to_properties_table', 1),
(15, '2017_11_13_071534_create_property_values_table', 1),
(16, '2017_11_13_072524_alter_first_properties_table', 1),
(17, '2017_11_15_211208_change_propidcol_product_properties_table', 1),
(18, '2017_12_02_202911_create_admins_table', 1),
(19, '2017_12_21_200452_add_force_logout_users_table', 1),
(20, '2017_12_22_074807_add_user_id_orders_table', 1),
(21, '2017_12_22_112834_create_shipping_methods_table', 1),
(22, '2018_01_02_074253_create_products_related_products_table', 1),
(23, '2018_01_02_075043_remove_columns_from_related_products_table', 1),
(24, '2018_01_05_100641_alter_status_orders_table', 1),
(25, '2019_02_04_175305_alter_users_table_change_type_column_cart', 1),
(26, '2022_04_15_002620_add_descount_to_products_table', 2),
(27, '2022_04_16_171943_create_brands_table', 3),
(28, '2022_04_16_172103_category_products', 3),
(29, '2022_04_16_205402_categories_products', 4),
(30, '2022_04_18_034419_create_sliders_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `commentary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 1,
  `status` enum('pending payment','process','completed','deleted') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending payment',
  `order_label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `commentary`, `total`, `created_at`, `updated_at`, `user_id`, `status`, `order_label`) VALUES
(1, '', 743.92, '2022-04-14 17:17:15', '2022-04-14 17:17:15', 1, 'pending payment', 'ule_1649963835'),
(2, '', 4649.24, '2022-04-15 23:50:07', '2022-04-15 23:50:07', 1, 'pending payment', 'ule_1650073807'),
(3, '', 4649.24, '2022-04-15 23:50:21', '2022-04-15 23:50:21', 1, 'pending payment', 'ule_1650073821'),
(4, '', 4649.24, '2022-04-15 23:50:23', '2022-04-15 23:50:23', 1, 'pending payment', 'ule_1650073823'),
(5, '', 4649.24, '2022-04-15 23:50:40', '2022-04-15 23:50:40', 1, 'pending payment', 'ule_1650073840'),
(6, '', 4649.24, '2022-04-15 23:50:40', '2022-04-15 23:50:40', 1, 'pending payment', 'ule_1650073840'),
(7, '', 4649.24, '2022-04-15 23:50:41', '2022-04-15 23:50:41', 1, 'pending payment', 'ule_1650073841'),
(8, '', 4649.24, '2022-04-15 23:50:41', '2022-04-15 23:50:41', 1, 'pending payment', 'ule_1650073841'),
(9, '', 4649.24, '2022-04-15 23:50:41', '2022-04-15 23:50:41', 1, 'pending payment', 'ule_1650073841'),
(10, '', 4649.24, '2022-04-15 23:50:42', '2022-04-15 23:50:42', 1, 'pending payment', 'ule_1650073842'),
(11, '', 4649.24, '2022-04-15 23:50:42', '2022-04-15 23:50:42', 1, 'pending payment', 'ule_1650073842'),
(12, '', 4649.24, '2022-04-15 23:50:42', '2022-04-15 23:50:42', 1, 'pending payment', 'ule_1650073842'),
(13, '', 4649.24, '2022-04-15 23:50:43', '2022-04-15 23:50:43', 1, 'pending payment', 'ule_1650073843'),
(14, '', 4649.24, '2022-04-15 23:50:43', '2022-04-15 23:50:43', 1, 'pending payment', 'ule_1650073843'),
(15, '', 4649.24, '2022-04-15 23:50:43', '2022-04-15 23:50:43', 1, 'pending payment', 'ule_1650073843'),
(16, '', 4649.24, '2022-04-15 23:50:44', '2022-04-15 23:50:44', 1, 'pending payment', 'ule_1650073844'),
(17, '', 4634.24, '2022-04-15 23:50:50', '2022-04-15 23:50:50', 1, 'pending payment', 'ule_1650073850'),
(18, '', 4634.24, '2022-04-15 23:50:54', '2022-04-15 23:50:54', 1, 'pending payment', 'ule_1650073854'),
(19, '', 4634.24, '2022-04-15 23:50:55', '2022-04-15 23:50:55', 1, 'pending payment', 'ule_1650073855'),
(20, '', 4634.24, '2022-04-15 23:50:55', '2022-04-15 23:50:55', 1, 'pending payment', 'ule_1650073855'),
(21, '', 4634.24, '2022-04-15 23:50:56', '2022-04-15 23:50:56', 1, 'pending payment', 'ule_1650073856'),
(22, '', 4634.24, '2022-04-15 23:50:56', '2022-04-15 23:50:56', 1, 'pending payment', 'ule_1650073856'),
(23, '', 4634.24, '2022-04-15 23:50:56', '2022-04-15 23:50:56', 1, 'pending payment', 'ule_1650073856'),
(24, '', 4634.24, '2022-04-15 23:50:57', '2022-04-15 23:50:57', 1, 'pending payment', 'ule_1650073857'),
(25, '', 4634.24, '2022-04-15 23:50:57', '2022-04-15 23:50:57', 1, 'pending payment', 'ule_1650073857'),
(26, '', 4634.24, '2022-04-15 23:50:57', '2022-04-15 23:50:57', 1, 'pending payment', 'ule_1650073857'),
(27, '', 894.17, '2022-04-15 23:51:08', '2022-04-16 14:29:56', 1, 'deleted', 'ule_1650073868'),
(28, '', 934.84, '2022-04-15 23:52:34', '2022-04-15 23:52:34', 1, 'pending payment', 'ule_1650073954'),
(29, '', 3718.86, '2022-04-15 23:58:02', '2022-04-15 23:58:02', 1, 'pending payment', 'ule_1650074282'),
(30, '', 8207.20, '2022-04-16 00:00:46', '2022-04-16 00:00:46', 1, 'pending payment', 'ule_1650074446'),
(31, '', 8207.20, '2022-04-16 00:01:12', '2022-04-16 00:01:12', 1, 'pending payment', 'ule_1650074472'),
(32, '', 8207.20, '2022-04-16 00:01:12', '2022-04-16 00:01:12', 1, 'pending payment', 'ule_1650074472'),
(33, '', 8207.20, '2022-04-16 00:01:13', '2022-04-16 00:01:13', 1, 'pending payment', 'ule_1650074473'),
(34, '', 8207.20, '2022-04-16 00:01:13', '2022-04-16 00:01:13', 1, 'pending payment', 'ule_1650074473'),
(35, '', 20141.55, '2022-04-16 00:04:59', '2022-04-16 00:04:59', 1, 'pending payment', 'ule_1650074699');

-- --------------------------------------------------------

--
-- Table structure for table `order_data`
--

CREATE TABLE `order_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `is_related_product` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_data`
--

INSERT INTO `order_data` (`id`, `order_id`, `product_id`, `is_related_product`, `price`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 0, 728.92, 1, '2022-04-14 17:17:15', '2022-04-14 17:17:15'),
(2, 2, 13, 0, 11.68, 3, '2022-04-15 23:50:07', '2022-04-15 23:50:07'),
(3, 2, 17, 0, 919.84, 5, '2022-04-15 23:50:07', '2022-04-15 23:50:07'),
(4, 3, 13, 0, 11.68, 3, '2022-04-15 23:50:21', '2022-04-15 23:50:21'),
(5, 3, 17, 0, 919.84, 5, '2022-04-15 23:50:21', '2022-04-15 23:50:21'),
(6, 4, 13, 0, 11.68, 3, '2022-04-15 23:50:23', '2022-04-15 23:50:23'),
(7, 4, 17, 0, 919.84, 5, '2022-04-15 23:50:23', '2022-04-15 23:50:23'),
(8, 5, 13, 0, 11.68, 3, '2022-04-15 23:50:40', '2022-04-15 23:50:40'),
(9, 5, 17, 0, 919.84, 5, '2022-04-15 23:50:40', '2022-04-15 23:50:40'),
(10, 6, 13, 0, 11.68, 3, '2022-04-15 23:50:40', '2022-04-15 23:50:40'),
(11, 6, 17, 0, 919.84, 5, '2022-04-15 23:50:40', '2022-04-15 23:50:40'),
(12, 7, 13, 0, 11.68, 3, '2022-04-15 23:50:41', '2022-04-15 23:50:41'),
(13, 7, 17, 0, 919.84, 5, '2022-04-15 23:50:41', '2022-04-15 23:50:41'),
(14, 8, 13, 0, 11.68, 3, '2022-04-15 23:50:41', '2022-04-15 23:50:41'),
(15, 8, 17, 0, 919.84, 5, '2022-04-15 23:50:41', '2022-04-15 23:50:41'),
(16, 9, 13, 0, 11.68, 3, '2022-04-15 23:50:41', '2022-04-15 23:50:41'),
(17, 9, 17, 0, 919.84, 5, '2022-04-15 23:50:41', '2022-04-15 23:50:41'),
(18, 10, 13, 0, 11.68, 3, '2022-04-15 23:50:42', '2022-04-15 23:50:42'),
(19, 10, 17, 0, 919.84, 5, '2022-04-15 23:50:42', '2022-04-15 23:50:42'),
(20, 11, 13, 0, 11.68, 3, '2022-04-15 23:50:42', '2022-04-15 23:50:42'),
(21, 11, 17, 0, 919.84, 5, '2022-04-15 23:50:42', '2022-04-15 23:50:42'),
(22, 12, 13, 0, 11.68, 3, '2022-04-15 23:50:42', '2022-04-15 23:50:42'),
(23, 12, 17, 0, 919.84, 5, '2022-04-15 23:50:42', '2022-04-15 23:50:42'),
(24, 13, 13, 0, 11.68, 3, '2022-04-15 23:50:43', '2022-04-15 23:50:43'),
(25, 13, 17, 0, 919.84, 5, '2022-04-15 23:50:43', '2022-04-15 23:50:43'),
(26, 14, 13, 0, 11.68, 3, '2022-04-15 23:50:43', '2022-04-15 23:50:43'),
(27, 14, 17, 0, 919.84, 5, '2022-04-15 23:50:43', '2022-04-15 23:50:43'),
(28, 15, 13, 0, 11.68, 3, '2022-04-15 23:50:43', '2022-04-15 23:50:43'),
(29, 15, 17, 0, 919.84, 5, '2022-04-15 23:50:43', '2022-04-15 23:50:43'),
(30, 16, 13, 0, 11.68, 3, '2022-04-15 23:50:44', '2022-04-15 23:50:44'),
(31, 16, 17, 0, 919.84, 5, '2022-04-15 23:50:44', '2022-04-15 23:50:44'),
(32, 17, 13, 0, 11.68, 3, '2022-04-15 23:50:50', '2022-04-15 23:50:50'),
(33, 17, 17, 0, 919.84, 5, '2022-04-15 23:50:50', '2022-04-15 23:50:50'),
(34, 18, 13, 0, 11.68, 3, '2022-04-15 23:50:54', '2022-04-15 23:50:54'),
(35, 18, 17, 0, 919.84, 5, '2022-04-15 23:50:54', '2022-04-15 23:50:54'),
(36, 19, 13, 0, 11.68, 3, '2022-04-15 23:50:55', '2022-04-15 23:50:55'),
(37, 19, 17, 0, 919.84, 5, '2022-04-15 23:50:55', '2022-04-15 23:50:55'),
(38, 20, 13, 0, 11.68, 3, '2022-04-15 23:50:55', '2022-04-15 23:50:55'),
(39, 20, 17, 0, 919.84, 5, '2022-04-15 23:50:55', '2022-04-15 23:50:55'),
(40, 21, 13, 0, 11.68, 3, '2022-04-15 23:50:56', '2022-04-15 23:50:56'),
(41, 21, 17, 0, 919.84, 5, '2022-04-15 23:50:56', '2022-04-15 23:50:56'),
(42, 22, 13, 0, 11.68, 3, '2022-04-15 23:50:56', '2022-04-15 23:50:56'),
(43, 22, 17, 0, 919.84, 5, '2022-04-15 23:50:56', '2022-04-15 23:50:56'),
(44, 23, 13, 0, 11.68, 3, '2022-04-15 23:50:56', '2022-04-15 23:50:56'),
(45, 23, 17, 0, 919.84, 5, '2022-04-15 23:50:56', '2022-04-15 23:50:56'),
(46, 24, 13, 0, 11.68, 3, '2022-04-15 23:50:57', '2022-04-15 23:50:57'),
(47, 24, 17, 0, 919.84, 5, '2022-04-15 23:50:57', '2022-04-15 23:50:57'),
(48, 25, 13, 0, 11.68, 3, '2022-04-15 23:50:57', '2022-04-15 23:50:57'),
(49, 25, 17, 0, 919.84, 5, '2022-04-15 23:50:57', '2022-04-15 23:50:57'),
(50, 26, 13, 0, 11.68, 3, '2022-04-15 23:50:57', '2022-04-15 23:50:57'),
(51, 26, 17, 0, 919.84, 5, '2022-04-15 23:50:57', '2022-04-15 23:50:57'),
(52, 27, 75, 1, 894.17, 1, '2022-04-15 23:51:08', '2022-04-15 23:51:08'),
(53, 28, 17, 0, 919.84, 1, '2022-04-15 23:52:34', '2022-04-15 23:52:34'),
(54, 29, 4, 0, 411.54, 9, '2022-04-15 23:58:02', '2022-04-15 23:58:02'),
(55, 30, 12, 0, 409.61, 20, '2022-04-16 00:00:46', '2022-04-16 00:00:46'),
(56, 31, 12, 0, 409.61, 20, '2022-04-16 00:01:12', '2022-04-16 00:01:12'),
(57, 32, 12, 0, 409.61, 20, '2022-04-16 00:01:12', '2022-04-16 00:01:12'),
(58, 33, 12, 0, 409.61, 20, '2022-04-16 00:01:13', '2022-04-16 00:01:13'),
(59, 34, 12, 0, 409.61, 20, '2022-04-16 00:01:13', '2022-04-16 00:01:13'),
(60, 35, 14, 0, 366.21, 55, '2022-04-16 00:04:59', '2022-04-16 00:04:59');

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
('ghanemm138@gmail.com', '$2y$10$K7A/UCI0afOyGXoD/uXKa.TJzJCvWYw08o22eZs5UvS4eAzPJiuV6', '2022-04-18 04:10:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `catalog_id` int(11) NOT NULL DEFAULT 0,
  `discount` double(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `image`, `created_at`, `updated_at`, `catalog_id`, `discount`) VALUES
(2, 'Omnis et provident a et.', 'Ex et dolorem aperiam doloremque excepturi. Eveniet architecto ipsum incidunt voluptatum rerum quisquam natus. Id natus molestiae earum facere itaque commodi.', 728.92, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, 2.00),
(3, 'Perferendis accusamus neque exercitationem.', 'Consequuntur sed cumque unde explicabo fuga ut. Labore dolorem rerum porro non.', 602.24, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, 2.00),
(4, 'Sit et est non eaque velit.', 'Voluptatem laborum doloribus blanditiis ea eum. Quidem doloremque maiores dolor accusantium eaque. Animi nisi aut asperiores sed voluptas quidem consequatur nostrum.', 411.54, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(5, 'Voluptatem debitis similique error qui aut omnis cum.', 'Et eaque tempore voluptatem aut sequi aut rerum. Deleniti repellendus molestias voluptas voluptatem et. Consequatur optio eius voluptatem.', 707.50, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, 1.00),
(6, 'Voluptatum dolore veritatis possimus veniam natus at voluptatem.', 'Quam nostrum iste sequi assumenda. Magni quibusdam rerum hic magni.', 690.04, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 12, 6.00),
(7, 'Quia ducimus ut voluptatem ut.', 'Quibusdam nihil delectus in optio. Dolor asperiores aut qui et saepe odit.', 217.99, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, 3.00),
(8, 'Incidunt dolor a voluptatem debitis aliquid laboriosam officia pariatur.', 'Harum perferendis facilis quia a deleniti vel. Voluptate perferendis sequi molestiae modi.', 486.19, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, 4.00),
(9, 'Et corrupti dolores aliquid et doloremque alias.', 'Dolores quis eos in quidem porro deleniti. Laudantium et placeat nobis soluta vel.', 70.52, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(10, 'Voluptas consequatur debitis nihil ratione et sunt sed dolores.', 'Officiis deserunt ea est omnis ea. Odit quis necessitatibus maiores quis perferendis dolorem.', 433.84, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, 12.00),
(11, 'Id est porro ullam odit velit in ut.', 'Sit excepturi enim et aspernatur quibusdam ut sunt. Animi eligendi ut dicta ea. Incidunt odio quasi nesciunt.', 395.25, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, 4.00),
(12, 'Aut harum rerum facere repellendus sit dolorem.', 'Vel et veniam officia et magnam. Officia voluptatem tenetur culpa unde neque dolore.', 409.61, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, 45.00),
(13, 'Non quia non fuga qui dolorum quas.', 'Aut sunt ut voluptatem occaecati sunt nulla. Consequatur ut corrupti quidem veritatis totam.', 11.68, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, 6.00),
(14, 'Et eos maiores est in vitae vel.', 'Quia molestiae quo deleniti voluptas. Sed impedit nobis dolorum sit voluptas quia. Recusandae repellat adipisci aperiam illo dolorum.', 366.21, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, 4.00),
(15, 'Libero eos enim quidem tenetur modi.', 'Commodi eos unde facilis unde perferendis necessitatibus et dolorem. Repellendus repudiandae perferendis illum sed suscipit voluptas.', 453.34, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, 5.00),
(16, 'Unde sit commodi dolorem omnis velit iusto rerum et.', 'Corrupti omnis provident voluptatem est. Autem velit voluptatem totam aliquam.', 349.83, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 12, NULL),
(17, 'tv sumsung smart', 'Qui qui est neque similique. Voluptatem sapiente molestias quia nisi ullam. Qui accusantium et nesciunt sint sunt eligendi aut.', 919.84, 'products/prod_1649953412.jpg', '2022-04-14 13:57:56', '2022-04-14 14:23:32', 14, 8.00),
(18, 'Rerum sed accusamus et adipisci nobis nihil perspiciatis consequatur.', 'Perspiciatis error molestiae dolore accusamus quas sed culpa. Quibusdam odit reprehenderit dolores debitis at dolor.', 906.56, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(19, 'Ea natus laudantium totam nisi.', 'Error explicabo cumque minima est nesciunt ullam. Tempore aliquid provident sunt itaque odio ex. Neque nulla dignissimos est.', 819.81, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(20, 'At quasi sed vero sunt molestiae praesentium voluptatem.', 'Ipsam quis debitis consequatur eum esse doloremque. Aut in consequuntur fugiat quas fugiat iste. Quaerat dolor sed totam aut sed aut.', 569.11, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(21, 'Maiores quia qui consequatur aliquam ut dicta dolor consequatur.', 'Aut non quibusdam natus doloribus quasi est quis. Ratione ea in quae et. Et cum in aut enim.', 223.85, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, 6.00),
(22, 'Unde eum iste eum et asperiores.', 'Impedit beatae dolores minima qui autem ut quis tempora. Non quasi non explicabo atque.', 144.21, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, 3.00),
(23, 'Praesentium nostrum eum excepturi provident velit ab sit.', 'Animi rerum quo excepturi ea. Voluptatibus excepturi dolor illum est quo. Ut ut dolores nemo dolores ea.', 882.11, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 12, 3.00),
(24, 'Repellendus sunt molestiae quos amet.', 'Incidunt sed quasi veniam saepe dolor. Voluptatibus omnis id vitae in porro voluptas.', 378.72, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 12, 5.00),
(25, 'Expedita provident deleniti facilis expedita similique eum.', 'Omnis eum excepturi odio laborum et. Rerum sunt porro accusamus ea amet rerum quasi eius.', 972.06, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, 4.00),
(26, 'Et dolorem eum et optio est consequatur.', 'Et id saepe illo sit eligendi. Dolorum voluptatem aut inventore ut reiciendis voluptatem.', 758.60, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, 9.00),
(27, 'Perferendis numquam velit ut consequatur aut.', 'At enim quidem aut aut neque optio. Similique explicabo quasi assumenda totam at distinctio. Debitis quas ratione repellendus aut ipsam.', 34.22, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(28, 'Culpa alias omnis ab aliquid earum suscipit.', 'Dignissimos natus rerum laborum sit ea labore officiis. Porro quas sit voluptatum veniam quia veniam qui minima.', 750.17, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(29, 'Deserunt sapiente ipsam optio nihil vero.', 'Ea deserunt laboriosam adipisci fuga ut voluptas mollitia. Harum cum optio quaerat velit voluptatem. Sed eos veniam ipsa ipsa odio provident et.', 706.98, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(30, 'Laudantium repudiandae expedita et molestiae maiores.', 'At impedit eaque incidunt non neque et ea inventore. Totam ea doloremque quia quidem. At rem quibusdam reprehenderit impedit.', 47.29, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(31, 'Provident sit iste sunt ut eius.', 'Amet harum vero illo ex. Qui consequatur exercitationem perferendis expedita. Dolorem pariatur deserunt suscipit ratione.', 873.84, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(32, 'Omnis laudantium nesciunt et fuga est consequatur.', 'Voluptatum dignissimos ut enim adipisci ratione vel laboriosam. In est quo quis. Ut vel ut atque sed.', 23.89, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(33, 'Incidunt est quaerat voluptate repudiandae qui.', 'Possimus molestiae tenetur quae et. Libero officiis sit occaecati nesciunt. Ducimus ipsum iure corrupti reiciendis.', 75.19, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(34, 'Et ea enim dignissimos suscipit quia at ut.', 'Aliquam doloribus voluptatem dolorem officiis. Repudiandae dolorem aut harum animi consequatur omnis ad.', 782.08, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(35, 'Et animi recusandae reiciendis aut velit.', 'Quis voluptatum omnis occaecati non aut enim est. Rerum soluta quas natus aut blanditiis beatae.', 716.83, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(36, 'In optio itaque ratione est quo voluptate unde.', 'Laudantium quae sit suscipit aut laborum. Qui aut quod cupiditate fugit ipsa id eaque.', 247.75, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(37, 'Non laudantium quibusdam velit dolor sit vero.', 'Quis in distinctio cupiditate quia et quia laudantium. Fuga et architecto debitis saepe.', 308.89, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(38, 'Quibusdam neque pariatur quia at vitae molestiae ratione.', 'Dolorem unde reiciendis est maiores illum corporis. Deserunt praesentium pariatur sint voluptates. Consequatur ut aut placeat repellendus atque minus.', 269.66, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(39, 'Dolor accusamus pariatur tenetur similique aut et.', 'Nobis tempora vero aut consequatur ea voluptatum. Aut atque reprehenderit beatae sit debitis asperiores. Quos quo deleniti voluptas omnis mollitia rem eligendi.', 904.92, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(40, 'Ullam rerum praesentium veritatis qui veritatis.', 'Culpa sit maxime et eos qui. Dolores velit provident laudantium dolorem maiores autem.', 558.29, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(41, 'Non eos saepe ipsum hic maxime eveniet maiores nesciunt.', 'Dignissimos praesentium qui libero explicabo. Deserunt hic incidunt tempore quisquam velit quia voluptates. Est officiis ea fugit nulla.', 406.68, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(42, 'Nesciunt consequatur excepturi et cumque.', 'Minima omnis dolor totam voluptatem. Totam quia quia consectetur debitis id in enim. Dolor quae atque maiores animi consequatur vel voluptas aut.', 868.52, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(43, 'Aut est dolorum dicta ratione.', 'Quia neque eveniet ab sit. Ut sapiente nesciunt asperiores recusandae odit non maxime. Unde non incidunt ab praesentium possimus id.', 673.22, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(44, 'Ducimus rerum quis nihil praesentium sint.', 'Tenetur ut hic veritatis. Modi sunt quam illum amet quaerat voluptatem quidem.', 236.31, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(45, 'Consequatur omnis ut in iure quia quo libero.', 'Accusantium pariatur accusantium asperiores. Ullam ab eaque dicta nemo aperiam molestias est. Qui id consequuntur assumenda delectus velit minus et.', 365.74, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(46, 'Temporibus eius optio suscipit aut.', 'Odit eveniet doloribus qui perferendis nisi. Quisquam voluptatem officia eveniet in fugit animi.', 64.90, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(47, 'Soluta qui voluptas a nemo iste porro.', 'Rem sit voluptate qui. Non aliquid adipisci voluptates nihil.', 936.12, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(48, 'Dolor et repudiandae accusantium.', 'Eum consectetur enim molestiae quis. Est repellendus ipsa odio reiciendis.', 139.03, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(49, 'Voluptatibus ut ab quam.', 'Non eos dolor facere et molestias cupiditate distinctio quo. Quas non aliquid expedita est est pariatur in.', 512.66, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(50, 'Inventore necessitatibus nemo odit rerum.', 'Totam temporibus mollitia illum in nostrum. Commodi asperiores velit atque laboriosam cupiditate.', 164.66, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(51, 'Suscipit rerum magni expedita ut sed et similique.', 'Vel fugiat ipsa reiciendis. Quia et sit rerum non. Sit eius aut iste sint.', 704.83, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(52, 'Delectus odit dolorem non.', 'Mollitia natus quasi et dolorem et eveniet. Nostrum tenetur laboriosam voluptatem rerum. Sed nisi ut facere error distinctio.', 324.84, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(53, 'In explicabo amet omnis dolores aut possimus.', 'Est cupiditate in aut iste enim et. Vel voluptas enim id aut unde unde sequi soluta. Et quos dolor totam minima recusandae incidunt.', 688.07, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(54, 'Rem sunt aut autem necessitatibus sint placeat voluptatem.', 'Amet quidem dolorum sint magni qui tenetur aliquid. Consequatur nobis aperiam id beatae aut. Illum esse ducimus omnis repellendus quaerat facere veniam.', 249.18, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(55, 'Aut optio explicabo libero velit.', 'Earum ut ut nemo laudantium aut eos ut. Alias aut pariatur velit aperiam. Qui dolor dolores veritatis velit tempora.', 280.70, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(56, 'Cumque consequatur asperiores ullam eveniet eum qui.', 'Corrupti similique placeat et ea voluptas odit. Excepturi numquam deserunt quo reprehenderit. Est autem consectetur aut et enim.', 607.26, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(57, 'Vel fugiat culpa possimus quia consequatur sed.', 'Eum deleniti sit maiores libero nisi distinctio quod. Eveniet corporis commodi laboriosam est mollitia. Nulla esse placeat sint et maiores et non.', 862.43, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(58, 'Quia aut explicabo molestias nulla velit.', 'Et sit nihil aliquid quasi pariatur. Ea perspiciatis error necessitatibus odio. Maxime voluptatibus et aut nihil sapiente asperiores ex.', 281.15, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(59, 'Dolores dolorem enim est.', 'Officia voluptas totam aliquid. Sapiente libero aspernatur quis quo qui rerum. Cumque veniam ut corporis voluptatum.', 394.13, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(60, 'Provident accusantium vel facilis autem voluptate.', 'Omnis harum sit excepturi. Nam et autem nisi.', 643.71, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(61, 'Fuga ut doloremque quasi delectus.', 'Et molestias et amet quo. Id vel eligendi sint quis error.', 265.92, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(62, 'Quia tempora non possimus quae aspernatur architecto.', 'Vel quibusdam quas voluptatem labore. Hic dolor nobis dolorem praesentium.', 156.18, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(63, 'At possimus dolorem nobis rerum voluptas deleniti provident.', 'Eum consequatur nihil sit aut et distinctio similique. Expedita eum soluta sequi deleniti fuga explicabo. Iure omnis suscipit dicta aliquam.', 158.15, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(64, 'Cum quos voluptas in sit nobis.', 'Rerum labore minima nemo debitis natus officia. Rerum minima dolorem quis iusto commodi est.', 688.70, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(65, 'Eius voluptatem neque sequi ad delectus.', 'Autem qui magnam et ad dolor occaecati. Ut rerum sequi quasi nihil ut sint. Velit distinctio et qui laboriosam occaecati necessitatibus consequuntur.', 511.73, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(66, 'Molestiae nihil cum iusto corrupti doloribus ducimus doloremque.', 'Dolorum omnis in quis aliquam commodi provident. Et tenetur in fuga vel reprehenderit.', 318.99, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(67, 'Laudantium laborum et voluptas voluptate.', 'Officiis molestias labore eveniet perspiciatis. Velit non fugit laboriosam in incidunt totam.', 890.57, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(68, 'Necessitatibus reprehenderit labore iste sunt eum rem.', 'Aut quod dolores veniam neque voluptate et omnis. Voluptatibus asperiores error molestiae amet nemo omnis.', 462.90, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(69, 'Recusandae nihil exercitationem voluptatum maxime ea.', 'Eaque nemo quia labore laudantium omnis. In est possimus et vel nostrum. Et dolores saepe ipsum vitae quia ratione et iure.', 755.68, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(70, 'Tenetur modi quo voluptates.', 'Dolor iure velit eum aut alias. Temporibus totam enim esse sit et aliquam at.', 592.46, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(71, 'Enim libero consectetur repudiandae laudantium et nisi.', 'Atque omnis enim incidunt perferendis facere iusto esse. Et dolore exercitationem aliquid tempore.', 829.90, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(72, 'Assumenda sint sit assumenda mollitia voluptas rerum illum.', 'Autem quidem repellat sapiente minima magni sequi. Nisi harum repudiandae vel quis.', 342.65, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(73, 'Eos nulla enim quo eius aut dicta sunt aut.', 'Velit nam amet a et nihil quia rem. Sunt molestias et quo est soluta praesentium.', 515.90, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(74, 'Non voluptas aut voluptatem aut dicta eum.', 'Rerum aperiam consequatur eos architecto dolores. Voluptatibus modi odio nostrum doloremque rerum et asperiores eos.', 525.00, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(75, 'Maxime accusamus quo optio assumenda quod eligendi accusantium.', 'Totam voluptatem placeat est omnis. Magnam ipsum laborum ut omnis voluptas accusamus. Nobis autem dolorem dicta quaerat.', 894.17, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(76, 'Delectus nam et in.', 'Exercitationem voluptatem porro libero itaque quo. Delectus ipsam facilis debitis non eveniet.', 601.50, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(77, 'Voluptatem cumque maiores accusamus molestiae odit dignissimos iure.', 'Id praesentium reprehenderit unde velit. Iure similique corporis eligendi nobis assumenda voluptatem non.', 962.47, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(78, 'Aut explicabo laudantium voluptatem fuga laudantium ipsa.', 'Illum natus repudiandae odio a exercitationem facilis. Et mollitia vel ad iste. Dolorem et sint veniam fugit.', 755.55, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(79, 'Velit quia tempora iste enim laborum quis.', 'Praesentium minima nam dolor tenetur iure adipisci. Ut mollitia perspiciatis amet eos et est esse debitis. Quam expedita natus ipsam voluptatem.', 392.33, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(80, 'Libero et est assumenda quasi veritatis.', 'Molestiae at consequatur et non repudiandae autem. Quidem aliquam totam qui odit quia sit.', 779.68, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(81, 'Nam quas ex nostrum et delectus quaerat.', 'Ut culpa voluptas voluptatem alias illo. Ut nesciunt corporis ea assumenda magnam. Labore illo ipsam repellendus autem deserunt consequatur.', 391.61, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(82, 'Dolores maxime aut cum enim qui ea est.', 'Vitae recusandae debitis deserunt. Optio error consequatur modi et. Temporibus dicta beatae eum eos.', 386.83, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(83, 'Corrupti ea beatae ut eveniet veniam.', 'Nam reiciendis corrupti recusandae sunt. Minima architecto reiciendis ducimus omnis et cupiditate aut deserunt. Deleniti suscipit facilis dolorem dolorum sed perferendis est.', 923.08, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(84, 'Ratione quibusdam ut eius magni temporibus maiores eum.', 'Eveniet est quae sit ipsam. Autem et blanditiis dolores voluptatibus ad eos.', 698.95, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(85, 'In beatae delectus accusantium incidunt.', 'Ratione itaque ut et perferendis quisquam. Magnam adipisci distinctio enim aut. Sint aspernatur provident veniam esse qui non.', 328.24, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(86, 'Architecto fugiat eos voluptatibus quae.', 'Dolorem qui maxime perferendis et quae est fugit ducimus. Dolorum consequatur atque amet sit est dolorem. Debitis sed in iure distinctio dolorem et vero.', 371.03, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(87, 'Aut est quis libero ut.', 'Voluptatem tenetur id blanditiis. Tempora et eveniet omnis qui dolores illo officiis doloribus.', 682.10, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(88, 'Accusantium accusamus deserunt expedita ut esse autem vel eum.', 'Doloribus repudiandae eos et ut corrupti. In ratione impedit laboriosam optio eos voluptate est. In incidunt quo accusantium.', 395.62, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(89, 'Non velit voluptate numquam eos eius ea repellendus qui.', 'Est nesciunt voluptatem voluptatem omnis doloremque necessitatibus. Nemo voluptatem qui eius. Rerum enim nihil et odit perspiciatis ea.', 498.64, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(90, 'Harum eos sunt sint quibusdam magnam eum.', 'Quia eos nihil quam quo porro. Sed doloremque impedit pariatur mollitia nulla pariatur aut. Blanditiis eveniet delectus excepturi nam et ut nisi.', 562.47, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(91, 'Consequatur magni suscipit reiciendis optio repudiandae quo est.', 'Quo cupiditate nesciunt odit voluptatum modi ut modi. Corrupti non adipisci sit reprehenderit.', 719.70, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(92, 'Hic non maxime odit eveniet non nihil repellat ea.', 'Eos qui dolores facilis atque placeat eius eius. Voluptatem doloribus est saepe. Unde maiores et cum.', 642.86, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(93, 'Illum facilis alias nobis consectetur voluptas harum.', 'Alias dicta sit possimus iure. Quod deleniti mollitia iste. Aliquam aut incidunt minus dolore quis.', 773.85, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(94, 'Consectetur ratione sit facere fugit et.', 'Animi eligendi quia temporibus cupiditate atque reiciendis iste. Id quo id beatae aspernatur. Itaque quasi necessitatibus nihil non omnis molestiae quas.', 580.78, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(95, 'Recusandae illo atque officiis quo pariatur.', 'Sed autem sequi mollitia. Ut fuga magnam nam.', 760.00, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(96, 'Esse qui dignissimos ducimus voluptatem dolore.', 'Nam fugit voluptatem id. Dolores sunt sapiente temporibus natus omnis hic.', 797.50, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(97, 'Quos illum ratione blanditiis aperiam eos.', 'Eum quasi est quis provident nihil. Esse quia at et et alias veniam et. Aut ipsum non consequuntur non sunt.', 514.38, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(98, 'Autem eveniet assumenda totam praesentium quisquam architecto tempora.', 'Totam velit quia voluptate rerum. Laudantium voluptatem ratione tempora quibusdam.', 681.49, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(99, 'Atque asperiores aut earum recusandae dignissimos ullam maxime doloribus.', 'Cumque fugit molestias consequuntur laudantium totam dolores et. Repudiandae voluptatem soluta sed aut eius illum odit. Sed dignissimos libero quo omnis deserunt soluta sunt.', 718.01, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(100, 'Et aspernatur at eum maxime.', 'Et quia minima repellat. Quod est magnam aut nulla et qui.', 96.23, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(101, 'Excepturi architecto id non tempore quia.', 'Assumenda id vero atque. Consequatur deserunt suscipit corrupti sit esse in hic est.', 935.05, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(102, 'Ullam minus quia reiciendis omnis mollitia.', 'Voluptates esse et ex deserunt sunt sunt temporibus. Qui temporibus eius enim esse quo est.', 196.74, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(103, 'Vero dolorem dolorum tenetur magnam.', 'Et magni quam ipsa modi suscipit quos rerum. Aliquid excepturi cupiditate voluptatem amet modi impedit.', 278.71, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(104, 'Rerum at ut sit minus in.', 'Dignissimos harum voluptas maxime vel. Iure dolores quod voluptate saepe.', 21.51, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(105, 'Dolores dolores autem ex autem beatae quos.', 'Eveniet consequatur qui odio quis aut minima et excepturi. Culpa ut quis sit quos.', 716.66, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(106, 'Nostrum enim accusantium doloremque saepe consectetur et.', 'Reprehenderit in magni ex a. Provident repudiandae eos qui velit.', 459.44, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(107, 'Sint molestias non saepe.', 'Deleniti earum numquam eum repudiandae officiis accusamus. Quod et sed nihil adipisci voluptatem.', 353.52, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(108, 'Nihil dolor quam laborum rerum.', 'Quasi aut qui incidunt. Illo aspernatur qui mollitia. Consequatur voluptatem officiis voluptatem quos voluptatem.', 656.55, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(109, 'Aut quis omnis et est reprehenderit.', 'Repellat corrupti aliquid amet in. In aut mollitia a voluptatem dolore et. Doloribus earum repudiandae autem quos.', 345.72, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(110, 'Culpa rem error vitae minus consectetur id nam quo.', 'Molestiae voluptas ut optio id. Voluptatem necessitatibus voluptate ut vel sint labore mollitia et. Consequatur vero facere et maxime sit.', 689.19, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(111, 'Similique aliquid ex aut voluptatem dolore alias.', 'Molestias quas eos ut in reiciendis. Quis ad nisi recusandae voluptatem voluptatem nesciunt. Voluptatem et nihil eaque id nam pariatur placeat.', 30.04, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(112, 'Voluptatem nostrum ut eum aperiam repudiandae nulla.', 'Voluptatem quia est et natus doloremque. Quia eaque minima est pariatur enim alias earum.', 255.47, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(113, 'Possimus non sequi iure cumque.', 'Quaerat officia aut non ut eius. Alias voluptatibus voluptas nesciunt pariatur eaque rerum sit.', 514.01, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(114, 'Laudantium qui voluptatibus ab eaque debitis.', 'Dolor nulla asperiores voluptatem libero qui minus possimus. Molestiae libero qui quisquam id recusandae. Iusto quo corrupti ea numquam.', 71.35, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(115, 'Voluptatem non quod est voluptatem.', 'Ut eius dicta omnis quia et omnis qui. Dolorem et fuga dolores deleniti.', 51.98, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(116, 'Molestiae voluptatem qui adipisci libero fugit amet reiciendis.', 'Velit inventore molestias error non quasi inventore. Molestiae eveniet molestiae autem. Maiores voluptatem vitae nesciunt minima accusantium.', 34.88, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(117, 'Ut suscipit eligendi et inventore illum voluptas consectetur tenetur.', 'Vel atque consequatur explicabo exercitationem. Magni cumque necessitatibus exercitationem.', 645.61, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(118, 'Ex est aliquam in quam.', 'Tenetur ut vel aut et. Ad ab vitae dolorum qui nam quia voluptatem.', 78.27, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(119, 'Voluptas voluptatibus modi fugiat itaque earum.', 'Provident harum nesciunt temporibus dolore. Magnam ut perferendis aut.', 967.65, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(120, 'Cumque alias suscipit quasi repellat rerum autem reiciendis.', 'Error sequi soluta perspiciatis atque illo porro. Voluptatem ea cupiditate id deserunt harum suscipit. Repellat autem adipisci ut aliquam.', 221.74, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(121, 'Perferendis et repellat dolorum earum excepturi omnis.', 'Consequatur neque dolorem blanditiis natus dolorem ut dolor. Quia doloribus rerum expedita eos explicabo dolorum sint. Deleniti excepturi eligendi veniam voluptatum aspernatur in cumque aut.', 731.38, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(122, 'Debitis vero at hic iure voluptas velit ipsa.', 'Atque id nisi similique eveniet reiciendis odio id aut. Quia ipsam suscipit eos commodi corrupti.', 467.10, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(123, 'Sit laudantium voluptatum nam maxime ea ipsam.', 'Porro aliquam quia sint et facilis consequatur culpa. Voluptatum rerum non molestiae id voluptates vel eos.', 60.71, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(124, 'Nihil illum nihil quo nam incidunt vitae nihil ut.', 'Modi eum quos voluptates earum ipsum vero earum. Iste dolorem commodi eaque dolorem est est. Nam deserunt quidem excepturi commodi.', 902.06, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(125, 'Nobis modi libero et deleniti.', 'Velit porro facilis accusamus consectetur. Suscipit reprehenderit animi consequatur alias odio qui hic. Ut accusamus odit aut nihil.', 686.62, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(126, 'Et enim molestias saepe accusamus.', 'Omnis corrupti sapiente aut eum ea placeat architecto. Quis maxime error dolor nihil libero sit hic. Et est doloremque voluptas vel aut quis.', 770.67, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(127, 'Autem porro quos autem consectetur magnam aut nemo.', 'Dolor quia pariatur tenetur. Quo tenetur est qui.', 792.28, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(128, 'Corporis ipsum voluptatem sint enim officiis ut.', 'Maiores iste odit dignissimos consequatur omnis ut. Porro tenetur asperiores voluptatem aut. Pariatur officiis ipsum perspiciatis et quos explicabo.', 56.88, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(129, 'Cumque iste est inventore sit pariatur asperiores.', 'Illum harum quasi velit quos natus a. Assumenda unde quasi tenetur occaecati.', 940.81, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(130, 'Ut enim dolorem ad voluptatem sequi.', 'Qui omnis nemo magni et et maiores sit facere. Nulla qui eveniet placeat optio repudiandae. Nemo eos earum eum quisquam.', 808.39, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(131, 'Eligendi dolores veritatis temporibus saepe tempora perferendis.', 'Quia voluptatem eos officia qui. Aliquam voluptatum suscipit cupiditate et.', 821.80, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(132, 'Ut rerum exercitationem perferendis qui.', 'In vero qui qui quaerat aut assumenda eaque. Id nihil ullam neque voluptatem illo.', 546.59, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(133, 'Voluptas aut porro in a sit quibusdam.', 'Fugit et eligendi nobis sint sint repellendus. In est cumque rem architecto nam officiis voluptas error. Non harum quod aut harum recusandae est.', 824.06, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(134, 'Qui numquam ullam quibusdam.', 'Accusantium atque aperiam inventore vel corrupti ut. Fugiat vel esse velit molestiae animi qui.', 441.52, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(135, 'Aut recusandae architecto quos.', 'Sunt possimus natus est inventore accusamus eum. Eum sed enim ut odit.', 213.73, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(136, 'Ex quasi in nostrum.', 'Occaecati voluptates quo error culpa placeat ipsum eius. Maiores temporibus qui fugit.', 664.00, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(137, 'Ut qui vel autem.', 'Laudantium odit nobis odit reprehenderit quas accusantium. Nisi nostrum et fuga ad.', 402.34, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(138, 'Quia reprehenderit ut veritatis qui placeat.', 'Reprehenderit alias reprehenderit recusandae iste dolores iure tempora. Illum est architecto necessitatibus dignissimos voluptatem. Ea hic velit doloremque corrupti aut quaerat quia optio.', 607.72, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(139, 'Totam deserunt fugiat nemo dolore.', 'Ad ut sed labore dolor voluptas at distinctio. Voluptas consequatur magni est corporis voluptatem eos.', 896.85, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(140, 'A ut aperiam aut.', 'Asperiores quo consequuntur quasi natus laborum. Est est quasi rerum sapiente quaerat est perferendis. Veritatis debitis quis quia tempore neque non.', 836.99, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(141, 'Debitis sed cupiditate rerum incidunt.', 'Reiciendis consectetur vero quibusdam suscipit explicabo sed. Officia ut vel sunt.', 110.90, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(142, 'Sed at id enim quia qui omnis molestiae.', 'At aut nesciunt dolores officiis assumenda possimus amet ea. Ad provident nam voluptas aspernatur.', 367.00, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(143, 'Quaerat et odit non optio aut eligendi odio.', 'Fugit dolor est delectus inventore. Amet odit ex dolorum est. Nihil distinctio delectus eligendi ut repellendus nihil eaque.', 902.16, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(144, 'Est eius consequatur earum omnis voluptatem fugit doloremque tempore.', 'Deleniti voluptatem est velit consequatur. Molestias ut voluptatibus et ipsam sunt dolores. Omnis libero delectus expedita mollitia.', 94.51, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(145, 'Nam earum laboriosam blanditiis maxime repellat dolores voluptatem consequatur.', 'Nisi et fugit esse velit ea. Hic enim quaerat voluptatibus aspernatur delectus nesciunt.', 955.83, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(146, 'Praesentium quam nisi accusantium deleniti sapiente repellendus.', 'Aut qui sunt perspiciatis dolores inventore in. Architecto iusto quia aut dolorem. Sunt expedita voluptatem aut.', 960.05, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(147, 'Omnis sint consequuntur rerum labore.', 'Ducimus enim perspiciatis laudantium nisi doloribus sequi. Et vel ab sequi eaque nostrum placeat tempore.', 591.42, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(148, 'Ut magnam nesciunt deserunt.', 'Omnis dolore est rerum omnis doloremque et. Voluptas distinctio minima et ut.', 457.55, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(149, 'Quis qui sunt tempore optio.', 'Non quo omnis vero facilis minima. Repellat quia et alias et esse.', 404.06, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(150, 'Illum deserunt sapiente minima laboriosam et vero molestiae.', 'Ipsum ipsa eum aut consectetur ratione sit dolor. Praesentium cumque est exercitationem quae. Non ullam tempora soluta aliquid.', 357.11, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(151, 'Quia et sed quia quidem ut reiciendis.', 'Maxime et explicabo eligendi vel id. Nobis corporis fugit quibusdam.', 190.43, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(152, 'Enim sunt distinctio repudiandae.', 'Occaecati omnis consequatur et qui modi et. Atque voluptate quisquam dicta.', 255.01, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(153, 'Nemo aliquam sed itaque omnis.', 'Aut ducimus non quia. Recusandae odio doloremque modi.', 169.88, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(154, 'Esse quidem quasi facere quo eaque.', 'Vero ut praesentium odio mollitia. Eveniet doloribus asperiores omnis voluptas.', 920.03, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(155, 'Voluptatem optio quia ut explicabo rerum odit voluptatum earum.', 'Cupiditate qui sunt dolor. Laudantium at possimus quaerat esse repudiandae minus.', 899.14, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(156, 'Ut enim voluptatem qui quo ut omnis porro.', 'Praesentium nobis itaque non molestias. Quia repellat molestiae ut provident inventore numquam ut earum. Atque recusandae natus laborum.', 863.36, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(157, 'Necessitatibus non ut corrupti est.', 'Quos voluptas consequatur exercitationem aut deserunt velit voluptates. Aut numquam voluptatem est ab id. Ipsum ut repellendus et autem.', 376.75, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(158, 'Vel voluptates nostrum repellat repellendus beatae illo nobis.', 'Voluptatem autem nihil inventore voluptatem. Facilis quis quis officia distinctio repellat saepe eos.', 491.05, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(159, 'Quae sit velit sapiente nesciunt nihil.', 'Et minima quia accusantium qui repellendus. Quasi pariatur nobis facilis sed eum repellat blanditiis.', 401.40, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(160, 'Cumque magnam incidunt quo enim quidem minima dicta.', 'Dolor aperiam magnam voluptas vel illo qui autem. Quae inventore et aut dignissimos perspiciatis sint. Rem iusto nisi sit est.', 635.14, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 11, NULL),
(161, 'Porro aut dolor doloremque nisi est eius non est.', 'Doloribus vel eligendi est qui. Dolorem aut molestiae dolorum quae consequatur voluptatem. Ad architecto officia necessitatibus ut quia.', 677.57, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(162, 'Debitis atque labore quisquam veritatis modi.', 'Molestias veniam est quaerat. Doloremque ab quae quae quis quis voluptatem.', 992.45, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 12, NULL),
(163, 'Neque vitae rerum fuga dolorem animi.', 'Officia voluptatem laboriosam cum quis officia et cupiditate modi. Ipsam non et animi tenetur sed neque ut.', 791.45, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(164, 'Sint recusandae assumenda amet fugiat.', 'Temporibus aliquam et fugiat voluptate. Quam et qui rerum ipsa.', 746.17, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(165, 'Dolor nihil ut labore sint.', 'Magnam rerum dolorem rerum dolor temporibus ullam accusamus. Sunt magni vitae voluptatem reprehenderit.', 338.34, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 6, NULL),
(166, 'Neque cupiditate quam porro consequatur sit corrupti et commodi.', 'Qui et maiores consequatur. Neque voluptatum quae optio est esse. Et eum aut ad ab voluptatem ratione.', 440.65, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(167, 'Eligendi ea dolor cum et voluptatem velit et aut.', 'Sed libero nulla soluta quae commodi. Ab fugit harum omnis est pariatur. Repudiandae veritatis qui quia est.', 374.04, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(168, 'Quibusdam ex magnam eum molestiae qui omnis.', 'Itaque aut accusamus placeat soluta. Consequatur doloremque ratione commodi nulla sed deserunt.', 813.71, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(169, 'Pariatur aut quo facere.', 'Iusto ea fugiat quam ut molestias. Est quis magni beatae impedit assumenda.', 799.51, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(170, 'Molestias ut vitae molestiae.', 'Beatae sed enim minus numquam. At et voluptatem deserunt facilis. Velit incidunt rerum atque libero libero.', 282.38, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(171, 'Blanditiis dolores id perspiciatis consequuntur et.', 'Eligendi omnis reiciendis debitis quidem non. Optio sit illum velit voluptas velit ut quas. Voluptatum necessitatibus et fuga asperiores.', 739.67, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(172, 'Doloribus dolorem alias asperiores et assumenda.', 'Error aperiam et voluptatibus aperiam quibusdam voluptatem aliquid. Modi quidem rerum dignissimos perferendis adipisci amet.', 99.91, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 14, NULL),
(173, 'Laborum asperiores expedita eius est beatae facilis doloribus.', 'Ad deleniti magnam praesentium officia. Accusamus alias qui at consequatur rerum.', 251.51, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(174, 'Nemo ut dolor suscipit.', 'Facere dolorum et amet et. Reiciendis quasi et perspiciatis quod necessitatibus. Nihil ducimus et odit in.', 282.85, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(175, 'Repellat ut cupiditate velit dolorem.', 'Velit voluptas possimus reprehenderit enim consequatur ipsam. Iusto alias repellendus totam quo. Magni suscipit praesentium quam aut dolores.', 463.57, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(176, 'Itaque aspernatur quaerat ipsa dolor delectus mollitia deleniti.', 'In minima id sunt vitae mollitia. Quis animi asperiores aliquid.', 778.37, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 16, NULL),
(177, 'Ea tenetur aut voluptas excepturi.', 'Dignissimos officia voluptas maiores. Incidunt quae eos commodi sunt alias distinctio.', 50.87, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(178, 'Assumenda tempora debitis placeat iste omnis ut impedit.', 'Velit et dicta omnis eaque ut temporibus quia. Distinctio et nulla molestiae adipisci praesentium ea maxime.', 737.62, 'prod3.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(179, 'Eius corrupti quas illo corrupti dolores aliquam fuga enim.', 'Tenetur iure corrupti voluptate qui dolores aut est. Et consectetur reiciendis laborum alias quam ex voluptates.', 895.80, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 7, NULL),
(180, 'Sit et aliquam dolores.', 'Molestias et ut sed est. Nihil sequi perferendis dicta officiis nostrum. Quibusdam maxime mollitia voluptas accusantium ducimus sed.', 678.38, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(181, 'Exercitationem alias qui nihil.', 'Nam eum minima dicta vero recusandae. Quae nostrum officiis perferendis repudiandae. Doloribus est nihil odio placeat nemo.', 776.14, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(182, 'Et unde maiores quis eum architecto ipsam et.', 'Maxime magnam tempora quia harum blanditiis temporibus. Rerum perferendis dicta voluptas.', 17.25, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(183, 'Omnis repellat nesciunt et officia.', 'Consequatur nihil sunt dolores qui. Laboriosam quo molestiae est et.', 103.32, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(184, 'Explicabo suscipit dolorum error.', 'Dolor unde nisi porro explicabo quas nobis eum. Id officia dolorum voluptatem exercitationem. Voluptatum impedit eos molestias qui harum veniam sed.', 45.95, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 4, NULL),
(185, 'Ut facere labore et qui voluptas.', 'Eos animi omnis quos in temporibus. Corrupti accusantium ab voluptatem sunt fugiat. Voluptatum earum animi qui cupiditate tempora earum.', 347.98, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(186, 'Et expedita excepturi et totam ut.', 'Culpa sapiente modi recusandae quis provident eos occaecati. Quo qui occaecati temporibus aspernatur aliquam eaque dolores illo.', 483.82, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 5, NULL),
(187, 'Accusantium repudiandae doloremque veniam vel.', 'Soluta dolores voluptate maiores laudantium similique accusamus expedita. Illum repellat nihil necessitatibus impedit ipsa harum.', 889.39, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(188, 'Ab quis est quas non iste vel nam.', 'Fugiat aut harum eaque sequi amet. Enim molestias aut hic sequi tempora maxime animi. Quidem iusto dolore ratione et culpa nulla maiores quo.', 376.48, 'prod4.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 3, NULL),
(189, 'Labore nobis aut sint ea qui deleniti.', 'A placeat fuga est ipsum quia est laudantium. Qui neque iusto asperiores explicabo possimus eos.', 850.91, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 1, NULL),
(190, 'Illum nemo eum non perferendis dignissimos perferendis natus doloremque.', 'Quas perferendis ad et cupiditate. Aut voluptates qui est. Aut fuga a impedit.', 840.23, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(191, 'Quos molestiae est provident enim unde voluptatem.', 'Inventore rerum perferendis ut sit maxime quo. Consequatur voluptatem magni voluptatum doloribus nam ut.', 813.63, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 2, NULL),
(192, 'Officiis nobis dicta voluptatum voluptatem et cum.', 'Repellat cupiditate eum non placeat. Consequatur quidem quaerat totam sed qui optio et.', 40.96, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(193, 'Veniam vel laborum doloremque sint expedita at nam.', 'Molestias praesentium magnam natus est expedita. Voluptates saepe dolores numquam aliquam. Aut impedit tenetur quisquam ex aut quis et.', 113.13, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(194, 'Possimus nisi ipsa sapiente ut dolorem ut beatae.', 'Omnis ducimus aspernatur unde. Ut non nihil similique amet optio accusamus. Illo est possimus ut consequatur et.', 685.64, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 9, NULL),
(195, 'Sit enim vero aut optio rerum reprehenderit qui.', 'Vel modi repellendus sunt voluptatem aut consectetur non. Quia hic omnis et quam eum magnam at. Rerum dolor excepturi quia qui sint unde.', 113.13, 'prod5.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(196, 'Nulla id magni quod ipsam cum.', 'Non unde quia laboriosam dicta. Est rerum aut eligendi recusandae. Voluptatem aut perferendis voluptatum est aliquam.', 198.92, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 8, NULL),
(197, 'Et dignissimos officia facere non commodi cum.', 'Sed corporis delectus omnis possimus minima cum illo. Eligendi iusto adipisci corrupti similique ducimus dolores. Error qui fugiat saepe dolore libero voluptatem.', 219.51, 'prod2.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 10, NULL),
(198, 'Voluptatem dolorem assumenda sint eos.', 'Qui molestiae sunt excepturi omnis ipsum omnis. Aut ducimus sunt voluptatum repudiandae libero ipsa deserunt. Doloremque saepe modi doloribus recusandae quisquam.', 964.11, 'prod1.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 15, NULL),
(199, 'Et nesciunt distinctio necessitatibus nemo.', 'Minus provident sit suscipit animi voluptates quo. Tenetur quibusdam veritatis doloribus quaerat consequatur aut. Et inventore cupiditate explicabo nostrum.', 525.07, 'prod6.jpg', '2022-04-14 13:57:56', '2022-04-14 13:57:56', 13, NULL),
(200, 'tv sumsung smart 2', 'ghnem project for  cargoe', 22333.00, 'products/prod_1650242392.png', '2022-04-17 22:39:52', '2022-04-17 22:39:52', 14, NULL),
(201, 'BAR BENDING & CUTTING', 'ghnem project for  cargoe', 444.00, 'products/prod_1650244341.png', '2022-04-17 23:12:21', '2022-04-17 23:12:21', 2, NULL),
(202, 'computer labtop', 'ghnem project for  cargoe', 444.00, 'products/prod_1650247554.png', '2022-04-18 00:05:54', '2022-04-18 00:05:54', 0, NULL),
(203, 'computer DELL', 'ghnem project for  cargoe', 444.00, 'products/prod_1650247823.png', '2022-04-18 00:10:23', '2022-04-18 00:10:23', 0, NULL),
(204, 'computer MAC', 'ghnem project for  cargoe', 444.00, 'products/prod_1650248326.png', '2022-04-18 00:18:46', '2022-04-18 00:18:46', 0, NULL),
(205, 'mobile nokia N95', 'ghnem project for  cargoe', 22333.00, 'products/prod_1650250533.jpg', '2022-04-18 00:55:33', '2022-04-18 00:55:33', 0, NULL),
(206, 'mobile nokia damaa', 'ghnem project for  cargoe', 22333.00, 'products/prod_1650250586.jpg', '2022-04-18 00:56:26', '2022-04-18 00:56:26', 0, NULL),
(207, 'mobile nokia 110', 'ghnem project for  cargoe', 22333.00, 'products/prod_1650250739.jpg', '2022-04-18 00:58:59', '2022-04-18 00:58:59', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_categories`
--

CREATE TABLE `products_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `catalog_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_categories`
--

INSERT INTO `products_categories` (`id`, `catalog_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 5, 5, NULL, NULL),
(2, 4, 4, NULL, NULL),
(3, 1, 204, NULL, NULL),
(4, 10, 204, NULL, NULL),
(5, 12, 204, NULL, NULL),
(6, 7, 204, NULL, NULL),
(7, 12, 205, NULL, NULL),
(8, 7, 205, NULL, NULL),
(9, 12, 206, NULL, NULL),
(10, 7, 206, NULL, NULL),
(11, 12, 207, NULL, NULL),
(12, 7, 207, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_related_products`
--

CREATE TABLE `products_related_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `related_product_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_related_products`
--

INSERT INTO `products_related_products` (`id`, `related_product_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 141, 1, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(2, 104, 1, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(3, 157, 1, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(4, 8, 1, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(5, 69, 1, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(6, 182, 2, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(7, 128, 2, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(8, 111, 2, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(9, 131, 2, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(10, 60, 2, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(11, 167, 3, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(12, 32, 3, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(13, 85, 3, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(14, 117, 3, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(15, 29, 3, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(16, 69, 4, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(17, 95, 4, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(18, 65, 4, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(19, 18, 4, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(20, 78, 4, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(21, 140, 5, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(22, 74, 5, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(23, 130, 5, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(24, 131, 5, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(25, 130, 5, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(26, 120, 6, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(27, 41, 6, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(28, 158, 6, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(29, 20, 6, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(30, 191, 6, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(31, 139, 7, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(32, 78, 7, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(33, 200, 7, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(34, 149, 7, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(35, 99, 7, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(36, 197, 8, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(37, 110, 8, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(38, 46, 8, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(39, 111, 8, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(40, 102, 8, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(41, 80, 9, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(42, 24, 9, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(43, 130, 9, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(44, 53, 9, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(45, 78, 9, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(46, 134, 10, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(47, 18, 10, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(48, 44, 10, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(49, 27, 10, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(50, 45, 10, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(51, 165, 11, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(52, 133, 11, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(53, 124, 11, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(54, 184, 11, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(55, 199, 11, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(56, 123, 12, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(57, 200, 12, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(58, 138, 12, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(59, 6, 12, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(60, 51, 12, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(61, 156, 13, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(62, 50, 13, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(63, 82, 13, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(64, 98, 13, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(65, 75, 13, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(66, 108, 14, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(67, 124, 14, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(68, 46, 14, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(69, 136, 14, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(70, 115, 14, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(71, 190, 15, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(72, 91, 15, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(73, 116, 15, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(74, 179, 15, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(75, 39, 15, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(76, 10, 16, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(77, 198, 16, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(78, 164, 16, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(79, 97, 16, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(80, 171, 16, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(81, 50, 17, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(82, 177, 17, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(83, 128, 17, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(84, 98, 17, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(85, 97, 17, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(86, 7, 18, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(87, 186, 18, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(88, 37, 18, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(89, 190, 18, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(90, 153, 18, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(91, 183, 19, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(92, 16, 19, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(93, 73, 19, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(94, 118, 19, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(95, 70, 19, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(96, 159, 20, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(97, 67, 20, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(98, 149, 20, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(99, 179, 20, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(100, 97, 20, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(101, 35, 21, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(102, 192, 21, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(103, 184, 21, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(104, 171, 21, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(105, 3, 21, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(106, 150, 22, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(107, 165, 22, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(108, 31, 22, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(109, 93, 22, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(110, 165, 22, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(111, 63, 23, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(112, 52, 23, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(113, 178, 23, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(114, 114, 23, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(115, 169, 23, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(116, 71, 24, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(117, 27, 24, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(118, 185, 24, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(119, 64, 24, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(120, 141, 24, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(121, 134, 25, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(122, 85, 25, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(123, 53, 25, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(124, 74, 25, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(125, 177, 25, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(126, 92, 26, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(127, 146, 26, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(128, 115, 26, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(129, 98, 26, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(130, 36, 26, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(131, 69, 27, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(132, 154, 27, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(133, 15, 27, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(134, 47, 27, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(135, 20, 27, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(136, 172, 28, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(137, 177, 28, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(138, 62, 28, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(139, 100, 28, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(140, 21, 28, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(141, 143, 29, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(142, 97, 29, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(143, 176, 29, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(144, 15, 29, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(145, 7, 29, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(146, 112, 30, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(147, 76, 30, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(148, 12, 30, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(149, 63, 30, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(150, 7, 30, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(151, 12, 31, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(152, 160, 31, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(153, 48, 31, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(154, 171, 31, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(155, 128, 31, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(156, 1, 32, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(157, 80, 32, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(158, 125, 32, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(159, 141, 32, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(160, 3, 32, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(161, 15, 33, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(162, 10, 33, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(163, 81, 33, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(164, 177, 33, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(165, 16, 33, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(166, 19, 34, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(167, 29, 34, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(168, 139, 34, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(169, 71, 34, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(170, 136, 34, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(171, 53, 35, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(172, 77, 35, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(173, 150, 35, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(174, 87, 35, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(175, 85, 35, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(176, 98, 36, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(177, 10, 36, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(178, 169, 36, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(179, 68, 36, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(180, 4, 36, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(181, 135, 37, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(182, 194, 37, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(183, 73, 37, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(184, 93, 37, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(185, 166, 37, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(186, 196, 38, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(187, 50, 38, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(188, 77, 38, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(189, 46, 38, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(190, 185, 38, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(191, 32, 39, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(192, 148, 39, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(193, 74, 39, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(194, 165, 39, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(195, 19, 39, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(196, 88, 40, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(197, 160, 40, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(198, 78, 40, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(199, 123, 40, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(200, 11, 40, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(201, 117, 41, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(202, 74, 41, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(203, 186, 41, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(204, 137, 41, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(205, 189, 41, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(206, 99, 42, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(207, 158, 42, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(208, 123, 42, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(209, 13, 42, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(210, 150, 42, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(211, 141, 43, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(212, 166, 43, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(213, 88, 43, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(214, 173, 43, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(215, 159, 43, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(216, 190, 44, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(217, 138, 44, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(218, 11, 44, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(219, 182, 44, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(220, 84, 44, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(221, 111, 45, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(222, 58, 45, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(223, 104, 45, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(224, 114, 45, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(225, 158, 45, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(226, 2, 46, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(227, 136, 46, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(228, 21, 46, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(229, 33, 46, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(230, 11, 46, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(231, 95, 47, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(232, 88, 47, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(233, 90, 47, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(234, 174, 47, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(235, 8, 47, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(236, 163, 48, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(237, 153, 48, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(238, 42, 48, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(239, 150, 48, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(240, 12, 48, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(241, 38, 49, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(242, 187, 49, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(243, 74, 49, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(244, 105, 49, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(245, 16, 49, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(246, 87, 50, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(247, 152, 50, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(248, 59, 50, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(249, 144, 50, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(250, 199, 50, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(251, 18, 51, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(252, 95, 51, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(253, 149, 51, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(254, 45, 51, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(255, 188, 51, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(256, 85, 52, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(257, 150, 52, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(258, 194, 52, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(259, 30, 52, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(260, 102, 52, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(261, 27, 53, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(262, 4, 53, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(263, 150, 53, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(264, 88, 53, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(265, 7, 53, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(266, 179, 54, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(267, 64, 54, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(268, 70, 54, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(269, 80, 54, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(270, 185, 55, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(271, 99, 55, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(272, 183, 55, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(273, 143, 55, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(274, 122, 55, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(275, 199, 56, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(276, 80, 56, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(277, 12, 56, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(278, 196, 56, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(279, 138, 57, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(280, 46, 57, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(281, 109, 57, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(282, 122, 57, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(283, 197, 57, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(284, 178, 58, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(285, 43, 58, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(286, 101, 58, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(287, 33, 58, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(288, 183, 58, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(289, 183, 59, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(290, 183, 59, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(291, 147, 59, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(292, 32, 59, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(293, 183, 59, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(294, 152, 60, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(295, 26, 60, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(296, 25, 60, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(297, 189, 60, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(298, 125, 60, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(299, 172, 61, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(300, 170, 61, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(301, 187, 61, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(302, 74, 61, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(303, 168, 61, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(304, 159, 62, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(305, 27, 62, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(306, 46, 62, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(307, 129, 62, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(308, 155, 62, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(309, 81, 63, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(310, 165, 63, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(311, 154, 63, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(312, 145, 63, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(313, 106, 63, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(314, 68, 64, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(315, 196, 64, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(316, 21, 64, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(317, 46, 64, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(318, 161, 64, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(319, 179, 65, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(320, 199, 65, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(321, 99, 65, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(322, 29, 65, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(323, 81, 65, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(324, 65, 66, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(325, 154, 66, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(326, 132, 66, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(327, 83, 66, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(328, 63, 66, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(329, 89, 67, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(330, 9, 67, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(331, 18, 67, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(332, 13, 67, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(333, 60, 67, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(334, 10, 68, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(335, 2, 68, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(336, 67, 68, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(337, 84, 68, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(338, 43, 68, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(339, 15, 69, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(340, 157, 69, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(341, 45, 69, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(342, 183, 69, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(343, 66, 69, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(344, 11, 70, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(345, 192, 70, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(346, 80, 70, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(347, 76, 70, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(348, 153, 70, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(349, 64, 71, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(350, 127, 71, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(351, 190, 71, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(352, 105, 71, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(353, 10, 71, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(354, 25, 72, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(355, 37, 72, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(356, 5, 72, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(357, 17, 72, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(358, 94, 72, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(359, 183, 73, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(360, 146, 73, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(361, 90, 73, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(362, 107, 73, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(363, 35, 73, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(364, 59, 74, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(365, 24, 74, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(366, 26, 74, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(367, 123, 74, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(368, 92, 74, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(369, 85, 75, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(370, 163, 75, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(371, 92, 75, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(372, 33, 75, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(373, 167, 75, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(374, 164, 76, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(375, 144, 76, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(376, 144, 76, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(377, 129, 76, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(378, 152, 76, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(379, 110, 77, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(380, 31, 77, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(381, 62, 77, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(382, 9, 77, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(383, 88, 77, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(384, 184, 78, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(385, 105, 78, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(386, 142, 78, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(387, 129, 78, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(388, 16, 78, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(389, 150, 79, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(390, 171, 79, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(391, 23, 79, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(392, 149, 79, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(393, 170, 79, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(394, 2, 80, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(395, 153, 80, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(396, 36, 80, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(397, 89, 80, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(398, 187, 80, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(399, 99, 81, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(400, 27, 81, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(401, 187, 81, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(402, 36, 81, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(403, 61, 81, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(404, 31, 82, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(405, 20, 82, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(406, 23, 82, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(407, 138, 82, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(408, 134, 82, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(409, 129, 83, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(410, 173, 83, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(411, 42, 83, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(412, 112, 83, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(413, 18, 83, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(414, 15, 84, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(415, 160, 84, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(416, 154, 84, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(417, 28, 84, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(418, 200, 84, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(419, 67, 85, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(420, 60, 85, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(421, 167, 85, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(422, 194, 85, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(423, 128, 85, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(424, 198, 86, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(425, 130, 86, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(426, 98, 86, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(427, 111, 86, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(428, 181, 86, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(429, 200, 87, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(430, 113, 87, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(431, 1, 87, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(432, 109, 87, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(433, 51, 87, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(434, 22, 88, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(435, 96, 88, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(436, 115, 88, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(437, 173, 88, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(438, 80, 88, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(439, 190, 89, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(440, 95, 89, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(441, 42, 89, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(442, 126, 89, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(443, 50, 90, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(444, 74, 90, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(445, 164, 90, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(446, 77, 90, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(447, 44, 90, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(448, 104, 91, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(449, 113, 91, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(450, 182, 91, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(451, 128, 91, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(452, 184, 91, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(453, 55, 92, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(454, 17, 92, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(455, 88, 92, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(456, 94, 92, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(457, 21, 92, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(458, 3, 93, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(459, 58, 93, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(460, 96, 93, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(461, 111, 93, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(462, 103, 93, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(463, 36, 94, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(464, 20, 94, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(465, 158, 94, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(466, 100, 94, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(467, 112, 94, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(468, 126, 95, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(469, 30, 95, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(470, 100, 95, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(471, 170, 95, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(472, 122, 95, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(473, 17, 96, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(474, 180, 96, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(475, 9, 96, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(476, 141, 96, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(477, 128, 96, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(478, 196, 97, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(479, 155, 97, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(480, 24, 97, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(481, 98, 97, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(482, 35, 97, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(483, 152, 98, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(484, 137, 98, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(485, 93, 98, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(486, 129, 98, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(487, 59, 98, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(488, 142, 99, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(489, 147, 99, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(490, 128, 99, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(491, 184, 99, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(492, 193, 99, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(493, 107, 100, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(494, 7, 100, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(495, 63, 100, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(496, 42, 100, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(497, 119, 100, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(498, 125, 101, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(499, 71, 101, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(500, 197, 101, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(501, 162, 101, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(502, 88, 101, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(503, 75, 102, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(504, 199, 102, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(505, 184, 102, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(506, 146, 102, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(507, 46, 102, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(508, 68, 103, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(509, 111, 103, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(510, 39, 103, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(511, 85, 103, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(512, 34, 103, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(513, 180, 104, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(514, 96, 104, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(515, 24, 104, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(516, 160, 104, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(517, 106, 104, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(518, 170, 105, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(519, 119, 105, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(520, 68, 105, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(521, 16, 105, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(522, 174, 105, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(523, 137, 106, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(524, 197, 106, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(525, 40, 106, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(526, 100, 106, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(527, 153, 106, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(528, 49, 107, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(529, 189, 107, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(530, 47, 107, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(531, 147, 107, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(532, 114, 107, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(533, 15, 108, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(534, 196, 108, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(535, 134, 108, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(536, 144, 108, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(537, 17, 108, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(538, 99, 109, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(539, 198, 109, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(540, 183, 109, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(541, 27, 109, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(542, 193, 109, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(543, 193, 110, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(544, 21, 110, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(545, 71, 110, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(546, 46, 110, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(547, 1, 110, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(548, 75, 111, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(549, 110, 111, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(550, 36, 111, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(551, 147, 111, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(552, 89, 111, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(553, 162, 112, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(554, 186, 112, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(555, 199, 112, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(556, 58, 112, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(557, 116, 112, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(558, 192, 113, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(559, 55, 113, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(560, 74, 113, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(561, 144, 113, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(562, 74, 113, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(563, 57, 114, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(564, 151, 114, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(565, 58, 114, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(566, 55, 114, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(567, 61, 114, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(568, 45, 115, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(569, 46, 115, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(570, 176, 115, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(571, 175, 115, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(572, 39, 115, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(573, 80, 116, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(574, 175, 116, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(575, 102, 116, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(576, 79, 116, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(577, 137, 116, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(578, 193, 117, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(579, 17, 117, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(580, 133, 117, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(581, 110, 117, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(582, 173, 117, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(583, 138, 118, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(584, 200, 118, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(585, 39, 118, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(586, 44, 118, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(587, 89, 118, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(588, 121, 119, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(589, 187, 119, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(590, 71, 119, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(591, 133, 119, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(592, 100, 119, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(593, 89, 120, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(594, 143, 120, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(595, 54, 120, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(596, 156, 120, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(597, 168, 120, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(598, 161, 121, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(599, 127, 121, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(600, 165, 121, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(601, 34, 121, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(602, 138, 121, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(603, 120, 122, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(604, 131, 122, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(605, 46, 122, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(606, 14, 122, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(607, 193, 122, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(608, 195, 123, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(609, 34, 123, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(610, 154, 123, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(611, 184, 123, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(612, 118, 123, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(613, 117, 124, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(614, 151, 124, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(615, 7, 124, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(616, 168, 124, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(617, 21, 124, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(618, 133, 125, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(619, 12, 125, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(620, 115, 125, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(621, 166, 125, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(622, 123, 125, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(623, 153, 126, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(624, 184, 126, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(625, 99, 126, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(626, 187, 126, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(627, 59, 126, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(628, 161, 127, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(629, 53, 127, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(630, 78, 127, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(631, 158, 127, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(632, 179, 127, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(633, 189, 128, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(634, 155, 128, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(635, 114, 128, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(636, 71, 128, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(637, 41, 128, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(638, 85, 129, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(639, 4, 129, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(640, 29, 129, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(641, 113, 129, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(642, 59, 129, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(643, 195, 130, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(644, 75, 130, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(645, 96, 130, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(646, 89, 130, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(647, 37, 130, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(648, 145, 131, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(649, 144, 131, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(650, 112, 131, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(651, 125, 131, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(652, 78, 131, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(653, 79, 132, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(654, 68, 132, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(655, 35, 132, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(656, 70, 132, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(657, 156, 132, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(658, 84, 133, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(659, 17, 133, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(660, 150, 133, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(661, 115, 133, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(662, 109, 133, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(663, 30, 134, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(664, 22, 134, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(665, 87, 134, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(666, 102, 134, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(667, 102, 134, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(668, 44, 135, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(669, 65, 135, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(670, 136, 135, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(671, 4, 135, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(672, 22, 135, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(673, 194, 136, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(674, 81, 136, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(675, 89, 136, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(676, 105, 136, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(677, 100, 136, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(678, 31, 137, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(679, 29, 137, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(680, 117, 137, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(681, 100, 137, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(682, 181, 137, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(683, 7, 138, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(684, 89, 138, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(685, 118, 138, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(686, 154, 138, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(687, 146, 138, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(688, 112, 139, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(689, 56, 139, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(690, 61, 139, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(691, 17, 139, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(692, 112, 139, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(693, 72, 140, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(694, 60, 140, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(695, 26, 140, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(696, 136, 140, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(697, 190, 140, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(698, 188, 141, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(699, 59, 141, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(700, 155, 141, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(701, 117, 141, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(702, 119, 141, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(703, 132, 142, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(704, 57, 142, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(705, 90, 142, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(706, 134, 142, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(707, 43, 142, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(708, 119, 143, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(709, 62, 143, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(710, 38, 143, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(711, 39, 143, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(712, 17, 143, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(713, 165, 144, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(714, 167, 144, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(715, 141, 144, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(716, 153, 144, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(717, 149, 144, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(718, 130, 145, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(719, 57, 145, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(720, 48, 145, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(721, 127, 145, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(722, 197, 145, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(723, 159, 146, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(724, 27, 146, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(725, 200, 146, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(726, 111, 146, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(727, 68, 146, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(728, 30, 147, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(729, 175, 147, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(730, 17, 147, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(731, 161, 147, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(732, 167, 147, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(733, 139, 148, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(734, 140, 148, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(735, 110, 148, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(736, 139, 148, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(737, 91, 148, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(738, 159, 149, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(739, 187, 149, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(740, 66, 149, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(741, 166, 149, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(742, 119, 149, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(743, 56, 150, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(744, 130, 150, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(745, 112, 150, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(746, 34, 150, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(747, 30, 150, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(748, 6, 151, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(749, 58, 151, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(750, 35, 151, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(751, 36, 151, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(752, 95, 151, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(753, 49, 152, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(754, 185, 152, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(755, 124, 152, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(756, 95, 152, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(757, 129, 152, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(758, 100, 153, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(759, 49, 153, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(760, 154, 153, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(761, 140, 153, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(762, 49, 153, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(763, 168, 154, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(764, 197, 154, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(765, 185, 154, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(766, 165, 154, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(767, 196, 154, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(768, 14, 155, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(769, 198, 155, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(770, 96, 155, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(771, 174, 155, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(772, 65, 155, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(773, 175, 156, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(774, 7, 156, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(775, 34, 156, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(776, 12, 156, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(777, 182, 156, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(778, 131, 157, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(779, 36, 157, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(780, 10, 157, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(781, 107, 157, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(782, 125, 157, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(783, 113, 158, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(784, 59, 158, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(785, 47, 158, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(786, 23, 158, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(787, 96, 158, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(788, 35, 159, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(789, 107, 159, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(790, 189, 159, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(791, 150, 159, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(792, 186, 159, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(793, 92, 160, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(794, 3, 160, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(795, 105, 160, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(796, 111, 160, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(797, 51, 160, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(798, 2, 161, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(799, 128, 161, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(800, 59, 161, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(801, 11, 161, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(802, 178, 161, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(803, 92, 162, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(804, 25, 162, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(805, 120, 162, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(806, 165, 162, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(807, 43, 162, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(808, 169, 163, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(809, 155, 163, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(810, 5, 163, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(811, 131, 163, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(812, 175, 163, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(813, 84, 164, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(814, 177, 164, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(815, 174, 164, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(816, 176, 164, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(817, 146, 164, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(818, 118, 165, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(819, 179, 165, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(820, 58, 165, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(821, 108, 165, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(822, 54, 165, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(823, 38, 166, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(824, 163, 166, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(825, 141, 166, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(826, 69, 166, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(827, 109, 166, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(828, 125, 167, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(829, 139, 167, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(830, 3, 167, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(831, 80, 167, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(832, 200, 167, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(833, 15, 168, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(834, 154, 168, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(835, 68, 168, '2022-04-14 13:57:57', '2022-04-14 13:57:57');
INSERT INTO `products_related_products` (`id`, `related_product_id`, `product_id`, `created_at`, `updated_at`) VALUES
(836, 32, 168, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(837, 186, 168, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(838, 57, 169, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(839, 31, 169, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(840, 134, 169, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(841, 66, 169, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(842, 97, 169, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(843, 197, 170, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(844, 165, 170, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(845, 140, 170, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(846, 98, 170, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(847, 158, 170, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(848, 66, 171, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(849, 87, 171, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(850, 181, 171, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(851, 106, 171, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(852, 138, 171, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(853, 180, 172, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(854, 130, 172, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(855, 142, 172, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(856, 90, 172, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(857, 152, 173, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(858, 68, 173, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(859, 146, 173, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(860, 97, 173, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(861, 6, 173, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(862, 177, 174, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(863, 125, 174, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(864, 175, 174, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(865, 67, 174, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(866, 191, 174, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(867, 27, 175, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(868, 167, 175, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(869, 79, 175, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(870, 77, 175, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(871, 182, 175, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(872, 106, 176, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(873, 143, 176, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(874, 25, 176, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(875, 38, 176, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(876, 119, 176, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(877, 165, 177, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(878, 129, 177, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(879, 47, 177, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(880, 151, 177, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(881, 199, 177, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(882, 172, 178, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(883, 128, 178, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(884, 155, 178, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(885, 110, 178, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(886, 40, 178, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(887, 63, 179, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(888, 160, 179, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(889, 135, 179, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(890, 81, 179, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(891, 155, 179, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(892, 169, 180, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(893, 35, 180, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(894, 88, 180, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(895, 51, 180, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(896, 61, 180, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(897, 152, 181, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(898, 29, 181, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(899, 125, 181, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(900, 194, 181, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(901, 77, 181, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(902, 106, 182, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(903, 65, 182, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(904, 142, 182, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(905, 59, 182, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(906, 150, 182, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(907, 93, 183, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(908, 106, 183, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(909, 93, 183, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(910, 194, 183, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(911, 91, 183, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(912, 9, 184, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(913, 94, 184, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(914, 169, 184, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(915, 64, 184, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(916, 69, 184, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(917, 115, 185, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(918, 133, 185, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(919, 36, 185, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(920, 161, 185, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(921, 49, 185, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(922, 141, 186, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(923, 155, 186, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(924, 120, 186, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(925, 13, 186, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(926, 74, 186, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(927, 185, 187, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(928, 15, 187, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(929, 186, 187, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(930, 17, 187, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(931, 122, 187, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(932, 32, 188, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(933, 104, 188, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(934, 104, 188, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(935, 4, 188, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(936, 156, 188, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(937, 136, 189, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(938, 115, 189, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(939, 164, 189, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(940, 111, 189, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(941, 24, 189, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(942, 79, 190, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(943, 63, 190, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(944, 148, 190, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(945, 196, 190, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(946, 29, 190, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(947, 31, 191, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(948, 127, 191, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(949, 51, 191, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(950, 196, 191, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(951, 169, 191, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(952, 166, 192, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(953, 41, 192, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(954, 4, 192, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(955, 44, 192, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(956, 184, 192, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(957, 124, 193, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(958, 53, 193, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(959, 189, 193, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(960, 112, 193, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(961, 72, 193, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(962, 78, 194, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(963, 137, 194, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(964, 115, 194, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(965, 141, 194, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(966, 39, 194, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(967, 113, 195, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(968, 165, 195, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(969, 72, 195, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(970, 91, 195, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(971, 19, 195, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(972, 111, 196, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(973, 26, 196, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(974, 126, 196, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(975, 75, 196, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(976, 34, 196, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(977, 48, 197, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(978, 150, 197, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(979, 157, 197, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(980, 57, 197, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(981, 1, 197, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(982, 22, 198, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(983, 167, 198, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(984, 141, 198, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(985, 77, 198, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(986, 141, 198, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(987, 175, 199, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(988, 55, 199, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(989, 172, 199, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(990, 22, 199, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(991, 47, 199, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(992, 163, 200, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(993, 3, 200, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(994, 60, 200, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(995, 68, 200, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(996, 4, 200, '2022-04-14 13:57:57', '2022-04-14 13:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `product_property`
--

CREATE TABLE `product_property` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_value_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_property`
--

INSERT INTO `product_property` (`id`, `property_value_id`, `product_id`, `created_at`, `updated_at`) VALUES
(3, 7, 3, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(4, 3, 4, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(6, 3, 6, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(7, 8, 7, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(8, 6, 8, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(9, 9, 9, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(10, 10, 10, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(11, 4, 11, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(12, 12, 12, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(13, 11, 13, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(14, 5, 14, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(15, 9, 15, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(16, 7, 16, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(18, 11, 18, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(19, 11, 19, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(20, 6, 20, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(21, 5, 21, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(22, 2, 22, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(23, 4, 23, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(24, 5, 24, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(25, 6, 25, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(26, 4, 26, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(27, 5, 27, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(28, 3, 28, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(29, 4, 29, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(30, 10, 30, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(31, 9, 31, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(32, 4, 32, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(33, 4, 33, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(34, 3, 34, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(35, 2, 35, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(36, 9, 36, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(37, 12, 37, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(38, 5, 38, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(39, 2, 39, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(40, 5, 40, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(41, 7, 41, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(42, 9, 42, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(43, 2, 43, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(44, 1, 44, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(45, 1, 45, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(46, 7, 46, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(47, 7, 47, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(48, 3, 48, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(49, 1, 49, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(50, 6, 50, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(51, 10, 51, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(52, 4, 52, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(53, 10, 53, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(54, 10, 54, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(55, 2, 55, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(56, 9, 56, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(57, 8, 57, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(58, 12, 58, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(59, 8, 59, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(60, 6, 60, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(61, 10, 61, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(62, 11, 62, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(63, 11, 63, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(64, 9, 64, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(65, 6, 65, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(66, 11, 66, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(67, 8, 67, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(68, 1, 68, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(69, 1, 69, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(70, 11, 70, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(71, 4, 71, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(72, 12, 72, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(73, 7, 73, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(74, 4, 74, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(75, 7, 75, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(76, 9, 76, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(77, 8, 77, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(78, 2, 78, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(79, 12, 79, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(80, 8, 80, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(81, 10, 81, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(82, 2, 82, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(83, 10, 83, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(84, 1, 84, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(85, 5, 85, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(86, 3, 86, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(87, 5, 87, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(88, 7, 88, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(89, 1, 89, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(90, 3, 90, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(91, 12, 91, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(92, 2, 92, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(93, 9, 93, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(94, 12, 94, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(95, 6, 95, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(96, 7, 96, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(97, 7, 97, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(98, 5, 98, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(99, 2, 99, '2022-04-14 13:58:01', '2022-04-14 13:58:01'),
(100, 14, 17, '2022-04-14 14:23:32', '2022-04-14 14:23:32'),
(101, 2, 5, '2022-04-17 18:48:41', '2022-04-17 18:48:41'),
(102, 15, 5, '2022-04-17 18:49:02', '2022-04-17 18:49:02'),
(103, 3, 7, '2022-04-17 18:52:47', '2022-04-17 18:52:47'),
(104, 16, 2, '2022-04-17 19:50:59', '2022-04-17 19:50:59'),
(105, 3, 3, '2022-04-17 22:35:05', '2022-04-17 22:35:05'),
(106, 17, 200, '2022-04-17 22:42:19', '2022-04-17 22:42:19'),
(107, 1, 201, '2022-04-17 23:12:40', '2022-04-17 23:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prop_group_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('number','selector') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'number'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `name`, `prop_group_id`, `created_at`, `updated_at`, `priority`, `type`) VALUES
(1, 'Brand', NULL, '2022-04-14 13:57:58', '2022-04-14 13:57:58', '0', 'selector'),
(2, 'weight', NULL, '2022-04-14 13:57:58', '2022-04-14 13:57:58', '1', 'number'),
(3, 'size', NULL, '2022-04-14 14:22:57', '2022-04-14 14:22:57', '17', 'selector');

-- --------------------------------------------------------

--
-- Table structure for table `property_values`
--

CREATE TABLE `property_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `property_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_values`
--

INSERT INTO `property_values` (`id`, `property_id`, `value`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Canon', NULL, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(2, 1, 'Philips', NULL, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(3, 1, 'Bosch', NULL, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(4, 1, 'Nesquik', NULL, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(5, 1, 'Rolex', NULL, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(6, 1, 'Ferrari', NULL, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(7, 2, '1', 1, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(8, 2, '5', 1, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(9, 2, '10', 1, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(10, 2, '20', 1, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(11, 2, '50', 1, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(12, 2, '99.5', 1, '2022-04-14 13:57:59', '2022-04-14 13:57:59'),
(13, 3, 'L', NULL, '2022-04-14 14:22:57', '2022-04-14 14:22:57'),
(14, 1, '3', NULL, '2022-04-14 14:23:32', '2022-04-14 14:23:32'),
(15, 3, 'XL', NULL, '2022-04-17 18:19:34', '2022-04-17 18:19:34'),
(16, 2, '3', NULL, '2022-04-17 19:50:59', '2022-04-17 19:50:59'),
(17, 1, 'sumsung', NULL, '2022-04-17 22:39:11', '2022-04-17 22:39:11'),
(18, 2, '44', NULL, '2022-04-17 23:20:31', '2022-04-17 23:20:31'),
(19, 2, '4', NULL, '2022-04-17 23:24:12', '2022-04-17 23:24:12'),
(20, 2, '6', NULL, '2022-04-17 23:58:28', '2022-04-17 23:58:28');

-- --------------------------------------------------------

--
-- Table structure for table `related_products`
--

CREATE TABLE `related_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `points` int(11) NOT NULL,
  `impressions` int(11) NOT NULL,
  `choices` int(11) NOT NULL,
  `deleting` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `related_products`
--

INSERT INTO `related_products` (`id`, `points`, `impressions`, `choices`, `deleting`, `created_at`, `updated_at`) VALUES
(1, 1005, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-15 23:51:08'),
(2, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(3, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(4, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(5, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(6, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(7, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(8, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(9, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(10, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(11, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(12, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(13, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(14, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(15, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(16, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(17, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(18, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(19, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(20, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(21, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(22, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(23, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(24, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(25, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(26, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(27, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(28, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(29, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(30, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(31, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(32, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(33, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(34, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(35, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(36, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(37, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(38, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(39, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(40, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(41, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(42, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(43, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(44, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(45, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(46, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(47, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(48, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(49, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(50, 997, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 22:14:18'),
(51, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(52, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(53, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(54, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(55, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(56, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(57, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(58, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(59, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(60, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(61, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(62, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(63, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(64, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(65, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(66, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(67, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(68, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(69, 999, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-15 23:58:02'),
(70, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(71, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(72, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(73, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(74, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(75, 975, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-15 23:50:57'),
(76, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(77, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(78, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(79, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(80, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(81, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(82, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(83, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(84, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(85, 999, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-15 23:51:08'),
(86, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(87, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(88, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(89, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(90, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(91, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(92, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(93, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(94, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(95, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(96, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(97, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(98, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(99, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(100, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(101, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(102, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(103, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(104, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(105, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(106, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(107, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(108, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(109, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(110, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(111, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(112, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(113, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(114, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(115, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(116, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(117, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(118, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(119, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(120, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(121, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(122, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(123, 992, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-16 00:02:36'),
(124, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(125, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(126, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(127, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(128, 999, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 17:17:15'),
(129, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(130, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(131, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(132, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(133, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(134, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(135, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(136, 996, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-16 00:05:22'),
(137, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(138, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(139, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(140, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(141, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(142, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(143, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(144, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(145, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(146, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(147, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(148, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(149, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(150, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(151, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(152, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(153, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(154, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(155, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(156, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(157, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(158, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(159, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(160, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(161, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(162, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(163, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(164, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(165, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(166, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(167, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(168, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(169, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(170, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(171, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(172, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(173, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(174, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(175, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(176, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(177, 999, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-15 23:52:34'),
(178, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(179, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(180, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(181, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(182, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(183, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(184, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(185, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(186, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(187, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(188, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(189, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(190, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(191, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(192, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(193, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(194, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(195, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(196, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(197, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(198, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(199, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57'),
(200, 1000, 0, 0, 0, '2022-04-14 13:57:57', '2022-04-14 13:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`id`, `class_name`, `priority`, `enable`, `created_at`, `updated_at`) VALUES
(1, 'FreeShippingMethod', 1, 1, '2022-04-14 13:58:02', '2022-04-17 22:19:07'),
(2, 'FixRateShippingMethod', 0, 0, '2022-04-14 13:58:02', '2022-04-17 22:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `link`, `created_at`, `updated_at`) VALUES
(1, 'discount', 'Latest Model MacBook Air', 'images/Slider/cat_1650256320.png', 'http://localhost:8000/shop/206', '2022-04-18 02:12:16', '2022-04-18 02:32:00'),
(2, 'marcedis', 'Discount  Discount  Discount', 'images/Slider/cat_1650256549.jpg', 'http://localhost:8000/shop/204', '2022-04-18 02:35:49', '2022-04-18 02:35:49');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` char(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_place` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `code`, `full_name`, `decimal_place`, `created_at`, `updated_at`) VALUES
(1, 'kg.', 'KG', 'kilogram', 3, '2022-04-14 13:57:56', '2022-04-14 13:57:56'),
(2, 'gr.', 'GR', 'gram', 0, '2022-04-14 13:57:56', '2022-04-14 13:57:56'),
(3, 'pack.', 'PK', 'package', 0, '2022-04-14 13:57:56', '2022-04-14 13:57:56'),
(4, 'pcs.', 'PCS', 'pieces', 0, '2022-04-14 13:57:56', '2022-04-14 13:57:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `email_verified_at`, `remember_token`, `created_at`, `updated_at`, `cart`, `force_logout`) VALUES
(1, 'mohammed', 'ghanemm138@gmail.com', '$2y$10$mvWg0zzTKT3fey08kmC26up3Y6/fAVCAM4tUdUpFgDg69xDcBsaSm', '2022-04-18 05:58:16', NULL, '2022-04-14 17:16:13', '2022-04-16 22:37:24', '', 1),
(6, 'mohammed', 'ghanem@gmail.com', '$2y$10$RUA39rAcHdEy4jvvEuN2MOTkg5g7hI1ENZ6FmhIIWQIYo0s9Tmyqm', '2022-04-18 05:00:38', NULL, '2022-04-18 04:30:02', '2022-04-18 05:00:38', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands_categories`
--
ALTER TABLE `brands_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catalogs`
--
ALTER TABLE `catalogs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `catalogs_name_unique` (`name`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_data`
--
ALTER TABLE `order_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_categories`
--
ALTER TABLE `products_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_related_products`
--
ALTER TABLE `products_related_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_property`
--
ALTER TABLE `product_property`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `property_values`
--
ALTER TABLE `property_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `related_products`
--
ALTER TABLE `related_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands_categories`
--
ALTER TABLE `brands_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `catalogs`
--
ALTER TABLE `catalogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `order_data`
--
ALTER TABLE `order_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `products_categories`
--
ALTER TABLE `products_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products_related_products`
--
ALTER TABLE `products_related_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=997;

--
-- AUTO_INCREMENT for table `product_property`
--
ALTER TABLE `product_property`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `property_values`
--
ALTER TABLE `property_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `related_products`
--
ALTER TABLE `related_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
