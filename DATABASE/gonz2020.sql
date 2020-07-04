-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2020 at 05:36 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gonz2020`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaCTHD` int(11) NOT NULL,
  `MaHD` int(11) NOT NULL,
  `MaHH` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaCTHD`, `MaHD`, `MaHH`, `SoLuong`) VALUES
(1, 11, 1, 1),
(2, 11, 6, 1),
(3, 12, 3, 2),
(4, 12, 4, 1),
(5, 13, 2, 1),
(6, 13, 9, 1),
(7, 14, 3, 1),
(8, 14, 6, 1),
(9, 15, 7, 1),
(10, 15, 8, 1),
(11, 15, 9, 1),
(12, 17, 5, 1),
(13, 17, 14, 1),
(14, 18, 4, 1),
(15, 18, 8, 1),
(16, 18, 2, 1),
(17, 19, 4, 1),
(18, 20, 11, 1),
(19, 19, 5, 0),
(20, 19, 7, 0),
(21, 20, 12, 1),
(22, 16, 13, 1),
(23, 16, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MaHH` int(11) NOT NULL,
  `TenHH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL,
  `Hinh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MaHH`, `TenHH`, `DonGia`, `Hinh`, `MaLoai`) VALUES
(1, 'Trà xanh', 29000, '', 1),
(2, 'Trà đào', 39000, '', 1),
(3, 'Cà phê đá', 39000, '', 2),
(4, 'Cà phê sữa', 49000, '', 2),
(5, 'Sữa tươi nguyên chất', 19000, '', 3),
(6, 'Sữa chua', 29000, '', 3),
(7, 'Sô-cô-la đen', 59000, '', 4),
(8, 'Trà sữa truyền thống', 79000, '', 5),
(9, 'Soda chanh', 29000, '', 6),
(10, 'Nước ép cam', 39000, '', 7),
(11, 'Nước ép dưa hấu', 39000, '', 7),
(12, 'Dừa tươi', 29000, '', 8),
(13, 'Bánh su kem', 19000, '', 9),
(14, 'Trân châu', 9000, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `NgayLapHD` date NOT NULL,
  `MaKH` int(11) NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `NgayLapHD`, `MaKH`, `TongTien`) VALUES
(11, '2020-07-01', 1, 58000),
(12, '2020-07-01', 2, 127000),
(13, '2020-07-01', 3, 68000),
(14, '2020-07-02', 4, 68000),
(15, '2020-07-02', 5, 167000),
(16, '2020-07-02', 10, 68000),
(17, '2020-07-03', 6, 28000),
(18, '2020-07-03', 7, 167000),
(19, '2020-07-03', 8, 127000),
(20, '2020-07-04', 9, 68000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `HoTen`, `DienThoai`, `Email`) VALUES
(1, 'Nguyễn Thành Duy', '0969158134', 'duybu@gmail.com'),
(2, 'Nguyễn Dương Hồng Diệu', '0165158496', 'dieu@gmail.com'),
(3, 'Nguyễn Thị Uyển Cương', '0913123456', 'cuong@gmail.com'),
(4, 'Nguyễn Thành Đạt', '0516563221', 'dat@hotmail.com'),
(5, 'Cổ Lê Anh Duy', '0969376729', 'duyclad@gmail.com'),
(6, 'Khách hàng 1', '0168489651', 'kh1@gmail.com'),
(7, 'Khách hàng 2', '0961645155', 'kh2@gmail.com'),
(8, 'Khách hàng 3', '0498651565', 'kh3@yahoo.com'),
(9, 'Khách hàng 4', '0981565128', 'kh4@gmail.com'),
(10, 'Khách hàng 5', '0951654987', 'kh5@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`, `MoTa`) VALUES
(1, 'Trà', 'Lá trà được lấy từ Tây Nguyên xanh tươi'),
(2, 'Cà Phê', 'Hạt cà phê nguyên chất được sản xuất trực tiếp từ Buôn Ma Thuột'),
(3, 'Sữa', 'Sữa có nguồn gốc từ các trang trại ở Long Thành'),
(4, 'Sô-cô-la', 'Sô-cô-la nhập khẩu từ Đan Mạch'),
(5, 'Trà Sữa', 'Trà sữa truyền thông thơm ngon'),
(6, 'Soda', 'Nước uống giải nhiệt'),
(7, 'Nước ép', 'Nước ép tươi tự nhiên'),
(8, 'Dừa', 'Dừa tươi từ Bến Tre'),
(9, 'Bánh Ngọt', 'Gồm các loại bánh ngọt như su kem,...'),
(10, 'Topping', 'Các loại topping...');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaCTHD`),
  ADD KEY `fk_CTHD_1` (`MaHD`),
  ADD KEY `fk_CTHD_2` (`MaHH`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MaHH`),
  ADD KEY `fk_HH` (`MaLoai`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `fk_HoaDon` (`MaKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `MaCTHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `MaHH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `fk_CTHD_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_CTHD_2` FOREIGN KEY (`MaHH`) REFERENCES `hanghoa` (`MaHH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `fk_HH` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_HoaDon` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
