-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2022 at 08:12 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce1`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Baju', NULL, NULL),
(2, 'Celana', NULL, NULL),
(3, 'Sepatu', NULL, NULL),
(4, 'Hoodie', NULL, NULL);

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
(4, '2022_09_09_002219_create_categories_table', 1),
(5, '2022_09_29_183913_create_products_table', 1),
(6, '2022_11_01_064151_create_carts_table', 1),
(7, '2022_11_10_005838_create_transactions_table', 1),
(8, '2022_11_10_011836_create_transaction_details_table', 1);

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
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `price`, `desc`, `image`, `created_at`, `updated_at`) VALUES
(1, 4, 'Christopher', '331889', 'Molestiae enim rerum ducimus consequatur aut animi accusantium. Dolorem quia necessitatibus omnis adipisci molestiae velit placeat.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(2, 1, 'Candelario', '367322', 'Ut recusandae autem vel labore veniam aut alias nemo. Deserunt fugiat voluptatem natus repudiandae iure odio nobis. Qui possimus ea facilis consequatur.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(3, 2, 'Horacio', '721245', 'Beatae quia sint et voluptatem eum autem ipsa et. Dolores est et qui quibusdam. Perspiciatis odio odit nobis quos laudantium.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(4, 3, 'Deshawn', '681098', 'Odit qui eos velit. Ratione quia natus consequuntur ab. Non eum impedit suscipit natus eligendi.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(5, 2, 'Marley', '651403', 'Laudantium veritatis quod sit est enim. Ea libero dolores harum eos accusamus nisi. Non molestias doloribus et qui occaecati sunt vitae.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(6, 4, 'Foster', '358504', 'Quia dicta harum voluptas deleniti quod commodi. Impedit quis voluptates in.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(7, 3, 'Keaton', '527842', 'Explicabo aut ipsum expedita nobis esse placeat. Ullam ut corporis ab dolor illo pariatur aut autem.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(8, 1, 'Wilfredo', '490716', 'Eius repellat unde officiis minima ea in aut. Eveniet error facilis atque.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(9, 3, 'Christ', '581786', 'Quasi aut voluptatem et autem natus ut quia ratione. Sed omnis cupiditate unde enim. Quisquam facilis tempore alias possimus harum repellat.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(10, 3, 'Baylee', '883454', 'Magni totam consequuntur aut qui mollitia ut ex. Pariatur similique dolores enim quia rerum ipsum dolorum deserunt.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(11, 2, 'Micheal', '326962', 'Ut iure quidem exercitationem. Quas aliquam ea unde adipisci.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(12, 3, 'Jasper', '220690', 'Aut et et aut veniam sed aut saepe. Numquam labore dolor dolores quo magnam error dolorem.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(13, 2, 'Turner', '166423', 'Et sunt qui porro error aut. Quis minus incidunt repudiandae aut alias eligendi. Quis sed vitae eligendi pariatur asperiores consectetur suscipit.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(14, 4, 'Alec', '748556', 'Quo aut repudiandae dolore. Earum pariatur fugit occaecati non facilis. Minima rerum ut qui.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(15, 1, 'Ben', '308683', 'Deserunt excepturi inventore repudiandae saepe est sed. Quae nisi accusantium itaque eum. Sint minus ut laboriosam adipisci.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(16, 4, 'Ahmed', '249828', 'Velit rerum hic accusantium perspiciatis ipsa. Laudantium occaecati doloribus quo ut. Quas dolor eaque perspiciatis eum minima.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(17, 2, 'Ellis', '695719', 'Sunt ea dolores consequatur quisquam qui qui. Sunt qui atque voluptatem.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(18, 1, 'Elian', '175620', 'Qui nihil possimus autem dolorum cumque. Assumenda et qui et est possimus rem fugit. Repellendus totam quis nemo rerum doloribus.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(19, 4, 'Sherwood', '598738', 'Corporis aut ut magnam voluptates illo et. In earum quia ut molestias hic. Natus earum quia consequatur voluptatibus suscipit nemo reiciendis sed.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(20, 1, 'Merle', '632907', 'Quod commodi cupiditate et vero. Aliquam voluptatem laboriosam quo quisquam.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(21, 1, 'Raul', '857846', 'Nobis cum ipsa sit deleniti rerum quia nam exercitationem. Dolorum cupiditate at ullam autem sunt.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(22, 2, 'Ambrose', '790016', 'Reprehenderit asperiores nesciunt est velit. A perspiciatis similique aut quasi.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(23, 2, 'Elmo', '266788', 'Molestiae distinctio occaecati laboriosam non enim. Dolorem suscipit natus perferendis assumenda id rerum.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(24, 2, 'Cornell', '792579', 'Doloremque et facere occaecati. Fugiat iste velit esse.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01'),
(25, 4, 'Larue', '780563', 'Quo consequatur et dolore cumque et possimus. At laborum dolor corrupti dolor. Deserunt aut sit ad labore a.', '/storage/images/product.jpg', '2022-11-09 18:32:01', '2022-11-09 18:32:01');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-11-10 20:09:47', '2022-11-10 20:09:47'),
(2, 1, '2022-11-10 20:13:16', '2022-11-10 20:13:16'),
(3, 1, '2022-11-10 20:13:34', '2022-11-10 20:13:34'),
(4, 1, '2022-11-10 20:15:31', '2022-11-10 20:15:31'),
(5, 1, '2022-11-10 20:16:24', '2022-11-10 20:16:24'),
(6, 1, '2022-11-10 20:17:14', '2022-11-10 20:17:14'),
(7, 1, '2022-11-10 20:23:03', '2022-11-10 20:23:03'),
(8, 1, '2022-11-10 20:23:59', '2022-11-10 20:23:59'),
(9, 1, '2022-11-10 20:24:04', '2022-11-10 20:24:04'),
(10, 1, '2022-11-10 20:24:48', '2022-11-10 20:24:48'),
(11, 1, '2022-11-10 20:25:33', '2022-11-10 20:25:33'),
(12, 1, '2022-11-10 20:25:39', '2022-11-10 20:25:39'),
(13, 1, '2022-11-10 20:25:52', '2022-11-10 20:25:52'),
(14, 1, '2022-11-10 20:27:55', '2022-11-10 20:27:55'),
(15, 1, '2022-11-10 20:39:04', '2022-11-10 20:39:04'),
(16, 1, '2022-11-10 20:39:07', '2022-11-10 20:39:07'),
(17, 1, '2022-11-10 20:39:18', '2022-11-10 20:39:18'),
(18, 1, '2022-11-10 20:39:48', '2022-11-10 20:39:48'),
(19, 1, '2022-11-10 20:42:02', '2022-11-10 20:42:02'),
(20, 1, '2022-11-10 20:43:59', '2022-11-10 20:43:59'),
(21, 1, '2022-11-10 20:46:28', '2022-11-10 20:46:28'),
(22, 1, '2022-11-10 20:46:30', '2022-11-10 20:46:30'),
(23, 1, '2022-11-10 20:58:07', '2022-11-10 20:58:07'),
(24, 1, '2022-11-10 20:58:13', '2022-11-10 20:58:13'),
(25, 1, '2022-11-10 21:02:41', '2022-11-10 21:02:41'),
(26, 1, '2022-11-10 21:04:37', '2022-11-10 21:04:37'),
(27, 1, '2022-11-10 21:05:44', '2022-11-10 21:05:44'),
(28, 1, '2022-11-10 21:06:55', '2022-11-10 21:06:55'),
(29, 1, '2022-11-10 21:22:20', '2022-11-10 21:22:20'),
(30, 1, '2022-11-10 21:24:16', '2022-11-10 21:24:16'),
(31, 1, '2022-11-10 21:24:59', '2022-11-10 21:24:59'),
(32, 1, '2022-11-10 21:25:03', '2022-11-10 21:25:03'),
(33, 1, '2022-11-10 21:25:21', '2022-11-10 21:25:21'),
(34, 1, '2022-11-10 21:26:12', '2022-11-10 21:26:12'),
(35, 1, '2022-11-10 21:31:23', '2022-11-10 21:31:23'),
(36, 1, '2022-11-11 00:39:50', '2022-11-11 00:39:50'),
(37, 1, '2022-11-11 00:40:26', '2022-11-11 00:40:26'),
(38, 1, '2022-11-11 00:42:53', '2022-11-11 00:42:53'),
(39, 1, '2022-11-11 00:43:47', '2022-11-11 00:43:47'),
(40, 1, '2022-11-11 00:44:26', '2022-11-11 00:44:26'),
(41, 1, '2022-11-11 00:44:53', '2022-11-11 00:44:53'),
(42, 1, '2022-11-11 00:46:34', '2022-11-11 00:46:34'),
(43, 1, '2022-11-11 00:49:15', '2022-11-11 00:49:15'),
(44, 1, '2022-11-14 00:45:14', '2022-11-14 00:45:14'),
(45, 1, '2022-11-14 21:15:53', '2022-11-14 21:15:53'),
(46, 1, '2022-11-14 21:16:31', '2022-11-14 21:16:31');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transaction_id`, `product_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 5, '2022-11-10 20:13:16', '2022-11-10 20:13:16'),
(2, 2, 13, 10, '2022-11-10 20:13:16', '2022-11-10 20:13:16'),
(3, 3, 1, 5, '2022-11-10 20:13:34', '2022-11-10 20:13:34'),
(4, 3, 13, 10, '2022-11-10 20:13:34', '2022-11-10 20:13:34'),
(5, 4, 1, 5, '2022-11-10 20:15:31', '2022-11-10 20:15:31'),
(6, 4, 13, 10, '2022-11-10 20:15:31', '2022-11-10 20:15:31'),
(7, 5, 1, 5, '2022-11-10 20:16:24', '2022-11-10 20:16:24'),
(8, 5, 13, 10, '2022-11-10 20:16:24', '2022-11-10 20:16:24'),
(9, 6, 1, 5, '2022-11-10 20:17:14', '2022-11-10 20:17:14'),
(10, 6, 13, 10, '2022-11-10 20:17:14', '2022-11-10 20:17:14'),
(11, 7, 1, 5, '2022-11-10 20:23:03', '2022-11-10 20:23:03'),
(12, 7, 13, 10, '2022-11-10 20:23:03', '2022-11-10 20:23:03'),
(13, 8, 1, 5, '2022-11-10 20:23:59', '2022-11-10 20:23:59'),
(14, 8, 13, 10, '2022-11-10 20:23:59', '2022-11-10 20:23:59'),
(15, 9, 1, 5, '2022-11-10 20:24:04', '2022-11-10 20:24:04'),
(16, 9, 13, 10, '2022-11-10 20:24:04', '2022-11-10 20:24:04'),
(17, 10, 1, 5, '2022-11-10 20:24:48', '2022-11-10 20:24:48'),
(18, 10, 13, 10, '2022-11-10 20:24:48', '2022-11-10 20:24:48'),
(19, 11, 1, 5, '2022-11-10 20:25:33', '2022-11-10 20:25:33'),
(20, 11, 13, 10, '2022-11-10 20:25:33', '2022-11-10 20:25:33'),
(21, 12, 1, 5, '2022-11-10 20:25:39', '2022-11-10 20:25:39'),
(22, 12, 13, 10, '2022-11-10 20:25:39', '2022-11-10 20:25:39'),
(23, 13, 1, 5, '2022-11-10 20:25:52', '2022-11-10 20:25:52'),
(24, 13, 13, 10, '2022-11-10 20:25:52', '2022-11-10 20:25:52'),
(25, 14, 1, 5, '2022-11-10 20:27:55', '2022-11-10 20:27:55'),
(26, 14, 13, 10, '2022-11-10 20:27:55', '2022-11-10 20:27:55'),
(27, 15, 1, 5, '2022-11-10 20:39:04', '2022-11-10 20:39:04'),
(28, 15, 13, 10, '2022-11-10 20:39:04', '2022-11-10 20:39:04'),
(29, 16, 1, 5, '2022-11-10 20:39:07', '2022-11-10 20:39:07'),
(30, 16, 13, 10, '2022-11-10 20:39:07', '2022-11-10 20:39:07'),
(31, 17, 1, 5, '2022-11-10 20:39:18', '2022-11-10 20:39:18'),
(32, 17, 13, 10, '2022-11-10 20:39:18', '2022-11-10 20:39:18'),
(33, 18, 1, 5, '2022-11-10 20:39:48', '2022-11-10 20:39:48'),
(34, 18, 13, 10, '2022-11-10 20:39:48', '2022-11-10 20:39:48'),
(35, 19, 1, 5, '2022-11-10 20:42:02', '2022-11-10 20:42:02'),
(36, 19, 13, 10, '2022-11-10 20:42:02', '2022-11-10 20:42:02'),
(37, 20, 1, 5, '2022-11-10 20:43:59', '2022-11-10 20:43:59'),
(38, 20, 13, 10, '2022-11-10 20:43:59', '2022-11-10 20:43:59'),
(39, 21, 1, 5, '2022-11-10 20:46:28', '2022-11-10 20:46:28'),
(40, 21, 13, 10, '2022-11-10 20:46:28', '2022-11-10 20:46:28'),
(41, 22, 1, 5, '2022-11-10 20:46:30', '2022-11-10 20:46:30'),
(42, 22, 13, 10, '2022-11-10 20:46:30', '2022-11-10 20:46:30'),
(43, 23, 1, 5, '2022-11-10 20:58:07', '2022-11-10 20:58:07'),
(44, 23, 13, 10, '2022-11-10 20:58:07', '2022-11-10 20:58:07'),
(45, 24, 1, 5, '2022-11-10 20:58:13', '2022-11-10 20:58:13'),
(46, 24, 13, 10, '2022-11-10 20:58:13', '2022-11-10 20:58:13'),
(47, 25, 1, 5, '2022-11-10 21:02:41', '2022-11-10 21:02:41'),
(48, 25, 13, 10, '2022-11-10 21:02:41', '2022-11-10 21:02:41'),
(49, 26, 1, 5, '2022-11-10 21:04:37', '2022-11-10 21:04:37'),
(50, 26, 13, 10, '2022-11-10 21:04:37', '2022-11-10 21:04:37'),
(51, 27, 1, 5, '2022-11-10 21:05:44', '2022-11-10 21:05:44'),
(52, 27, 13, 10, '2022-11-10 21:05:44', '2022-11-10 21:05:44'),
(53, 28, 1, 5, '2022-11-10 21:06:55', '2022-11-10 21:06:55'),
(54, 28, 13, 5, '2022-11-10 21:06:55', '2022-11-10 21:06:55'),
(55, 29, 1, 5, '2022-11-10 21:22:20', '2022-11-10 21:22:20'),
(56, 29, 13, 5, '2022-11-10 21:22:20', '2022-11-10 21:22:20'),
(57, 30, 1, 5, '2022-11-10 21:24:16', '2022-11-10 21:24:16'),
(58, 30, 13, 5, '2022-11-10 21:24:16', '2022-11-10 21:24:16'),
(59, 31, 1, 5, '2022-11-10 21:24:59', '2022-11-10 21:24:59'),
(60, 31, 13, 5, '2022-11-10 21:24:59', '2022-11-10 21:24:59'),
(61, 32, 1, 5, '2022-11-10 21:25:03', '2022-11-10 21:25:03'),
(62, 32, 13, 5, '2022-11-10 21:25:03', '2022-11-10 21:25:03'),
(63, 33, 1, 5, '2022-11-10 21:25:21', '2022-11-10 21:25:21'),
(64, 33, 13, 5, '2022-11-10 21:25:21', '2022-11-10 21:25:21'),
(65, 34, 1, 5, '2022-11-10 21:26:12', '2022-11-10 21:26:12'),
(66, 34, 13, 5, '2022-11-10 21:26:12', '2022-11-10 21:26:12'),
(67, 35, 1, 5, '2022-11-10 21:31:23', '2022-11-10 21:31:23'),
(68, 35, 13, 5, '2022-11-10 21:31:23', '2022-11-10 21:31:23'),
(69, 36, 1, 5, '2022-11-11 00:39:51', '2022-11-11 00:39:51'),
(70, 36, 13, 5, '2022-11-11 00:39:51', '2022-11-11 00:39:51'),
(71, 37, 1, 5, '2022-11-11 00:40:26', '2022-11-11 00:40:26'),
(72, 37, 13, 5, '2022-11-11 00:40:26', '2022-11-11 00:40:26'),
(73, 38, 1, 5, '2022-11-11 00:42:53', '2022-11-11 00:42:53'),
(74, 38, 13, 5, '2022-11-11 00:42:53', '2022-11-11 00:42:53'),
(75, 39, 1, 5, '2022-11-11 00:43:47', '2022-11-11 00:43:47'),
(76, 39, 13, 5, '2022-11-11 00:43:47', '2022-11-11 00:43:47'),
(77, 40, 1, 5, '2022-11-11 00:44:26', '2022-11-11 00:44:26'),
(78, 40, 13, 5, '2022-11-11 00:44:26', '2022-11-11 00:44:26'),
(79, 41, 1, 5, '2022-11-11 00:44:53', '2022-11-11 00:44:53'),
(80, 41, 13, 5, '2022-11-11 00:44:53', '2022-11-11 00:44:53'),
(81, 42, 1, 10, '2022-11-11 00:46:34', '2022-11-11 00:46:34'),
(82, 43, 1, 10, '2022-11-11 00:49:15', '2022-11-11 00:49:15'),
(83, 44, 1, 10, '2022-11-14 00:45:14', '2022-11-14 00:45:14'),
(84, 45, 5, 10, '2022-11-14 21:15:53', '2022-11-14 21:15:53'),
(85, 46, 1, 7, '2022-11-14 21:16:31', '2022-11-14 21:16:31');

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
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `address`, `phone`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dhito', 'andhitoah@gmail.com', NULL, '$2y$10$8sYsugjmzG9cMdvOzR3vVuN.SQiv3j52nIIBxGsbbaUhU.sDIYsxm', 'LALADON', '089614227529', NULL, '2022-11-10 20:07:20', '2022-11-10 20:07:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_details_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_details_product_id_foreign` (`product_id`);

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
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `transaction_details_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
