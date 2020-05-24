-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2020 at 10:06 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pizzahouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `order_sub`
--

CREATE TABLE `order_sub` (
  `order_sub_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `pizza_id` int(11) NOT NULL,
  `price` float(5,2) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE `order_tbl` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `total` float(5,2) NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated` datetime NOT NULL DEFAULT current_timestamp(),
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Table structure for table `pizzas`
--

CREATE TABLE `pizzas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `toppings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`toppings`)),
  `price` float(11,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pizzas`
--

INSERT INTO `pizzas` (`id`, `created_at`, `updated_at`, `type`, `base`, `name`, `toppings`, `price`) VALUES
(1, '2020-05-23 15:25:27', '2020-05-23 15:25:27', 'margarita', 'thick', 'Bijal', '[\"peppers\",\"olives\"]', 0.00),
(2, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'margarita', 'thick', 'sumit', '[\"mushrooms\",\"peppers\"]', 10.00),
(3, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit herzhaften Rindersteak-Streifen17,19, feinem grünem Spargel, frischen Tomaten und Sauce hollandaise14,18,19, abgerundet mit würzigem Steakpfeffer. Zusatzstoffe siehe unten.', 'mit herzhaften Rindersteak-Streifen17,19, feinem grünem Spargel, frischen Tomaten und Sauce hollandaise14,18,19, abgerundet mit würzigem Steakpfeffer. Zusatzstoffe siehe unten.', 'GOURMET', '[\"mushrooms\",\"peppers\"]', 20.00),
(4, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit Hähnchenbrustfilet, Broccoli, Frühlingszwiebeln, Sesam und mit Teriyaki Sauce1 verfeinert. Zusatzstoffe siehe unten.', 'mit Hähnchenbrustfilet, Broccoli, Frühlingszwiebeln, Sesam und mit Teriyaki Sauce1 verfeinert. Zusatzstoffe siehe unten.', 'TERIYAKI CHICKEN', '[\"mushrooms\",\"peppers\"]', 15.00),
(5, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit BBQ-Sauce14,18,19, Hähnchenbrustfilet, Paprikastreifen, roten Zwiebeln und Mais. Zusatzstoffe siehe unten.', 'mit BBQ-Sauce14,18,19, Hähnchenbrustfilet, Paprikastreifen, roten Zwiebeln und Mais. Zusatzstoffe siehe unten.', 'BBQ PONCHO', '[\"mushrooms\",\"peppers\"]', 23.50),
(6, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit BBQ-Sauce14,18,19, Rinderhack19, Bacon2,9, roten Zwiebeln und Mozzarella-Kugeln18. Leicht scharf. Zusatzstoffe siehe unten.', 'mit BBQ-Sauce14,18,19, Rinderhack19, Bacon2,9, roten Zwiebeln und Mozzarella-Kugeln18. Leicht scharf. Zusatzstoffe siehe unten.', 'CONCHITA', '[\"mushrooms\",\"peppers\"]', 11.00),
(7, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit Tomaten, herzhaften Rindersteak-Streifen17,19, Bacon2,9 und Sauce hollandaise14,18,19 gebacken. Anschließend mit frischen Frühlingszwiebeln18 verfeinert. Zusatzstoffe siehe unten.', 'mit Tomaten, herzhaften Rindersteak-Streifen17,19, Bacon2,9 und Sauce hollandaise14,18,19 gebacken. Anschließend mit frischen Frühlingszwiebeln18 verfeinert. Zusatzstoffe siehe unten.', 'STEAK & BACON', '[\"mushrooms\",\"peppers\"]', 17.00),
(8, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit Rinderhack19, frischen Tomaten, eingelegten Gurken, roten Zwiebeln und mit Burgersauce2,3,10,14,15 verfeinert. Leicht scharf. Zusatzstoffe siehe unten.', 'mit Rinderhack19, frischen Tomaten, eingelegten Gurken, roten Zwiebeln und mit Burgersauce2,3,10,14,15 verfeinert. Leicht scharf. Zusatzstoffe siehe unten.', 'CHEESEBURGER PIZZA', '[\"mushrooms\",\"peppers\"]', 12.00),
(9, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit Prosciutto Cotto2,3,9,17, fruchtiger Ananas und extra viel Käse. Zusatzstoffe siehe unten.', 'mit Prosciutto Cotto2,3,9,17, fruchtiger Ananas und extra viel Käse. Zusatzstoffe siehe unten.', 'WAIKIKI', '[\"mushrooms\",\"peppers\"]', 22.00),
(10, '2020-05-23 15:26:55', '2020-05-23 15:26:55', 'mit Prosciutto Cotto2,3,9,17, Salami2,3 und frischen Champignons. Zusatzstoffe siehe unten.', 'mit Prosciutto Cotto2,3,9,17, Salami2,3 und frischen Champignons. Zusatzstoffe siehe unten.', 'LUCCA', '[\"mushrooms\",\"peppers\"]', 25.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `admin` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `admin`) VALUES
(3, NULL, 'bijal', '123@gmail.com', 'users/default.png', NULL, '$2y$10$nwE8fedISbr4P1l/H8ticedyVyoaZabrKBA3BTGpPTGR6H/sBltvu', NULL, '2020-05-24 11:18:07', '2020-05-24 11:18:07', NULL),
(4, NULL, 'Bijal123', 'bijal@gmail.com', 'users/default.png', NULL, '$2y$10$Wi7o.Bg3QYxNYuVKFuX0KudFZf90d1BMwpeY1hpZXK9QskZ/552uO', NULL, '2020-05-24 11:18:54', '2020-05-24 11:18:54', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `order_sub`
--
ALTER TABLE `order_sub`
  ADD PRIMARY KEY (`order_sub_id`);

--
-- Indexes for table `order_tbl`
--
ALTER TABLE `order_tbl`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pizzas`
--
ALTER TABLE `pizzas`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `order_sub`
--
ALTER TABLE `order_sub`
  MODIFY `order_sub_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_tbl`
--
ALTER TABLE `order_tbl`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
