-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Okt 2024 pada 11.18
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fotografi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_activation_attempts`
--

CREATE TABLE `auth_activation_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups`
--

CREATE TABLE `auth_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_groups`
--

INSERT INTO `auth_groups` (`id`, `name`, `description`) VALUES
(1, 'Admin', 'User-Admin'),
(2, 'Mitra', 'User-Mitra'),
(3, 'Customer', 'User-Customer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_permissions`
--

CREATE TABLE `auth_groups_permissions` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_groups_users`
--

CREATE TABLE `auth_groups_users` (
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_groups_users`
--

INSERT INTO `auth_groups_users` (`group_id`, `user_id`) VALUES
(1, 3),
(2, 2),
(2, 5),
(2, 7),
(2, 9),
(3, 4),
(3, 6),
(3, 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_logins`
--

CREATE TABLE `auth_logins` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `date` datetime NOT NULL,
  `success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `auth_logins`
--

INSERT INTO `auth_logins` (`id`, `ip_address`, `email`, `user_id`, `date`, `success`) VALUES
(1, '::1', 'mitra1@gmail.com', 2, '2024-04-05 23:29:49', 1),
(2, '::1', 'mitra1@gmail.com', NULL, '2024-04-05 23:32:04', 0),
(3, '::1', 'mitra1@gmail.com', 2, '2024-04-05 23:32:19', 1),
(4, '::1', 'mitra1@gmail.com', 2, '2024-04-05 23:49:12', 1),
(5, '::1', 'mitra1@gmail.com', 2, '2024-04-06 04:13:00', 1),
(6, '::1', 'mitra1@gmail.com', 2, '2024-04-06 07:31:44', 1),
(7, '::1', 'mitra1@gmail.com', 2, '2024-04-06 21:49:57', 1),
(8, '::1', 'mitra1@gmail.com', 2, '2024-04-06 21:52:01', 1),
(9, '::1', 'mitra1@gmail.com', 2, '2024-04-07 01:23:02', 1),
(10, '::1', 'mitra1@gmail.com', 2, '2024-04-07 01:24:53', 1),
(11, '::1', 'mitra1@gmail.com', 2, '2024-04-07 01:25:18', 1),
(12, '::1', 'mitra1@gmail.com', 2, '2024-04-07 03:13:19', 1),
(13, '::1', 'mitra1@gmail.com', 2, '2024-04-07 03:13:59', 1),
(14, '::1', 'admin@admin.com', 3, '2024-04-07 03:28:32', 1),
(15, '::1', 'admin@admin.com', NULL, '2024-04-07 03:32:13', 0),
(16, '::1', 'admin@admin.com', 3, '2024-04-07 03:32:19', 1),
(17, '::1', 'mitra1@gmail.com', 2, '2024-04-07 03:49:22', 1),
(18, '::1', 'admin@admin.com', 3, '2024-04-07 03:50:54', 1),
(19, '::1', 'admin@admin.com', 3, '2024-04-08 02:23:16', 1),
(20, '::1', 'admin@admin.com', 3, '2024-04-08 02:37:27', 1),
(21, '::1', 'pembeli1@gmail.com', 4, '2024-04-08 02:40:31', 1),
(22, '::1', 'admin@admin.com', 3, '2024-04-08 02:41:14', 1),
(23, '::1', 'admin@admin.com', 3, '2024-04-08 03:09:19', 1),
(24, '::1', 'mitra1@gmail.com', 2, '2024-04-08 03:21:52', 1),
(25, '::1', 'pembeli1@gmail.com', 4, '2024-04-08 03:25:36', 1),
(26, '::1', 'penjual1@gmail.com', NULL, '2024-04-23 11:27:54', 0),
(27, '::1', 'mitra1@gmail.com', 2, '2024-04-23 11:28:59', 1),
(28, '::1', 'admin@admin.com', 3, '2024-04-23 11:31:18', 1),
(29, '::1', 'mitra1@gmail.com', 2, '2024-04-23 11:32:00', 1),
(30, '::1', 'mitra1@gmail.com', 2, '2024-04-23 11:36:09', 1),
(31, '::1', 'mitra1@gmail.com', 2, '2024-04-23 11:45:13', 1),
(32, '::1', 'mitra1@gmail.com', 2, '2024-04-27 12:56:11', 1),
(33, '::1', 'pembeli1@gmail.com', 4, '2024-04-27 12:57:31', 1),
(34, '::1', 'pembeli1@gmail.com', 4, '2024-04-27 13:45:19', 1),
(35, '::1', 'mitra1@gmail.com', 2, '2024-04-28 00:09:58', 1),
(36, '::1', 'pembeli1@gmail.com', 4, '2024-04-28 00:10:15', 1),
(37, '::1', 'mitra2@gmail.com', 5, '2024-04-28 01:56:20', 1),
(38, '::1', 'mitra1@gmail.com', 2, '2024-04-28 02:04:18', 1),
(39, '::1', 'mitra1@gmail.com', 2, '2024-04-28 07:46:53', 1),
(40, '::1', 'pembeli1@gmail.com', 4, '2024-04-28 07:47:28', 1),
(41, '::1', 'pembeli1@gmail.com', 4, '2024-04-28 10:46:30', 1),
(42, '::1', 'mitra1@gmail.com', 2, '2024-04-28 11:20:56', 1),
(43, '::1', 'mitra2@gmail.com', 5, '2024-04-28 11:39:21', 1),
(44, '::1', 'mitra1@gmail.com', 2, '2024-04-28 11:42:50', 1),
(45, '::1', 'pembeli1@gmail.com', 4, '2024-04-28 22:43:05', 1),
(46, '::1', 'mitra1@gmail.com', 2, '2024-04-28 23:00:09', 1),
(47, '::1', 'pembeli1@gmail.com', 4, '2024-04-29 03:31:43', 1),
(48, '::1', 'mitra1@gmail.com', 2, '2024-04-29 03:32:13', 1),
(49, '::1', 'pembeli1@gmail.com', 4, '2024-04-29 07:19:59', 1),
(50, '::1', 'mitra1@gmail.com', 2, '2024-04-29 07:40:59', 1),
(51, '::1', 'admin@admin.com', 3, '2024-04-29 07:41:25', 1),
(52, '::1', 'admin@admin.com', 3, '2024-04-30 22:28:12', 1),
(53, '::1', 'pembeli1@gmail.com', 4, '2024-04-30 22:28:22', 1),
(54, '::1', 'mitra1@gmail.com', 2, '2024-05-06 06:59:07', 1),
(55, '::1', 'pembeli1@gmail.com', 4, '2024-05-06 07:00:22', 1),
(56, '::1', 'pembeli1@gmail.com', 4, '2024-05-24 01:16:15', 1),
(57, '::1', 'admin@admin.com', 3, '2024-05-24 01:18:13', 1),
(58, '::1', 'pembeli1@gmail.com', NULL, '2024-05-24 01:20:39', 0),
(59, '::1', 'pembeli1@gmail.com', 4, '2024-05-24 01:20:47', 1),
(60, '::1', 'mitra1@gmail.com', 2, '2024-06-03 23:28:31', 1),
(61, '::1', 'pembeli1@gmail.com', 4, '2024-06-03 23:29:51', 1),
(62, '::1', 'mitra1@gmail.com', 2, '2024-06-04 13:40:46', 1),
(63, '::1', 'mitra2@gmail.com', 5, '2024-06-04 14:58:47', 1),
(64, '::1', 'mitra1@gmail.com', NULL, '2024-06-04 14:59:36', 0),
(65, '::1', 'mitra1@gmail.com', 2, '2024-06-04 14:59:44', 1),
(66, '::1', 'admin@admin.com', 3, '2024-06-04 15:00:39', 1),
(67, '::1', 'mitra1@gmail.com', 2, '2024-06-05 23:27:15', 1),
(68, '::1', 'pembeli1@gmail.com', 4, '2024-06-05 23:27:59', 1),
(69, '::1', 'pembeli1@gmail.com', 4, '2024-06-06 23:39:10', 1),
(70, '::1', 'pembeli2@gmail.com', 6, '2024-06-07 00:02:20', 1),
(71, '::1', 'pembeli1@gmail.com', 4, '2024-06-07 00:03:54', 1),
(72, '::1', 'pembeli2@gmail.com', 6, '2024-06-07 00:04:29', 1),
(73, '::1', 'mitra1@gmail.com', 2, '2024-06-08 11:10:21', 1),
(74, '::1', 'pembeli1@gmail.com', 4, '2024-06-08 11:52:02', 1),
(75, '::1', 'mitra3@gmail.com', 7, '2024-06-08 13:00:51', 1),
(76, '::1', 'admin@admin.com', 3, '2024-06-08 13:02:48', 1),
(77, '::1', 'mitra1@gmail.com', 2, '2024-06-08 23:28:57', 1),
(78, '::1', 'admin@admin.com', 3, '2024-06-08 23:30:43', 1),
(79, '::1', 'admin@admin.com', 3, '2024-06-09 12:36:06', 1),
(80, '::1', 'admin@admin.com', 3, '2024-06-10 09:54:37', 1),
(81, '::1', 'mitra1@gmail.com', 2, '2024-06-10 10:14:18', 1),
(82, '::1', 'admin@admin.com', NULL, '2024-06-11 03:24:21', 0),
(83, '::1', 'admin@admin.com', 3, '2024-06-11 03:24:36', 1),
(84, '::1', 'mitra1@gmail.com', 2, '2024-06-11 03:34:32', 1),
(85, '::1', 'admin@admin.com', 3, '2024-06-11 13:25:59', 1),
(86, '::1', 'mitra1@gmail.com', 2, '2024-06-11 13:36:19', 1),
(87, '::1', 'admin@admin.com', 3, '2024-06-11 22:08:53', 1),
(88, '::1', 'mitra1@gmail.com', 2, '2024-06-11 22:13:20', 1),
(89, '::1', 'mitra1@gmail.com', 2, '2024-06-23 01:07:39', 1),
(90, '::1', 'mitra1@gmail.com', 2, '2024-06-23 01:11:08', 1),
(91, '::1', 'mitra1@gmail.com', 2, '2024-06-23 01:11:58', 1),
(92, '::1', 'pembeli1@gmail.com', 4, '2024-06-23 01:18:36', 1),
(93, '::1', 'pembeli1@gmail.com', 4, '2024-06-23 01:20:26', 1),
(94, '::1', 'mitra2@gmail.com', 5, '2024-06-23 01:20:47', 1),
(95, '::1', 'mitra1@gmail.com', 2, '2024-06-23 01:21:51', 1),
(96, '::1', 'mitra1@gmail.com', 2, '2024-06-26 02:21:33', 1),
(97, '::1', 'pembeli1@gmail.com', 4, '2024-06-26 02:56:38', 1),
(98, '::1', 'mitra1@gmail.com', 2, '2024-06-26 03:00:47', 1),
(99, '::1', 'pembeli1@gmail.com', 4, '2024-06-26 04:54:58', 1),
(100, '::1', 'pembeli1@gmail.com', 4, '2024-06-29 17:31:05', 1),
(101, '::1', 'mitra1@gmail.com', 2, '2024-06-29 17:37:16', 1),
(102, '::1', 'mitra1@gmail.com', 2, '2024-07-22 13:08:04', 1),
(103, '::1', 'mitra1@gmail.com', 2, '2024-07-22 13:17:35', 1),
(104, '::1', 'mitra1@gmail.com', 2, '2024-07-22 13:28:47', 1),
(105, '::1', 'admin@admin.com', 3, '2024-07-22 15:35:12', 1),
(106, '::1', 'pembeli1@gmail.com', 4, '2024-07-22 17:50:55', 1),
(107, '::1', 'pembeliUtama@gmail.com', 8, '2024-10-31 09:51:43', 1),
(108, '::1', 'fahriakarima@gmail.com', 9, '2024-10-31 10:02:16', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_permissions`
--

CREATE TABLE `auth_permissions` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_reset_attempts`
--

CREATE TABLE `auth_reset_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_tokens`
--

CREATE TABLE `auth_tokens` (
  `id` int(11) UNSIGNED NOT NULL,
  `selector` varchar(255) NOT NULL,
  `hashedValidator` varchar(255) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `expires` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `auth_users_permissions`
--

CREATE TABLE `auth_users_permissions` (
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0,
  `permission_id` int(11) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(2, '2017-11-20-223112', 'Myth\\Auth\\Database\\Migrations\\CreateAuthTables', 'default', 'Myth\\Auth', 1712356777, 1),
(5, '2024-04-06-001130', 'App\\Database\\Migrations\\CreateServicesTable', 'default', 'App', 1712362991, 2),
(6, '2024-04-06-230621', 'App\\Database\\Migrations\\CreateGalleryTable', 'default', 'App', 1712444981, 3),
(7, '2024-04-28-042427', 'App\\Database\\Migrations\\CreateOrdersTable', 'default', 'App', 1714278770, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `buyer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_comments`
--

INSERT INTO `tbl_comments` (`buyer_id`, `order_id`, `service_id`, `rating`, `comment`, `created_at`) VALUES
(4, 6, 3, 5, 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. A odio cupiditate saepe totam delectus autem!', '2024-06-23 04:41:19');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gallery_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`gallery_id`, `user_id`, `title`, `photo`) VALUES
(1, 2, 'Panorama', '1712446473_738804ba9c5e51feb9fb.jpg'),
(2, 2, 'City Light', '1712446523_16232386e30b2e7376cc.jpg'),
(4, 2, 'OOTD', '1712448340_a6ed053e301749f8cb51.jpg'),
(5, 2, 'Chicago Train', '1719369228_769c57e1cf55cd760bb7.jpg'),
(6, 2, 'Supra Bapak', '1719369377_77df35e6ef286ae8a1d4.jpg'),
(7, 2, 'Klenteng SAM POO KONG', '1719369516_8121a758099586ed0ba6.jpg'),
(8, 9, 'Kuil', '1730369737_90e92d3e906415e7d7bd.jpg'),
(9, 9, 'Apartment', '1730369760_3b6573782f5043dbf50b.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_orders`
--

CREATE TABLE `tbl_orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `buyer_id` int(11) UNSIGNED NOT NULL,
  `mitra_id` int(11) UNSIGNED NOT NULL,
  `service_id` int(11) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `message` text NOT NULL,
  `confirm` tinyint(1) NOT NULL DEFAULT 0,
  `status_order` enum('process','approved','finished','rejected','cancelled') NOT NULL DEFAULT 'process',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tbl_orders`
--

INSERT INTO `tbl_orders` (`order_id`, `buyer_id`, `mitra_id`, `service_id`, `date`, `message`, `confirm`, `status_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 4, 2, 3, '2024-05-16', 'ffgfhgbjk', 0, 'finished', '2024-05-06 07:01:38', '2024-05-06 07:02:14', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_services`
--

CREATE TABLE `tbl_services` (
  `service_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `name_service` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `price` decimal(20,2) DEFAULT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `tbl_services`
--

INSERT INTO `tbl_services` (`service_id`, `user_id`, `name_service`, `description`, `price`, `photo`) VALUES
(3, 2, 'Potret Keluarga', 'Sesi foto keluarga di studio atau luar ruangan', 500000.00, '1712388669_9177f9aa5cd39282df47.jpg'),
(7, 9, 'Foto Prewedding', 'Layanan foto prewedding kami dirancang untuk mengabadikan kisah cinta Anda dengan keindahan dan keunikan yang tak terlupakan. Dengan konsep kreatif, lokasi pilihan, dan kualitas fotografi profesional, kami akan membantu menciptakan potret yang sempurna sebagai awal dari perjalanan hidup Anda bersama. Percayakan momen istimewa ini kepada kami, dan wujudkan kenangan prewedding yang abadi dan penuh makna.', 700000.00, '1730369905_6f729388fd0a304f0b79.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `nama` varchar(60) DEFAULT NULL,
  `no_tlp` varchar(14) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `foto` varchar(100) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `reset_hash` varchar(255) DEFAULT NULL,
  `reset_at` datetime DEFAULT NULL,
  `reset_expires` datetime DEFAULT NULL,
  `activate_hash` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_message` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `force_pass_reset` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `username`, `nama`, `no_tlp`, `alamat`, `foto`, `password_hash`, `reset_hash`, `reset_at`, `reset_expires`, `activate_hash`, `status`, `status_message`, `active`, `force_pass_reset`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'mitra1@gmail.com', 'mitra1', 'Mitra Pertama', '0123456789', 'Pekalongan, Jawa Tengah', '1719372465_dd7cb0176c8bf03d13c8.jpg', '$2y$10$GeyUP9K3E7yHxKhc18RIEOzMNB9zLi.iX6G.tuTBhmPjjR1WLTJ/C', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-04-05 23:29:33', '2024-06-26 03:27:45', NULL),
(3, 'admin@admin.com', 'Admin', 'Admin Utama', NULL, NULL, 'default.png', '$2y$10$1pMLqww61Ph1c1eJNKvVzujtznoIwZy2DyOXg0OZ5yY5pvQx8UWzK', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-04-07 03:28:18', '2024-06-08 23:54:26', NULL),
(4, 'pembeli1@gmail.com', 'pembeli1', 'Pembeli Pertama', '0123456789', 'Pekalongan, Jawa Tengah', '1717718647_484d16518131c65b5be9.png', '$2y$10$Xl/SGss8HSjxOlVEp37I8OFQodPjBgOM.MwllqNzoTNFbIQ0MR8RS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-04-08 02:40:23', '2024-06-09 12:46:46', NULL),
(5, 'mitra2@gmail.com', 'mitra2', NULL, NULL, NULL, 'default.png', '$2y$10$JyVTYN1eXfMP758ZZwzW8u8KffTr4UCVq9W3JsiyUvJjI3fVK/aGS', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-04-28 01:56:06', '2024-04-28 01:56:06', NULL),
(6, 'pembeli2@gmail.com', 'pembeli2', NULL, NULL, NULL, 'default.png', '$2y$10$OKobp8sq6cLgt.UX5lFscu92NVZVY52Ju.j0zK.q8rIa..5/o/AaK', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-07 00:02:13', '2024-06-09 13:19:06', NULL),
(7, 'mitra3@gmail.com', 'mitra3', NULL, NULL, NULL, 'default.png', '$2y$10$JedYJsfxAeopSPu2rcjTbeQf96cacUNJZGXCJoTB3SiMFKt9pZBx2', NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, '2024-06-08 13:00:41', '2024-07-22 15:51:51', NULL),
(8, 'pembeliUtama@gmail.com', 'pembeliUtama', 'Pembeli Utama', '081234567890', 'Pekalongan', '1730368541_a4367cc69f1d3f0887d4.png', '$2y$10$GvQKPGKY81h4KH5uatTeyO8OpmovHoFVHnM1ePjW7tX4U81DU8YDG', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-10-31 09:51:21', '2024-10-31 09:55:41', NULL),
(9, 'fahriakarima@gmail.com', 'fahriakarima', 'Fahria Karima', '081234567890', 'Pekalongan', '1730369203_dc721ba52b6f113d5184.jpg', '$2y$10$vgMhnK8twi/OzhtZRr37nOQTANRvyo.J3yNjJ3kmefSBlTOEVRub.', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, '2024-10-31 10:01:44', '2024-10-31 10:06:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD KEY `auth_groups_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `group_id_permission_id` (`group_id`,`permission_id`);

--
-- Indeks untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD KEY `auth_groups_users_user_id_foreign` (`user_id`),
  ADD KEY `group_id_user_id` (`group_id`,`user_id`);

--
-- Indeks untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auth_tokens_user_id_foreign` (`user_id`),
  ADD KEY `selector` (`selector`);

--
-- Indeks untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD KEY `auth_users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `user_id_permission_id` (`user_id`,`permission_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD KEY `buyer_id` (`buyer_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `service_id` (`service_id`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gallery_id`),
  ADD KEY `tbl_gallery_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `tbl_orders_buyer_id_foreign` (`buyer_id`),
  ADD KEY `tbl_orders_mitra_id_foreign` (`mitra_id`),
  ADD KEY `tbl_orders_service_id_foreign` (`service_id`);

--
-- Indeks untuk tabel `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD PRIMARY KEY (`service_id`),
  ADD KEY `tbl_services_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `auth_activation_attempts`
--
ALTER TABLE `auth_activation_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_groups`
--
ALTER TABLE `auth_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `auth_logins`
--
ALTER TABLE `auth_logins`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `auth_permissions`
--
ALTER TABLE `auth_permissions`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_reset_attempts`
--
ALTER TABLE `auth_reset_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gallery_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_orders`
--
ALTER TABLE `tbl_orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tbl_services`
--
ALTER TABLE `tbl_services`
  MODIFY `service_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `auth_groups_permissions`
--
ALTER TABLE `auth_groups_permissions`
  ADD CONSTRAINT `auth_groups_permissions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_groups_users`
--
ALTER TABLE `auth_groups_users`
  ADD CONSTRAINT `auth_groups_users_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `auth_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_groups_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_tokens`
--
ALTER TABLE `auth_tokens`
  ADD CONSTRAINT `auth_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `auth_users_permissions`
--
ALTER TABLE `auth_users_permissions`
  ADD CONSTRAINT `auth_users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `auth_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `auth_users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD CONSTRAINT `tbl_comments_ibfk_1` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tbl_comments_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `tbl_orders` (`order_id`),
  ADD CONSTRAINT `tbl_comments_ibfk_3` FOREIGN KEY (`service_id`) REFERENCES `tbl_services` (`service_id`);

--
-- Ketidakleluasaan untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD CONSTRAINT `tbl_gallery_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_orders`
--
ALTER TABLE `tbl_orders`
  ADD CONSTRAINT `tbl_orders_buyer_id_foreign` FOREIGN KEY (`buyer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_orders_mitra_id_foreign` FOREIGN KEY (`mitra_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_orders_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `tbl_services` (`service_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbl_services`
--
ALTER TABLE `tbl_services`
  ADD CONSTRAINT `tbl_services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
