-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th1 01, 2019 lúc 01:48 PM
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
-- Cấu trúc bảng cho bảng `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE IF NOT EXISTS `bill` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `billing_last_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_1` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ship_to_different_address` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_last_name2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_address_2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_phone2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_comments` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `gia` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `billing_last_name`, `billing_address_1`, `billing_phone`, `ship_to_different_address`, `billing_last_name2`, `billing_address_2`, `billing_phone2`, `order_comments`, `user_id`, `status`, `gia`) VALUES
(3, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '0'),
(4, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '155'),
(5, 'Chương', 'llq', '113', NULL, '12313', '123123', '123123', '123123123', '13', '0', '738'),
(6, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '123'),
(7, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '123'),
(8, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '123'),
(9, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '123'),
(10, 'Chương', 'llq', '113', NULL, '', '', '', '', '13', '0', '11107');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill_detail`
--

DROP TABLE IF EXISTS `bill_detail`;
CREATE TABLE IF NOT EXISTS `bill_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ten_sanpham` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_bill` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gia` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `soluong` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill_detail`
--

INSERT INTO `bill_detail` (`id`, `ten_sanpham`, `id_bill`, `gia`, `soluong`) VALUES
(1, 'banner3', '3', '123 ', '1'),
(2, '123123123', '3', '123 ', '1'),
(3, 'Bánh Honey ngon', '3', '35 ', '3'),
(4, '', '4', '', ''),
(5, 'Bánh Honey ngon', '4', '35', '1'),
(6, 'Bánh Tart ngon', '4', '35', '1'),
(7, 'Bánh su kem loại 2 ngon', '4', '50', '1'),
(8, 'Bánh su kem ngon', '4', '35', '1'),
(9, '', '5', '', ''),
(10, 'sản phẩm thử1', '5', '123', '1'),
(11, '123', '5', '123', '1'),
(12, 'banner4', '5', '123', '1'),
(13, 'sp1', '5', '123', '1'),
(14, 'banner2', '5', '123', '1'),
(15, 'banner3', '5', '123', '1'),
(16, '', '6', '', ''),
(17, '123', '6', '123', '1'),
(18, '', '7', '', ''),
(19, '123', '7', '123', '1'),
(20, '', '8', '', ''),
(21, '', '9', '', ''),
(22, '123', '9', '123', '1'),
(23, '', '10', '', ''),
(24, '123', '10', '123', '1'),
(25, 'banner4', '10', '123', '1'),
(26, 'sản phẩm thử1', '10', '123', '1'),
(27, 'banner2', '10', '123', '1'),
(28, 'banner3', '10', '123', '1'),
(29, 'sp1', '10', '123', '1'),
(30, '123123', '10', '123', '1'),
(31, '123123123', '10', '123', '1'),
(32, 'bánh123123', '10', '123', '1'),
(33, 'Bánh cc', '10', '10000', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(2000) COLLATE utf8_unicode_ci DEFAULT 'null',
  `id_sanpham` int(11) NOT NULL,
  `user` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `content`, `id_sanpham`, `user`) VALUES
(9, 'dfffdf', 46, 13),
(8, 'sản phẩm ngon quá', 41, 13),
(7, 'sản phẩm rất ngon', 43, 1);

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
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(46, 'banner4', '123', '8', 123123, 'h4slide4.png', '123123123', 0),
(47, '123', '123', '1', 123123, 'brand2.png', '123123', 0),
(48, 'sản phẩm thử1', '123', '4', 123123123, 'h4-slide7.png', '123123hdgaf', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `sdt` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaysinh` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `diachi` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `deleted`, `sdt`, `ngaysinh`, `diachi`, `name`) VALUES
(1, 'tuan', '1', '0', NULL, NULL, NULL, 'Tuấn'),
(13, 'abc', '1', '0', '113', '1/1/2019', 'llq', 'Chương'),
(14, 'abc', '1', '0', '113', '12/11/1212', 'LLQ', 'Phạm Văn A');

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
(3, 'tuan', '123123123', 2, 1, 'Tuấn', 'JP_5544_ja_hero_2072.png'),
(4, '123', '123', 3, 1, 'Test 1', 'banh su.png'),
(5, '123', '123', 4, 1, '123', 'brand1.png'),
(6, '123', '123', 4, 1, '123', 'brand1.png'),
(7, '123', '123', 4, 1, '123', 'brand1.png'),
(8, '123', '123', 4, 1, '123', 'brand1.png'),
(9, '123', '123', 4, 1, '123', 'brand1.png'),
(10, '123', '123', 4, 1, '123', 'brand1.png'),
(11, '123', '123', 4, 1, '123', 'brand1.png'),
(12, '123', '123', 4, 1, '123', 'brand1.png'),
(13, '123', '123', 4, 1, '123', 'brand1.png'),
(14, '123', '123', 4, 1, '123', 'brand1.png'),
(15, '123', '123', 4, 1, '123', 'brand1.png'),
(16, '123', '123', 4, 1, '123', 'brand1.png'),
(17, '123', '123', 4, 1, '123', 'brand1.png'),
(18, '123', '123', 4, 1, '123', 'brand1.png'),
(19, '123', '123', 4, 1, '123', 'brand1.png'),
(20, '123', '123', 4, 1, '123', 'brand1.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
