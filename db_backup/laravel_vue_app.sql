-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2023 at 04:04 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_vue_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Komol Chandra Devnath', 'admin@gmail.com', '01874303467', NULL, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'HzMy9i2kIs', '2023-03-26 07:20:31', '2023-03-26 07:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `admin_file_managers`
--

CREATE TABLE `admin_file_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('product','slider','brand','category') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Oda Ernser', 'qui-odit-quo-eos-nostrum-aut-et-ut', 'https://via.placeholder.com/350x350.png/00aaee?text=corporis', 0, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(2, 'Felicita Metz', 'amet-pariatur-aut-sunt-et-ut', 'https://via.placeholder.com/350x350.png/0099cc?text=officia', 1, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(3, 'Elinore Lemke', 'eius-commodi-excepturi-magni-quia-eaque-atque-quisquam', 'https://via.placeholder.com/350x350.png/002288?text=quasi', 7, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(4, 'Dr. Brady Towne Sr.', 'eaque-et-impedit-quis-tenetur-ut-dolorem-magnam', 'https://via.placeholder.com/350x350.png/00ff11?text=architecto', 5, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(5, 'Otho Rowe', 'ut-voluptas-doloribus-similique-voluptatibus-voluptate', 'https://via.placeholder.com/350x350.png/002288?text=soluta', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(6, 'Levi Schmitt', 'maiores-rerum-ullam-consectetur', 'https://via.placeholder.com/350x350.png/00ffcc?text=laboriosam', 5, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(7, 'Mac Champlin', 'consequatur-eum-quia-velit', 'https://via.placeholder.com/350x350.png/0000ee?text=aut', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(8, 'Barton Rempel', 'quo-veritatis-dolor-voluptatem-dolorem-ea-est', 'https://via.placeholder.com/350x350.png/0000bb?text=sequi', 1, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(9, 'Reyes Crooks', 'quia-ipsa-dolor-est-reprehenderit-et', 'https://via.placeholder.com/350x350.png/009922?text=sunt', 9, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(10, 'Clair Ondricka', 'illum-voluptatem-quos-ullam-tenetur-est-culpa-cum', 'https://via.placeholder.com/350x350.png/00bb33?text=nesciunt', 2, '2023-03-26 07:20:31', '2023-03-26 07:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Ahmad Shanahan IV', 'voluptas-eligendi-tempora-a-ipsa-esse-et', 'https://via.placeholder.com/350x350.png/001100?text=incidunt', 0, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(2, 'Dr. Clemmie Mills DVM', 'et-eos-harum-et', 'https://via.placeholder.com/350x350.png/0099cc?text=alias', 5, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(3, 'Kamille Feest', 'consequatur-recusandae-dolorem-magni-quae', 'https://via.placeholder.com/350x350.png/00cc99?text=non', 6, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(4, 'Mr. Payton Lang', 'exercitationem-consequatur-sit-et-voluptatem-qui-natus-adipisci-quas', 'https://via.placeholder.com/350x350.png/004400?text=enim', 2, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(5, 'Prof. Dion Gutmann III', 'ipsam-inventore-consequatur-facere-ducimus-sint-rerum', 'https://via.placeholder.com/350x350.png/00aa11?text=est', 3, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(6, 'Adonis Kuhic', 'sint-voluptatum-expedita-vel', 'https://via.placeholder.com/350x350.png/0066dd?text=odio', 6, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(7, 'Alexa Goldner', 'et-quaerat-nam-fuga-repudiandae', 'https://via.placeholder.com/350x350.png/000033?text=magnam', 6, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(8, 'Lia Bashirian', 'quae-molestiae-architecto-itaque-placeat-in-sed', 'https://via.placeholder.com/350x350.png/00ff44?text=et', 9, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(9, 'Eugenia Torphy', 'dolorem-dolores-soluta-cum-modi-quo', 'https://via.placeholder.com/350x350.png/0077cc?text=dolor', 2, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(10, 'Dr. Emerson Homenick DVM', 'sapiente-corporis-illo-labore-sed-aut-dolor', 'https://via.placeholder.com/350x350.png/00ccee?text=voluptas', 0, '2023-03-26 07:20:31', '2023-03-26 07:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Narsingdi', 'নরসিংদী', NULL, NULL),
(2, 1, 'Gazipur', 'গাজীপুর', NULL, NULL),
(3, 1, 'Shariatpur', 'শরীয়তপুর', NULL, NULL),
(4, 1, 'Narayanganj', 'নারায়ণগঞ্জ', NULL, NULL),
(5, 1, 'Tangail', 'টাঙ্গাইল', NULL, NULL),
(6, 1, 'Kishoreganj', 'কিশোরগঞ্জ', NULL, NULL),
(7, 1, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL),
(8, 1, 'Dhaka', 'ঢাকা', NULL, NULL),
(9, 1, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL),
(10, 1, 'Rajbari', 'রাজবাড়ী', NULL, NULL),
(11, 1, 'Madaripur', 'মাদারীপুর', NULL, NULL),
(12, 1, 'Gopalganj', 'গোপালগঞ্জ', NULL, NULL),
(13, 1, 'Faridpur', 'ফরিদপুর', NULL, NULL),
(14, 2, 'Comilla', 'কুমিল্লা', NULL, NULL),
(15, 2, 'Feni', 'ফেনী', NULL, NULL),
(16, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', NULL, NULL),
(17, 2, 'Rangamati', 'রাঙ্গামাটি', NULL, NULL),
(18, 2, 'Noakhali', 'নোয়াখালী', NULL, NULL),
(19, 2, 'Chandpur', 'চাঁদপুর', NULL, NULL),
(20, 2, 'Lakshmipur', 'লক্ষ্মীপুর', NULL, NULL),
(21, 2, 'Chittagong', 'চট্টগ্রাম', NULL, NULL),
(22, 2, 'Coxsbazar', 'কক্সবাজার', NULL, NULL),
(23, 2, 'Khagrachhari', 'খাগড়াছড়ি', NULL, NULL),
(24, 2, 'Bandarban', 'বান্দরবান', NULL, NULL),
(25, 3, 'Sirajganj', 'সিরাজগঞ্জ', NULL, NULL),
(26, 3, 'Pabna', 'পাবনা', NULL, NULL),
(27, 3, 'Bogra', 'বগুড়া', NULL, NULL),
(28, 3, 'Rajshahi', 'রাজশাহী', NULL, NULL),
(29, 3, 'Natore', 'নাটোর', NULL, NULL),
(30, 3, 'Joypurhat', 'জয়পুরহাট', NULL, NULL),
(31, 3, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', NULL, NULL),
(32, 3, 'Naogaon', 'নওগাঁ', NULL, NULL),
(33, 4, 'Jessore', 'যশোর', NULL, NULL),
(34, 4, 'Satkhira', 'সাতক্ষীরা', NULL, NULL),
(35, 4, 'Meherpur', 'মেহেরপুর', NULL, NULL),
(36, 4, 'Narail', 'নড়াইল', NULL, NULL),
(37, 4, 'Chuadanga', 'চুয়াডাঙ্গা', NULL, NULL),
(38, 4, 'Kushtia', 'কুষ্টিয়া', NULL, NULL),
(39, 4, 'Magura', 'মাগুরা', NULL, NULL),
(40, 4, 'Khulna', 'খুলনা', NULL, NULL),
(41, 4, 'Bagerhat', 'বাগেরহাট', NULL, NULL),
(42, 4, 'Jhenaidah', 'ঝিনাইদহ', NULL, NULL),
(43, 5, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL),
(44, 5, 'Patuakhali', 'পটুয়াখালী', NULL, NULL),
(45, 5, 'Pirojpur', 'পিরোজপুর', NULL, NULL),
(46, 5, 'Barisal', 'বরিশাল', NULL, NULL),
(47, 5, 'Bhola', 'ভোলা', NULL, NULL),
(48, 5, 'Barguna', 'বরগুনা', NULL, NULL),
(49, 6, 'Panchagarh', 'পঞ্চগড়', NULL, NULL),
(50, 6, 'Dinajpur', 'দিনাজপুর', NULL, NULL),
(51, 6, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL),
(52, 6, 'Nilphamari', 'নীলফামারী', NULL, NULL),
(53, 6, 'Gaibandha', 'গাইবান্ধা', NULL, NULL),
(54, 6, 'Thakurgaon', 'ঠাকুরগাঁও', NULL, NULL),
(55, 6, 'Rangpur', 'রংপুর', NULL, NULL),
(56, 6, 'Kurigram', 'কুড়িগ্রাম', NULL, NULL),
(57, 7, 'Sylhet', 'সিলেট', NULL, NULL),
(58, 7, 'Moulvibazar', 'মৌলভীবাজার', NULL, NULL),
(59, 7, 'Habiganj', 'হবিগঞ্জ', NULL, NULL),
(60, 7, 'Sunamganj', 'সুনামগঞ্জ', NULL, NULL),
(61, 8, 'Sherpur', 'শেরপুর', NULL, NULL),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', NULL, NULL),
(63, 8, 'Jamalpur', 'জামালপুর', NULL, NULL),
(64, 8, 'Netrokona', 'নেত্রকোণা', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` int(11) NOT NULL DEFAULT 100,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `charge`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', 'ঢাকা', 60, NULL, NULL),
(2, 'Chittagong', 'চট্টগ্রাম', 120, NULL, NULL),
(3, 'Rajshahi', 'রাজশাহী', 120, NULL, NULL),
(4, 'Khulna', 'খুলনা', 120, NULL, NULL),
(5, 'Barisal', 'বরিশাল', 120, NULL, NULL),
(6, 'Rangpur', 'রংপুর', 120, NULL, NULL),
(7, 'Sylhet', 'সিলেট', 120, NULL, NULL),
(8, 'Mymensingh', 'ময়মনসিংহ', 120, NULL, NULL);

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_22_235916_create_admins_table', 1),
(6, '2023_03_22_235933_create_sellers_table', 1),
(7, '2023_03_25_204640_create_brands_table', 1),
(8, '2023_03_25_205132_create_categories_table', 1),
(9, '2023_03_25_205619_create_sub_categories_table', 1),
(10, '2023_03_25_211522_create_products_table', 1),
(11, '2023_03_25_215555_create_sliders_table', 1),
(12, '2023_03_25_220200_create_wishlists_table', 1),
(13, '2023_03_25_220233_create_seller_file_managers_table', 1),
(14, '2023_03_25_220251_create_admin_file_managers_table', 1),
(15, '2023_03_25_220321_create_coupons_table', 1),
(16, '2023_03_25_220613_create_divisions_table', 1),
(17, '2023_03_25_220617_create_districts_table', 1),
(18, '2023_03_25_220620_create_orders_table', 1),
(19, '2023_03_25_222449_create_order_items_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `subtotal` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `charge` double(8,2) NOT NULL,
  `total` double(8,2) NOT NULL,
  `order_status` enum('pending','packaging') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Admin', 1, 'admin-token', '62c43383084dc2c3724bbe40be71a08e8b115fd51b366fe63c56dbe5629811be', '[\"*\"]', '2023-03-26 13:37:54', NULL, '2023-03-26 12:04:30', '2023-03-26 13:37:54'),
(2, 'App\\Models\\User', 1, 'user-token', '89e3b4d6b59b4d40b1920a25cac7ce0e667a03cbf3b16b49e0c5cb817a9838f7', '[\"*\"]', NULL, NULL, '2023-04-01 13:55:23', '2023-04-01 13:55:23'),
(3, 'App\\Models\\User', 1, 'user-token', '854c433b267637d0fe2452b7cfc12b634c85592aa93e1c6e0ed45b541eab0d63', '[\"*\"]', NULL, NULL, '2023-04-01 14:06:27', '2023-04-01 14:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `sub_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `discount` int(11) NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `condition` enum('new','popular','feature','winter') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `added_by` enum('admin','seller') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `is_sale` tinyint(1) NOT NULL DEFAULT 0,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `seller_id`, `brand_id`, `category_id`, `sub_category_id`, `name`, `slug`, `thumbnail`, `images`, `price`, `discount`, `stock`, `condition`, `added_by`, `is_sale`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 1, 8, 10, 8, 'Berniece Rice', 'sit-adipisci-deserunt-voluptate-et-est-dolorem-maiores', 'https://via.placeholder.com/350x350.png/00ee00?text=itaque', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aa99?text=repellat\"', 32503.00, 33, 204, 'winter', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(2, 5, 9, 4, 17, 'Prof. Chadrick Koch', 'reprehenderit-dicta-totam-aut-eius-soluta-iure', 'https://via.placeholder.com/350x350.png/000011?text=tempora', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/005544?text=dignissimos\"', 25456.00, 45, 177, 'popular', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(3, 2, 2, 1, 28, 'Dr. Yasmin Kunde DDS', 'debitis-saepe-tempora-iste-a', 'https://via.placeholder.com/350x350.png/006688?text=et', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/005511?text=in\"', 40028.00, 12, 152, 'new', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(4, 3, 10, 7, 3, 'Alice Morissette', 'quam-porro-perferendis-quia', 'https://via.placeholder.com/350x350.png/0000ee?text=adipisci', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0022cc?text=cum\"', 14104.00, 35, 156, 'new', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(5, 2, 8, 3, 7, 'Dr. Evert Heaney', 'quas-at-est-et-corporis-harum', 'https://via.placeholder.com/350x350.png/00ff66?text=omnis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003311?text=harum\"', 12608.00, 80, 150, 'winter', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(6, 7, 1, 2, 15, 'Lauryn Feil', 'illo-perspiciatis-corporis-et-aut-laudantium-qui', 'https://via.placeholder.com/350x350.png/000066?text=eos', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0000aa?text=voluptas\"', 18808.00, 30, 269, 'new', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(7, 6, 2, 5, 17, 'Javonte Nitzsche', 'quisquam-quibusdam-id-cum-enim', 'https://via.placeholder.com/350x350.png/0088aa?text=molestias', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0099cc?text=qui\"', 22876.00, 7, 246, 'winter', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(8, 2, 8, 6, 15, 'Kristoffer Lowe', 'nihil-quam-adipisci-deserunt-eos-aliquid', 'https://via.placeholder.com/350x350.png/00ee44?text=veniam', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0011bb?text=ducimus\"', 48466.00, 60, 260, 'new', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(9, 11, 5, 4, 30, 'Willa Gutmann', 'ipsum-sint-praesentium-consequuntur-ab-enim-consectetur-voluptatem', 'https://via.placeholder.com/350x350.png/0011aa?text=ut', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0000cc?text=dolore\"', 23388.00, 30, 276, 'popular', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(10, 10, 6, 6, 2, 'Betsy McGlynn', 'odit-earum-in-qui-adipisci-voluptatem', 'https://via.placeholder.com/350x350.png/003399?text=architecto', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aaff?text=a\"', 42778.00, 81, 173, 'new', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(11, 11, 9, 8, 5, 'Lily Mohr', 'nemo-nostrum-voluptatum-molestiae', 'https://via.placeholder.com/350x350.png/003322?text=ratione', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0077bb?text=minima\"', 5131.00, 85, 219, 'winter', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(12, 9, 7, 6, 27, 'Maia Donnelly', 'laudantium-aut-veritatis-aut-unde', 'https://via.placeholder.com/350x350.png/0033ff?text=et', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/009900?text=et\"', 43840.00, 55, 196, 'popular', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(13, 1, 9, 5, 11, 'Kali Lowe IV', 'ut-dicta-et-ab-et-autem', 'https://via.placeholder.com/350x350.png/00bb44?text=ea', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0066ff?text=aut\"', 14827.00, 44, 153, 'popular', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(14, 6, 9, 9, 9, 'Ms. Sandra Glover DVM', 'molestiae-tempore-nisi-accusamus-quis-rerum-id-temporibus', 'https://via.placeholder.com/350x350.png/001144?text=nisi', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ff00?text=rem\"', 4183.00, 69, 106, 'feature', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(15, 4, 7, 8, 7, 'Myron Abernathy MD', 'fugit-qui-inventore-modi-placeat', 'https://via.placeholder.com/350x350.png/008855?text=deserunt', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0055bb?text=illo\"', 29884.00, 93, 294, 'feature', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(16, 8, 4, 1, 24, 'Drake Gulgowski', 'sunt-enim-recusandae-rerum-sapiente-deleniti-non', 'https://via.placeholder.com/350x350.png/003388?text=id', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/000022?text=doloribus\"', 20067.00, 86, 147, 'feature', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(17, 5, 6, 1, 10, 'Nikolas Skiles', 'iure-aut-ipsum-cumque-quia-veritatis-dolorum-voluptatum', 'https://via.placeholder.com/350x350.png/008833?text=quod', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/002266?text=illo\"', 42193.00, 54, 196, 'winter', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(18, 6, 2, 8, 28, 'Eve Schaden', 'aliquam-numquam-et-molestiae-et-voluptate-placeat-nesciunt', 'https://via.placeholder.com/350x350.png/002244?text=repellendus', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ffbb?text=cupiditate\"', 21886.00, 99, 205, 'winter', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(19, 8, 1, 7, 24, 'Bailey Bartell', 'voluptas-voluptas-aut-amet-consequatur-adipisci', 'https://via.placeholder.com/350x350.png/00cc55?text=est', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003333?text=atque\"', 33040.00, 27, 145, 'new', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(20, 2, 10, 6, 25, 'Andres Bergstrom DDS', 'accusantium-quos-sint-quia-eaque-dolorem-rerum-quo-soluta', 'https://via.placeholder.com/350x350.png/006611?text=impedit', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0044aa?text=ipsa\"', 19911.00, 54, 263, 'new', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(21, 10, 6, 10, 29, 'Mrs. Virgie Hegmann', 'velit-impedit-libero-delectus', 'https://via.placeholder.com/350x350.png/00ddaa?text=dolore', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/009988?text=quos\"', 22616.00, 79, 179, 'feature', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(22, 3, 10, 6, 25, 'Dr. Parker Langosh', 'aut-asperiores-delectus-debitis-et-laudantium-illum', 'https://via.placeholder.com/350x350.png/009966?text=mollitia', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ee44?text=quisquam\"', 4531.00, 30, 102, 'popular', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(23, 6, 3, 4, 29, 'Tierra Collins MD', 'tempore-aspernatur-ad-quis-ut-neque', 'https://via.placeholder.com/350x350.png/00dd33?text=assumenda', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00cccc?text=distinctio\"', 32315.00, 95, 181, 'feature', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(24, 7, 5, 7, 10, 'Alycia Crona MD', 'est-velit-et-eos-omnis-accusantium', 'https://via.placeholder.com/350x350.png/00ccff?text=voluptas', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00dd66?text=harum\"', 49361.00, 7, 118, 'winter', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(25, 1, 1, 5, 12, 'Zita Sanford', 'aut-sunt-maxime-saepe-quia-vitae', 'https://via.placeholder.com/350x350.png/0022ff?text=omnis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00cc77?text=sint\"', 13014.00, 23, 219, 'new', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(26, 7, 10, 3, 27, 'Casandra Pacocha PhD', 'eius-laboriosam-et-provident-nam-est-porro', 'https://via.placeholder.com/350x350.png/008844?text=commodi', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0077ee?text=velit\"', 34327.00, 98, 273, 'popular', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(27, 3, 10, 5, 24, 'Joanne Marquardt', 'repellat-dolores-impedit-nam-beatae-quia-dolor-repellendus', 'https://via.placeholder.com/350x350.png/00ee55?text=eos', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0077bb?text=a\"', 13358.00, 58, 156, 'feature', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(28, 5, 9, 8, 2, 'Jamaal Deckow', 'dolor-cupiditate-error-eius-voluptatum', 'https://via.placeholder.com/350x350.png/0022aa?text=possimus', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/007788?text=mollitia\"', 8450.00, 99, 179, 'popular', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(29, 2, 3, 6, 8, 'Deborah Toy', 'magnam-sint-earum-est', 'https://via.placeholder.com/350x350.png/006677?text=doloribus', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/006600?text=sed\"', 14339.00, 54, 265, 'winter', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(30, 1, 5, 7, 8, 'Dr. Vaughn Dare PhD', 'recusandae-sed-distinctio-cum-quis-quaerat-expedita-sequi-tenetur', 'https://via.placeholder.com/350x350.png/00ccaa?text=necessitatibus', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00dd44?text=aut\"', 47173.00, 63, 178, 'new', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(31, 11, 3, 8, 10, 'Frank Labadie Sr.', 'dolore-ab-neque-aliquid-et-omnis', 'https://via.placeholder.com/350x350.png/0022dd?text=animi', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb66?text=assumenda\"', 24063.00, 72, 161, 'new', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(32, 8, 5, 9, 18, 'Elyssa Frami', 'in-deleniti-vero-nesciunt-ducimus-quis-aut-aliquam', 'https://via.placeholder.com/350x350.png/002222?text=aspernatur', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0022bb?text=neque\"', 3095.00, 51, 274, 'winter', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(33, 5, 5, 5, 27, 'Damon Batz', 'in-ut-qui-sapiente-aspernatur-commodi-tempora-minima', 'https://via.placeholder.com/350x350.png/003377?text=ut', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0077ee?text=soluta\"', 27637.00, 88, 182, 'new', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(34, 2, 1, 3, 21, 'Ola Bruen', 'in-est-dolor-temporibus-non', 'https://via.placeholder.com/350x350.png/00cc22?text=necessitatibus', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aa44?text=id\"', 15521.00, 44, 260, 'winter', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(35, 6, 9, 5, 9, 'Wyatt Frami', 'rem-quis-omnis-modi-voluptate-laborum-accusamus', 'https://via.placeholder.com/350x350.png/008844?text=odit', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ddcc?text=delectus\"', 17908.00, 14, 148, 'new', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(36, 6, 5, 10, 4, 'Leonie Wuckert', 'perferendis-distinctio-dolore-et-debitis-sit-molestias-perspiciatis', 'https://via.placeholder.com/350x350.png/00aa11?text=nam', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/004499?text=id\"', 5616.00, 60, 227, 'winter', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(37, 3, 10, 6, 13, 'Maverick Dibbert', 'labore-earum-praesentium-est-ut-ipsam-qui-odio-itaque', 'https://via.placeholder.com/350x350.png/008888?text=possimus', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00cc44?text=est\"', 26450.00, 54, 134, 'new', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(38, 8, 1, 4, 11, 'Dewayne Tromp', 'qui-voluptate-nostrum-molestiae', 'https://via.placeholder.com/350x350.png/0077ff?text=porro', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003322?text=sed\"', 5524.00, 63, 162, 'feature', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(39, 5, 2, 6, 3, 'Alivia Watsica IV', 'cumque-id-accusamus-perspiciatis-sunt-repellendus', 'https://via.placeholder.com/350x350.png/00ff00?text=cupiditate', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/000088?text=dolorem\"', 39354.00, 48, 195, 'feature', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(40, 1, 5, 7, 22, 'Keven Kling', 'suscipit-in-error-ut-distinctio-inventore-ad', 'https://via.placeholder.com/350x350.png/00ddbb?text=qui', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb55?text=qui\"', 15012.00, 24, 208, 'popular', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(41, 6, 5, 10, 30, 'Marcel Witting V', 'rerum-architecto-aut-optio-quaerat-dolore', 'https://via.placeholder.com/350x350.png/006611?text=doloremque', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ddee?text=laboriosam\"', 4792.00, 29, 290, 'feature', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(42, 8, 8, 5, 7, 'Greta Metz', 'tempore-asperiores-fugit-voluptatum-ipsum-porro', 'https://via.placeholder.com/350x350.png/009955?text=quas', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/002200?text=sed\"', 21222.00, 50, 281, 'feature', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(43, 11, 5, 4, 8, 'Stewart Herman', 'et-alias-ut-omnis-exercitationem', 'https://via.placeholder.com/350x350.png/00cccc?text=libero', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ffaa?text=sunt\"', 10311.00, 63, 209, 'winter', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(44, 11, 4, 5, 8, 'Dr. Thaddeus Luettgen III', 'sed-autem-incidunt-aut-et-nulla-voluptatem', 'https://via.placeholder.com/350x350.png/009999?text=officia', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00dd00?text=blanditiis\"', 46655.00, 3, 300, 'popular', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(45, 3, 2, 7, 15, 'Greyson White', 'error-et-eum-porro-et-aperiam-rem', 'https://via.placeholder.com/350x350.png/004488?text=facilis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb44?text=et\"', 33668.00, 90, 116, 'winter', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(46, 7, 4, 8, 7, 'Enola Simonis I', 'animi-reprehenderit-doloribus-voluptatibus', 'https://via.placeholder.com/350x350.png/003333?text=tenetur', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0088ee?text=quae\"', 22035.00, 60, 286, 'popular', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(47, 5, 8, 4, 22, 'Eloise Bailey', 'adipisci-sit-debitis-est-voluptatem-aliquid-eum', 'https://via.placeholder.com/350x350.png/00aa55?text=nesciunt', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0011ee?text=dolorem\"', 27984.00, 92, 193, 'new', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(48, 9, 1, 8, 4, 'Prof. Garth O\'Kon', 'quaerat-sequi-et-nesciunt-commodi', 'https://via.placeholder.com/350x350.png/001177?text=quia', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb44?text=quo\"', 40232.00, 29, 175, 'feature', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(49, 9, 9, 9, 13, 'Lilyan Moore', 'est-rerum-facere-qui-dolorem-eius-modi-aut', 'https://via.placeholder.com/350x350.png/00ccbb?text=facere', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb77?text=amet\"', 10960.00, 20, 212, 'new', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(50, 9, 7, 8, 28, 'Ms. Emmanuelle Grady', 'facilis-quae-et-est-dolore', 'https://via.placeholder.com/350x350.png/00aa11?text=at', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb33?text=enim\"', 10659.00, 76, 295, 'new', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(51, 1, 6, 2, 13, 'Diego Graham', 'illo-totam-voluptas-autem-nihil-voluptatem-molestiae', 'https://via.placeholder.com/350x350.png/004488?text=debitis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/008833?text=debitis\"', 6717.00, 35, 300, 'feature', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(52, 2, 2, 4, 1, 'Madonna Rowe', 'magni-quaerat-sed-incidunt-ut', 'https://via.placeholder.com/350x350.png/0077dd?text=facere', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb55?text=est\"', 23091.00, 92, 221, 'feature', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(53, 4, 5, 9, 3, 'Prof. Brad Considine', 'et-enim-nisi-maxime-quis-voluptatibus', 'https://via.placeholder.com/350x350.png/007788?text=pariatur', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bbbb?text=esse\"', 46919.00, 57, 158, 'new', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(54, 3, 6, 7, 3, 'Mitchel Lockman', 'eaque-rerum-odio-dolorem-nesciunt', 'https://via.placeholder.com/350x350.png/00eeff?text=ratione', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0077bb?text=excepturi\"', 967.00, 3, 112, 'popular', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(55, 6, 6, 7, 29, 'Prof. Ferne Schimmel', 'quo-quibusdam-vel-voluptatem', 'https://via.placeholder.com/350x350.png/00ff99?text=impedit', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0033dd?text=molestias\"', 21723.00, 17, 239, 'new', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(56, 5, 3, 1, 4, 'Alva Weissnat', 'aut-accusantium-dignissimos-numquam-ut', 'https://via.placeholder.com/350x350.png/00dd33?text=omnis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0033ee?text=perspiciatis\"', 35200.00, 46, 269, 'new', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(57, 1, 5, 1, 10, 'Dr. Gaetano Heaney IV', 'ut-assumenda-fugit-in', 'https://via.placeholder.com/350x350.png/000022?text=quia', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00cc44?text=eos\"', 34020.00, 76, 131, 'feature', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(58, 5, 9, 8, 3, 'Ibrahim Smith II', 'omnis-velit-eos-sapiente-placeat', 'https://via.placeholder.com/350x350.png/005500?text=eveniet', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0099ff?text=eveniet\"', 22954.00, 79, 287, 'feature', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(59, 7, 2, 5, 24, 'Hazel Hodkiewicz', 'doloremque-doloremque-quisquam-deserunt', 'https://via.placeholder.com/350x350.png/00bb77?text=non', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/008811?text=culpa\"', 11632.00, 19, 292, 'new', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(60, 6, 3, 9, 20, 'Elinore Murray', 'nihil-necessitatibus-autem-similique', 'https://via.placeholder.com/350x350.png/0044cc?text=repellat', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0011bb?text=porro\"', 33531.00, 32, 254, 'new', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(61, 2, 6, 7, 4, 'Dr. Kaden Runte', 'corporis-distinctio-dolores-eum-et-sequi-ut', 'https://via.placeholder.com/350x350.png/00eeee?text=optio', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/006655?text=rerum\"', 11273.00, 46, 112, 'winter', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(62, 5, 2, 3, 25, 'Bessie Bartell', 'eos-quos-qui-explicabo-ullam-et-nihil', 'https://via.placeholder.com/350x350.png/00aaff?text=quo', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0088aa?text=sint\"', 29993.00, 33, 128, 'winter', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(63, 10, 7, 8, 24, 'Mrs. Alysson Gutkowski', 'doloribus-earum-et-maxime-minus', 'https://via.placeholder.com/350x350.png/008800?text=aspernatur', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/000011?text=soluta\"', 37621.00, 15, 208, 'feature', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(64, 4, 8, 8, 13, 'Miss Beaulah Schimmel', 'fugit-illo-veniam-qui-molestias-quaerat-minus-dignissimos', 'https://via.placeholder.com/350x350.png/00dd66?text=ut', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003399?text=ipsam\"', 27924.00, 64, 262, 'popular', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(65, 11, 1, 7, 8, 'Dr. Nicola Tromp DVM', 'eveniet-debitis-molestiae-molestiae-necessitatibus', 'https://via.placeholder.com/350x350.png/0088cc?text=harum', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/006677?text=maiores\"', 39790.00, 20, 289, 'feature', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(66, 9, 8, 10, 30, 'Dr. Bernard Abbott', 'dolorem-voluptates-ut-id-aut-architecto-nam-alias-voluptate', 'https://via.placeholder.com/350x350.png/005555?text=corrupti', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00dd11?text=aut\"', 13560.00, 33, 134, 'feature', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(67, 1, 4, 4, 2, 'Maximilian Reilly', 'et-libero-autem-veritatis', 'https://via.placeholder.com/350x350.png/003344?text=porro', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0055ff?text=nulla\"', 32321.00, 16, 293, 'popular', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(68, 3, 5, 8, 30, 'Prof. Brendon McCullough DVM', 'ut-assumenda-quod-suscipit', 'https://via.placeholder.com/350x350.png/006644?text=exercitationem', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/007777?text=quo\"', 32570.00, 77, 230, 'winter', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(69, 7, 5, 10, 10, 'Etha Bins', 'esse-culpa-praesentium-sapiente-qui-enim-quos', 'https://via.placeholder.com/350x350.png/00bb44?text=velit', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/002299?text=qui\"', 28129.00, 5, 267, 'new', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(70, 10, 6, 6, 24, 'Dr. Harrison Anderson Sr.', 'tempora-quis-soluta-at-necessitatibus-ut-aperiam-porro', 'https://via.placeholder.com/350x350.png/0011dd?text=explicabo', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/007700?text=nostrum\"', 40419.00, 86, 155, 'winter', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(71, 7, 4, 3, 3, 'Janiya Sauer', 'dolor-et-impedit-sapiente-ea', 'https://via.placeholder.com/350x350.png/007799?text=praesentium', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00dd44?text=velit\"', 18761.00, 38, 243, 'winter', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(72, 4, 9, 4, 19, 'Mrs. Martine Kihn Sr.', 'voluptate-pariatur-dolorem-ut-quis-magnam-sit', 'https://via.placeholder.com/350x350.png/004422?text=praesentium', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003311?text=fuga\"', 12150.00, 87, 145, 'winter', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(73, 4, 4, 2, 26, 'Marc Jenkins', 'debitis-quos-reprehenderit-nihil-a', 'https://via.placeholder.com/350x350.png/00aa99?text=voluptas', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bbaa?text=ratione\"', 21928.00, 41, 176, 'popular', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(74, 7, 8, 1, 25, 'Deanna Reichert', 'quo-excepturi-aut-ut-nihil', 'https://via.placeholder.com/350x350.png/006699?text=beatae', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/008888?text=repudiandae\"', 571.00, 2, 209, 'new', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(75, 5, 10, 5, 26, 'Malika Paucek', 'explicabo-et-voluptatibus-laudantium-et-et-et', 'https://via.placeholder.com/350x350.png/00cc55?text=voluptates', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/005599?text=debitis\"', 47350.00, 7, 168, 'feature', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(76, 6, 9, 1, 26, 'Dixie Reinger IV', 'in-ullam-aliquid-sequi-sunt-at-optio-accusantium', 'https://via.placeholder.com/350x350.png/003377?text=quaerat', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00cc66?text=assumenda\"', 40939.00, 93, 193, 'popular', 'admin', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(77, 5, 10, 9, 22, 'Dr. Maximus Lesch', 'corrupti-laudantium-quis-qui-quisquam-atque', 'https://via.placeholder.com/350x350.png/0055ff?text=ea', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/009988?text=impedit\"', 40840.00, 48, 152, 'feature', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(78, 2, 8, 1, 27, 'Cecilia Nolan DVM', 'qui-sit-neque-consectetur-aut-debitis-qui-quia', 'https://via.placeholder.com/350x350.png/0000dd?text=ea', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/006677?text=soluta\"', 26705.00, 93, 254, 'popular', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(79, 10, 8, 9, 22, 'Dr. Kacie Kemmer', 'beatae-enim-ut-maxime-omnis-eos', 'https://via.placeholder.com/350x350.png/00cc11?text=maxime', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ffaa?text=fuga\"', 39422.00, 98, 283, 'feature', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(80, 10, 5, 3, 28, 'Tanner Morissette Sr.', 'deserunt-quia-praesentium-ex-qui', 'https://via.placeholder.com/350x350.png/00ff22?text=suscipit', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/008822?text=fugit\"', 5687.00, 16, 283, 'winter', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(81, 11, 6, 5, 22, 'Jonatan Satterfield', 'ipsam-mollitia-esse-sunt-aliquid-quisquam-dolorem', 'https://via.placeholder.com/350x350.png/0088aa?text=quis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ffee?text=id\"', 40986.00, 68, 148, 'feature', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(82, 3, 3, 9, 18, 'Maverick Ankunding V', 'aut-aspernatur-harum-occaecati', 'https://via.placeholder.com/350x350.png/00bb77?text=odit', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/002211?text=libero\"', 3556.00, 71, 261, 'winter', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(83, 7, 8, 6, 5, 'Addie Jakubowski', 'totam-sint-sunt-voluptas-repudiandae', 'https://via.placeholder.com/350x350.png/005533?text=totam', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0055dd?text=et\"', 4265.00, 55, 127, 'popular', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(84, 2, 8, 10, 6, 'Cristopher Hudson MD', 'possimus-architecto-dolorum-saepe-ut', 'https://via.placeholder.com/350x350.png/00dd77?text=nemo', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bbcc?text=nulla\"', 16183.00, 91, 254, 'feature', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(85, 9, 9, 9, 22, 'Carlos Stokes', 'rerum-aut-et-necessitatibus', 'https://via.placeholder.com/350x350.png/001100?text=sed', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0033ee?text=laborum\"', 49418.00, 24, 176, 'feature', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(86, 7, 3, 10, 9, 'Dr. Abdul Johns V', 'dolores-voluptatem-minus-quaerat-impedit-molestias-qui', 'https://via.placeholder.com/350x350.png/007700?text=tenetur', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bb00?text=aperiam\"', 29836.00, 75, 203, 'feature', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(87, 6, 7, 10, 15, 'Jacinthe Wilkinson', 'hic-atque-hic-corporis-eos', 'https://via.placeholder.com/350x350.png/00dd33?text=dignissimos', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aaaa?text=eius\"', 13180.00, 30, 163, 'popular', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(88, 6, 1, 7, 28, 'D\'angelo Daugherty', 'esse-nisi-ea-rerum-itaque-pariatur-quo', 'https://via.placeholder.com/350x350.png/003322?text=ut', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/009988?text=sit\"', 34252.00, 93, 156, 'feature', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(89, 11, 9, 5, 8, 'Dr. Jaeden Prosacco', 'rerum-praesentium-vel-soluta-quibusdam-quia', 'https://via.placeholder.com/350x350.png/00eeaa?text=blanditiis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/009999?text=non\"', 31297.00, 66, 163, 'new', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(90, 3, 4, 9, 20, 'Miss Elta Schmitt', 'deserunt-neque-ut-explicabo-nostrum-quia-necessitatibus-perspiciatis', 'https://via.placeholder.com/350x350.png/007744?text=nobis', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ff99?text=assumenda\"', 16287.00, 85, 275, 'new', 'admin', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(91, 1, 4, 6, 9, 'Helga Toy', 'vel-aperiam-officiis-deleniti-quia-commodi-voluptatem-nostrum', 'https://via.placeholder.com/350x350.png/001166?text=placeat', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00bbaa?text=tempora\"', 24231.00, 16, 175, 'popular', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(92, 1, 6, 10, 19, 'Itzel Koss', 'laboriosam-sed-deserunt-magni-consequatur-ea-alias-quo-tenetur', 'https://via.placeholder.com/350x350.png/006677?text=quod', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003322?text=consequatur\"', 40259.00, 19, 107, 'winter', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(93, 2, 3, 5, 7, 'Dayne O\'Kon', 'pariatur-vero-corrupti-et-unde-deleniti-voluptate', 'https://via.placeholder.com/350x350.png/0088cc?text=dolore', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/006633?text=eligendi\"', 35893.00, 58, 116, 'winter', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(94, 5, 6, 9, 22, 'Barrett Kub', 'facilis-mollitia-natus-modi-aperiam-repellat-ex', 'https://via.placeholder.com/350x350.png/0099dd?text=quam', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/003300?text=doloremque\"', 4753.00, 54, 254, 'popular', 'seller', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(95, 9, 8, 9, 9, 'Ollie Hansen', 'aut-aliquid-sed-ut-sint-natus-aut-maiores-est', 'https://via.placeholder.com/350x350.png/0011cc?text=incidunt', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aa33?text=doloribus\"', 40209.00, 50, 155, 'feature', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(96, 11, 6, 4, 4, 'Brandt Anderson DDS', 'quia-dolore-veritatis-et-eaque-omnis-sit-aliquid-autem', 'https://via.placeholder.com/350x350.png/00ff77?text=voluptas', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/0077cc?text=voluptas\"', 9811.00, 22, 123, 'popular', 'admin', 1, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(97, 7, 10, 9, 29, 'Dr. Max Lebsack Sr.', 'eum-ex-architecto-perferendis-aut-autem-laudantium', 'https://via.placeholder.com/350x350.png/009977?text=voluptates', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00ffff?text=et\"', 13601.00, 99, 232, 'new', 'seller', 1, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(98, 8, 1, 1, 14, 'Ms. Teresa Jacobson MD', 'occaecati-dignissimos-dolorem-sint', 'https://via.placeholder.com/350x350.png/007766?text=rem', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aa88?text=et\"', 43055.00, 1, 257, 'winter', 'seller', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(99, 6, 4, 5, 8, 'Margarette Morar', 'non-libero-alias-dolorem-rerum-accusantium', 'https://via.placeholder.com/350x350.png/005599?text=voluptatem', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00cc44?text=expedita\"', 18896.00, 99, 270, 'winter', 'seller', 0, 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(100, 10, 3, 9, 27, 'Thora Schaefer', 'facere-libero-at-eum-quis-eveniet-placeat', 'https://via.placeholder.com/350x350.png/007733?text=quia', '\"https:\\/\\/via.placeholder.com\\/350x350.png\\/00aaff?text=accusantium\"', 5311.00, 9, 216, 'feature', 'admin', 0, 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `sellers`
--

CREATE TABLE `sellers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shop_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sellers`
--

INSERT INTO `sellers` (`id`, `name`, `email`, `phone`, `image`, `banner`, `shop_name`, `slug`, `address`, `is_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Komol Chandra Devnath', 'admin@gmail.com', '01874303467', NULL, NULL, NULL, NULL, NULL, 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', '5MSiVqnHE5', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(2, 'Ms. Lizzie Von', 'antoinette.bogisich@example.net', '(458) 771-0512', 'https://via.placeholder.com/350x350.png/00eebb?text=illum', 'https://via.placeholder.com/450x250.png/005544?text=nihil', 'Brendan Graham', NULL, '642 Selena Keys Suite 148\nWest Elmorestad, TN 13773', 1, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'SJAi8y8s6H', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(3, 'Hilbert Ondricka', 'rubie30@example.com', '+1.520.865.5403', 'https://via.placeholder.com/350x350.png/0055cc?text=maxime', 'https://via.placeholder.com/450x250.png/00ee99?text=adipisci', 'Mr. Carol Beatty Jr.', NULL, '7239 Konopelski Circles\nSchulistmouth, ID 50076-5379', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'ePzvZofxun', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(4, 'Prof. Deontae Becker', 'marlen64@example.org', '(320) 482-5500', 'https://via.placeholder.com/350x350.png/0044ee?text=aliquam', 'https://via.placeholder.com/450x250.png/008811?text=impedit', 'Alphonso Goldner', NULL, '904 Nikki Knoll\nKossville, CO 55015', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', '6PyGcFqy7f', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(5, 'Felipa White', 'odessa.flatley@example.com', '859.894.7775', 'https://via.placeholder.com/350x350.png/00ee77?text=qui', 'https://via.placeholder.com/450x250.png/004400?text=cum', 'Rhiannon Reichel', NULL, '869 Hand Club\nPollichland, CT 67837', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'Hc2rA4pxYz', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(6, 'Elisha Aufderhar DDS', 'zoila.mohr@example.net', '463.747.3039', 'https://via.placeholder.com/350x350.png/00ff00?text=corporis', 'https://via.placeholder.com/450x250.png/005544?text=vero', 'John Okuneva', NULL, '8255 Mae Ways Suite 968\nEllismouth, CA 08594-1017', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'RjWMbzbbX1', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(7, 'Dr. Mandy O\'Hara Jr.', 'shayna.ratke@example.net', '+1-283-581-5067', 'https://via.placeholder.com/350x350.png/0011bb?text=ipsum', 'https://via.placeholder.com/450x250.png/008855?text=voluptatem', 'Santina Schulist', NULL, '77954 Lind Station\nWest Doug, KY 46660', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'Mbe548rBzx', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(8, 'Dr. Alexandre O\'Hara DDS', 'camille05@example.org', '+1-747-359-1764', 'https://via.placeholder.com/350x350.png/00ee44?text=quis', 'https://via.placeholder.com/450x250.png/003377?text=beatae', 'Elisha O\'Connell Sr.', NULL, '761 Mathew Skyway Apt. 910\nNew Natalieview, WV 03428-9797', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'tzHWvlPgp1', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(9, 'Miss Eliza Marks', 'dhudson@example.org', '346.807.7595', 'https://via.placeholder.com/350x350.png/003366?text=mollitia', 'https://via.placeholder.com/450x250.png/0099ff?text=accusantium', 'Lambert Leannon Jr.', NULL, '67765 Robel Rue\nPort Nakiafurt, OH 05226-0419', 1, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', '5zEg4Wbuvl', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(10, 'Dr. Mossie Schaefer', 'amiya03@example.com', '(352) 586-0302', 'https://via.placeholder.com/350x350.png/00ee88?text=omnis', 'https://via.placeholder.com/450x250.png/00ffcc?text=a', 'Sabina Kozey I', NULL, '395 Erik Points\nLake Buckshire, MS 26032-6761', 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'kJdRPFccIJ', '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(11, 'Humberto Hyatt III', 'yruecker@example.net', '(630) 630-9742', 'https://via.placeholder.com/350x350.png/00ee22?text=vel', 'https://via.placeholder.com/450x250.png/00bb00?text=ipsam', 'Ms. Rosella Walsh DDS', NULL, '59462 Baron Run\nSouth Heather, NY 62417-6352', 1, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'mizMlmXS48', '2023-03-26 07:20:31', '2023-03-26 07:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `seller_file_managers`
--

CREATE TABLE `seller_file_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Mr. Hershel Kuhlman III', 'occaecati-aspernatur-totam-labore-voluptatem-quia-numquam-est', 'https://via.placeholder.com/1440x450.png/005555?text=aspernatur', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(2, 'Dr. Abe Mann', 'exercitationem-dolore-necessitatibus-eum-quis-repudiandae-recusandae', 'https://via.placeholder.com/1440x450.png/0099bb?text=facere', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(3, 'Desiree Labadie', 'ex-eligendi-voluptatem-aliquid-voluptatum', 'https://via.placeholder.com/1440x450.png/000077?text=quae', 2, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(4, 'Prof. Isidro Kris', 'amet-vitae-hic-commodi-enim', 'https://via.placeholder.com/1440x450.png/00ee55?text=architecto', 2, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(5, 'Katharina Pfannerstill PhD', 'accusantium-qui-adipisci-consequatur-cumque-iure-optio', 'https://via.placeholder.com/1440x450.png/005522?text=quibusdam', 1, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(6, 'Eldon O\'Kon', 'quidem-voluptatem-in-reiciendis-omnis', 'https://via.placeholder.com/1440x450.png/00bb11?text=suscipit', 5, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(7, 'Dr. Idella Deckow', 'voluptatum-odit-et-tenetur-vitae-quia-qui', 'https://via.placeholder.com/1440x450.png/0066dd?text=placeat', 6, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(8, 'Joan Hayes', 'minima-ducimus-qui-in-totam-qui-perspiciatis-magnam', 'https://via.placeholder.com/1440x450.png/0077aa?text=et', 7, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(9, 'Prof. Mortimer Cummings', 'quia-sit-voluptatem-architecto-maxime', 'https://via.placeholder.com/1440x450.png/001133?text=voluptatem', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(10, 'Dr. Abigale Keeling', 'sed-architecto-voluptas-consectetur-placeat', 'https://via.placeholder.com/1440x450.png/0022dd?text=in', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `name`, `slug`, `image`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 9, 'Mr. Adolphus Kiehn DDS', 'provident-voluptas-consequatur-rerum-non-qui-unde-qui', 'https://via.placeholder.com/350x350.png/00aaee?text=odio', 7, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(2, 9, 'Rachel Herman', 'quas-accusantium-cupiditate-enim', 'https://via.placeholder.com/350x350.png/00ccbb?text=temporibus', 7, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(3, 8, 'Alta Ryan', 'eum-natus-quo-sunt-temporibus', 'https://via.placeholder.com/350x350.png/00aa77?text=beatae', 6, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(4, 8, 'Prof. Adolfo Ankunding V', 'voluptates-id-repellendus-et-ducimus-sint', 'https://via.placeholder.com/350x350.png/00ee44?text=officiis', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(5, 8, 'Porter Ebert', 'praesentium-quasi-omnis-eius', 'https://via.placeholder.com/350x350.png/004466?text=repudiandae', 3, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(6, 2, 'Miss Alycia Predovic', 'deleniti-voluptatem-voluptate-consequuntur-ipsum-dolores', 'https://via.placeholder.com/350x350.png/00bbdd?text=earum', 2, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(7, 1, 'Prof. Nella Pollich IV', 'fuga-sequi-et-ducimus-in-repellendus', 'https://via.placeholder.com/350x350.png/0066bb?text=iure', 4, '2023-03-26 07:20:31', '2023-03-26 07:20:31'),
(8, 10, 'Jakayla Boehm', 'numquam-consequatur-tempora-atque-velit-neque-sint-laudantium-excepturi', 'https://via.placeholder.com/350x350.png/00ee44?text=a', 4, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(9, 9, 'Marianne Hane', 'non-iure-fugit-eum-pariatur-in-nemo-placeat-nesciunt', 'https://via.placeholder.com/350x350.png/001144?text=sapiente', 8, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(10, 9, 'Mathilde Fritsch', 'sunt-rem-suscipit-praesentium-consequuntur-quo', 'https://via.placeholder.com/350x350.png/003322?text=sed', 9, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(11, 3, 'Prof. Vladimir Kshlerin', 'ea-ratione-deserunt-veniam-nobis-labore-aut', 'https://via.placeholder.com/350x350.png/0099bb?text=dolores', 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(12, 1, 'Evans Ruecker', 'culpa-odit-nostrum-dolorum-nemo-ratione-et-rerum-aut', 'https://via.placeholder.com/350x350.png/00aadd?text=accusantium', 2, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(13, 5, 'Laisha Dicki PhD', 'velit-fugit-blanditiis-qui-eligendi-voluptate-itaque-error', 'https://via.placeholder.com/350x350.png/00ffaa?text=consequuntur', 3, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(14, 8, 'Miss Myrna Durgan V', 'a-iure-id-excepturi', 'https://via.placeholder.com/350x350.png/0066ee?text=ut', 9, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(15, 6, 'Pauline Connelly II', 'voluptatem-atque-consequuntur-eligendi-voluptatibus-hic-cumque', 'https://via.placeholder.com/350x350.png/003311?text=ipsa', 9, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(16, 6, 'Miss Bettye O\'Reilly I', 'sunt-qui-repellendus-qui-ipsa-sit-inventore', 'https://via.placeholder.com/350x350.png/0011dd?text=quia', 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(17, 2, 'Erin Kihn V', 'qui-id-et-ut-atque-labore-aliquam', 'https://via.placeholder.com/350x350.png/00ff11?text=non', 7, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(18, 5, 'Emelia Swift', 'omnis-mollitia-voluptas-nobis-voluptatem-quae', 'https://via.placeholder.com/350x350.png/0077cc?text=consectetur', 8, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(19, 5, 'Prof. Asia Hartmann PhD', 'omnis-suscipit-deserunt-sed-quae-est-vitae-officiis', 'https://via.placeholder.com/350x350.png/00bbbb?text=veniam', 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(20, 5, 'Stacy Lakin', 'consequatur-laboriosam-rem-aut-omnis-ducimus-doloribus-ipsum-exercitationem', 'https://via.placeholder.com/350x350.png/000033?text=aut', 3, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(21, 3, 'Maximo Weimann', 'placeat-fugiat-laboriosam-at-dolor-voluptas', 'https://via.placeholder.com/350x350.png/004400?text=et', 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(22, 5, 'Dr. Dorian Hoppe', 'corporis-placeat-blanditiis-dolorem-aut-aliquid-dolor-maiores', 'https://via.placeholder.com/350x350.png/001100?text=tempore', 9, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(23, 7, 'Jenifer Blick', 'delectus-sed-non-minima-dolore', 'https://via.placeholder.com/350x350.png/00cc11?text=et', 9, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(24, 6, 'King Abshire', 'dicta-sint-nam-quas-eos-esse-delectus', 'https://via.placeholder.com/350x350.png/0088bb?text=provident', 2, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(25, 5, 'Mrs. Ebony Beier Jr.', 'rerum-perspiciatis-perferendis-odit-dolorem-laborum-aut', 'https://via.placeholder.com/350x350.png/00dd22?text=aut', 7, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(26, 7, 'Alf Cartwright', 'et-eum-optio-voluptas', 'https://via.placeholder.com/350x350.png/00cc00?text=repellat', 0, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(27, 5, 'Dr. Dimitri Berge Jr.', 'quas-est-adipisci-voluptatem-ipsa-voluptas-officiis-libero', 'https://via.placeholder.com/350x350.png/004411?text=perferendis', 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(28, 7, 'Kamren Dibbert', 'ea-voluptas-est-eum-veniam-excepturi-corporis', 'https://via.placeholder.com/350x350.png/00ee99?text=ducimus', 3, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(29, 6, 'Kelly Rippin', 'itaque-itaque-repellendus-enim-nulla-fuga', 'https://via.placeholder.com/350x350.png/001188?text=quasi', 1, '2023-03-26 07:20:32', '2023-03-26 07:20:32'),
(30, 8, 'Fannie Feeney', 'quo-ea-quas-maxime-sed', 'https://via.placeholder.com/350x350.png/00ff55?text=inventore', 8, '2023-03-26 07:20:32', '2023-03-26 07:20:32');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `division_id` int(11) DEFAULT NULL,
  `district_id` int(11) DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `division_id`, `district_id`, `address`, `is_verified`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Komol Chandra Devnath', 'admin@gmail.com', '01874303467', NULL, NULL, NULL, NULL, 0, '2023-03-26 07:20:31', '$2y$10$W5H7Pkvdo5YSXBGcHhx2XeSUETnSxreUNWe2HBHsPbSGFKg4icJKu', 'vQGYniA2Sx', '2023-03-26 07:20:31', '2023-03-26 07:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Indexes for table `admin_file_managers`
--
ALTER TABLE `admin_file_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`);

--
-- Indexes for table `sellers`
--
ALTER TABLE `sellers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sellers_email_unique` (`email`),
  ADD UNIQUE KEY `sellers_phone_unique` (`phone`);

--
-- Indexes for table `seller_file_managers`
--
ALTER TABLE `seller_file_managers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sliders_slug_unique` (`slug`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sub_categories_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_file_managers`
--
ALTER TABLE `admin_file_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `sellers`
--
ALTER TABLE `sellers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `seller_file_managers`
--
ALTER TABLE `seller_file_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
