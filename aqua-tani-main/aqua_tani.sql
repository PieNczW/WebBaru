-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 14, 2024 at 04:41 PM
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
-- Database: `aqua_tani`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `applicant_id` bigint(20) UNSIGNED NOT NULL,
  `application_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'processed',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `job_id`, `applicant_id`, `application_status`, `created_at`, `updated_at`) VALUES
(2, 3, 2, 'accepted', '2024-01-14 05:09:48', '2024-01-14 07:00:01');

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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `responsibilities` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `experience` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefits` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vacancy` int(11) NOT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `gender` enum('laki-laki','perempuan','tidak ditentukan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category` enum('pertanian','perikanan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_owner_id` bigint(20) UNSIGNED NOT NULL,
  `job_status` enum('open','closed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` enum('full-time','part-time') COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_description`, `responsibilities`, `experience`, `benefits`, `vacancy`, `salary`, `location`, `deadline`, `gender`, `job_category`, `job_owner_id`, `job_status`, `job_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'jasa angkut padi', '<p>&nbsp;Perusahaan kami, yang bergerak di bidang jasa angkut padi, tengah mencari individu yang berkomitmen dan berpengalaman untuk bergabung sebagai Sopir Angkut Padi. Pekerjaan ini memberikan kesempatan kepada laki-laki yang memiliki kemampuan mengemudi yang handal serta keahlian dalam menangani proses pengangkutan hasil panen padi.</p>', '<p>Mengemudikan kendaraan angkut dengan aman dan efisien untuk mengantarkan hasil panen padi dari lokasi pertanian ke destinasi yang ditentukan.</p>', '<ul><li>&nbsp;- lulusan sma</li></ul>', '<p>&nbsp;- fleksibiltas jam kerja</p>', 30, 'Rp.3.000.000/bulan', 'sumatera barat', '2024-01-26', 'laki-laki', 'pertanian', 1, 'open', 'full-time', 'padi.jpg', '2024-01-13 06:30:28', '2024-01-14 06:28:28'),
(3, 'Perikanan', '<p>Pekerjaan sebagai nelayan membutuhkan dedikasi terhadap pekerjaan fisik yang keras, keterampilan teknis dalam penangkapan ikan, dan kesadaran terhadap keberlanjutan sumber daya laut. Nelayan yang sukses tidak hanya membawa pulang hasil tangkapan yang melimpah tetapi juga berkontribusi pada pelestarian ekosistem laut dan kesejahteraan komunitas pesisir.</p>', '<p><strong>Persiapan dan Pengecekan Alat Tangkap</strong></p><p><strong>Navigasi dan Pelayaran</strong></p><p>&nbsp;</p>', '<p>min 1 tahun&nbsp;</p>', '<p>fleksibilitas&nbsp;</p>', 19, 'Rp2.500.000', 'sulawesi selatan', '2024-02-13', 'laki-laki', 'perikanan', 1, 'open', 'full-time', 'perikanan.jpg', '2024-01-14 05:04:58', '2024-01-14 05:04:58');

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
(55, '2014_10_12_000000_create_users_table', 1),
(56, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(57, '2019_08_19_000000_create_failed_jobs_table', 1),
(58, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(59, '2023_06_21_164800_create_jobs_table', 1),
(60, '2023_06_21_165423_create_applications_table', 1),
(61, '2023_06_21_165826_create_skills_table', 1),
(62, '2023_06_21_170012_create_user_skills_table', 1),
(63, '2023_06_26_063622_create_notifications_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `notification_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notification_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Sudah Dibaca','Belum Dibaca') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Belum Dibaca',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `receiver_id`, `notification_title`, `notification_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Lamaran oleh farig', 'Satu lamaran baru pada lowongan jasa angkut padi diterima. Lamaran ditandai sebagai sedang diproses. Silakan kelola lamaran Anda secara berkala.', 'Sudah Dibaca', '2024-01-13 11:37:05', '2024-01-14 04:29:29'),
(2, 1, 'Lamaran oleh farig', 'Satu lamaran baru pada lowongan Perikanan diterima. Lamaran ditandai sebagai sedang diproses. Silakan kelola lamaran Anda secara berkala.', 'Belum Dibaca', '2024-01-14 05:09:48', '2024-01-14 05:09:48'),
(3, 2, 'Selamat! Lamaranmu diterima.', 'Lamaranmu pada lowonganPerikanan yang disediakan oleh mitra Farrell Aydin Mhasood sudah diterima. Periksa email dan Whatsapp secara berkala untuk menerima informasi lebih lanjut.', 'Belum Dibaca', '2024-01-14 05:12:01', '2024-01-14 05:12:01'),
(4, 2, 'Yah :( Lamaranmu ditolak.', 'Lamaranmu pada lowongan Perikanan yang disediakan oleh mitra Farrell Aydin Mhasood ditolak. Jangan putus asa, ya! Masih ada lowongan lain yang bisa kamu coba. Semangat!', 'Belum Dibaca', '2024-01-14 06:59:50', '2024-01-14 06:59:50'),
(5, 2, 'Selamat! Lamaranmu diterima.', 'Lamaranmu pada lowonganPerikanan yang disediakan oleh mitra Farrell Aydin Mhasood sudah diterima. Periksa email dan Whatsapp secara berkala untuk menerima informasi lebih lanjut.', 'Belum Dibaca', '2024-01-14 07:00:01', '2024-01-14 07:00:01');

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

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `skill_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `created_at`, `updated_at`) VALUES
(1, 'padi man', '2024-01-14 04:52:31', '2024-01-14 04:52:31'),
(2, 'perikanan', '2024-01-14 07:18:24', '2024-01-14 07:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 3,
  `pfp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default-pfp.jpg',
  `email_verified_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `address`, `phone_number`, `role`, `pfp`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Farrell Aydin Mhasood', 'farrellaydin04@gmail.com', 'Villa Anggrek blok J.No 1 air dingin', '+6281261654176', 2, 'person_5.jpg', '2024-01-13 13:21:58', '$2y$10$yAR/xI5312cfxhDqpxKpAe5SrYytZ07awatrqD0y1lxAOIUFzQGI6', NULL, '2024-01-13 06:21:58', '2024-01-14 07:27:33'),
(2, 'farig', 'farig@gmail.com', 'dimana', '081234572312', 3, 'sq_img_10.jpg', '2024-01-13 18:36:31', '$2y$10$9/e.QFFZBmupSfveT5r3meHTqhzEcuXvgi5GWPd6eznutT4V8ffh2', NULL, '2024-01-13 11:36:31', '2024-01-14 07:26:23'),
(4, 'irfan', 'irfan@gmail.com', NULL, NULL, 3, 'default-pfp.jpg', '2024-01-14 13:03:31', '$2y$10$WcRxsaKQ73B5VdjJEcc9geXDzOUY1hm/e09MUefpVKbvGn7ZStJAK', NULL, '2024-01-14 06:03:31', '2024-01-14 06:03:31'),
(5, 'pertanian', 'tani@gmail.com', NULL, NULL, 2, 'default-pfp.jpg', '2024-01-14 13:04:07', '$2y$10$pUkMVfqa8Hz8fMtbCiNRLugW.Y2E.1MCh6.IqE7VKkazK/9yPZuxq', NULL, '2024-01-14 06:04:07', '2024-01-14 06:04:07');

-- --------------------------------------------------------

--
-- Table structure for table `user_skills`
--

CREATE TABLE `user_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `skill_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skills`
--

INSERT INTO `user_skills` (`id`, `user_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2024-01-14 04:52:31', '2024-01-14 04:52:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `applications_job_id_foreign` (`job_id`),
  ADD KEY `applications_applicant_id_foreign` (`applicant_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_job_owner_id_foreign` (`job_owner_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_receiver_id_foreign` (`receiver_id`);

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
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_number_unique` (`phone_number`);

--
-- Indexes for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_skills_user_id_foreign` (`user_id`),
  ADD KEY `user_skills_skill_id_foreign` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_skills`
--
ALTER TABLE `user_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_applicant_id_foreign` FOREIGN KEY (`applicant_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `applications_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`);

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `jobs_job_owner_id_foreign` FOREIGN KEY (`job_owner_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_skills`
--
ALTER TABLE `user_skills`
  ADD CONSTRAINT `user_skills_skill_id_foreign` FOREIGN KEY (`skill_id`) REFERENCES `skills` (`id`),
  ADD CONSTRAINT `user_skills_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
