-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 31, 2020 at 02:40 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `products`
--

-- --------------------------------------------------------

--
-- Table structure for table `broadbands`
--

CREATE TABLE `broadbands` (
  `id` int(10) UNSIGNED NOT NULL,
  `prov_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `broadbands`
--

INSERT INTO `broadbands` (`id`, `prov_name`, `product`, `price`, `created_at`, `updated_at`) VALUES
(1, 'BSNL', '100MB', '30USD', '2020-07-31 09:54:52', '2020-07-31 09:54:52'),
(2, 'BSNL', '200MB', '40USD', '2020-07-31 09:54:52', '2020-07-31 09:54:52'),
(3, 'BSNL', '300MB', '50USD', '2020-07-31 10:02:34', '2020-07-31 10:02:34'),
(4, 'Airtel', '17MB', '35USD', '2020-07-31 10:04:06', '2020-07-31 10:04:06'),
(5, 'Airtel', '72MB', '40USD', '2020-07-31 10:04:06', '2020-07-31 10:04:06');

-- --------------------------------------------------------

--
-- Table structure for table `energies`
--

CREATE TABLE `energies` (
  `id` int(10) UNSIGNED NOT NULL,
  `prov_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_variation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `energies`
--

INSERT INTO `energies` (`id`, `prov_name`, `product`, `product_variation`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Indane Energy', 'Standard Tariff', 'North', '30USD', '2020-07-31 10:06:33', '2020-07-31 07:02:04'),
(2, 'Indane Energy', 'Standard Tariff', 'Mid', '56.50USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(3, 'Indane Energy', 'Standard Tariff', 'South', '61.92USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(4, 'Indane Energy', 'Green Tariff', 'North', '51.95USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(5, 'Indane Energy', 'Green Tariff', 'Mid', '52.00USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(6, 'Indane Energy', 'Green Tariff', 'South', '71.66USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(7, 'Tata Power', 'Standard Tariff', 'North', '51.95USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(8, 'Tata Power', 'Standard Tariff', 'Mid', '52.00USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(9, 'Tata Power', 'Standard Tariff', 'South', '56.62USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(10, 'Tata Power', 'Saver Tariff', 'North', '42.57USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(11, 'Tata Power', 'Saver Tariff', 'Mid', '45.22USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33'),
(12, 'Tata Power', 'Saver Tariff', 'South', '47.67USD', '2020-07-31 10:06:33', '2020-07-31 10:06:33');

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
(3, '2020_07_31_094706_create_broadbands_table', 1),
(4, '2020_07_31_094733_create_energies_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `broadbands`
--
ALTER TABLE `broadbands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `energies`
--
ALTER TABLE `energies`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `broadbands`
--
ALTER TABLE `broadbands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `energies`
--
ALTER TABLE `energies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
