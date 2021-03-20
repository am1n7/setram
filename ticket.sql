-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 03, 2020 at 12:16 AM
-- Server version: 10.3.23-MariaDB-0+deb10u1
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(2, NULL, 1, 'Category 2', 'category-2', '2020-07-28 21:33:52', '2020-07-28 21:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '{}', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '{}', 5),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '{}', 6),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 7),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 0, 0, 1, '{}', 10),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\",\"taggable\":\"0\"}', 13),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 14),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '{}', 15),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 0, 1, 1, 1, 1, 1, '{}', 11),
(56, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(57, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(58, 7, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 3),
(59, 7, 'description', 'text_area', 'Description', 0, 1, 1, 1, 1, 1, '{}', 4),
(60, 7, 'stock', 'number', 'Stock', 0, 1, 1, 1, 1, 1, '{}', 5),
(61, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(62, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(63, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 8, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 8, 'price', 'text', 'Price', 1, 1, 1, 1, 1, 1, '{}', 4),
(66, 8, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, '{}', 5),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(69, 9, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 9, 'ticket_id', 'text', 'Ticket Id', 1, 1, 1, 1, 1, 1, '{}', 2),
(74, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 7),
(75, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(76, 9, 'order_belongsto_ticket_relationship', 'relationship', 'tickets', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Ticket\",\"table\":\"tickets\",\"type\":\"belongsTo\",\"column\":\"ticket_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 3),
(77, 9, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, '{}', 5),
(78, 9, 'payment', 'text', 'Payment', 1, 1, 1, 1, 1, 1, '{}', 6),
(80, 9, 'total', 'text', 'Total', 1, 1, 1, 0, 0, 1, '{}', 8),
(81, 1, 'user_belongsto_plan_relationship', 'relationship', 'plans', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Plan\",\"table\":\"plans\",\"type\":\"belongsTo\",\"column\":\"plan_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"categories\",\"pivot\":\"0\",\"taggable\":\"0\"}', 12),
(82, 1, 'email_verified_at', 'timestamp', 'Email Verified At', 0, 1, 0, 0, 0, 1, '{}', 9),
(83, 1, 'plan_id', 'text', 'Plan Id', 0, 1, 1, 1, 1, 1, '{}', 4),
(84, 1, 'subscription', 'date', 'Subscription', 0, 1, 1, 1, 1, 1, '{}', 13),
(85, 9, 'paypal_token', 'text', 'Paypal Token', 0, 1, 1, 0, 0, 1, '{}', 7),
(86, 9, 'invoice', 'text', 'Invoice', 1, 1, 1, 0, 0, 1, '{}', 9),
(87, 9, 'email', 'text', 'Email', 1, 1, 1, 0, 0, 1, '{}', 10),
(88, 9, 'duration', 'select_dropdown', 'Duration', 0, 0, 0, 0, 0, 0, '{\"default\":\"month\",\"options\":{\"month\":\"Month\",\"week\":\"Week\"}}', 11),
(89, 8, 'duration', 'select_dropdown', 'Duration', 0, 1, 1, 1, 1, 1, '{\"default\":\"month\",\"options\":{\"month\":\"Month\",\"week\":\"Week\"}}', 3);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2020-07-28 21:33:51', '2020-07-31 21:31:49'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2020-07-28 21:33:51', '2020-07-28 21:33:51'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2020-07-28 21:33:51', '2020-07-28 21:33:51'),
(7, 'tickets', 'tickets', 'Ticket', 'Tickets', 'voyager-ticket', 'App\\Ticket', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2020-07-28 21:37:40', '2020-07-28 21:37:40'),
(8, 'plans', 'plans', 'Plan', 'Plans', 'voyager-group', 'App\\Plan', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-28 21:40:13', '2020-08-02 00:07:55'),
(9, 'orders', 'orders', 'Order', 'Orders', 'voyager-file-text', 'App\\Order', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2020-07-28 21:41:28', '2020-08-02 00:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2020-07-28 21:33:51', '2020-07-28 21:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2020-07-28 21:33:51', '2020-07-28 21:33:51', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2020-07-28 21:33:51', '2020-07-28 21:43:50', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2020-07-28 21:33:51', '2020-07-28 21:33:51', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2020-07-28 21:33:51', '2020-07-28 21:33:51', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2020-07-28 21:33:52', '2020-07-28 21:44:25', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2020-07-28 21:33:52', '2020-07-28 21:44:19', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2020-07-28 21:33:52', '2020-07-28 21:44:19', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2020-07-28 21:33:52', '2020-07-28 21:44:19', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2020-07-28 21:33:52', '2020-07-28 21:44:19', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 9, '2020-07-28 21:33:52', '2020-07-28 21:44:25', 'voyager.settings.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 5, '2020-07-28 21:33:52', '2020-07-28 21:44:19', 'voyager.hooks', NULL),
(15, 1, 'Tickets', '', '_self', 'voyager-ticket', NULL, NULL, 5, '2020-07-28 21:37:40', '2020-07-28 21:44:19', 'voyager.tickets.index', NULL),
(16, 1, 'Plans', '', '_self', 'voyager-group', NULL, NULL, 6, '2020-07-28 21:40:13', '2020-07-28 21:44:22', 'voyager.plans.index', NULL),
(17, 1, 'Orders', '', '_self', 'voyager-file-text', '#000000', NULL, 7, '2020-07-28 21:41:28', '2020-07-28 21:44:38', 'voyager.orders.index', 'null');

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
(2, '2016_01_01_000000_add_voyager_user_fields', 1),
(3, '2016_01_01_000000_create_data_types_table', 1),
(4, '2016_05_19_173453_create_menu_table', 1),
(5, '2016_10_21_190000_create_roles_table', 1),
(6, '2016_10_21_190000_create_settings_table', 1),
(7, '2016_11_30_135954_create_permission_table', 1),
(8, '2016_11_30_141208_create_permission_role_table', 1),
(9, '2016_12_26_201236_data_types__add__server_side', 1),
(10, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(11, '2017_01_14_005015_create_translations_table', 1),
(12, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(13, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(14, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(15, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(16, '2017_08_05_000000_add_group_to_settings_table', 1),
(17, '2017_11_26_013050_add_user_role_relationship', 1),
(18, '2017_11_26_015000_create_user_roles_table', 1),
(19, '2018_03_11_000000_add_user_settings', 1),
(20, '2018_03_14_000000_add_details_to_data_types_table', 1),
(21, '2018_03_16_000000_make_settings_value_nullable', 1),
(22, '2019_08_19_000000_create_failed_jobs_table', 1),
(23, '2020_07_28_221856_create_tickets_table', 1),
(24, '2020_07_28_222125_create_orders_table', 1),
(25, '2020_07_28_222454_create_plans_table', 1),
(26, '2016_01_01_000000_create_pages_table', 2),
(27, '2016_01_01_000000_create_posts_table', 2),
(28, '2016_02_15_204651_create_categories_table', 2),
(29, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(30, '2014_10_12_100000_create_password_resets_table', 3),
(31, '2020_07_29_221924_alter_order', 4),
(32, '2020_07_29_223024_alter_order_2', 5),
(33, '2020_07_30_111538_alter_order_3', 6),
(34, '2020_07_30_112936_alter_order_4', 7),
(35, '2020_07_30_114544_alter_order_5', 8),
(36, '2020_07_31_221806_alter_users', 9),
(37, '2020_07_31_223031_alter_users_2', 10),
(38, '2020_08_01_213132_alter_order_6', 11),
(39, '2020_08_02_010627_alter_plans_1', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `payment` enum('pending','success','error') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paypal_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `ticket_id`, `created_at`, `updated_at`, `quantity`, `payment`, `paypal_token`, `total`, `invoice`, `email`, `duration`) VALUES
(1, 2, '2020-07-29 22:20:19', '2020-07-29 22:20:19', 1, 'pending', NULL, '2000', '', '', NULL),
(2, 1, '2020-07-30 10:24:39', '2020-07-30 10:24:39', 1, 'pending', NULL, '10', '647159', '', NULL),
(3, 1, '2020-07-30 10:25:10', '2020-07-30 10:25:10', 1, 'pending', NULL, '10', '933999', '', NULL),
(4, 1, '2020-07-30 10:26:02', '2020-07-30 10:26:02', 1, 'pending', NULL, '10', '854224', '', NULL),
(5, 1, '2020-07-30 10:27:34', '2020-07-30 10:27:34', 1, 'pending', NULL, '10', '865109', '', NULL),
(6, 1, '2020-07-30 10:30:19', '2020-07-30 10:30:19', 1, 'pending', NULL, '10', '923481', '', NULL),
(7, 1, '2020-07-15 10:32:04', '2020-07-30 10:39:44', 1, 'success', 'EC-7DA633136H831383E', '10', '457718', '', NULL),
(8, 2, '2020-07-30 10:47:35', '2020-07-30 10:48:12', 1, 'success', 'EC-3EH486498U932644X', '2000', '869370', 'sed75dik@gmail.com', NULL),
(9, 1, '2020-07-30 10:48:42', '2020-07-30 10:49:16', 2, 'success', 'EC-4N201840XT790714C', '20', '554686', 'seddikmed411@gmail.com', NULL),
(10, 2, '2020-07-30 10:48:42', '2020-07-30 10:49:16', 1, 'success', 'EC-4N201840XT790714C', '2000', '554686', 'seddikmed411@gmail.com', NULL),
(11, 1, '2020-07-30 10:50:13', '2020-07-30 10:50:42', 2, 'success', 'EC-4HX98040CD0311432', '20', '917507', 'seddikmed411@gmail.com', NULL),
(12, 2, '2020-07-30 10:50:13', '2020-07-30 10:50:42', 1, 'success', 'EC-4HX98040CD0311432', '2000', '917507', 'seddikmed411@gmail.com', NULL),
(13, 3, '2020-07-30 10:50:13', '2020-07-30 10:50:42', 2, 'success', 'EC-4HX98040CD0311432', '40', '917507', 'seddikmed411@gmail.com', NULL),
(14, 1, '2020-07-30 20:48:10', '2020-07-30 20:48:13', 1, 'pending', 'EC-2WL93913KR496793D', '10', '552835', 'sed75dik@gmail.com', NULL),
(15, 1, '2020-07-31 20:59:59', '2020-07-31 21:01:07', 1, 'success', 'EC-97H71484YM030611S', '10', '578781', 'sed75dik@gmail.com', NULL),
(16, 1, '2020-08-01 19:54:21', '2020-08-01 19:55:05', 1, 'success', 'EC-2M831671WY730290X', '10', '526576', 'sed75dik@gmail.com', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2020-07-28 21:33:52', '2020-07-28 21:33:52');

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
('admin@admin.com', '$2y$10$IG.Q3ULHJE.VHxHD.fAga.dyAO/vYqedHBtJ2HkAhRaoZhBWa905C', '2020-07-29 11:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(2, 'browse_bread', NULL, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(3, 'browse_database', NULL, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(4, 'browse_media', NULL, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(5, 'browse_compass', NULL, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(6, 'browse_menus', 'menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(7, 'read_menus', 'menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(8, 'edit_menus', 'menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(9, 'add_menus', 'menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(10, 'delete_menus', 'menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(11, 'browse_roles', 'roles', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(12, 'read_roles', 'roles', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(13, 'edit_roles', 'roles', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(14, 'add_roles', 'roles', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(15, 'delete_roles', 'roles', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(16, 'browse_users', 'users', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(17, 'read_users', 'users', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(18, 'edit_users', 'users', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(19, 'add_users', 'users', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(20, 'delete_users', 'users', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(21, 'browse_settings', 'settings', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(22, 'read_settings', 'settings', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(23, 'edit_settings', 'settings', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(24, 'add_settings', 'settings', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(25, 'delete_settings', 'settings', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(41, 'browse_hooks', NULL, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(42, 'browse_tickets', 'tickets', '2020-07-28 21:37:40', '2020-07-28 21:37:40'),
(43, 'read_tickets', 'tickets', '2020-07-28 21:37:40', '2020-07-28 21:37:40'),
(44, 'edit_tickets', 'tickets', '2020-07-28 21:37:40', '2020-07-28 21:37:40'),
(45, 'add_tickets', 'tickets', '2020-07-28 21:37:40', '2020-07-28 21:37:40'),
(46, 'delete_tickets', 'tickets', '2020-07-28 21:37:40', '2020-07-28 21:37:40'),
(47, 'browse_plans', 'plans', '2020-07-28 21:40:13', '2020-07-28 21:40:13'),
(48, 'read_plans', 'plans', '2020-07-28 21:40:13', '2020-07-28 21:40:13'),
(49, 'edit_plans', 'plans', '2020-07-28 21:40:13', '2020-07-28 21:40:13'),
(50, 'add_plans', 'plans', '2020-07-28 21:40:13', '2020-07-28 21:40:13'),
(51, 'delete_plans', 'plans', '2020-07-28 21:40:13', '2020-07-28 21:40:13'),
(52, 'browse_orders', 'orders', '2020-07-28 21:41:28', '2020-07-28 21:41:28'),
(53, 'read_orders', 'orders', '2020-07-28 21:41:28', '2020-07-28 21:41:28'),
(54, 'edit_orders', 'orders', '2020-07-28 21:41:28', '2020-07-28 21:41:28'),
(55, 'add_orders', 'orders', '2020-07-28 21:41:28', '2020-07-28 21:41:28'),
(56, 'delete_orders', 'orders', '2020-07-28 21:41:28', '2020-07-28 21:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1);

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`, `duration`) VALUES
(1, 'Plan 1', '1000', '<h1>hello world</h1>', '2020-07-31 21:22:00', '2020-08-02 00:08:24', 'month'),
(2, 'Plan 2', '100', '<p>hello world</p>', '2020-08-01 20:07:31', '2020-08-01 20:07:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, 'Lorem Ipsum Post', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(2, 0, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2020-07-28 21:33:52', '2020-07-28 21:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(2, 'user', 'Normal User', '2020-07-28 21:33:52', '2020-07-28 21:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'SETRAM', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/July2020/j3JMtX3w4LNqXITQIGqO.png', '', 'image', 3, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings/July2020/czXxS1vdoByjmQZabMJL.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'SETRAM', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to SETRAM', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', 'settings/July2020/NJ4PgKs8lKS6zZOnyZMu.png', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', 'settings/July2020/OR8Y3SAmwQu8CAVSBd4G.png', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.times', 'times', '<h1>sasa</h1>', NULL, 'rich_text_box', 6, 'Site'),
(12, 'site.maps', 'maps', '<iframe src=\"https://www.google.com/maps/d/embed?mid=1PuoRPiWv1q9nircKoIIp3qN70Gv42lPd\" width=\"640\" height=\"480\"></iframe>', NULL, 'text_area', 7, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `name`, `price`, `description`, `stock`, `created_at`, `updated_at`) VALUES
(1, 'modèl 1', 10.00, 'salut  bla bla', 1000, '2020-07-29 12:00:00', '2020-07-29 22:08:42'),
(2, 'modèl 2', 2000.00, '200', 20, '2020-07-29 12:00:00', '2020-07-29 22:08:55'),
(3, 'modèl 3', 20.00, 'bla bla bal', 203, '2020-07-29 12:01:00', '2020-07-29 22:09:00');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2020-07-28 21:33:52', '2020-07-28 21:33:52'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2020-07-28 21:33:52', '2020-07-28 21:33:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subscription` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`, `plan_id`, `subscription`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$boAmEJXnMdYGlsreY0ZuoORThwW5vrgkWM/7cmlGR2QWLyJeJ6htK', 'Rh9ZtMktavUdluWyA6jreOomLmEejG9y8HpniYx9Jf0AQrPDR5IyMhCIuncx', NULL, '2020-07-28 21:33:52', '2020-07-31 21:32:13', 1, '2020-08-31'),
(2, NULL, 'med othman', 'sed75dik@gmail.com', 'users/default.png', '2020-07-31 22:22:00', '$2y$10$A6ZF88g3Hb4R./yo0b0YS.VMJrLLAGV58XGEmSdvwdrIL/4z7JkEu', 'KvrmyevQDuWvWgtMypaSrINegi3usf7py4qdV2FG3jlFCQePo8R31JY0A82O', NULL, '2020-07-31 21:23:04', '2020-08-01 20:24:05', 1, '2020-09-01');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_plan_id_foreign` (`plan_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_plan_id_foreign` FOREIGN KEY (`plan_id`) REFERENCES `plans` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
