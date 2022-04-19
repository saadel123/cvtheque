-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 19 avr. 2022 à 12:37
-- Version du serveur :  10.4.19-MariaDB
-- Version de PHP : 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `cvtheque`
--

-- --------------------------------------------------------

--
-- Structure de la table `cvs`
--

CREATE TABLE `cvs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `titre` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cvs`
--

INSERT INTO `cvs` (`id`, `titre`, `presentation`, `pic`, `created_at`, `updated_at`, `deleted_at`, `user_id`) VALUES
(23, 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAMDOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/3q5U0aHRBOrTiexqALittUCWj3N3CrkqPR3KWpsB.png', '2021-07-16 13:19:40', '2021-07-16 16:50:56', '2021-07-16 17:50:56', 3),
(24, 'cv chef projet', 'LABORE ET DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM LABORE ET DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM LABORE ET DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/2wpr9X8YF7NqqTfRPd8olyFI8w7e6odas8P3ycbZ.jpg', '2021-07-16 15:24:23', '2021-07-18 11:16:56', NULL, 3),
(25, 'chef projet web', 'chef projet web  saad elghanemy', 'images/zJdbw3OFZ83NcAuNZ8aHigCqlGo7Yxn4gmQuPG9w.jpg', '2021-07-16 16:51:23', '2021-07-16 18:51:27', '2021-07-16 19:51:27', 3),
(26, 'cv chef projet mobile', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/qgNznZFZeBU8AfhrGzAOn3AuDgrilpdYggiMDWbx.jpg', '2021-07-16 16:51:48', '2021-07-16 18:52:32', '2021-07-16 19:52:32', 3),
(27, 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAMDOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/oGU7hlk5TifFCLoWA5QUTRbvQYD8Um9QdrxP7LtZ.jpg', '2021-07-16 16:52:27', '2021-07-16 16:52:27', NULL, 3),
(28, 'cv dyal saad hada', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/NYYvhzVMblk24jp1VrNtTksU4WfToKXmtvAmokW9.jpg', '2021-07-16 17:51:53', '2021-07-24 13:43:51', '2021-07-24 14:43:51', 1),
(29, 'Khalid Khalid Khalid', 'dsfsdfsddsfsdfsddsfsdfsd', 'images/FlIsiCNWI4DaoYcM8DG97kdoKSNq86ELvBhwEg5H.jpg', '2021-07-16 19:00:35', '2021-07-24 13:43:54', '2021-07-24 14:43:54', 1),
(30, 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM DOLORE MAGNA SLIQUA UT ENIM AD MINIM saaadon', 'images/mWRlQltLTLzItLcCtmBIzZWjKBx5wwd4zhZOtC7P.jpg', '2021-07-16 19:01:29', '2022-03-23 10:14:50', NULL, 3),
(31, 'Vue Paper Dashboard PRO', 'Vue Paper Dashboard PRO Vue Paper Dashboard PRO', 'images/DI0Trk8GEcgAmux434GGtCydgShjA5xjy09hZCRt.jpg', '2021-07-16 19:02:11', '2021-07-16 20:49:00', '2021-07-16 21:49:00', 3),
(32, 'dsdfsdgdsgjfgjfgjfgjfg', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/19DdK6vfAoZNsHUPAirlIk1b4ARjcntRsOlwhGXx.jpg', '2021-07-31 23:32:04', '2021-08-01 11:53:40', '2021-08-01 12:53:40', 1),
(33, 'cv chef projet', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/YfH36hqvKb4bjC6u3b7SYk0u5nt1NfLydo3B0DnA.jpg', '2021-08-01 11:51:30', '2021-08-01 11:52:26', '2021-08-01 12:52:26', 1),
(34, 'this is my title', 'DOLORE MAGNA SLIQUA UT ENIM AD MINIM VENIAM', 'images/SodW5HZsJZ03GYeE0B1MjjucBIVeUuFkMr9puu0s.png', '2021-08-01 12:00:43', '2021-08-01 12:11:11', '2021-08-01 13:11:11', 1),
(35, 'EMEC EXPO 2022', 'EMEC EXPO 2022EMEC EXPO 2022', 'images/7tn4PwMjcEDRMUdTsHLRWHS2c4eW9yqem9AGQDCC.png', '2022-03-22 09:21:27', '2022-03-23 10:43:42', '2022-03-23 11:43:42', 1),
(39, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/jaK1Ior48xco7zGS6ZUOb62nXXZ47634TWNY6yIA.jpg', '2022-03-23 10:42:34', '2022-03-23 10:45:24', '2022-03-23 11:45:24', 1),
(46, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648036290.jpg', '2022-03-23 10:51:30', '2022-03-23 10:51:30', NULL, 1),
(47, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648036458.jpg', '2022-03-23 10:54:18', '2022-03-23 10:54:18', NULL, 1),
(48, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648036565.jpg', '2022-03-23 10:56:05', '2022-03-23 10:56:05', NULL, 1),
(49, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648036648.png', '2022-03-23 10:57:29', '2022-03-23 10:57:29', NULL, 1),
(50, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648036753.jpg', '2022-03-23 10:59:15', '2022-03-23 10:59:15', NULL, 1),
(51, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648041022.jpg', '2022-03-23 12:10:23', '2022-03-23 12:10:23', NULL, 1),
(52, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648041104.jpg', '2022-03-23 12:11:44', '2022-03-23 12:11:44', NULL, 1),
(53, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648041169.png', '2022-03-23 12:12:49', '2022-03-23 12:12:49', NULL, 1),
(54, 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'La 9e édition Salon international du PLASTIC, CAOUTCHOUC, COMPOSITE et PETROCHIMIE.', 'images/1648041979.png', '2022-03-23 12:26:19', '2022-03-23 12:26:19', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debut` datetime NOT NULL,
  `fin` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cv_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `experiences`
--

INSERT INTO `experiences` (`id`, `titre`, `body`, `debut`, `fin`, `created_at`, `updated_at`, `cv_id`) VALUES
(3, 'java jee spring bot framework', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illum corrupti accusantium maiores totam tenetur cumque a laboriosam quia est, ab necessitatibus, facere voluptatem. Sequi et laudantium, vero eaque beatae possimus!\r\n', '2021-07-18 00:21:08', '2021-07-18 00:21:08', NULL, NULL, 25),
(4, 'php laravel vue js ', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illum corrupti accusantium maiores totam tenetur cumque a laboriosam quia est, ab necessitatibus, facere voluptatem. Sequi et laudantium, vero eaque beatae possimus!\r\n', '2021-07-18 00:21:08', '2021-07-18 00:21:08', NULL, NULL, 25),
(5, 'full stack web developer', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illum corrupti accusantium maiores totam tenetur cumque a laboriosam quia est, ab necessitatibus, facere voluptatem. Sequi et laudantium, vero eaque beatae possimus!\r\n', '2021-07-18 00:36:48', '2021-07-18 00:36:48', NULL, NULL, 27),
(6, 'angular react js react native python', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Illum corrupti accusantium maiores totam tenetur cumque a laboriosam quia est, ab necessitatibus, facere voluptatem. Sequi et laudantium, vero eaque beatae possimus!\r\n', '2021-07-18 00:36:48', '2021-07-18 00:36:48', NULL, NULL, 28);

-- --------------------------------------------------------

--
-- Structure de la table `failed_jobs`
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
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(6, '2021_07_14_120318_create_sessions_table', 2),
(7, '2021_07_14_134621_create_cvs_table', 3),
(8, '2021_07_14_141832_create_cvs_table', 4),
(9, '2021_07_14_193120_add_column_deleted_at_cvs', 5),
(10, '2021_07_15_165849_add_column_user_id', 6),
(11, '2021_07_16_131408_add_column_pic', 7),
(12, '2021_07_16_191955_add_ciolumn_is_admin_users', 8),
(13, '2021_07_17_204449_create_experiences_table', 9),
(14, '2021_07_17_221840_create_experiences_table', 10);

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('agod1Ym554kEDmBNuxv5Dd7lgw1Wg2gbKEI97otT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36 Edg/99.0.1150.46', 'YTo3OntzOjY6ImRhbmdlciI7czozNzoic3ZwIGNvbm5lY3RlciBwb3VyIGNvbnN1bHRlciBsZXMgY3YhISI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IkN1VVpXRXFwNlpNMzJFazJFSFowTlB0OTduckNiY0FublBkMkh2YzciO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY3ZzIjt9czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCQ2SGljTGNubkFzbDA2WnhMOThZazlPWTBnaWpqUzRBTUNHeHZiMjVhcGkza0suSHZvRUV4QyI7fQ==', 1648042372),
('jBZjPmOUjsVvXObhkDdTol1ZLoxeQ73PziW9l2s7', 4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36 Edg/100.0.1185.44', 'YTo3OntzOjY6ImRhbmdlciI7czozNzoic3ZwIGNvbm5lY3RlciBwb3VyIGNvbnN1bHRlciBsZXMgY3YhISI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo2OiJfdG9rZW4iO3M6NDA6IjM2RU9yajNVcm40VjhJYXdXdVdMQmxSMXFTbEFWS0pkSDFnbXdVQzIiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjIxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAiO31zOjM6InVybCI7YTowOnt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NDtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJGxlUUxicW1zUEliZlBwSko3MmxsY09iRTMvOXYyM0hKc09CN2QxeTRyeDI2d1hjUldkRWE2Ijt9', 1650362323);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `is_admin`) VALUES
(1, 'saad el ghanemy', 'elghanemysaad@gmail.com', NULL, '$2y$10$6HicLcnnAsl06ZxL98Yk9OY0gijjS4AMCGxvb25api3kK.HvoEExC', NULL, NULL, 'mmQYgqIRcdwoVguSYAJ0sz5qIAMDYdasTMzVw3Kb4ENvgJFfwPUOZDKz6Dxi', '2021-07-14 10:55:30', '2022-03-22 09:19:48', 1),
(2, 'saad', 'saad.saber@mail.ru', NULL, '$2y$10$eGSlr60wO.8nSxWWuEs2NefZX0.Ph7oJI2NGa65kWQoVNVP9aVwOa', NULL, NULL, NULL, '2021-07-14 11:17:12', '2021-07-14 11:17:12', 0),
(3, 'admin', 'admin@cfcusms.ma', NULL, '$2y$10$AINcRJpFrSZu.5gfl45nguCKghGgtjJqmyqMff1WnL.B4Nxvn8RVu', NULL, NULL, NULL, '2021-07-15 15:25:17', '2021-07-15 15:25:17', 0),
(4, 'tset', 'admin@admin.com', NULL, '$2y$10$leQLbqmsPIbfPpJJ72llcObE3/9v23HJsOB7d1y4rx26wXcRWdEa6', NULL, NULL, NULL, '2022-04-19 09:55:39', '2022-04-19 09:55:39', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cvs`
--
ALTER TABLE `cvs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cvs_user_id_foreign` (`user_id`);

--
-- Index pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `experiences_cv_id_foreign` (`cv_id`);

--
-- Index pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cvs`
--
ALTER TABLE `cvs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT pour la table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cvs`
--
ALTER TABLE `cvs`
  ADD CONSTRAINT `cvs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `experiences`
--
ALTER TABLE `experiences`
  ADD CONSTRAINT `experiences_cv_id_foreign` FOREIGN KEY (`cv_id`) REFERENCES `cvs` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
