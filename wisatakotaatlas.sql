-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 05:28 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisatasemarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `wisatakotaatlas`
--

CREATE TABLE `wisatakotaatlas` (
  `Id` int(11) NOT NULL,
  `Nama` varchar(250) NOT NULL,
  `Alamat` varchar(500) NOT NULL,
  `Harga` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wisatakotaatlas`
--

INSERT INTO `wisatakotaatlas` (`Id`, `Nama`, `Alamat`, `Harga`) VALUES
(1, 'Lawang Sewu', 'Jl. Pemuda, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', ' Rp 10.000 - Rp 30.000'),
(2, 'Klenteng Sam Poo Kong', 'Jl. Simongan No.129, Bongsari, Kec. Semarang Bar., Kota Semarang, Jawa Tengah 50148', 'Rp 17.000 - Rp 55.000'),
(3, 'Kota Lama Semarang', 'Jl. Letjen Suprapto No.31, Tj. Mas, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50137', 'Gratis'),
(4, 'Pagoda Avalokitesvara', 'Jl. Perintis Kemerdekaan, Pudakpayung, Kec. Banyumanik, Kota Semarang, Jawa Tengah 50265', 'Gratis'),
(5, 'Museum Ranggawarsita', ' Jl. Abdul Rahman Saleh No.1, Kalibanteng Kidul, Semarang Barat, Kalibanteng Kidul, Kec. Semarang Bar., Kota Semarang, Jawa Tengah 50149', 'Dewasa: Rp 4.000; Anak-anak: Rp 2.000'),
(6, 'Pasar Semawis', 'Jl. Gg. Warung No.50, Kauman, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50139', 'Gratis'),
(7, 'Pantai Marina', 'Jalan Yos Sudarso, komplek PRPP, Tawang Sari, Semarang, Jawa tengah.', ' Rp 5.000'),
(8, 'Masjid Agung Jawa Tengah', 'Jl. Gajah Raya, Sambirejo, Kec. Gayamsari, Kota Semarang, Jawa Tengah', 'Gratis');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wisatakotaatlas`
--
ALTER TABLE `wisatakotaatlas`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wisatakotaatlas`
--
ALTER TABLE `wisatakotaatlas`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
