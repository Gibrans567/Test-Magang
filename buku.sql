-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Agu 2024 pada 18.29
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
-- Database: `laravel-api`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `buku`
--

CREATE TABLE `buku` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pengarang` varchar(255) NOT NULL,
  `tanggal_publikasi` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `buku`
--

INSERT INTO `buku` (`id`, `judul`, `pengarang`, `tanggal_publikasi`, `created_at`, `updated_at`) VALUES
(1, 'ada apa dengan PHP', 'Budi', '2023-05-25', '2024-08-03 00:09:05', '2024-08-03 00:45:34'),
(2, 'Dolorem sapiente ea deserunt molestias.', 'Oskar Latupono', '1987-02-12', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(3, 'Nihil quod inventore ratione.', 'Rini Jelita Melani', '1993-03-16', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(4, 'Repellat qui impedit omnis cum est.', 'Eka Jarwadi Sitorus', '1975-04-22', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(5, 'Cupiditate labore ut iste maxime repellat asperiores.', 'Siska Mandasari', '1992-01-06', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(6, 'Molestiae sit labore praesentium dignissimos molestiae.', 'Taufik Iswahyudi', '2002-09-29', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(7, 'Incidunt veniam sint ut doloremque iusto molestias provident.', 'Kamila Aryani S.IP', '1980-07-15', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(8, 'Porro error distinctio fugiat quibusdam dolor quos molestias iusto.', 'Genta Yolanda', '2001-11-28', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(9, 'Laudantium quia nostrum fuga in.', 'Eli Sabrina Nurdiyanti S.IP', '1983-09-12', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(10, 'Animi in odio autem et similique ut nemo asperiores.', 'Rahmi Zelaya Rahimah S.Pd', '2020-11-28', '2024-08-03 00:09:05', '2024-08-03 00:09:05'),
(11, 'ada apa dengan laravel', 'Eko Sudrajat', '1826-06-23', '2024-08-03 00:30:36', '2024-08-03 00:30:36'),
(14, 'Ada apa dengan Json', 'Jajat', '2024-08-05', '2024-08-03 06:10:18', '2024-08-03 06:10:18'),
(15, 'Ada apa dengan Blade', 'Dwi Sastra', '2024-08-01', '2024-08-03 06:27:37', '2024-08-03 06:27:37'),
(16, 'Ada apa dengan Json V2', 'Jajat', '2024-08-01', '2024-08-03 06:28:39', '2024-08-03 06:28:39'),
(17, 'Ada apa dengan JS', 'Dwi Sastra', '2024-08-01', '2024-08-03 06:29:20', '2024-08-03 06:29:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `buku`
--
ALTER TABLE `buku`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
