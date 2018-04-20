-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 20, 2018 at 11:16 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eskm_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `berita` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jadwals`
--

CREATE TABLE `jadwals` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `mulai` date NOT NULL,
  `selesai` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jawabans`
--

CREATE TABLE `jawabans` (
  `id` int(10) UNSIGNED NOT NULL,
  `responden_id` int(10) UNSIGNED NOT NULL,
  `kuesioner_id` int(10) UNSIGNED NOT NULL,
  `kinerja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kepentingan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jawabans`
--

INSERT INTO `jawabans` (`id`, `responden_id`, `kuesioner_id`, `kinerja`, `kepentingan`) VALUES
(1, 1, 1, '3', '4'),
(2, 1, 2, '2', '1'),
(3, 1, 3, '3', '2'),
(4, 2, 4, '3', '4'),
(5, 2, 5, '1', '2'),
(6, 2, 6, '4', '4'),
(7, 2, 7, '3', '3'),
(8, 2, 8, '1', '4'),
(9, 2, 9, '1', '3'),
(10, 2, 10, '3', '2'),
(11, 2, 11, '3', '3'),
(12, 2, 12, '4', '1'),
(13, 2, 13, '2', '2'),
(14, 3, 4, '1', '2'),
(15, 3, 5, '3', '3'),
(16, 3, 6, '3', '2'),
(17, 3, 7, '1', '4'),
(18, 3, 8, '3', '2'),
(19, 3, 9, '4', '3'),
(20, 3, 10, '3', '3'),
(21, 3, 11, '3', '3'),
(22, 3, 12, '4', '3'),
(23, 3, 13, '2', '2'),
(24, 4, 1, '1', '1'),
(25, 4, 2, '1', '1'),
(26, 4, 3, '1', '1'),
(27, 5, 1, '1', '1'),
(28, 5, 2, '1', '1'),
(29, 5, 3, '1', '1'),
(30, 6, 1, '4', '4'),
(31, 6, 2, '4', '3'),
(32, 6, 3, '3', '2'),
(33, 9, 1, '1', '1'),
(34, 9, 2, '1', '1'),
(35, 9, 3, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `jaw_upp_opds`
--

CREATE TABLE `jaw_upp_opds` (
  `id` int(10) UNSIGNED NOT NULL,
  `responden_id` int(10) UNSIGNED NOT NULL,
  `kuesjawopd_id` int(10) UNSIGNED NOT NULL,
  `kinerja` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kepentingan` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jaw_upp_opds`
--

INSERT INTO `jaw_upp_opds` (`id`, `responden_id`, `kuesjawopd_id`, `kinerja`, `kepentingan`) VALUES
(1, 8, 1, '1', '1'),
(2, 10, 1, '1', '1'),
(3, 11, 1, '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `kabupatens`
--

CREATE TABLE `kabupatens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kabupatens`
--

INSERT INTO `kabupatens` (`id`, `user_id`, `provinsi_id`, `nama`) VALUES
(1, 2, 1, 'Kabupaten Banjarnegara');

-- --------------------------------------------------------

--
-- Table structure for table `kuesioners`
--

CREATE TABLE `kuesioners` (
  `id` int(10) UNSIGNED NOT NULL,
  `upp_id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unsur_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kuesioners`
--

INSERT INTO `kuesioners` (`id`, `upp_id`, `pertanyaan`, `kategori`, `unsur_id`) VALUES
(1, 3, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang kemudahan syarat yang harus dipenuhi dalam pengurusan suatu jis pelayanan, baik persyaratan teknis maupun administratif pada unit layanan ini ?', 'text', 1),
(2, 3, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang prosedur atautata cara pelayanan yang dibakukan bagi petugas danmasyarakat, termasuk penanganan pengaduan pada unitpelayanan ini?', 'text', 2),
(3, 3, 'Aman saja kah ?', 'text', 2),
(4, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang kemudahansyarat yang harus dipenuhi dalam pengurusan suatu jenispelayanan, baik persyaratan teknis maupun administratifpada unit layanan ini?', 'text', 1),
(5, 1, 'ada ?', 'text', 1),
(6, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang prosedur atautata cara pelayanan yang dibakukan bagi petugas danmasyarakat, termasuk penanganan pengaduan pada unitpelayanan ini?', 'text', 2),
(7, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang jangka waktuyang diperlukan untuk menyelesaikan seluruh prosespelayanan dari setiap jenis pelayanan pada unit ini?', 'text', 3),
(8, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang programkegiatan pelayanan yang telah ditetapkan pada unit layananini?', 'text', 5),
(9, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang Kemampuandan Ketrampilan Petugas dalam memberikan pelayananpada unit pelayanan ini?', 'text', 6),
(10, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang sikap petugasdalam memberikan pelayanan pada unit layanan ini?', 'text', 7),
(11, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang penangananpengaduan dan tindak lanjutnya pada unit layanan ini?', 'text', 8),
(12, 1, 'Setuju ?', 'text', 8),
(13, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang sarana danprasarana atau peralatan pelatihan ketrampilan pada unitlayanan ini?', 'text', 9),
(14, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang kemudahansyarat yang harus dipenuhi dalam pengurusan suatu jenispelayanan, baik persyaratan teknis maupun administratifpada unit layanan ini?', 'text', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kues_upp_opds`
--

CREATE TABLE `kues_upp_opds` (
  `id` int(10) UNSIGNED NOT NULL,
  `uppopd_id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unsur_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kues_upp_opds`
--

INSERT INTO `kues_upp_opds` (`id`, `uppopd_id`, `pertanyaan`, `kategori`, `unsur_id`) VALUES
(1, 1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang kemudahansyarat yang harus dipenuhi dalam pengurusan suatu jenispelayanan, baik persyaratan teknis maupun administratifpada unit layanan ini?', 'text', 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(134, '2014_10_12_000000_create_users_table', 1),
(135, '2014_10_12_100000_create_password_resets_table', 1),
(136, '2018_03_04_030711_create_provinsis_table', 1),
(137, '2018_03_04_030713_create_kabupatens_table', 1),
(138, '2018_03_04_030753_create_opdprovinsis_table', 1),
(139, '2018_03_04_030755_create_opdkabupatens_table', 1),
(140, '2018_03_04_042035_create_upps_table', 1),
(141, '2018_04_02_061151_create_unsurs_table', 1),
(142, '2018_04_03_233326_create_jadwals_table', 1),
(143, '2018_04_03_233400_create_respondens_table', 1),
(144, '2018_04_03_233402_create_kuesioners_table', 1),
(145, '2018_04_03_233409_create_jawabans_table', 1),
(146, '2018_04_04_154140_create_beritas_table', 1),
(147, '2018_04_09_072122_create_template_kues_table', 1),
(148, '2018_04_20_020823_create_upp_opds_table', 2),
(149, '2018_04_20_034339_create_kues_upp_opds_table', 3),
(150, '2018_04_20_034433_create_jaw_upp_opds_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `opdkabupatens`
--

CREATE TABLE `opdkabupatens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `kabupaten_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `opdprovinsis`
--

CREATE TABLE `opdprovinsis` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `opdprovinsis`
--

INSERT INTO `opdprovinsis` (`id`, `user_id`, `provinsi_id`, `nama`) VALUES
(1, 7, 1, 'Opd aja');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `provinsis`
--

CREATE TABLE `provinsis` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `provinsis`
--

INSERT INTO `provinsis` (`id`, `user_id`, `nama`) VALUES
(1, 1, 'Provinsi Jawa Tengah');

-- --------------------------------------------------------

--
-- Table structure for table `respondens`
--

CREATE TABLE `respondens` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kabupaten_id` int(10) UNSIGNED NOT NULL,
  `umur` int(11) NOT NULL,
  `pendidikan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pekerjaan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `respondens`
--

INSERT INTO `respondens` (`id`, `nip`, `nama`, `kabupaten_id`, `umur`, `pendidikan`, `pekerjaan`, `created_at`, `updated_at`) VALUES
(1, '21213323434', 'ada aja', 1, 33, 'SD', 'swasta', NULL, NULL),
(2, '32321', 'mlf', 1, 33, 'SD', 'swasta', NULL, NULL),
(3, '32321', 'mlf', 1, 33, 'SD', 'swasta', NULL, NULL),
(4, '3333', '333', 1, 2, 'SD', 'swasta', NULL, NULL),
(5, '2131', 'ada', 1, 22, 'SD', 'swasta', NULL, NULL),
(6, '9218389132', 'adkhj', 1, 33, 'SD', 'swasta', NULL, NULL),
(7, 'wqwq', 'wqwq', 1, 22, 'SD', 'swasta', '2018-04-19 23:23:02', '2018-04-19 23:23:02'),
(8, 'wqwq', 'wqwq', 1, 22, 'SD', 'swasta', '2018-04-19 23:24:59', '2018-04-19 23:24:59'),
(9, '1111', 'qqqqq', 1, 22, 'SD', 'swasta', '2018-04-20 01:37:33', '2018-04-20 01:37:33'),
(10, '54321', '12345', 1, 22, 'SD', 'swasta', '2018-04-20 01:44:35', '2018-04-20 01:44:35'),
(11, '54321', '12345', 1, 22, 'SD', 'swasta', '2018-04-20 01:45:35', '2018-04-20 01:45:35');

-- --------------------------------------------------------

--
-- Table structure for table `template_kues`
--

CREATE TABLE `template_kues` (
  `id` int(10) UNSIGNED NOT NULL,
  `pertanyaan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unsur_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `template_kues`
--

INSERT INTO `template_kues` (`id`, `pertanyaan`, `unsur_id`) VALUES
(1, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang kemudahan\r\nsyarat yang harus dipenuhi dalam pengurusan suatu jenis\r\npelayanan, baik persyaratan teknis maupun administratif\r\npada unit layanan ini?', 1),
(2, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang prosedur atau\r\ntata cara pelayanan yang dibakukan bagi petugas dan\r\nmasyarakat, termasuk penanganan pengaduan pada unit\r\npelayanan ini?', 2),
(3, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang jangka waktu\r\nyang diperlukan untuk menyelesaikan seluruh proses\r\npelayanan dari setiap jenis pelayanan pada unit ini?', 3),
(4, 'Biaya pelayanan?', 4),
(5, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang program\r\nkegiatan pelayanan yang telah ditetapkan pada unit layanan\r\nini?', 5),
(6, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang Kemampuan\r\ndan Ketrampilan Petugas dalam memberikan pelayanan\r\npada unit pelayanan ini?', 6),
(7, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang sikap petugas\r\ndalam memberikan pelayanan pada unit layanan ini?', 7),
(8, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang penanganan\r\npengaduan dan tindak lanjutnya pada unit layanan ini?', 8),
(9, 'Bagaimana pendapat Bpk/Ibu/Sdr tentang sarana dan\r\nprasarana atau peralatan pelatihan ketrampilan pada unit\r\nlayanan ini?', 9);

-- --------------------------------------------------------

--
-- Table structure for table `unsurs`
--

CREATE TABLE `unsurs` (
  `id` int(10) UNSIGNED NOT NULL,
  `unsur` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `unsurs`
--

INSERT INTO `unsurs` (`id`, `unsur`) VALUES
(1, 'Persyaratan'),
(2, 'Prosedur'),
(3, 'Waktu pelayanan'),
(4, 'Biaya/Tarif'),
(5, 'Produk Spesifikasi Jenis Pelayanan'),
(6, 'Kompetensi Pelaksana'),
(7, 'Perilaku Pelaksana'),
(8, 'Penanganan Pengaduan, Saran dan Masukan'),
(9, 'Sarana dan Prasarana'),
(99, 'Lain-Lain');

-- --------------------------------------------------------

--
-- Table structure for table `upps`
--

CREATE TABLE `upps` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provinsi_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `upps`
--

INSERT INTO `upps` (`id`, `user_id`, `provinsi_id`, `nama`) VALUES
(1, 3, 1, 'Iptek'),
(2, 4, 1, 'Bappeda'),
(3, 6, 1, 'Contoh aja');

-- --------------------------------------------------------

--
-- Table structure for table `upp_opds`
--

CREATE TABLE `upp_opds` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `opdprovinsi_id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `upp_opds`
--

INSERT INTO `upp_opds` (`id`, `user_id`, `opdprovinsi_id`, `nama`) VALUES
(1, 10, 1, 'opa');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kategori` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'provinsi',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `kategori`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'provjateng', 'prov@prov.com', '$2y$10$00cz7kw/aCmYuO7MOd9QtuUhBxXVzmphtHWHPIvSWUj38NjcYABkK', 'provinsi', 'QMKthfT0SxqmiL6TogXMCp2YuxTJzn8k4KA1q1PnLOKgHwBeIKreRezI7vUW', '2018-04-09 01:06:56', '2018-04-20 00:01:30'),
(2, 'banjarnegara', 'b@b.com', '$2y$10$gzdnBepH6cYwaHBM8mHvyObLfahEA4O3PHJ9L22sJvMUksZFQMBGy', 'kabupaten', NULL, '2018-04-09 03:58:32', '2018-04-09 03:58:32'),
(3, 'Iptek', 'i@i.com', '$2y$10$YUtznFVCmTl4PWId2yzEmuoiZN9vWXhxOl9Uc.zEOm/UjOkYzKkg2', 'upp', 'rStuF3DT7b6Y04qzVwEDmarpmHSYNvJp1lAZ2W53ccpkWssWiuLTufhzye2n', '2018-04-16 00:28:43', '2018-04-17 21:08:46'),
(4, 'b', 'bc@bc.com', '$2y$10$NUJ1Nz92KjCIiBn9ry0z3O.DsO3nOzHAxXQvETJPccDklaKh6t1y.', 'upp', 'b1wTlh2PPkm9pYwkO8IMcU0TOGcNVKiCo0OgcDI2zGIlfjmNzb2qItz84Qj5', '2018-04-16 00:29:36', '2018-04-16 00:29:39'),
(6, 'c', 'cc@cc.com', '$2y$10$7i8oeKg3H7WFnoT4G59H3uGj8mBy.8HpkMJ8P3dJT/8uQMnTvwMum', 'upp', '4BFTuh6Fbiy4PGVNLCxcwxdCZ1huT6qWBTyLv4Xy01kD4iU0aV3IZD8yxJGv', '2018-04-16 00:34:52', '2018-04-20 01:41:49'),
(7, 'opdnih', 'opd@a.com', '$2y$10$iluIhz07i.yJfHRrDdV6IuetPxVcsNxOpY2WHIRsp3QniYuar17L2', 'opd', 'Aid4KpWNQ6oHkysvdgSwT6APrF2aAiC6KQkXPwOj1t9CPf3UMi7TYv3jgJrC', '2018-04-19 19:47:01', '2018-04-20 00:28:46'),
(10, 'op', 'od@a.com', '$2y$10$3hdIQrSxR40nA42kExrSUepR9w8QPKejAxYKFtdOcmn/Dh.6n/7SO', 'upp', 'im85LBThImBKD5BXpxCrXGWW9tDuFHIJOkVps1aSQt8Gv12ycGA2hT1nQxpM', '2018-04-19 20:22:14', '2018-04-20 01:03:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jadwals_user_id_foreign` (`user_id`);

--
-- Indexes for table `jawabans`
--
ALTER TABLE `jawabans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jawabans_responden_id_foreign` (`responden_id`),
  ADD KEY `jawabans_kuesioner_id_foreign` (`kuesioner_id`);

--
-- Indexes for table `jaw_upp_opds`
--
ALTER TABLE `jaw_upp_opds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jaw_upp_opds_responden_id_foreign` (`responden_id`),
  ADD KEY `jaw_upp_opds_kuesjawopd_id_foreign` (`kuesjawopd_id`);

--
-- Indexes for table `kabupatens`
--
ALTER TABLE `kabupatens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kabupatens_user_id_foreign` (`user_id`),
  ADD KEY `kabupatens_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `kuesioners`
--
ALTER TABLE `kuesioners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kuesioners_upp_id_foreign` (`upp_id`),
  ADD KEY `kuesioners_unsur_id_foreign` (`unsur_id`);

--
-- Indexes for table `kues_upp_opds`
--
ALTER TABLE `kues_upp_opds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kues_upp_opds_uppopd_id_foreign` (`uppopd_id`),
  ADD KEY `kues_upp_opds_unsur_id_foreign` (`unsur_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `opdkabupatens`
--
ALTER TABLE `opdkabupatens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opdkabupatens_user_id_foreign` (`user_id`),
  ADD KEY `opdkabupatens_kabupaten_id_foreign` (`kabupaten_id`);

--
-- Indexes for table `opdprovinsis`
--
ALTER TABLE `opdprovinsis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `opdprovinsis_user_id_foreign` (`user_id`),
  ADD KEY `opdprovinsis_provinsi_id_foreign` (`provinsi_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `provinsis`
--
ALTER TABLE `provinsis`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provinsis_user_id_foreign` (`user_id`);

--
-- Indexes for table `respondens`
--
ALTER TABLE `respondens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kabupaten_id` (`kabupaten_id`);

--
-- Indexes for table `template_kues`
--
ALTER TABLE `template_kues`
  ADD PRIMARY KEY (`id`),
  ADD KEY `template_kues_unsur_id_foreign` (`unsur_id`);

--
-- Indexes for table `unsurs`
--
ALTER TABLE `unsurs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upps`
--
ALTER TABLE `upps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upps_user_id_foreign` (`user_id`),
  ADD KEY `provinsi_id` (`provinsi_id`);

--
-- Indexes for table `upp_opds`
--
ALTER TABLE `upp_opds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upp_opds_user_id_foreign` (`user_id`),
  ADD KEY `upp_opds_opdprovinsi_id_foreign` (`opdprovinsi_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jadwals`
--
ALTER TABLE `jadwals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jawabans`
--
ALTER TABLE `jawabans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jaw_upp_opds`
--
ALTER TABLE `jaw_upp_opds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kabupatens`
--
ALTER TABLE `kabupatens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kuesioners`
--
ALTER TABLE `kuesioners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `kues_upp_opds`
--
ALTER TABLE `kues_upp_opds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `opdkabupatens`
--
ALTER TABLE `opdkabupatens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `opdprovinsis`
--
ALTER TABLE `opdprovinsis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `provinsis`
--
ALTER TABLE `provinsis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `respondens`
--
ALTER TABLE `respondens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `template_kues`
--
ALTER TABLE `template_kues`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `unsurs`
--
ALTER TABLE `unsurs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `upps`
--
ALTER TABLE `upps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upp_opds`
--
ALTER TABLE `upp_opds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwals`
--
ALTER TABLE `jadwals`
  ADD CONSTRAINT `jadwals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jawabans`
--
ALTER TABLE `jawabans`
  ADD CONSTRAINT `jawabans_kuesioner_id_foreign` FOREIGN KEY (`kuesioner_id`) REFERENCES `kuesioners` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jawabans_responden_id_foreign` FOREIGN KEY (`responden_id`) REFERENCES `respondens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `jaw_upp_opds`
--
ALTER TABLE `jaw_upp_opds`
  ADD CONSTRAINT `jaw_upp_opds_kuesjawopd_id_foreign` FOREIGN KEY (`kuesjawopd_id`) REFERENCES `kues_upp_opds` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `jaw_upp_opds_responden_id_foreign` FOREIGN KEY (`responden_id`) REFERENCES `respondens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kabupatens`
--
ALTER TABLE `kabupatens`
  ADD CONSTRAINT `kabupatens_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kabupatens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kuesioners`
--
ALTER TABLE `kuesioners`
  ADD CONSTRAINT `kuesioners_unsur_id_foreign` FOREIGN KEY (`unsur_id`) REFERENCES `unsurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kuesioners_upp_id_foreign` FOREIGN KEY (`upp_id`) REFERENCES `upps` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `kues_upp_opds`
--
ALTER TABLE `kues_upp_opds`
  ADD CONSTRAINT `kues_upp_opds_unsur_id_foreign` FOREIGN KEY (`unsur_id`) REFERENCES `unsurs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kues_upp_opds_uppopd_id_foreign` FOREIGN KEY (`uppopd_id`) REFERENCES `upp_opds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opdkabupatens`
--
ALTER TABLE `opdkabupatens`
  ADD CONSTRAINT `opdkabupatens_kabupaten_id_foreign` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupatens` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `opdkabupatens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `opdprovinsis`
--
ALTER TABLE `opdprovinsis`
  ADD CONSTRAINT `opdprovinsis_provinsi_id_foreign` FOREIGN KEY (`provinsi_id`) REFERENCES `provinsis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `opdprovinsis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `provinsis`
--
ALTER TABLE `provinsis`
  ADD CONSTRAINT `provinsis_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `respondens`
--
ALTER TABLE `respondens`
  ADD CONSTRAINT `respondens_ibfk_1` FOREIGN KEY (`kabupaten_id`) REFERENCES `kabupatens` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `template_kues`
--
ALTER TABLE `template_kues`
  ADD CONSTRAINT `template_kues_unsur_id_foreign` FOREIGN KEY (`unsur_id`) REFERENCES `unsurs` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upps`
--
ALTER TABLE `upps`
  ADD CONSTRAINT `upps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upp_opds`
--
ALTER TABLE `upp_opds`
  ADD CONSTRAINT `upp_opds_opdprovinsi_id_foreign` FOREIGN KEY (`opdprovinsi_id`) REFERENCES `opdprovinsis` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upp_opds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
