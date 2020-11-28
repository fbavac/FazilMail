-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 08, 2020 at 04:26 PM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bits`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `place` varchar(255) NOT NULL,
  `service_req` varchar(255) NOT NULL,
  `next_step` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `proposed_fee` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `inv_date` varchar(255) NOT NULL,
  `billing_amnt` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_date` varchar(255) NOT NULL,
  `amnt_recieve` varchar(255) NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `category`, `company_name`, `mobile_no`, `place`, `service_req`, `next_step`, `remark`, `proposed_fee`, `date`, `status`, `inv_date`, `billing_amnt`, `payment_status`, `payment_date`, `amnt_recieve`, `updated_at`, `created_at`) VALUES
(1, 'favas', 'ABC', 'info', '9605897252', 'mpm', 'abc', 'step 2', 'here', 'abc', '08-11-2020', 'Active', '08-11-2020', '1000', 'Pending', '08-11-2020', '0', '2020-11-08 03:02:11', '2020-11-08 03:02:11'),
(2, 'Fadhil Sanin', 'ABC', 'info', '9605897251', 'mpm', 'abc', 'step 2', 'here', 'abc', '08-11-2020', 'Active', '08-11-2020', '1000', 'Pending', '08-11-2020', '0', '2020-11-08 04:07:54', '2020-11-08 03:07:44');

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
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2020_10_30_140042_create_products_table', 2),
(9, '2020_10_30_152322_add_role_to_users_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0552b1c2efa810788ae2132367ecdb1ca5941db679ed0c760ab97b1feae2e7ea61b602fb85fa552d', 4, 1, 'token', '[]', 0, '2020-10-30 10:15:36', '2020-10-30 10:15:36', '2021-10-30 15:45:36'),
('0f3474daafdc4330060d4727b15b9039ffd7946c44ea6dad28ab25712f17ae4c342b3cdcf10c51a9', 2, 1, 'token', '[]', 1, '2020-10-30 08:11:57', '2020-10-30 08:11:57', '2021-10-30 13:41:57'),
('3c53657c9b7991fe87d40163af2e94887db9ee5152cf14fe0c93f3ff8d71ac35c6bd4da5f98edda3', 4, 1, 'token', '[]', 0, '2020-11-06 23:52:59', '2020-11-06 23:52:59', '2021-11-07 05:22:59'),
('4154b0d7d5fad72ff65964ed3bff354ff3623c2e53dc80910e71c742d0b9e3aad3b1792896722f61', 4, 1, 'token', '[]', 0, '2020-11-02 10:18:16', '2020-11-02 10:18:16', '2021-11-02 15:48:16'),
('55497cf7fe44cc181682a2cb8c3403e73200cfd9b898a9d940d6cd22f72eb6f0e8f2e2f1246bdd52', 8, 1, 'token', '[]', 0, '2020-11-07 00:38:19', '2020-11-07 00:38:19', '2021-11-07 06:08:19'),
('60e4cb4ddfea882e1f8fc87c32bf87ba6c472cb5edcbd13afab835d70446fc8aecc2310de4bb5fb1', 2, 1, 'token', '[]', 1, '2020-10-30 08:10:56', '2020-10-30 08:10:56', '2021-10-30 13:40:56'),
('64a14d395d49fd52b65bd81e6b51b4596b912d0b08b93856dc6999d5d3f1c92ec178a6ad9c5a41ae', 4, 1, 'token', '[]', 0, '2020-10-30 21:37:36', '2020-10-30 21:37:36', '2021-10-31 03:07:36'),
('69298cf06c28d895cc4e9c4a85331c3ae84d3e05edcfda6a0d66282395168537602c7d19ffe311b7', 4, 1, 'token', '[]', 0, '2020-11-02 12:44:28', '2020-11-02 12:44:28', '2021-11-02 18:14:28'),
('773cc3818442ea7fce51937e6158a01bfaab70bfe2b0678836c279e55729fc896b2a41f3a9c016e2', 4, 1, 'token', '[]', 0, '2020-11-02 10:09:33', '2020-11-02 10:09:33', '2021-11-02 15:39:33'),
('7f8dddf4248d21ba259138e8e5109422eea3cb7f273e4e27b3cfce6cb23c239b30cb4662e27999c7', 4, 1, 'token', '[]', 0, '2020-10-31 05:10:39', '2020-10-31 05:10:39', '2021-10-31 10:40:39'),
('846df271772930bda171057a71385203758e3dbf0dd00bf698ffb5f96072357d522530d511eba908', 4, 1, 'token', '[]', 0, '2020-10-30 21:37:56', '2020-10-30 21:37:56', '2021-10-31 03:07:56'),
('8b97927946a4cea26da5dd69321721ea31ed0d37419817c791ad02076086a09d1af4a06f6f2b0f2b', 10, 1, 'token', '[]', 0, '2020-11-08 01:35:58', '2020-11-08 01:35:58', '2021-11-08 07:05:58'),
('a1bf8522043d39d1cda2f8eb773b8236cef5234faedb99f54b35afd9f8c5fcc208f158b4756915ec', 4, 1, 'token', '[]', 0, '2020-11-07 00:32:09', '2020-11-07 00:32:09', '2021-11-07 06:02:09'),
('a2d7bc2a7df67eb56aa8d1ff0a55ac61f3ab8a441db20c418b008cc39338fc1f603e8c7524d9fc63', 4, 1, 'token', '[]', 0, '2020-10-31 11:27:33', '2020-10-31 11:27:33', '2021-10-31 16:57:33'),
('a43e6925f6b4500e20f3e328238293950e43e89b7b4ba82f877c35fbb1af9eb2bc030328a4d74190', 2, 1, 'token', '[]', 0, '2020-10-30 08:37:14', '2020-10-30 08:37:14', '2021-10-30 14:07:14'),
('c03a4d718f8026f1e8602fcee2d5590b76fb469ffb0badc82dc45e665161a5abca1ef6b0b93f96b6', 2, 1, 'token', '[]', 1, '2020-10-30 08:01:08', '2020-10-30 08:01:08', '2021-10-30 13:31:08'),
('c05c8e9be17a473b86972c3432ba0ddde7444dfdc76834d13a21a7aec1d7220f50af9a8bf9e0fca8', 4, 1, 'token', '[]', 0, '2020-10-30 10:25:45', '2020-10-30 10:25:45', '2021-10-30 15:55:45'),
('d075860912182e9bfa57a234748375b101485a5091c2b7510a78ddc2be2c773970a24b3d0bd5f20b', 6, 1, 'token', '[]', 0, '2020-10-31 05:09:57', '2020-10-31 05:09:57', '2021-10-31 10:39:57'),
('d718f2ba87fda070517b44ddb71925dcdefd211e97e68e174bc0959866952cf28d18d16f128d673a', 2, 1, 'token', '[]', 0, '2020-10-30 07:59:15', '2020-10-30 07:59:15', '2021-10-30 13:29:15'),
('ea1f4e139f4ae5f3292b6dbfeef46f6b04afa9fa55f3b14310b6b1cb19fe0d5871c56aa201db4504', 7, 1, 'token', '[]', 0, '2020-11-07 00:31:40', '2020-11-07 00:31:40', '2021-11-07 06:01:40'),
('feec4e5778fb8edd53697f8060059c3ced3741fdb4f62744f8c1f909cbb321e686cd8eb4991d5e91', 10, 1, 'token', '[]', 0, '2020-11-08 01:36:28', '2020-11-08 01:36:28', '2021-11-08 07:06:28');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'uOLsw5HAslO9U3AJCuZg4BYeE2qdUyzyYbKm4bzU', 'http://localhost', 1, 0, 0, '2020-10-30 07:27:54', '2020-10-30 07:27:54'),
(2, NULL, 'Laravel Password Grant Client', 'CWorq2mWGNNkRmEn1ybgwY4ZGwEQbvFPiZNATj9J', 'http://localhost', 0, 1, 0, '2020-10-30 07:27:54', '2020-10-30 07:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-10-30 07:27:54', '2020-10-30 07:27:54');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `department` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `department`, `categoty`, `gender`, `size`, `product_price`, `status`, `created_at`, `updated_at`) VALUES
(20, 'Sports', 'hockey', 'Male', 'XL', '600', '1', '2020-11-08 01:38:21', '2020-11-08 01:38:21');

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
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', 'admin@gmail.com', NULL, '$2y$10$Be50Utk.QadVhJn7iA0OQ.kJWC01GVLKnZoC0Xkj4jGOzbLXx5uJS', 'Admin', 'Rq1pIYLZ4J4KQj4RGu0njQUsitgMO1RhjHET6chgJchYfRdcsHHVOtPMRRhq', '2020-10-30 09:28:10', '2020-10-30 09:28:10'),
(10, 'Favas Bava', 'favas@gmail.com', NULL, '$2y$10$JYwzPrSH3rCZJm2b3vlE/OKbrcMV2MkS1278xyCMpyL8Fqq.hbNQ6', NULL, NULL, '2020-11-08 01:35:57', '2020-11-08 01:35:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
