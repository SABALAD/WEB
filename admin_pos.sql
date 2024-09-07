-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2024 at 02:36 PM
-- Server version: 10.6.18-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_nomor` int(11) NOT NULL,
  `invoice_tanggal` date NOT NULL,
  `invoice_tanggalkirim` date NOT NULL,
  `invoice_pelanggan` varchar(255) NOT NULL,
  `invoice_alamat` varchar(255) NOT NULL,
  `invoice_tlp` varchar(9) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `invoice_kasir` int(11) NOT NULL,
  `invoice_sub_total` int(11) NOT NULL,
  `invoice_diskon` int(11) NOT NULL,
  `invoice_total` int(11) NOT NULL,
  `invoice_downpayment` int(12) NOT NULL,
  `invoice_sisatotal` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_nomor`, `invoice_tanggal`, `invoice_tanggalkirim`, `invoice_pelanggan`, `invoice_alamat`, `invoice_tlp`, `invoice_kasir`, `invoice_sub_total`, `invoice_diskon`, `invoice_total`, `invoice_downpayment`, `invoice_sisatotal`) VALUES
(13, 22101101, '2022-10-11', '2024-09-08', 'Ibu monsoon villa', 'Jln Kuta nO 21 Kuta selatan Badung Bali', '082374748', 1, 3492500, 30, 2444750, 45, 1244750),
(14, 22101102, '2022-10-11', '0000-00-00', 'Pak Ade Kerobokan', '', '', 1, 3916800, 38, 2428416, 0, 0),
(16, 22101304, '2022-10-13', '0000-00-00', 'Pak Agung Komputer', '', '', 1, 5443800, 25, 4082850, 0, 0),
(17, 22101305, '2022-10-13', '0000-00-00', 'TS Suites Seminyak Bali', '', '', 1, 1105000, 25, 828750, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kasir`
--

CREATE TABLE `kasir` (
  `kasir_id` int(11) NOT NULL,
  `kasir_nama` varchar(255) NOT NULL,
  `kasir_username` varchar(255) NOT NULL,
  `kasir_password` varchar(255) NOT NULL,
  `kasir_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `kasir`
--

INSERT INTO `kasir` (`kasir_id`, `kasir_nama`, `kasir_username`, `kasir_password`, `kasir_foto`) VALUES
(1, 'Oyo Guntur', 'kasir1', 'fcea920f7412b5da7be0cf42b8c93759', ''),
(3, 'Hermawan', 'kasir2', '0e837b800da9529d2239ec7a954827b2', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`) VALUES
(1, 'Lainnya'),
(3, 'Kain Blackout Polos'),
(4, 'Kain Vitras '),
(5, 'Kaen Lokal'),
(6, 'Kain Linen'),
(8, 'Rell Gorden'),
(9, 'Aksesories'),
(10, 'Kelambu');

-- --------------------------------------------------------

--
-- Table structure for table `pimpinan`
--

CREATE TABLE `pimpinan` (
  `pimpinan_id` int(11) NOT NULL,
  `pimpinan_nama` varchar(255) NOT NULL,
  `pimpinan_username` varchar(255) NOT NULL,
  `pimpinan_password` varchar(255) NOT NULL,
  `pimpinan_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `pimpinan`
--

INSERT INTO `pimpinan` (`pimpinan_id`, `pimpinan_nama`, `pimpinan_username`, `pimpinan_password`, `pimpinan_foto`) VALUES
(1, 'Tutang Rohiman Jayana', 'pimpinan1', '76a029f43e147a26c4e436a73a08e461', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `produk_id` int(11) NOT NULL,
  `produk_kode` varchar(255) NOT NULL,
  `produk_nama` varchar(255) NOT NULL,
  `produk_satuan` varchar(20) NOT NULL,
  `produk_kategori` int(11) NOT NULL,
  `produk_stok` int(11) NOT NULL,
  `produk_harga_modal` int(11) NOT NULL,
  `produk_harga_jual` int(11) NOT NULL,
  `produk_keterangan` text NOT NULL,
  `produk_foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`produk_id`, `produk_kode`, `produk_nama`, `produk_satuan`, `produk_kategori`, `produk_stok`, `produk_harga_modal`, `produk_harga_jual`, `produk_keterangan`, `produk_foto`) VALUES
(21, 'PROD001', 'Blackout Zenit', 'Mtr', 3, 26, 75000, 140000, '', ''),
(22, 'PROD002', 'Vitras Poil Bandung', 'Mtr', 4, 46, 40000, 50000, '', ''),
(23, 'PROD003', 'RellnTozan Kotak', 'Mtr', 8, 42, 36000, 50000, '', ''),
(24, 'PROD004', 'Rollet Tozan', 'Mtr', 8, 30, 38000, 60000, '', ''),
(25, 'PROD005', 'Hook Anting', 'Pcs', 9, 50, 7500, 15000, '', ''),
(26, 'PROD006', 'Vitras Poil Premium', 'Mtr', 4, 87, 52000, 85000, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `toko_name` text NOT NULL,
  `toko_tagline` text NOT NULL,
  `toko_alamat` text NOT NULL,
  `toko_email` text NOT NULL,
  `toko_rekening` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_invoice` int(11) NOT NULL,
  `transaksi_produk` int(11) NOT NULL,
  `transaksi_harga` int(11) NOT NULL,
  `transaksi_jumlah` int(11) NOT NULL,
  `transaksi_total` int(11) NOT NULL,
  `transaksi_downpayment` int(11) NOT NULL,
  `transaksi_sisatotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_invoice`, `transaksi_produk`, `transaksi_harga`, `transaksi_jumlah`, `transaksi_total`, `transaksi_downpayment`, `transaksi_sisatotal`) VALUES
(48, 14, 21, 140000, 24, 3360000, 0, 0),
(49, 14, 24, 60000, 12, 720000, 0, 0),
(50, 13, 24, 60000, 6, 360000, 0, 0),
(51, 13, 23, 50000, 12, 600000, 0, 0),
(52, 13, 22, 50000, 14, 700000, 0, 0),
(53, 13, 21, 140000, 14, 1960000, 0, 0),
(54, 16, 21, 140000, 36, 5040000, 0, 0),
(55, 16, 24, 60000, 12, 720000, 0, 0),
(56, 16, 23, 50000, 6, 300000, 0, 0),
(58, 17, 26, 85000, 13, 1105000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`) VALUES
(1, 'Adminatun Jhony', 'admin', '76a029f43e147a26c4e436a73a08e461', '482937136_avatar.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `kasir`
--
ALTER TABLE `kasir`
  ADD PRIMARY KEY (`kasir_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`pimpinan_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `kasir`
--
ALTER TABLE `kasir`
  MODIFY `kasir_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12353;

--
-- AUTO_INCREMENT for table `pimpinan`
--
ALTER TABLE `pimpinan`
  MODIFY `pimpinan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `produk_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
