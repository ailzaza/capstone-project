-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Jul 2023 pada 11.56
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `capstone`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `confirm_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `confirm_password`) VALUES
(2, 'Firda', '$2y$10$4ZNCGsl2gY/C1ODxAiPqMuCZcdb8uHdrsPxLVIsFVv6RhCyvHxNd6', ''),
(3, 'aku', '$2y$10$oeanSqnar82C94Fp7ZBO1O0IibLXEOTFjxwSH/fDNljmODE2zm6k6', ''),
(4, 'alfi', '$2y$10$kD3ylW0WTggaVsNUYnZXZe65EbzHV0TfbkEMLy7iFQBcIt70x7b/S', ''),
(5, 'ardi', '$2y$10$AS5GKKAW7C.L46ni/RvjYe9k75vnjNxEZLhzu3G.I3Ff39pOZO4I.', ''),
(6, 'admin', '$2y$10$LqkqnpiUVSey.4UF91hxCuyVHI98EN8cP76W3TwOSsvWUksMJVUKa', ''),
(7, 'Admin', '$2y$10$wOITvHYsKf3YEsh1enLIDOJMKCgrS9wP0m/s2273zE/KHXc388vIy', ''),
(8, 'ailza', '$2y$10$PUMmwsgWPwAeplIx/J0QZeZ/65fNJhryW70OgExixLcLm9G4j4HH6', '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
