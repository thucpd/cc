-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 28, 2018 lúc 11:03 AM
-- Phiên bản máy phục vụ: 5.7.23
-- Phiên bản PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `banbanh`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_type`
--

DROP TABLE IF EXISTS `product_type`;
CREATE TABLE IF NOT EXISTS `product_type` (
  `id_product_type` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id_product_type`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_type`
--

INSERT INTO `product_type` (`id_product_type`, `type_name`, `deleted`) VALUES
(1, 'bánh ngọt', 0),
(2, 'bánh mặn', 1),
(3, 'bánh xe', 0),
(4, 'bánh xe', 0),
(5, 'bánh xe', 1),
(6, '123', 0),
(7, 'bánh bbb', 1),
(8, 'banner', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role`
--

INSERT INTO `role` (`id`, `name`, `deleted`) VALUES
(1, 'Admin', 0),
(2, 'Mod', 0),
(3, 'Lv1', 0),
(4, 'Lv2', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE IF NOT EXISTS `sanpham` (
  `idsanpham` int(11) NOT NULL AUTO_INCREMENT,
  `tensanpham` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `giatien` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loaisanpham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `hinh` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `detail` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT '0',
  PRIMARY KEY (`idsanpham`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`idsanpham`, `tensanpham`, `giatien`, `loaisanpham`, `soluong`, `hinh`, `detail`, `deleted`) VALUES
(1, 'bánh 1234123', '1000', '1', 10, '03-deo-dau-xanh-hat-dua-e1505892838355.png', NULL, 1),
(2, 'bánh 2', '2000', '2', 10, NULL, NULL, 1),
(3, 'Bánh cc', '10000', '2', 1000, 'demo', NULL, 1),
(4, 'Bánh cc', '10000', '1', 1000, '02-hat-sen-dua-tuoi-600x600.png', NULL, 0),
(6, 'Bánh cc', '10000', '1', 1000, 'B0009-00.png', NULL, 0),
(8, 'bánh123123', '123', '6', 123, 'banh su.png', NULL, 0),
(9, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(7, 'Bánh cc', '10000', '2', 1000, 'demo', NULL, 1),
(10, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(11, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(12, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(13, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(14, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(15, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(16, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(17, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(18, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(19, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(20, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(21, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(22, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(23, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(24, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(25, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(26, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(27, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(28, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(29, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(30, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(31, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(32, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(33, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(34, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(35, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(36, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(37, '123123', '123', '4', 123, 'brand1.png', NULL, 0),
(38, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(39, '123123', '123', '4', 123, 'brand1.png', NULL, 1),
(40, '123123', '123', '4', 123, '03-deo-dau-xanh-hat-dua-e1505892838355.png', NULL, 0),
(41, '123123123', '123', '4', 123, 'gourmet-cookies-2.png', NULL, 0),
(42, '123', '123', '1', 123, '', '123123', 0),
(43, 'sp1', '123', '8', 123, 'h4slide.png', 'banner1', 0),
(44, 'banner2', '123', '8', 123, 'h4slide2.png', 'banner2 nè ', 0),
(45, 'banner3', '123', '8', 123, 'h4slide3.png', 'banner3', 0),
(46, 'banner4', '123', '8', 123123, 'h4slide4.png', '123123123', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_admin`
--

DROP TABLE IF EXISTS `user_admin`;
CREATE TABLE IF NOT EXISTS `user_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `deleted` int(11) DEFAULT '0',
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avata` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user_admin`
--

INSERT INTO `user_admin` (`id`, `user_name`, `password`, `role`, `deleted`, `name`, `avata`) VALUES
(1, 'chuong', '123123123', 1, 0, NULL, NULL),
(2, 'admin', '123123', 1, 0, NULL, NULL),
(3, 'tuan', '123123123', 2, 0, 'Tuấn', 'JP_5544_ja_hero_2072.png'),
(4, '123', '123', 3, 0, 'Test 1', 'banh su.png'),
(5, '123', '123', 4, 0, '123', 'brand1.png'),
(6, '123', '123', 4, 0, '123', 'brand1.png'),
(7, '123', '123', 4, 0, '123', 'brand1.png'),
(8, '123', '123', 4, 0, '123', 'brand1.png'),
(9, '123', '123', 4, 0, '123', 'brand1.png'),
(10, '123', '123', 4, 0, '123', 'brand1.png'),
(11, '123', '123', 4, 0, '123', 'brand1.png'),
(12, '123', '123', 4, 0, '123', 'brand1.png'),
(13, '123', '123', 4, 0, '123', 'brand1.png'),
(14, '123', '123', 4, 0, '123', 'brand1.png'),
(15, '123', '123', 4, 0, '123', 'brand1.png'),
(16, '123', '123', 4, 0, '123', 'brand1.png'),
(17, '123', '123', 4, 0, '123', 'brand1.png'),
(18, '123', '123', 4, 0, '123', 'brand1.png'),
(19, '123', '123', 4, 0, '123', 'brand1.png'),
(20, '123', '123', 4, 1, '123', 'brand1.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
