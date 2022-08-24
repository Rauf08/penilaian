-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 06 Agu 2022 pada 07.23
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `keluh`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_balasan`
--

CREATE TABLE `tbl_balasan` (
  `id_balasan` int(11) NOT NULL,
  `id_keluhan` varchar(10) NOT NULL,
  `id_user` varchar(10) NOT NULL,
  `balasan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_balasan`
--

INSERT INTO `tbl_balasan` (`id_balasan`, `id_keluhan`, `id_user`, `balasan`) VALUES
(1, '8', '1', 'halo'),
(2, '8', '1', 'oke bro'),
(3, '8', '1', 'yoi'),
(4, '8', '1', 'Sabar ya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id_kategori`, `nama`) VALUES
(7, 'Skala 1'),
(8, 'Skala 2'),
(9, 'Skala 3'),
(10, 'Skala 4'),
(11, 'Skala 5'),
(12, 'Skala 6'),
(13, 'Skala 7'),
(14, 'Skala 8'),
(15, 'Skala 9'),
(16, 'Skala 10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keluhan`
--

CREATE TABLE `tbl_keluhan` (
  `id_keluhan` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `tanggal` date NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `id_kategori` varchar(50) NOT NULL,
  `status` varchar(30) NOT NULL,
  `tipe` tinyint(4) NOT NULL,
  `id_user` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_keluhan`
--

INSERT INTO `tbl_keluhan` (`id_keluhan`, `judul`, `deskripsi`, `tanggal`, `gambar`, `id_kategori`, `status`, `tipe`, `id_user`) VALUES
(1, 'madilog', 'sadsa', '2020-06-16', '', '5', 'belum ditindak lanjutin', 0, '1'),
(2, 'dsad', 'asda', '2020-06-03', '', '4', 'belum ditindak lanjutin', 0, '1'),
(3, 'dsad', 'dsadsa', '2020-06-10', '', '4', 'belum ditindak lanjutin', 0, '1'),
(4, 'sadsa', 'dsadsa', '2020-06-16', '', '3', 'belum ditindak lanjutin', 0, '1'),
(5, 'halo', 'asd', '2020-06-16', '', '4', 'belum ditindak lanjutin', 0, '1'),
(6, 'sad', 'dsas', '2020-06-25', 'digital-komputer-informatika_(1).png', '3', 'belum ditindak lanjutin', 0, '1'),
(7, 'dsada', 'dsadsa', '2020-06-13', 'digital-komputer-informatika_(1).png', '3', 'belum ditindak lanjutin', 0, '1'),
(8, 'sadsa', 'dsada', '2020-06-16', '', '3', 'diproses', 0, '1'),
(9, 'aman', 'aman', '2022-08-06', NULL, '8', 'belum ditindak lanjutin', 0, '4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `NIM` varchar(16) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `NIM`, `nama`, `username`, `email`, `password`, `role`) VALUES
(1, '190411100019', 'firman', 'firman', 'firmanedam19@gmail.com', '$2y$10$FlETACHZw6ugZ3UalB2Nb.jVrCTNzVIKWP4Q.Tqc07oc9hizWPsrW', '1'),
(3, '19041', 'sadas', 'sad', 'firmanedam@yahoo.co.id', '$2y$10$mYBdg.sgywmgOjLmwqkfpextfYpxROvRdrnlH/ZSUS/S8lP5uEYo2', '0'),
(4, '3124', 'leo', 'leo', 'jumadirauf08@gmail.com', '$2y$10$74cVOs6qQnlGYo1XqiI9HOyF0Kj9Sh6p6XJG3ZgxCjxV/mf/SZrZG', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_balasan`
--
ALTER TABLE `tbl_balasan`
  ADD PRIMARY KEY (`id_balasan`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tbl_keluhan`
--
ALTER TABLE `tbl_keluhan`
  ADD PRIMARY KEY (`id_keluhan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_balasan`
--
ALTER TABLE `tbl_balasan`
  MODIFY `id_balasan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_keluhan`
--
ALTER TABLE `tbl_keluhan`
  MODIFY `id_keluhan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
