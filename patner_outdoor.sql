-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Jul 09, 2025 at 02:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patner_outdoor`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `idbooking` int(11) NOT NULL,
  `id_item` int(11) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `tanggal_booking` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `ktp` varchar(50) NOT NULL,
  `alamat` text DEFAULT NULL,
  `no_handphone` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `email`, `password`, `ktp`, `alamat`, `no_handphone`) VALUES
(2, '', 'diana@gmail.com', '$2y$10$7/1BfwfdNNKcCFUPSg.i3eZwMG.ihKmfBUQrIRz6Npc8U2dqIXgPG', '', NULL, ''),
(5, 'gita', 'gita@gmail.com', '$2y$10$PYyfCyP7BkRrVTHdYSmoNesfT429YdNYB2JiygKz.sfBzBelmL.v.', '', NULL, '0987645'),
(7, 'Bambangsugeni', 'bambangsugeni69@gmail.com', '$2y$10$FvrWwNri7nZsoh1GnWYBm.cHyo1OpSUFvO0NHtFOvg0cKoFVs7dKO', '', NULL, '08766666766'),
(8, 'irawan', 'irawan@gmail.com', '$2y$10$KUl92OBa.beyCb/nBbbFIuUFKF8xLSr2Kfccj3TQ5YOMdvEATf58e', '', NULL, '089658265'),
(9, 'Bang Doy', 'bangdoys@gmai.com', '$2y$10$A/s7kr6OvkaXuwDQaWmtJObjk1wx9tPwOykBQ3mit6.i28isSWEjK', '', NULL, '0872613128627'),
(10, 'rara', 'rara@gmail.com', '$2y$10$NCaurjFCqKL42JW2QpyZJuyBSxJQcojfpXYT3zkxGlSXrxBe9kq4m', '', NULL, '098354678'),
(11, 'rina', 'rina@gmail.com', '$2y$10$wS5/zCHgMGmC4Y5TYVBQruZAI28Nc5bT.295bRhd0si/IomXU1Cfu', '', NULL, '0986578'),
(12, 'didi', 'didi@gmail.com', '$2y$10$P/q.0bA.1O5.9nScLjspkezViMGd9/UKObrwYrEKLMyUrjcPQqczO', '', NULL, '0985678'),
(13, 'sari', 'sari@gmail.com', '$2y$10$tflqeNos8wqdQH1A38FJGeeg156S6exwdP2eC7wWOarBze4feUm6G', '', NULL, '08753899365'),
(14, 'Coy', 'mirza@gmail.com', '$2y$10$GoBdN5BhaWsSgsDfKEcqleOIWaHvhlizdVKrDjNRZhETLJVg5B5ra', '', NULL, '728178273291'),
(15, 'Jawir', 'jawir@gmai.com', '$2y$10$WkVCsZUSqsXRI3g8LQ1YXepxorUWhfxNyOWe8t68eiZFpF21SgBGK', '', NULL, '098765'),
(16, 'umam', 'umam@gmail.com', '$2y$10$Q9tbwaj0v/VXVwM.0ZHzyul0vNVk9EvzcptyhDUhqQB8EhUmPHu32', '', NULL, '087654321');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `stok` int(11) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` decimal(10,2) NOT NULL,
  `id_produk_owner` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk_owner`
--

CREATE TABLE `produk_owner` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`idbooking`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `id_customer` (`id_customer`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_produk_owner` (`id_produk_owner`);

--
-- Indexes for table `produk_owner`
--
ALTER TABLE `produk_owner`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `idbooking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk_owner`
--
ALTER TABLE `produk_owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`id_produk_owner`) REFERENCES `produk_owner` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
