-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 18, 2023 at 01:04 PM
-- Server version: 10.6.15-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siwb1344_siwadulkarangreja`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` bigint(50) UNSIGNED NOT NULL,
  `slug` varchar(50) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `slug`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'elektronik-hardware', 'Elektronik & Hardware', '2023-06-18 09:55:38', '2023-06-18 09:55:38'),
(2, 'maintenance', 'Maintenance', '2023-06-18 09:55:38', '2023-06-18 09:55:38'),
(3, 'fasilitas-umum', 'Fasilitas umum', '2023-06-28 04:53:50', '2023-06-28 04:53:50'),
(4, 'kesehatan', 'Kesehatan', '2023-08-23 14:21:10', '2023-08-23 14:21:10'),
(5, 'pendidikan', 'Pendidikan', '2023-08-23 14:21:35', '2023-08-23 14:21:35'),
(6, 'transportasi-infrastruktur', 'Transportasi & Infrastruktur', '2023-08-23 14:29:20', '2023-08-23 14:29:20'),
(7, 'ibadah', 'Ibadah', '2023-08-23 14:29:55', '2023-08-23 14:29:55'),
(8, 'lingkungan', 'Lingkungan', '2023-08-23 14:30:26', '2023-08-23 14:30:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
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
(5, '2022_04_13_082230_create_kategoris_table', 1),
(6, '2022_04_14_080916_create_pengaduans_table', 1),
(7, '2022_04_19_143244_create_permohonans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengaduan`
--

CREATE TABLE `pengaduan` (
  `no_pengaduan` varchar(20) NOT NULL,
  `judul` varchar(30) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(16) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `status` enum('Menunggu konfirmasi','Diproses','Selesai','Ditolak') NOT NULL DEFAULT 'Menunggu konfirmasi',
  `tanggapan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengaduan`
--

INSERT INTO `pengaduan` (`no_pengaduan`, `judul`, `user_id`, `kategori_id`, `nik`, `isi`, `gambar`, `status`, `tanggapan`, `created_at`, `updated_at`) VALUES
('A-22062511372469', 'Terang benderang', 2, 1, '213123123', '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Sequi, veniam debitis voluptatem error commodi atque dolorum cum magni. Quod ab dolor itaque delectus eveniet suscipit rerum, voluptas, sed iusto reprehenderit odit, quae praesentium accusamus sequi. Illo, iusto? Eos aut velit natus unde necessitatibus ab odit, ipsam numquam vero, soluta quos dolorem quaerat?</p>\n\n            <p>Eaque atque iste explicabo assumenda dignissimos! Quisquam modi ipsum delectus tenetur. Temporibus veniam incidunt in perferendis omnis nobis minus ex repudiandae magnam tenetur, sunt facere, iste itaque at, hic quod expedita repellat sapiente laboriosam a veritatis aperiam consequatur. Similique magni odio maxime sequi voluptate consequuntur illum nisi cum!</p>', NULL, 'Selesai', '<div>ok</div>', '2023-06-18 09:55:38', '2023-08-25 11:58:41'),
('A-23081507382755', 'SSD', 2, 2, '1937192739274', '<div>abc</div>', 'images/MCnL3ipZSqEgUTdfhmWV0CKqHg0Tp8DBhhPuzDtN.png', 'Selesai', NULL, '2023-08-15 12:38:27', '2023-08-25 08:57:25'),
('A-230818021504100', 'Ingin ada acara', 2, 3, '1937192739274', '<div>semoga</div>', 'images/Sk4LCduSdtAJVC7N15G6MIohTJSt0FuqNvOywElz.png', 'Selesai', NULL, '2023-08-18 07:15:04', '2023-08-18 07:15:31'),
('A-23081802352580', 'munib ngeselin', 2, 3, '1937192739274', '<div>Semoga</div>', 'images/qPCGDIY9moG6yCujqxro2CwgGrFQ1pfdPZCJWCoO.png', 'Selesai', NULL, '2023-08-18 07:35:25', '2023-08-18 07:35:45'),
('A-2308180241329', 'uvuvvv', 2, 3, '1937192739274', '<div>moga</div>', 'images/y6iMLUzXfxZufTcKqZfgV25e40SZFqgbDDTcUgEv.png', 'Selesai', NULL, '2023-08-18 07:41:32', '2023-08-18 07:41:45'),
('A-23081802553070', 'kjkjkj', 2, 3, '1937192739274', '<div>ok</div>', 'images/GI4uCGsxzbjvMJPHobA0906lG1dJh4pOB8kgX8u1.jpg', 'Selesai', NULL, '2023-08-18 07:55:30', '2023-08-18 07:55:49'),
('A-23082502385241', 'Kurang penerangan jalan', 2, 6, '1937192739274', '<div>semoga cepat terealisasikam</div>', 'images/7zihY3OJcWL4cG1um147c4yjwtTOS1Rjz8KEIlDB.jpg', 'Selesai', NULL, '2023-08-25 07:38:52', '2023-08-25 11:43:30'),
('A-23082503542758', 'kekurangan penerangan jalan', 2, 3, '1937192739274', '<div>Semoga cepat terealisasikan</div>', 'images/eEcR22RHwMqsLl57PGXwZFMaQWBJxf9iyEA9AN4L.jpg', 'Menunggu konfirmasi', NULL, '2023-08-25 08:54:27', '2023-08-25 08:54:27'),
('A-23082911531910', 'Kurang penerangan jalan', 2, 3, '1937192739274', '<div>Semoga</div>', NULL, 'Menunggu konfirmasi', NULL, '2023-08-29 04:53:19', '2023-08-29 04:53:19'),
('A-23082912295595', 'jalan rusak', 17, 3, '123', '<div>RT 01/01</div>', 'images/h2fA6IjJbGnIs7W2qTrfIUziZbmpoX0jvkNlBg29.png', 'Selesai', '<div>OK akan kami perbaiki</div>', '2023-08-29 05:29:55', '2023-08-29 05:33:09');

-- --------------------------------------------------------

--
-- Table structure for table `permohonan`
--

CREATE TABLE `permohonan` (
  `no_permohonan` varchar(20) NOT NULL,
  `kode_pengaduan` varchar(20) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `isi` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Menunggu tanggapan',
  `tanggapan` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permohonan`
--

INSERT INTO `permohonan` (`no_permohonan`, `kode_pengaduan`, `judul`, `user_id`, `isi`, `status`, `tanggapan`, `created_at`, `updated_at`) VALUES
('M-23062811491945', 'A-22062511372469', 'Lampu penerangan jalan di RT 05/02', 1, '<div>v</div>', 'Menunggu tanggapan', NULL, '2023-06-28 04:49:19', '2023-06-28 04:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','user') NOT NULL DEFAULT 'user',
  `status_verifikasi` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `nik`, `username`, `email`, `password`, `level`, `status_verifikasi`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '', 'admin', 'admin@admin.com', '$2y$10$7Wzir/TO7hlbIyKHR4G4XOLpqRCE4Sf5Qm8rJeYn3tBrp0CFLoq52', 'admin', 1, '2023-06-18 09:55:37', '2023-06-18 09:55:37'),
(2, 'User 1', '1937192739274', 'user1', 'user1@example.com', '$2y$10$7tVOHDJ389Ue1aAoPEVXyeamO3GiyiLrrCvLBn5/HLKV/WbI6maPu', 'user', 1, '2023-06-18 09:55:37', '2023-06-18 09:55:37'),
(3, 'User 2', '3303217654387', 'user2', 'user2@example.com', '$2y$10$LctTpAqNpUOSzIG.prHDQuwhuvS8r6tmow4Isrvlvt9J7Ourutt0O', 'user', 1, '2023-06-18 09:55:37', '2023-06-18 09:55:37'),
(13, 'Diky Setiawan', '1234567890987652', 'Diky05', 'diky09@gmail.com', '$2y$10$kPRs48ruF.YdhUTxEDuONeZBkEUV63Lgrtspe5yysTxkxmxgzLC3i', 'user', 1, '2023-08-11 11:49:35', '2023-08-11 11:49:35'),
(14, 'Resti Kemplang', '1234567890987651', 'Kemplang05', 'kemplang05@gmail.com', '$2y$10$PwkSwZ3bYDv4Q5Ymv4D2XeCF90pMwn8H4z/6bkQpcrQ2MNoMLYBhu', 'user', 1, '2023-08-15 13:02:04', '2023-08-15 13:41:50'),
(15, 'Ristianingsih', '1209386491573045', 'Tiyol05', 'tiyol05@gmail.com', '$2y$10$ZWQ1xQFri.avHRzkLQmXHOTaMUQfvxHnZWr.XGBGzslZd5fvrb09W', 'user', 0, '2023-08-16 05:29:59', '2023-08-16 05:29:59'),
(16, 'Henky Fajar Syafani', '3301130505010006', 'Henkyfs05', 'hengkyfajar48@gmail.com', '$2y$10$BstUeuScBflUNxE6tM3WHehBXtZr//coJbgD8ISd5w2JT4u9g4U9y', 'user', 0, '2023-08-25 08:38:58', '2023-08-25 08:38:58'),
(17, 'Slamet', '123', 'slamet', 'slamet@gmail.com', '$2y$10$zG9BJ65Pqeh.k2A5Fv0RXu1xR5ZuypCa.osmF4eAO.oT9k91.Hgd2', 'user', 1, '2023-08-29 05:26:00', '2023-08-29 05:26:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_slug_unique` (`slug`);

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
-- Indexes for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`no_pengaduan`),
  ADD KEY `pengaduan_user_id_foreign` (`user_id`),
  ADD KEY `pengaduan_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD PRIMARY KEY (`no_permohonan`),
  ADD KEY `permohonan_kode_pengaduan_foreign` (`kode_pengaduan`),
  ADD KEY `permohonan_user_id_foreign` (`user_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` bigint(50) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD CONSTRAINT `pengaduan_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `pengaduan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permohonan`
--
ALTER TABLE `permohonan`
  ADD CONSTRAINT `permohonan_kode_pengaduan_foreign` FOREIGN KEY (`kode_pengaduan`) REFERENCES `pengaduan` (`no_pengaduan`) ON DELETE CASCADE,
  ADD CONSTRAINT `permohonan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
