-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th5 25, 2025 lúc 01:26 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `beehat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `anhsp`
--

CREATE TABLE `anhsp` (
  `MaSP` int NOT NULL,
  `Anh1` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Anh2` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Anh3` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `Anh4` varchar(500) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `anhsp`
--

INSERT INTO `anhsp` (`MaSP`, `Anh1`, `Anh2`, `Anh3`, `Anh4`) VALUES
(155, 'MV02.jpg', 'MV02_1.jpg', 'MV02_2.jpg', 'MV02_3.jpg'),
(159, 'MLT0003_1.jpg', 'MLT0003_2.jpg', 'MLT0003_3.jpg', 'MLT0003_4.jpg'),
(160, 'MLT0005.jpg', 'MLT0005_1.jpg', 'MLT0005_2.jpg', 'MLT0005_3.jpg'),
(161, 'MLT0004_1.jpg', 'MLT0004_2.jpg', 'MLT0004_3.jpg', 'MLT0004_4.jpg'),
(162, 'MLT0006.jpg', 'MLT0006_1.jpg', 'MLT0006_2.jpg', NULL),
(166, 'MV03.jpg', 'MV03_1.jpg', 'MV03_2.jpg', 'MV03_3.jpg'),
(167, 'MV04.jpg', 'MV04_1.jpg', 'MV04_2.jpg', 'MV04_3.jpg'),
(168, 'MV05.jpg', 'MV05_2.jpg', 'MV05_3.jpg', 'MV05_4.jpg'),
(176, 'MLT0002_1.jpg', 'MLT0002_2.jpg', 'MLT0002_3.jpg', 'MLT0002_4.jpg'),
(177, 'MLT0007.jpg', 'MLT0007_1.jpg', 'MLT0007_2.jpg', ''),
(179, 'MLT0009_1.jpg', 'MLT0009_2.jpg', 'MLT0009_3.jpg', 'MLT0009_4.jpg'),
(180, 'MV01.jpg', 'MV01_1.jpg', 'MV01_2.jpg', 'MV01_3.jpg'),
(181, 'MV06.jpg', 'MV06_1.jpg', 'MV06_2.jpg', 'MV06_3.jpg'),
(182, 'MV06_2.jpg', 'MV06_3.jpg', 'MV07.jpg', 'MV07_1.jpg'),
(184, 'MLT0008.jpg', 'MLT0008_1.jpg', 'MLT0008_2.jpg', ''),
(185, 'MLT0001.jpg', 'MLT0001_1.jpg', 'MLT0001_2.jpg', 'MLT0001_3.jpg'),
(186, 'MLT0010.jpg', 'MLT0010_1.jpg', 'MLT0010_2.jpg', 'MLT0010_3.jpg'),
(187, 'MLT0011.jpg', 'MLT0011_1.jpg', 'MLT0011_2.jpg', 'MLT0011_3.jpg'),
(188, 'MLT0012.jpg', 'MLT0012_1.jpg', 'MLT0012_2.jpg', 'MLT0012_3.jpg'),
(189, 'MLT0013.jpg', 'MLT0013_1.jpg', 'MLT0013_2.jpg', 'MLT0013_3.jpg'),
(190, 'MLT0014.jpg', 'MLT0014_1.jpg', 'MLT0014_2.jpg', 'MLT0014_3.jpg'),
(192, 'MLT0016.jpg', 'MLT0016_1.jpg', 'MLT0016_2.jpg', 'MLT0016_3.jpg'),
(193, 'MV08_1.jpg', 'MV08_2.jpg', 'MV08_3.jpg', 'MV08_4.jpg'),
(194, 'MV09_1.jpg', 'MV09_2.jpg', 'MV09_3.jpg', ''),
(195, 'MV010.jpg', 'MV010_1.jpg', 'MV010_2.jpg', 'MV010_3.jpg'),
(196, 'MV011.jpg', 'MV011_1.jpg', 'MV011_2.jpg', 'MV011_3.jpg'),
(197, 'MV012.jpg', 'MV012_1.jpg', 'MV012_2.jpg', 'MV012_3.jpg'),
(198, 'MND01.jpg', 'MND01_1.jpg', 'MND01_2.jpg', ''),
(199, 'MND02.jpg', 'MND02_1.jpg', 'MND02_2.jpg', 'MND02_3.jpg'),
(200, 'MND03.jpg', 'MND03_1.jpg', 'MND03_2.jpg', 'MND03_3.jpg'),
(201, 'MND04.jpg', 'MND04_1.jpg', 'MND04_2.jpg', 'MND04_3.jpg'),
(203, 'MND05.jpg', 'MND05_1.jpg', 'MND05_2.jpg', 'MND05_3.jpg'),
(204, 'MND06.jpg', 'MND06_1.jpg', 'MND06_2.jpg', 'MND06_3.jpg'),
(205, 'MLT0015.jpg', 'MLT0015_1.jpg', 'MLT0015_2.jpg', 'MLT0015_3.jpg'),
(206, 'MND07.jpg', 'MND07_1.jpg', 'MND07_2.jpg', 'MND07_3.jpg'),
(207, 'MND08.jpg', 'MND08_1.jpg', 'MND08_2.jpg', 'MND08_3.jpg'),
(208, 'MLT0003_1.jpg', 'MLT0003_2.jpg', 'MLT0003_3.jpg', 'MLT0003_4.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` int NOT NULL,
  `MaSP` int NOT NULL,
  `MaKH` int NOT NULL,
  `NoiDung` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`MaBL`, `MaSP`, `MaKH`, `NoiDung`, `ThoiGian`) VALUES
(21, 119, 16, 'rất đẹp', '2024-01-18 15:22:24'),
(22, 159, 17, 'đẹp', '2025-05-16 13:15:15'),
(23, 160, 17, 'ok\r\n', '2025-05-16 13:18:18'),
(24, 160, 17, 'đẹp', '2025-05-16 13:18:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(99, 160, 1, 350000, 350000, 'L ', 'Xanh'),
(100, 170, 1, 350000, 350000, 'M', 'Kem'),
(101, 176, 1, 295000, 295000, 'L ', 'Be'),
(102, 159, 1, 265000, 265000, 'XL', 'Đen '),
(103, 177, 1, 275000, 275000, 'S', 'Be'),
(104, 166, 1, 295000, 295000, 'M', 'Xanh'),
(105, 166, 1, 295000, 295000, 'XL', 'Xanh'),
(106, 159, 1, 188500, 188500, 'M', 'Đen '),
(106, 166, 1, 215500, 215500, 'XL', 'Xanh'),
(107, 159, 2, 188500, 377000, 'XL', 'Đen '),
(107, 160, 2, 265000, 530000, 'XL', 'Xanh'),
(108, 160, 1, 265000, 265000, 'XL', 'Xanh'),
(108, 166, 1, 215500, 215500, 'XL', 'Xanh'),
(109, 159, 1, 209445, 209445, 'XL', 'Đen '),
(111, 159, 1, 209445, 209445, 'XL', 'Đen '),
(112, 155, 1, 239445, 239445, 'XL', 'Kem'),
(113, 155, 1, 239445, 239445, 'S', 'Kem'),
(113, 161, 2, 469445, 938890, 'XL', 'Đen '),
(113, 166, 1, 239445, 239445, 'M', 'Xanh'),
(113, 183, 1, 295000, 295000, 'XL', 'Xanh'),
(114, 155, 1, 239445, 239445, 'XL', 'Kem'),
(114, 167, 1, 194445, 194445, 'XL', 'Trắng'),
(115, 162, 1, 894445, 894445, 'XL', 'Đen '),
(116, 179, 1, 176445, 176445, 'XL', 'Xanh'),
(117, 184, 1, 217000, 217000, 'XL', 'Trắng -Xanh'),
(118, 160, 1, 296500, 296500, 'XL', 'Xanh'),
(119, 181, 1, 242050, 242050, 'S', 'Trắng'),
(120, 160, 1, 296500, 296500, 'XL', 'Xanh'),
(120, 161, 1, 469750, 469750, 'XL', 'Đen '),
(121, 182, 1, 242050, 242050, 'M', 'Hồng'),
(122, 159, 2, 212350, 424700, 'XL', 'Đen '),
(122, 162, 1, 890500, 890500, 'XL', 'Đen '),
(123, 155, 1, 242050, 242050, 'M', 'Kem'),
(124, 179, 1, 179680, 179680, 'S', 'Xanh'),
(125, 183, 1, 242050, 242050, 'M', 'Đen '),
(126, 159, 2, 212350, 424700, 'L ', 'Đen '),
(126, 167, 1, 197500, 197500, 'M', 'Trắng'),
(127, 160, 1, 296500, 296500, 'L ', 'Xanh'),
(128, 160, 1, 296500, 296500, 'L ', 'Xanh'),
(129, 199, 1, 295000, 295000, 'L ', 'Đỏ'),
(130, 160, 1, 296500, 296500, 'M', 'Xanh'),
(131, 162, 1, 890500, 890500, 'XL', 'Đen '),
(131, 166, 3, 242050, 726150, 'XL', 'Xanh'),
(131, 198, 1, 295000, 295000, 'L ', 'Hồng'),
(132, 155, 1, 242050, 242050, 'L', 'Kem'),
(133, 159, 1, 212350, 212350, 'M', 'Đen '),
(134, 159, 1, 212350, 212350, 'L ', 'Đen '),
(135, 167, 1, 197500, 197500, 'L ', 'Trắng'),
(136, 161, 1, 469750, 469750, 'XL', 'Đen '),
(137, 177, 1, 222250, 222250, 'L ', 'Be'),
(138, 167, 1, 197500, 197500, 'L ', 'Trắng'),
(139, 160, 1, 296500, 296500, 'M', 'Xanh'),
(139, 200, 1, 147000, 147000, 'M', 'Hồng'),
(140, 207, 1, 147000, 147000, 'M', 'Đen '),
(141, 203, 1, 295000, 295000, 'L ', 'Xanh Blue'),
(142, 168, 1, 157900, 157900, 'M', 'Xanh'),
(143, 167, 1, 197500, 197500, 'XL', 'Trắng'),
(144, 155, 2, 230939, 461878, 'M', 'Kem'),
(145, 162, 5, 940000, 4700000, 'XL', 'Đen '),
(145, 200, 1, 137000, 137000, 'M', 'Hồng'),
(146, 210, 1, 295000, 295000, 'M', 'Đen - Trắng'),
(147, 168, 1, 200000, 200000, 'M', 'Xanh'),
(148, 155, 1, 285000, 285000, 'M', 'Kem'),
(148, 200, 1, 137000, 137000, 'S', 'Đen '),
(149, 166, 1, 285000, 285000, 'M', 'Xanh'),
(150, 184, 1, 207000, 207000, 'XL', 'Trắng -Xanh'),
(151, 167, 1, 240000, 240000, 'M', 'Trắng'),
(152, 195, 1, 137000, 137000, 'M', 'Hồng'),
(153, 179, 1, 232000, 232000, 'M', 'Xanh'),
(154, 177, 1, 275000, 275000, 'M', 'Trắng'),
(155, 186, 1, 147000, 147000, 'M', 'Đen '),
(156, 176, 1, 295000, 295000, 'M', 'Be'),
(157, 188, 1, 147000, 147000, 'S', 'Trắng'),
(158, 176, 1, 295000, 295000, 'L ', 'Be'),
(159, 187, 1, 300000, 300000, 'M', 'Đen '),
(160, 160, 1, 350000, 350000, 'M', 'Xanh'),
(161, 181, 1, 295000, 295000, 'M', 'Trắng'),
(162, 166, 1, 295000, 295000, 'M', 'Xanh'),
(166, 167, 1, 250000, 250000, 'M', 'Trắng'),
(167, 190, 1, 350000, 350000, 'M', 'Trắng - Xanh'),
(168, 201, 1, 285000, 285000, 'M', 'Xanh Blue'),
(169, 166, 1, 295000, 295000, 'M', 'Xanh'),
(169, 187, 1, 300000, 300000, 'M', 'Đen '),
(169, 201, 1, 295000, 295000, 'M', 'Xanh Blue'),
(170, 195, 3, 147000, 441000, 'M', 'Hồng'),
(170, 206, 1, 295000, 295000, 'M', 'Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadonmomo`
--

CREATE TABLE `chitiethoadonmomo` (
  `MaHD` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `ThanhTien` decimal(10,0) NOT NULL,
  `Size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaMau` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadonmomo`
--

INSERT INTO `chitiethoadonmomo` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES
(11, 192, 1, 217000, 217000, 'XL', 'Nâu'),
(12, 184, 1, 217000, 217000, 'S', 'Kem'),
(13, 204, 1, 295000, 295000, 'M', 'Tím than'),
(14, 180, 1, 300000, 300000, 'M', 'Đen - Trắng'),
(16, 161, 1, 525000, 525000, 'M', 'Đen '),
(17, 194, 1, 295000, 295000, 'M', 'Trắng'),
(18, 205, 1, 295000, 295000, 'L ', 'Trắng'),
(19, 168, 1, 210000, 210000, 'M', 'Xanh'),
(20, 204, 1, 295000, 295000, 'M', 'Trắng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietsanpham`
--

CREATE TABLE `chitietsanpham` (
  `MaSP` int NOT NULL,
  `MaSize` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaMau` varchar(20) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'null',
  `SoLuong` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietsanpham`
--

INSERT INTO `chitietsanpham` (`MaSP`, `MaSize`, `MaMau`, `SoLuong`) VALUES
(155, 'L', 'Kem', 19),
(155, 'M', 'Kem', 16),
(155, 'S', 'Kem', 19),
(155, 'XL', 'Kem', 18),
(160, 'L ', 'Xanh', 17),
(160, 'M', 'Xanh', 18),
(160, 'XL', 'Xanh', 16),
(161, 'L ', 'Đen ', 20),
(161, 'M', 'Đen ', 20),
(161, 'XL', 'Đen ', 16),
(162, 'L ', 'Đen ', 20),
(162, 'XL', 'Đen ', 13),
(166, 'L ', 'Xanh', 20),
(166, 'M', 'Xanh', 15),
(166, 'XL', 'Xanh', 14),
(167, 'L ', 'Trắng', 18),
(167, 'M', 'Trắng', 17),
(167, 'XL', 'Trắng', 19),
(168, 'L ', 'Xanh', 20),
(168, 'M', 'Xanh', 19),
(168, 'XL', 'Xanh', 20),
(176, 'L ', 'Be', 299),
(176, 'L ', 'Đen ', 300),
(176, 'L ', 'Đỏ', 300),
(176, 'L ', 'Trắng', 300),
(176, 'M', 'Be', 299),
(176, 'M', 'Đen ', 300),
(176, 'M', 'Đỏ', 300),
(176, 'M', 'Trắng', 300),
(176, 'S', 'Be', 300),
(176, 'S', 'Đen ', 300),
(176, 'S', 'Đỏ', 300),
(176, 'S', 'Trắng', 300),
(176, 'XL', 'Be', 300),
(176, 'XL', 'Đen ', 300),
(176, 'XL', 'Đỏ', 300),
(176, 'XL', 'Trắng', 300),
(177, 'L ', 'Be', 299),
(177, 'L ', 'Trắng', 300),
(177, 'L ', 'Trắng -Xanh', 300),
(177, 'M', 'Be', 300),
(177, 'M', 'Trắng', 299),
(177, 'M', 'Trắng -Xanh', 300),
(177, 'S', 'Be', 299),
(177, 'S', 'Trắng', 300),
(177, 'S', 'Trắng -Xanh', 300),
(177, 'XL', 'Be', 300),
(177, 'XL', 'Trắng', 300),
(177, 'XL', 'Trắng -Xanh', 300),
(179, 'L ', 'Xám', 300),
(179, 'L ', 'Xanh', 300),
(179, 'M', 'Xám', 300),
(179, 'M', 'Xanh', 299),
(179, 'S', 'Xám', 300),
(179, 'S', 'Xanh', 299),
(179, 'XL', 'Xám', 300),
(179, 'XL', 'Xanh', 299),
(180, 'L ', 'Đen - Trắng', 300),
(180, 'L ', 'Nâu', 300),
(180, 'M', 'Đen - Trắng', 300),
(180, 'M', 'Nâu', 300),
(180, 'S', 'Đen - Trắng', 300),
(180, 'S', 'Nâu', 300),
(180, 'XL', 'Đen - Trắng', 300),
(180, 'XL', 'Nâu', 300),
(181, 'L ', 'Trắng', 300),
(181, 'M', 'Trắng', 299),
(181, 'S', 'Trắng', 299),
(181, 'XL', 'Trắng', 300),
(182, 'L ', 'Hồng', 300),
(182, 'M', 'Hồng', 299),
(182, 'S', 'Hồng', 300),
(182, 'XL', 'Hồng', 300),
(184, 'L ', 'Hồng', 300),
(184, 'L ', 'Kem', 300),
(184, 'L ', 'Trắng -Xanh', 300),
(184, 'M', 'Hồng', 300),
(184, 'M', 'Kem', 300),
(184, 'M', 'Trắng -Xanh', 300),
(184, 'S', 'Hồng', 300),
(184, 'S', 'Kem', 300),
(184, 'S', 'Trắng -Xanh', 300),
(184, 'XL', 'Hồng', 300),
(184, 'XL', 'Kem', 300),
(184, 'XL', 'Trắng -Xanh', 298),
(185, 'L ', 'Be', 300),
(185, 'L ', 'Đen ', 300),
(185, 'L ', 'Đỏ', 300),
(185, 'L ', 'Vàng', 300),
(185, 'M', 'Be', 300),
(185, 'M', 'Đen ', 300),
(185, 'M', 'Đỏ', 300),
(185, 'M', 'Vàng', 300),
(185, 'S', 'Be', 300),
(185, 'S', 'Đen ', 300),
(185, 'S', 'Đỏ', 300),
(185, 'S', 'Vàng', 300),
(185, 'XL', 'Be', 300),
(185, 'XL', 'Đen ', 300),
(185, 'XL', 'Đỏ', 300),
(185, 'XL', 'Vàng', 300),
(186, 'L ', 'Đen ', 300),
(186, 'L ', 'Trắng', 300),
(186, 'M', 'Đen ', 299),
(186, 'M', 'Trắng', 300),
(186, 'S', 'Đen ', 300),
(186, 'S', 'Trắng', 300),
(186, 'XL', 'Đen ', 300),
(186, 'XL', 'Trắng', 300),
(187, 'L ', 'Đen ', 300),
(187, 'M', 'Đen ', 298),
(187, 'S', 'Đen ', 300),
(187, 'XL', 'Đen ', 300),
(188, 'L ', 'Be', 300),
(188, 'L ', 'Trắng', 300),
(188, 'M', 'Be', 300),
(188, 'M', 'Trắng', 300),
(188, 'S', 'Be', 300),
(188, 'S', 'Trắng', 299),
(188, 'XL', 'Be', 300),
(188, 'XL', 'Trắng', 300),
(189, 'L ', 'Trắng - Xanh', 300),
(189, 'L ', 'Xám trắng', 300),
(189, 'M', 'Trắng - Xanh', 300),
(189, 'M', 'Xám trắng', 300),
(189, 'S', 'Trắng - Xanh', 300),
(189, 'S', 'Xám trắng', 300),
(189, 'XL', 'Trắng - Xanh', 300),
(189, 'XL', 'Xám trắng', 300),
(190, 'L ', 'Hồng', 300),
(190, 'L ', 'Trắng - Xanh', 300),
(190, 'M', 'Hồng', 300),
(190, 'M', 'Trắng - Xanh', 299),
(190, 'S', 'Hồng', 300),
(190, 'S', 'Trắng - Xanh', 300),
(190, 'XL', 'Hồng', 300),
(190, 'XL', 'Trắng - Xanh', 300),
(192, 'S', 'Đen ', 300),
(192, 'S', 'Nâu', 300),
(192, 'S', 'Trắng - Xanh', 300),
(192, 'XL', 'Đen ', 300),
(192, 'XL', 'Nâu', 300),
(192, 'XL', 'Trắng - Xanh', 300),
(193, 'L ', 'Nâu', 300),
(193, 'L ', 'Trắng - Xanh', 300),
(193, 'M', 'Nâu', 300),
(193, 'M', 'Trắng - Xanh', 300),
(193, 'S', 'Nâu', 300),
(193, 'S', 'Trắng - Xanh', 300),
(193, 'XL', 'Nâu', 300),
(193, 'XL', 'Trắng - Xanh', 300),
(194, 'L ', 'Trắng', 300),
(194, 'M', 'Trắng', 300),
(194, 'S', 'Trắng', 300),
(194, 'XL', 'Trắng', 300),
(195, 'L ', 'Hồng', 300),
(195, 'M', 'Hồng', 296),
(195, 'S', 'Hồng', 300),
(195, 'XL', 'Hồng', 300),
(196, 'L ', 'Trắng', 300),
(196, 'L ', 'Trắng - Xanh', 300),
(196, 'M', 'Trắng', 300),
(196, 'M', 'Trắng - Xanh', 300),
(196, 'S', 'Trắng', 300),
(196, 'S', 'Trắng - Xanh', 300),
(196, 'XL', 'Trắng', 300),
(196, 'XL', 'Trắng - Xanh', 300),
(197, 'L ', 'Trắng', 300),
(197, 'M', 'Trắng', 300),
(197, 'S', 'Trắng', 300),
(197, 'XL', 'Trắng', 300),
(198, 'L ', 'Đen ', 300),
(198, 'L ', 'Hồng', 299),
(198, 'L ', 'Trắng', 300),
(198, 'M', 'Đen ', 300),
(198, 'M', 'Hồng', 300),
(198, 'M', 'Trắng', 300),
(198, 'S', 'Đen ', 300),
(198, 'S', 'Hồng', 300),
(198, 'S', 'Trắng', 300),
(198, 'XL', 'Đen ', 300),
(198, 'XL', 'Hồng', 300),
(198, 'XL', 'Trắng', 300),
(199, 'L ', 'Đỏ', 299),
(199, 'L ', 'Trắng', 300),
(199, 'M', 'Đỏ', 300),
(199, 'M', 'Trắng', 300),
(199, 'S', 'Đỏ', 300),
(199, 'S', 'Trắng', 300),
(199, 'XL', 'Đỏ', 300),
(199, 'XL', 'Trắng', 300),
(200, 'L ', 'Đen ', 300),
(200, 'L ', 'Hồng', 300),
(200, 'M', 'Đen ', 300),
(200, 'M', 'Hồng', 298),
(200, 'S', 'Đen ', 299),
(200, 'S', 'Hồng', 300),
(200, 'XL', 'Đen ', 300),
(200, 'XL', 'Hồng', 300),
(201, 'L ', 'Tím', 300),
(201, 'L ', 'Xanh Blue', 300),
(201, 'M', 'Tím', 300),
(201, 'M', 'Xanh Blue', 299),
(201, 'S', 'Tím', 300),
(201, 'S', 'Xanh Blue', 300),
(201, 'XL', 'Tím', 300),
(201, 'XL', 'Xanh Blue', 300),
(203, 'L ', 'Xám đen', 300),
(203, 'L ', 'Xanh Blue', 299),
(203, 'M', 'Xám đen', 300),
(203, 'M', 'Xanh Blue', 300),
(203, 'S', 'Xám đen', 300),
(203, 'S', 'Xanh Blue', 300),
(203, 'XL', 'Xám đen', 300),
(203, 'XL', 'Xanh Blue', 300),
(204, 'L ', 'Tím than', 300),
(204, 'L ', 'Trắng', 300),
(204, 'M', 'Tím than', 300),
(204, 'M', 'Trắng', 300),
(204, 'S', 'Tím than', 300),
(204, 'S', 'Trắng', 300),
(204, 'XL', 'Tím than', 300),
(204, 'XL', 'Trắng', 300),
(205, 'L ', 'Đen ', 300),
(205, 'L ', 'Nâu', 300),
(205, 'L ', 'Tím than', 300),
(205, 'L ', 'Trắng', 300),
(205, 'M', 'Đen ', 300),
(205, 'M', 'Nâu', 300),
(205, 'M', 'Tím than', 300),
(205, 'M', 'Trắng', 300),
(205, 'S', 'Đen ', 300),
(205, 'S', 'Nâu', 300),
(205, 'S', 'Tím than', 300),
(205, 'S', 'Trắng', 300),
(205, 'XL', 'Đen ', 300),
(205, 'XL', 'Nâu', 300),
(205, 'XL', 'Tím than', 300),
(205, 'XL', 'Trắng', 300),
(206, 'L ', 'Trắng', 300),
(206, 'M', 'Trắng', 299),
(206, 'S', 'Trắng', 300),
(206, 'XL', 'Trắng', 300),
(207, 'L ', 'Đen ', 300),
(207, 'M', 'Đen ', 299),
(207, 'S', 'Đen ', 300),
(207, 'XL', 'Đen ', 300),
(208, 'L ', 'Đen ', 300),
(208, 'L ', 'Đỏ', 300),
(208, 'L ', 'Trắng', 300),
(208, 'L ', 'Xám', 300),
(208, 'M', 'Đen ', 300),
(208, 'M', 'Đỏ', 300),
(208, 'M', 'Trắng', 300),
(208, 'M', 'Xám', 300),
(208, 'S', 'Đen ', 300),
(208, 'S', 'Đỏ', 300),
(208, 'S', 'Trắng', 300),
(208, 'S', 'Xám', 300),
(208, 'XL', 'Đen ', 300),
(208, 'XL', 'Đỏ', 300),
(208, 'XL', 'Trắng', 300),
(208, 'XL', 'Xám', 300);

--
-- Bẫy `chitietsanpham`
--
DELIMITER $$
CREATE TRIGGER `tongsl` AFTER UPDATE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_del` AFTER DELETE ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = OLD.MaSP) WHERE MaSP = OLD.MaSP
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tongsl_insert` AFTER INSERT ON `chitietsanpham` FOR EACH ROW UPDATE sanpham SET SoLuong= (SELECT SUM(SoLuong) from chitietsanpham WHERE MaSP = NEW.MaSP) WHERE MaSP = NEW.MaSP
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int NOT NULL,
  `TenDM` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Sản Phẩm Nổi Bật'),
(2, 'Sản Phẩm Mới'),
(3, 'Sản Phẩm bán chạy');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int NOT NULL,
  `MaKH` int NOT NULL,
  `MaNV` int DEFAULT NULL,
  `NgayDat` datetime DEFAULT CURRENT_TIMESTAMP,
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `MaNVGH` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MaMomo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `MaNVGH`, `MaMomo`) VALUES
(100, 20, 3, '2025-05-01 09:43:49', '2025-05-02 09:45:16', 'hoàn thành', 350000, '3', NULL),
(101, 20, 3, '2025-05-02 22:32:21', '2025-05-03 23:38:48', 'hoàn thành', 295000, '3', NULL),
(102, 20, 3, '2025-05-02 22:36:33', '2025-05-03 23:38:47', 'hoàn thành', 265000, '3', NULL),
(103, 20, 3, '2025-05-02 23:00:51', '2025-05-03 23:38:46', 'hoàn thành', 275000, '3', NULL),
(104, 17, 3, '2025-05-04 12:04:45', '2025-05-06 21:32:19', 'hoàn thành', 295000, '3', NULL),
(105, 17, 3, '2025-05-05 04:40:52', '2025-05-06 04:41:51', 'hoàn thành', 295000, '3', NULL),
(106, 17, 3, '2025-05-05 21:21:58', '2025-05-06 21:32:20', 'hoàn thành', 404000, '3', NULL),
(107, 17, 3, '2025-05-05 21:32:04', '2025-05-06 21:43:58', 'hoàn thành', 807000, '3', NULL),
(108, 17, 3, '2025-05-05 21:39:38', '2025-05-06 21:44:04', 'hoàn thành', 380500, '3', NULL),
(109, 17, 3, '2025-05-12 19:29:56', '2025-05-13 19:34:34', 'hoàn thành', 176112, '8', NULL),
(111, 17, 3, '2025-05-13 18:23:22', '2025-05-14 20:05:20', 'hoàn thành', 176112, '3', NULL),
(112, 18, 3, '2025-05-13 20:04:33', '2025-05-14 20:05:22', 'hoàn thành', 239445, '3', NULL),
(113, 18, 3, '2025-05-13 22:54:03', '2025-05-15 13:21:01', 'hoàn thành', 1712780, '3', NULL),
(114, 18, 3, '2025-05-13 22:54:39', '2025-05-15 13:20:59', 'hoàn thành', 433890, '3', NULL),
(115, 18, 3, '2025-05-13 22:54:57', NULL, 'Hủy Bỏ', 894445, NULL, NULL),
(116, 18, 3, '2025-05-13 22:55:37', '2025-05-14 22:59:19', 'hoàn thành', 176445, '3', NULL),
(117, 18, 3, '2025-05-13 23:03:34', '2025-05-15 13:07:53', 'hoàn thành', 183667, '3', NULL),
(118, 17, 3, '2025-05-14 13:20:31', NULL, 'Hủy Bỏ', 296500, NULL, NULL),
(119, 17, 3, '2025-05-14 13:55:20', '2025-05-15 13:59:16', 'hoàn thành', 242050, '3', NULL),
(120, 17, 3, '2025-05-14 14:32:58', '2025-05-17 01:16:35', 'hoàn thành', 732917, '3', NULL),
(121, 17, 3, '2025-05-16 01:32:45', '2025-05-19 18:53:46', 'hoàn thành', 208717, '3', NULL),
(122, 17, 3, '2025-05-16 12:46:20', '2025-05-19 18:53:45', 'hoàn thành', 1315200, '3', NULL),
(123, 17, 3, '2025-05-16 12:53:15', '2025-05-19 18:53:43', 'hoàn thành', 242050, '3', NULL),
(124, 17, 3, '2025-05-16 12:59:10', '2025-05-17 13:43:30', 'hoàn thành', 146347, '3', NULL),
(125, 17, 3, '2025-05-16 13:05:08', NULL, 'Hủy Bỏ', 242050, NULL, NULL),
(126, 17, 3, '2025-05-16 14:36:12', '2025-05-19 18:53:42', 'hoàn thành', 622200, '3', NULL),
(127, 17, 3, '2025-05-17 16:10:04', '2025-05-19 18:53:41', 'hoàn thành', 296500, '3', NULL),
(128, 17, 3, '2025-05-18 18:54:12', '2025-05-19 18:56:24', 'hoàn thành', 296500, '3', NULL),
(129, 17, 3, '2025-05-18 19:23:47', '2025-05-19 19:37:30', 'hoàn thành', 295000, '3', NULL),
(130, 17, 3, '2025-05-18 19:38:53', NULL, 'Hủy Bỏ', 263167, NULL, NULL),
(131, 22, 3, '2025-05-18 20:19:03', '2025-05-19 20:20:42', 'hoàn thành', 1878317, '3', NULL),
(132, 22, NULL, '2025-05-18 20:21:33', NULL, 'chưa duyệt', 242050, NULL, NULL),
(133, 17, 3, '2025-05-18 21:47:54', '2025-05-19 21:48:56', 'hoàn thành', 179017, '3', NULL),
(134, 17, 3, '2025-05-18 21:49:28', NULL, 'Hủy Bỏ', 212350, NULL, NULL),
(135, 17, NULL, '2025-05-18 22:54:02', NULL, 'chưa duyệt', 197500, NULL, NULL),
(136, 17, NULL, '2025-05-18 23:46:23', NULL, 'chưa duyệt', 469750, NULL, NULL),
(137, 17, NULL, '2025-05-19 00:20:08', NULL, 'chưa duyệt', 222250, NULL, NULL),
(138, 17, NULL, '2025-05-19 00:22:43', NULL, 'chưa duyệt', 197500, NULL, NULL),
(139, 17, 3, '2025-05-19 01:06:25', '2025-05-20 03:06:50', 'Đã duyệt', 410167, NULL, NULL),
(140, 17, NULL, '2025-05-19 03:15:19', NULL, 'chưa duyệt', 147000, NULL, NULL),
(141, 17, 6, '2025-05-19 03:34:47', '2025-05-20 17:05:14', 'Đã duyệt', 295000, NULL, NULL),
(142, 17, 3, '2025-05-19 03:37:23', NULL, 'Hủy Bỏ', 157900, NULL, NULL),
(143, 17, 3, '2025-05-19 03:38:31', NULL, 'Hủy Bỏ', 197500, NULL, NULL),
(144, 17, 3, '2025-05-19 16:49:30', '2025-05-20 16:59:31', 'Đã duyệt', 461878, NULL, NULL),
(145, 17, NULL, '2025-05-19 17:37:30', NULL, 'chưa duyệt', 4837000, NULL, NULL),
(146, 17, 3, '2025-05-19 18:01:11', '2025-05-20 18:01:41', 'hoàn thành', 295000, '3', NULL),
(147, 17, NULL, '2025-05-19 18:47:46', NULL, 'chưa duyệt', 166667, NULL, NULL),
(148, 17, NULL, '2025-05-21 16:45:53', NULL, 'chưa duyệt', 422000, NULL, NULL),
(149, 17, NULL, '2025-05-21 16:48:13', NULL, 'chưa duyệt', 285000, NULL, NULL),
(150, 17, NULL, '2025-05-21 19:57:30', NULL, 'chưa duyệt', 207000, NULL, NULL),
(151, 17, NULL, '2025-05-21 20:26:28', NULL, 'chưa duyệt', 240000, NULL, NULL),
(152, 17, NULL, '2025-05-21 21:18:14', NULL, 'chưa duyệt', 137000, NULL, NULL),
(153, 17, NULL, '2025-05-23 19:10:52', NULL, 'chưa duyệt', 232000, NULL, NULL),
(154, 17, NULL, '2025-05-23 19:21:05', NULL, 'chưa duyệt', 275000, NULL, NULL),
(155, 17, 3, '2025-05-23 19:32:03', '2025-05-24 19:32:26', 'hoàn thành', 147000, '3', NULL),
(156, 17, 3, '2025-05-23 20:18:31', '2025-05-24 20:18:47', 'hoàn thành', 295000, '3', NULL),
(157, 17, 3, '2025-05-23 20:33:17', '2025-05-24 20:33:50', 'Đã duyệt', 147000, NULL, NULL),
(158, 17, 3, '2025-05-23 20:34:06', NULL, 'Hủy Bỏ', 295000, NULL, NULL),
(159, 17, NULL, '2025-05-23 21:22:25', NULL, 'chưa duyệt', 266667, NULL, NULL),
(160, 17, 3, '2025-05-23 22:16:19', '2025-05-24 23:07:34', 'Đã duyệt', 350000, NULL, NULL),
(161, 18, 3, '2025-05-23 23:11:29', '2025-05-24 23:11:40', 'hoàn thành', 295000, '3', NULL),
(162, 18, NULL, '2025-05-23 23:46:08', NULL, 'chưa duyệt', 295000, NULL, NULL),
(163, 18, 3, '2025-05-23 23:49:40', '2025-05-24 23:58:07', 'hoàn thành', 250000, '3', NULL),
(164, 18, 3, '2025-05-23 23:51:13', NULL, 'Hủy Bỏ', 250000, NULL, NULL),
(165, 18, 3, '2025-05-23 23:51:45', NULL, 'Hủy Bỏ', 250000, NULL, NULL),
(166, 18, 3, '2025-05-23 23:53:29', '2025-05-24 23:57:52', 'Đã duyệt', 250000, NULL, NULL),
(167, 18, NULL, '2025-05-24 00:08:05', NULL, 'chưa duyệt', 350000, NULL, NULL),
(168, 17, 3, '2025-05-24 00:59:13', NULL, 'Hủy Bỏ', -9714999, NULL, NULL),
(169, 23, 3, '2025-05-25 07:46:52', '2025-05-26 07:47:39', 'hoàn thành', 856667, '3', NULL),
(170, 23, 3, '2025-05-25 08:04:50', '2025-05-26 08:05:04', 'hoàn thành', 736000, '3', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadonmomo`
--

CREATE TABLE `hoadonmomo` (
  `MaHD` int NOT NULL,
  `MaMomo` int DEFAULT NULL,
  `MaKH` int NOT NULL,
  `MaNV` int DEFAULT NULL,
  `NgayDat` datetime DEFAULT CURRENT_TIMESTAMP,
  `NgayGiao` datetime DEFAULT NULL,
  `TinhTrang` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `TrangThai` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT 'Chưa duyệt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadonmomo`
--

INSERT INTO `hoadonmomo` (`MaHD`, `MaMomo`, `MaKH`, `MaNV`, `NgayDat`, `NgayGiao`, `TinhTrang`, `TongTien`, `TrangThai`) VALUES
(7, 1, 1, NULL, '2025-05-23 13:00:00', NULL, 'Đã thanh toán', 150000, 'Chưa duyệt'),
(8, 2, 1, NULL, '2025-05-23 13:01:00', NULL, 'Đã thanh toán', 200000, 'Chưa duyệt'),
(9, 60, 17, NULL, '2025-05-23 21:13:00', NULL, 'Đã thanh toán', 295000, 'Chưa duyệt'),
(10, 62, 17, NULL, '2025-05-23 21:15:39', NULL, 'Đã thanh toán', 266667, 'Chưa duyệt'),
(11, 63, 17, NULL, '2025-05-23 21:36:33', NULL, 'Đã thanh toán', 217000, 'Chưa duyệt'),
(12, 64, 17, NULL, '2025-05-23 21:57:07', NULL, 'Đã thanh toán', 217000, 'Chưa duyệt'),
(13, 65, 17, NULL, '2025-05-23 22:16:59', NULL, 'Đã thanh toán', 295000, 'Chưa duyệt'),
(14, 66, 17, NULL, '2025-05-23 22:32:39', NULL, 'Đã thanh toán', 300000, 'Chưa duyệt'),
(15, 67, 17, NULL, '2025-05-23 22:35:10', NULL, 'Đã thanh toán', 300000, 'Chưa duyệt'),
(16, 68, 17, 3, '2025-05-23 22:36:42', '2025-05-24 23:36:43', 'Đã thanh toán', 491667, 'Đã duyệt'),
(17, 69, 18, 3, '2025-05-23 23:12:25', '2025-05-24 23:27:17', 'Đã thanh toán', 282688, 'Đã duyệt'),
(18, 70, 18, NULL, '2025-05-24 00:07:31', NULL, 'Đã thanh toán', 295000, 'Chưa duyệt'),
(19, 71, 17, NULL, '2025-05-25 08:02:47', NULL, 'Đã thanh toán', 210000, 'Chưa duyệt'),
(20, 72, 23, NULL, '2025-05-25 08:06:11', NULL, 'Đã thanh toán', 295000, 'Chưa duyệt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int NOT NULL,
  `TenKH` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` bigint NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES
(18, 'Trường Đức', '123@abc.vn', 1123456789, 'An Lễ Quỳnh Phụ Thái Bình', '123456'),
(17, 'Đức Trường', '2409boonie@gmail.com', 855256204, 'An Lễ Quỳnh Phụ Thái Bình', '@Truong2506@'),
(19, 'Trường Đức', 'admin@abc.com', 1123456789, 'An Lễ Quỳnh Phụ Thái Bình', '123456'),
(22, 'Trường Đức', 'dinhductruong25062004@gmail.com', 888888888, 'Hà Nội', '123456789'),
(20, 'abccccc', 'test@gmail.com', 222222222, 'An lễ qp TB', '123456'),
(23, 'test case', 'testcase@gmail.com', 222222222, 'aaaaaaaaaaa', '123456'),
(1, 'Khách hàng test', 'testtt@gmail.com', 123456789, 'Hà Nội', '123456');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int NOT NULL,
  `TenKM` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `MoTa` varchar(11) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `KM_PT` int DEFAULT NULL,
  `TienKM` decimal(10,0) DEFAULT NULL,
  `NgayBD` date DEFAULT NULL,
  `NgayKT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `MoTa`, `KM_PT`, `TienKM`, `NgayBD`, `NgayKT`) VALUES
(9, 'kỉ niệm 02/09', 'testt', 2, 12121, '2025-09-01', '2025-05-03'),
(10, 'valentine', 'test', 5, 11111, '2025-04-28', '2025-04-30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau`
--

CREATE TABLE `mau` (
  `MaMau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL DEFAULT 'none'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `mau`
--

INSERT INTO `mau` (`MaMau`) VALUES
('Be'),
('Đen '),
('Đen - Trắng'),
('Đỏ'),
('Hồng'),
('Kem'),
('Nâu'),
('Tím'),
('Tím than'),
('Trắng'),
('Trắng - Xanh'),
('Vàng'),
('Xám'),
('Xám đen'),
('Xám trắng'),
('Xanh Blue'),
('Xanh Green');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `momo`
--

CREATE TABLE `momo` (
  `MaMomo` int NOT NULL,
  `partner_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_id` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_info` text COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trans_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `pay_time` datetime DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `momo`
--

INSERT INTO `momo` (`MaMomo`, `partner_code`, `order_id`, `amount`, `order_info`, `order_type`, `trans_id`, `pay_type`, `result_code`, `message`, `pay_time`, `status`, `created_at`) VALUES
(1, 'MOMO123', 'ORDER123', '150000', 'Test order 1', 'momo_wallet', 'TRANS123', 'napas', '0', 'Successful', '2025-05-23 13:00:00', 'success', '2025-05-23 13:05:37'),
(2, 'MOMO124', 'ORDER124', '200000', 'Test order 2', 'momo_wallet', 'TRANS124', 'napas', '0', 'Successful', '2025-05-23 13:01:00', 'pending', '2025-05-23 13:05:37'),
(42, 'MOMOBKUN20180529', '1748000642', '580000', 'Thanh toán đơn hàng #1748000642', 'momo_wallet', '1748000645478', '', '1006', 'Giao dịch bị từ chối bởi người dùng.', '2025-05-23 11:44:10', 'Thất bại', '2025-05-23 11:44:10'),
(54, 'MOMOBKUN20180529', '1748008910', '295000', 'Thanh toán đơn hàng #1748008910', 'momo_wallet', '3303211178', 'aio_qr', '0', 'Thành công.', '2025-05-23 14:03:38', 'Thành công', '2025-05-23 14:03:38'),
(60, 'MOMOBKUN20180529', '1748009562', '295000', 'Thanh toán đơn hàng #1748009562', 'momo_wallet', '3303211189', 'aio_qr', '0', 'Thành công.', '2025-05-23 14:13:00', 'Thành công', '2025-05-23 14:13:00'),
(61, 'MOMOBKUN20180529', '1748009642', '295000', 'Thanh toán đơn hàng #1748009642', 'momo_wallet', '1748009646813', '', '1006', 'Giao dịch bị từ chối bởi người dùng.', '2025-05-23 14:14:11', 'Thất bại', '2025-05-23 14:14:11'),
(62, 'MOMOBKUN20180529', '1748009726', '266667', 'Thanh toán đơn hàng #1748009726', 'momo_wallet', '3303211294', 'aio_qr', '0', 'Thành công.', '2025-05-23 14:15:39', 'Thành công', '2025-05-23 14:15:39'),
(63, 'MOMOBKUN20180529', '1748010973', '217000', 'Thanh toán đơn hàng #1748010973', 'momo_wallet', '3303211404', 'aio_qr', '0', 'Thành công.', '2025-05-23 14:36:33', 'Thành công', '2025-05-23 14:36:33'),
(64, 'MOMOBKUN20180529', '1748012215', '217000', 'Thanh toán đơn hàng #1748012215', 'momo_wallet', '3303211492', 'aio_qr', '0', 'Thành công.', '2025-05-23 14:57:07', 'Thành công', '2025-05-23 14:57:07'),
(65, 'MOMOBKUN20180529', '1748013399', '295000', 'Thanh toán đơn hàng #1748013399', 'momo_wallet', '3303211700', 'aio_qr', '0', 'Thành công.', '2025-05-23 15:16:59', 'Thành công', '2025-05-23 15:16:59'),
(66, 'MOMOBKUN20180529', '1748014346', '300000', 'Thanh toán đơn hàng #1748014346', 'momo_wallet', '3303211810', 'aio_qr', '0', 'Thành công.', '2025-05-23 15:32:39', 'Thành công', '2025-05-23 15:32:39'),
(67, 'MOMOBKUN20180529', '1748014494', '300000', 'Thanh toán đơn hàng #1748014494', 'momo_wallet', '3303211825', 'aio_qr', '0', 'Thành công.', '2025-05-23 15:35:10', 'Thành công', '2025-05-23 15:35:10'),
(68, 'MOMOBKUN20180529', '1748014589', '491667', 'Thanh toán đơn hàng #1748014589', 'momo_wallet', '3303211827', 'aio_qr', '0', 'Thành công.', '2025-05-23 15:36:42', 'Thành công', '2025-05-23 15:36:42'),
(69, 'MOMOBKUN20180529', '1748016729', '282688', 'Thanh toán đơn hàng #1748016729', 'momo_wallet', '3303212065', 'aio_qr', '0', 'Thành công.', '2025-05-23 16:12:25', 'Thành công', '2025-05-23 16:12:25'),
(70, 'MOMOBKUN20180529', '1748020027', '295000', 'Thanh toán đơn hàng #1748020027', 'momo_wallet', '3303212572', 'aio_qr', '0', 'Thành công.', '2025-05-23 17:07:31', 'Thành công', '2025-05-23 17:07:31'),
(71, 'MOMO', '1748134934', '210000', 'Thanh toán đơn hàng #1748134934', 'momo_wallet', '3303538761', 'qr', '0', 'Thành công.', '2025-05-25 01:02:47', 'Thành công', '2025-05-25 01:02:47'),
(72, 'MOMO', '1748135151', '295000', 'Thanh toán đơn hàng #1748135151', 'momo_wallet', '3303538763', 'qr', '0', 'Thành công.', '2025-05-25 01:06:11', 'Thành công', '2025-05-25 01:06:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhan`
--

CREATE TABLE `nguoinhan` (
  `MaHD` int NOT NULL,
  `TenNN` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhan`
--

INSERT INTO `nguoinhan` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(70, 'Nguyễn Nam Cường', 'diachi', 1228923743),
(86, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(87, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(88, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(89, 'Nguyễn Đình Trí', '62/32 trần thánh tông - tân bình - hcm', 778923743),
(92, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(93, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(94, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(95, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(99, 'Nguyễn Doãn Tùng', 'Quận 12 HCM', 348008939),
(100, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 968454533),
(101, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 968454533),
(102, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 968454533),
(103, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 968454533),
(104, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(105, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(106, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(107, 'đinh trường', 'An Lễ Quỳnh Phụ Thái Bình', 987654321),
(108, 'đinh trường', 'An Lễ Quỳnh Phụ Thái Bình', 987654321),
(109, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(111, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(112, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(113, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(114, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(115, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(116, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(117, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(118, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(119, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(120, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(121, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 832091111),
(122, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(123, 'Đức Trườnggggggg', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(124, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(125, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(126, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(127, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(128, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(129, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(130, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 1111111111),
(131, 'abcxyz', 'Hà N', 1123456789),
(132, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(133, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(134, 'aaaaaaaaaaaaaaa', 'An Lễ Quỳnh Phụ Thái Bình', 1111111111),
(135, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(136, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(137, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(138, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(139, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(140, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(141, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(142, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(143, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(144, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(145, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(146, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(147, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(148, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(149, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(150, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(151, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(152, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(153, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(154, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(155, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(156, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(157, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(158, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(159, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(160, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(161, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(162, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(166, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(167, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(168, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(169, 'test case', 'aaaaaaaaaaaa', 99999999),
(170, 'test case', 'aaaaaaaaaaa', 222222222);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoinhanmomo`
--

CREATE TABLE `nguoinhanmomo` (
  `MaHD` int NOT NULL,
  `TenNN` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChiNN` text CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDTNN` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoinhanmomo`
--

INSERT INTO `nguoinhanmomo` (`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES
(12, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(13, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(14, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(15, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(16, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(17, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(18, 'Trường Đức', 'An Lễ Quỳnh Phụ Thái Bình', 1123456789),
(19, 'Đức Trường', 'An Lễ Quỳnh Phụ Thái Bình', 855256204),
(20, 'test case', 'aaaaaaaaaaa', 222222222);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacc`
--

CREATE TABLE `nhacc` (
  `MaNCC` int NOT NULL,
  `TenNCC` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacc`
--

INSERT INTO `nhacc` (`MaNCC`, `TenNCC`) VALUES
(1, 'MŨ LƯỠI TRAI'),
(2, 'MŨ QUAI VÀNH'),
(8, 'MŨ NỬA ĐẦU');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int NOT NULL,
  `TenNV` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SDT` int NOT NULL,
  `DiaChi` text COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MatKhau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Quyen` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Email`, `SDT`, `DiaChi`, `MatKhau`, `Quyen`) VALUES
(3, 'Admin', 'admin@gmail.com', 832091111, 'An Lễ Quỳnh Phụ Thái Bình', 'admin', 1),
(13, 'co-admin', 'co-admin@gmail.com', 1123456789, 'An Lễ Quỳnh Phụ Thái Bình', '123456', 2),
(6, 'nvbh', 'nvbh@gmail.com', 968454533, 'An Lễ Quỳnh Phụ Thái Bình', '123456', 4),
(11, 'nvgh', 'nvgh@gmail.com', 1123456789, 'An Lễ Quỳnh Phụ Thái Bình', '123456', 5),
(12, 'qlk', 'qlk@gmail.com', 99999999, 'xyh', '123456', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieugiamgia`
--

CREATE TABLE `phieugiamgia` (
  `MaGG` int NOT NULL,
  `TenGG` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `TienGG` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieugiamgia`
--

INSERT INTO `phieugiamgia` (`MaGG`, `TenGG`, `TienGG`) VALUES
(1, 'Fpoly', 33333),
(2, 'passduan', 12312),
(5, 'fpt', 22222);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int NOT NULL,
  `MaNV` int NOT NULL,
  `MaSP` int NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) DEFAULT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `NgayNhap` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Note` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL,
  `Size` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Mau` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int NOT NULL,
  `MaNV` int NOT NULL,
  `MaSP` int NOT NULL,
  `Mau` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `Size` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `SoLuong` int NOT NULL,
  `DonGia` decimal(10,0) NOT NULL,
  `TongTien` decimal(10,0) NOT NULL,
  `Note` varchar(500) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `NgayXuat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `phieuxuat`
--

INSERT INTO `phieuxuat` (`MaPX`, `MaNV`, `MaSP`, `Mau`, `Size`, `SoLuong`, `DonGia`, `TongTien`, `Note`, `NgayXuat`) VALUES
(5, 3, 4, 'none', '36', 40, 1000000, 40000000, 'test', '2020-01-10 21:18:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quyen`
--

CREATE TABLE `quyen` (
  `id` int NOT NULL,
  `Ten` varchar(100) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MoTa` varchar(100) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `quyen`
--

INSERT INTO `quyen` (`id`, `Ten`, `MoTa`) VALUES
(1, 'Manager', 'chủ cửa hàng'),
(2, 'Project Manager', 'quản trị viên'),
(3, 'Quản lý Kho', ''),
(4, 'Nhân viên Bán Hàng', ''),
(5, 'Nhân viên giao hàng', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int NOT NULL,
  `TenSP` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `MaDM` int DEFAULT NULL,
  `MaNCC` int NOT NULL,
  `SoLuong` int DEFAULT '0',
  `MoTa` text COLLATE utf8mb4_vietnamese_ci,
  `DonGia` decimal(10,0) NOT NULL,
  `AnhNen` varchar(50) COLLATE utf8mb4_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `SoLuong`, `MoTa`, `DonGia`, `AnhNen`) VALUES
(155, 'Mũ Rộng Vành Nữ Adidas Golf Adidas W Wide MV02', 2, 2, 72, 'Tự tin sải bước trên sân golf hay trong những chuyến dạo chơi dưới nắng với Mũ Rộng Vành Nữ Adidas W Wide – lựa chọn hoàn hảo cho phong cách thể thao thanh lịch.\r\n\r\nChiếc mũ được thiết kế với vành rộng bản, giúp che chắn hiệu quả ánh nắng mặt trời, bảo vệ làn da và đôi mắt khỏi tia UV độc hại. Chất liệu vải cao cấp, nhẹ, thoáng khí, tạo cảm giác dễ chịu suốt cả ngày dài hoạt động.\r\n\r\nForm dáng nữ tính, ôm vừa vặn đầu, kết hợp logo Adidas tinh tế phía trước – mang lại vẻ ngoài năng động, đẳng cấp nhưng không kém phần mềm mại.', 295000, 'MV02.jpg'),
(159, 'Mũ lưỡi trai Nữ, Nam phong cách Hàn Quốc MLT0003', 1, 1, 4800, 'Mũ lưỡi trai Nữ, Nam phong cách Hàn Quốc đẹp, sang, xịn ', 295000, 'MLT0003_1.jpg'),
(160, 'Mũ MLB New Nylon Structure Ball Cap MLT0005', 3, 1, 51, '🧢 Mũ MLB New Nylon Structure Ball Cap là lựa chọn hoàn hảo cho những ai yêu thích phong cách thể thao năng động. Với thiết kế form cứng cáp, chất liệu nylon cao cấp nhẹ và thoáng khí, chiếc mũ không chỉ mang lại cảm giác thoải mái khi đội mà còn giúp bạn giữ form chuẩn suốt cả ngày. Logo đội bóng MLB thêu nổi bật ở mặt trước tạo điểm nhấn cá tính, dễ dàng phối với mọi outfit từ streetwear đến casual. Phù hợp cho cả nam và nữ, đây là phụ kiện không thể thiếu trong tủ đồ của bạn.', 350000, 'MLT0005_1.jpg'),
(161, 'Mũ MLB Unisex New York Yankees MLT0004', 2, 1, 56, 'Mũ MLB Unisex New York Yankees là item thời trang không thể thiếu cho tín đồ phong cách thể thao và streetwear. Thiết kế đơn giản nhưng đậm chất cá tính với logo New York Yankees thêu nổi bật ở mặt trước, chiếc mũ mang đậm dấu ấn của thương hiệu MLB. Chất liệu cao cấp, form cứng cáp giúp giữ dáng tốt, kết hợp quai điều chỉnh phía sau phù hợp với mọi kích cỡ đầu. Phối đồ cực dễ, phù hợp cho cả nam và nữ – từ outfit năng động thường ngày đến phong cách đường phố hiện đại.', 525000, 'MLT0004.jpg'),
(162, 'Mũ Gucci Cap MLT0006', 3, 1, 33, ' Mũ Gucci Cap là biểu tượng của sự đẳng cấp và thời thượng, kết hợp hoàn hảo giữa phong cách thời trang cao cấp và cá tính hiện đại. Được chế tác từ chất liệu cao cấp như cotton hoặc canvas GG đặc trưng, mũ có thiết kế đơn giản nhưng sang trọng với logo Gucci hoặc chi tiết sọc Web xanh – đỏ – xanh nổi bật. Quai điều chỉnh linh hoạt phía sau mang lại cảm giác thoải mái và vừa vặn cho mọi giới tính. Phù hợp để tạo điểm nhấn cho các outfit từ casual đến high-street, Gucci Cap là lựa chọn lý tưởng cho những ai yêu thích sự khác biệt và tinh tế.', 950000, 'MLT0006.jpg'),
(166, 'Mũ MLB Denim New York Yankees MV03', 2, 2, 49, 'Mũ MLB Denim New York Yankees là sự giao thoa hoàn hảo giữa chất liệu denim bụi bặm và phong cách thể thao thời thượng. Thiết kế unisex với logo New York Yankees thêu nổi bật phía trước mang đến nét cá tính riêng biệt, dễ dàng kết hợp với các outfit đường phố hoặc năng động hàng ngày. Chất liệu denim cao cấp giúp giữ form tốt, bền bỉ theo thời gian, đồng thời tạo cảm giác thoải mái khi đội. Với phần quai điều chỉnh linh hoạt phía sau, chiếc mũ phù hợp cho mọi dáng đầu – một phụ kiện không thể thiếu cho tín đồ streetwear và fan MLB chính hiệu.', 295000, 'MV03.jpg'),
(167, 'Mũ MLB Basic Fur Bucket Hat New York Yankees MV04', 3, 2, 54, 'Mũ MLB Basic Fur Bucket Hat New York Yankees mang đến sự kết hợp hoàn hảo giữa phong cách bucket hat trẻ trung và sự ấm áp từ chất liệu lông mềm mại. Thiết kế unisex với logo New York Yankees thêu tinh tế ở mặt trước, chiếc mũ không chỉ giúp bạn nổi bật mà còn giữ ấm tuyệt vời trong những ngày se lạnh. Vành mũ rộng vừa phải, tạo form dáng tự nhiên, dễ phối hợp với nhiều phong cách từ casual đến streetwear. Đây là lựa chọn lý tưởng để bạn thể hiện cá tính riêng biệt và giữ ấm thời trang.', 250000, 'MV04.jpg'),
(168, 'Mũ MLB  Monogram Pastel Dome New York Yankees MV05', 2, 2, 59, 'Mũ MLB Monogram Pastel Dome New York Yankees là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 210000, 'MV05.jpg'),
(176, 'Mũ lưỡi trai Nữ, Nam phong cách Hàn Quốc MLT0002', 1, 1, 4798, 'Mũ lưỡi trai chữ ký phong cách Hàn Quốc được thiết kế với kiểu dáng thời trang trẻ trung, chiếc mũ này là phụ kiện yêu thích của nhiều bạn trẻ hiện nay.\r\n\r\nMũ có họa tiết chữ ký nổi bật mang đến sự cổ điển xen lẫn hiện đại cá tính cho người đội.', 295000, 'MLT0002.jpg'),
(177, 'Mũ Spao Cap MLT0007', 1, 1, 3597, 'Mũ Spao Cap là phụ kiện thời trang không thể thiếu cho những ai yêu thích sự đơn giản nhưng cá tính. Với thiết kế basic hiện đại, form mũ chuẩn, chất liệu vải cotton cao cấp thoáng mát, giúp bạn đội cả ngày dài mà vẫn dễ chịu. Dễ dàng phối đồ với nhiều phong cách khác nhau – từ năng động, thể thao đến streetwear.', 275000, 'MLT0007_1.jpg'),
(179, 'Mũ 13 De Marzo Fujiya Sweets Bear MLT0009', 1, 1, 2397, 'Chiếc mũ đình đám đến từ thương hiệu 13 De Marzo kết hợp cùng biểu tượng gấu Fujiya dễ thương đã tạo nên một item “gây sốt” giới trẻ. Thiết kế độc đáo với hình thêu chú gấu Sweets Bear ngọt ngào, pha chút đáng yêu nhưng vẫn giữ được phong cách cá tính, đậm chất thời trang đường phố Hàn Quốc.', 232000, 'MLT0009.jpg'),
(180, 'Mũ MLB Monogram Bucket Hat New York Yankees MV01', 2, 2, 2400, 'Mũ bucket Monogram của MLB là sự kết hợp hoàn hảo giữa thời trang hiện đại và dấu ấn thể thao cổ điển. Thiết kế đặc trưng với họa tiết monogram logo NY phủ toàn mũ, mang lại vẻ ngoài nổi bật và đầy cá tính. Form mũ tròn, vành mềm, dễ đội và che nắng hiệu quả – một phụ kiện không thể thiếu cho những tín đồ thời trang đường phố.', 300000, 'MV01.jpg'),
(181, 'Mũ 13 De Marzo Badge Velcro MV06', 1, 2, 1198, 'Mũ 13 De Marzo Badge Velcro gây ấn tượng mạnh với thiết kế độc đáo: phần mặt trước sử dụng chất liệu velcro (dán) đi kèm logo badge có thể tháo rời, giúp bạn tùy biến phong cách theo sở thích. Form mũ unisex trẻ trung, dễ phối đồ cùng các outfit thường ngày hay streetwear cá tính. Đây là item thời trang được giới trẻ Hàn Quốc yêu thích vì vừa tối giản, vừa nổi bật cá tính riêng.', 295000, 'MV06.jpg'),
(182, 'Mũ 13 De Marzo Badge Velcro MV07', 1, 2, 1199, 'Mũ 13 De Marzo Badge Velcro gây ấn tượng mạnh với thiết kế độc đáo: phần mặt trước sử dụng chất liệu velcro (dán) đi kèm logo badge có thể tháo rời, giúp bạn tùy biến phong cách theo sở thích. Form mũ unisex trẻ trung, dễ phối đồ cùng các outfit thường ngày hay streetwear cá tính. Đây là item thời trang được giới trẻ Hàn Quốc yêu thích vì vừa tối giản, vừa nổi bật cá tính riêng.\r\n\r\n', 295000, 'MV07.jpg'),
(184, 'Mũ MLB Varsity Vintage Washing Stitch Unstructured Ball MLT0008', 3, 1, 3598, 'Mũ MLB Varsity Vintage Washing Stitch Unstructured Ball Cap là điểm nhấn hoàn hảo cho outfit thường ngày với chất vintage cực chất. Thiết kế trơn không cấu trúc (unstructured), mang lại cảm giác mềm mại, thoải mái khi đội. Hiệu ứng wash màu tạo cảm giác cổ điển, kết hợp cùng các đường chỉ may nổi bật, tạo nên phong cách đặc trưng đậm chất MLB.', 217000, 'MLT0008.jpg'),
(185, 'Mũ WHOAU Steve Washed Ball MLT0001', 3, 1, 4800, 'là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MLT0001.jpg'),
(186, 'Mũ Unisex Lacoste Sport Lightweight MLT0010', 3, 1, 2399, 'Mũ Unisex Lacoste Sport Lightweight là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 147000, 'MLT0010.jpg'),
(187, 'Mũ 13 De Marzo Racing Graffiti Bear', 3, 1, 1198, 'Mũ 13 De Marzo Racing Graffiti Bear là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 300000, 'MLT0011.jpg'),
(188, 'Mũ Tommy Hilfiger Ardin Dad Baseball MLT0012', 3, 1, 2399, 'Mũ Tommy Hilfiger Ardin Dad Baseball là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 147000, 'MLT0012.jpg'),
(189, 'Mũ New Era x MLB New York Yankees MLT0013', 3, 1, 2400, 'Mũ New Era x MLB New York Yankees là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 245000, 'MLT0013.jpg'),
(190, 'Mũ MLB Logo Varsity Poggle Boston Red MLT0014', 2, 1, 2399, 'Mũ MLB Logo Varsity Poggle Boston Red là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 350000, 'MLT0014.jpg'),
(192, 'Mũ New Era New York Yankees 59Fifty MLT0016', 2, 1, 1800, 'Mũ New Era New York Yankees 59Fifty là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 217000, 'MLT0016.jpg'),
(193, 'Mũ 13 De Marzo Logo Pendent MV08', 1, 2, 2400, 'Mũ 13 De Marzo Logo Pendent  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MV08_1.jpg'),
(194, 'Mũ 13 De Marzo Bear Illustrate Inside-out MV09 ', 1, 2, 1200, 'Mũ 13 De Marzo Bear Illustrate Inside-out  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MV09.jpg'),
(195, 'Mũ MLB LA Dodgers MV010', 1, 2, 1196, 'Mũ MLB LA Dodgers  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 147000, 'MV010.jpg'),
(196, 'Mũ Louis Vuitton LV Monogram Watercolor MV011', 2, 2, 2400, 'Mũ Louis Vuitton LV Monogram Watercolor  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MV011.jpg'),
(197, 'Mũ Unisex Puma BMW M Motorsport MV012', 1, 2, 1200, 'Mũ Unisex Puma BMW M Motorsport  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MV012.jpg'),
(198, 'Mũ Nửa Đầu Adidas Climacool MND01', 1, 8, 3599, 'Mũ Nửa Đầu Adidas Climacool  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MND01.jpg'),
(199, 'Mũ Nửa Đầu Adidas Tour Vành Rộng MND02', 1, 8, 2399, 'Mũ Nửa Đầu Adidas Tour Vành Rộng  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MND02.jpg'),
(200, 'Mũ Nữ Dior Diorclub V1U Colore MND03', 1, 8, 2397, 'Mũ Nữ Dior Diorclub V1U Colore  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 147000, 'MND03.jpg'),
(201, 'Mũ MLB Sun Cap LA Dodgers MND04', 1, 8, 2399, 'Mũ MLB Sun Cap LA Dodgers  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MND04.jpg'),
(203, 'Mũ MLB Suncap Paisley MND05', 1, 8, 2399, 'Mũ MLB Suncap Paisley  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MND05_2.jpg'),
(204, 'Mũ Le Coq Sportif Pile Sun Visor MND06', 1, 8, 2400, 'Mũ Le Coq Sportif Pile Sun Visor  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MND06.jpg'),
(205, 'Mũ New Era 9Forty New York Yankees MLT0015', 2, 1, 4800, 'Mũ New Era 9Forty New York Yankees  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MLT0015.jpg'),
(206, 'Mũ 13 De Marzo', 1, 8, 1199, 'Mũ 13 De Marzo  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 295000, 'MND07.jpg'),
(207, 'Mũ Nửa Đầu Nữ Adidas Vành Rộng MND08', 1, 8, 1199, 'Mũ Nửa Đầu Nữ Adidas Vành Rộng  là sự pha trộn tinh tế giữa phong cách hiện đại và vẻ dịu dàng của tông màu pastel nhẹ nhàng. Thiết kế dạng dome độc đáo với họa tiết monogram đặc trưng của MLB cùng logo New York Yankees thêu nổi bật tạo điểm nhấn thời trang cá tính. Chất liệu mềm mại, thoáng khí mang lại cảm giác dễ chịu khi đội, phù hợp cho cả nam và nữ yêu thích sự trẻ trung, tinh tế. Chiếc mũ này là phụ kiện hoàn hảo để bạn thể hiện phong cách sành điệu và nổi bật mọi lúc mọi nơi.', 147000, 'MND08.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanphamkhuyenmai`
--

CREATE TABLE `sanphamkhuyenmai` (
  `MaSP` int NOT NULL,
  `MaKM` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `sanphamkhuyenmai`
--

INSERT INTO `sanphamkhuyenmai` (`MaSP`, `MaKM`) VALUES
(119, 1),
(127, 1),
(129, 1),
(131, 1),
(155, 1),
(166, 1),
(167, 1),
(168, 1),
(134, 3),
(136, 3),
(138, 3),
(141, 3),
(163, 9),
(163, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `MaSize` varchar(50) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`MaSize`) VALUES
('L '),
('M'),
('S'),
('XL');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `anhsp`
--
ALTER TABLE `anhsp`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`,`MaSP`,`MaKH`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`,`Size`,`MaMau`),
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `Size` (`Size`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `chitiethoadonmomo`
--
ALTER TABLE `chitiethoadonmomo`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `chitietsanpham`
--
ALTER TABLE `chitietsanpham`
  ADD PRIMARY KEY (`MaSP`,`MaSize`,`MaMau`),
  ADD KEY `MaSize` (`MaSize`),
  ADD KEY `MaMau` (`MaMau`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `fk_hoadon_momo` (`MaMomo`);

--
-- Chỉ mục cho bảng `hoadonmomo`
--
ALTER TABLE `hoadonmomo`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `hoadonmomo_ibfk_3` (`MaMomo`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `mau`
--
ALTER TABLE `mau`
  ADD PRIMARY KEY (`MaMau`);

--
-- Chỉ mục cho bảng `momo`
--
ALTER TABLE `momo`
  ADD PRIMARY KEY (`MaMomo`);

--
-- Chỉ mục cho bảng `nguoinhan`
--
ALTER TABLE `nguoinhan`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nguoinhanmomo`
--
ALTER TABLE `nguoinhanmomo`
  ADD PRIMARY KEY (`MaHD`);

--
-- Chỉ mục cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`Email`),
  ADD UNIQUE KEY `MaNV` (`MaNV`),
  ADD KEY `Quyen` (`Quyen`);

--
-- Chỉ mục cho bảng `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  ADD PRIMARY KEY (`MaGG`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MauSP` (`MaSP`),
  ADD KEY `Mau` (`Mau`),
  ADD KEY `Size` (`Size`);

--
-- Chỉ mục cho bảng `quyen`
--
ALTER TABLE `quyen`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaNCC` (`MaNCC`),
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `sanphamkhuyenmai`
--
ALTER TABLE `sanphamkhuyenmai`
  ADD PRIMARY KEY (`MaSP`,`MaKM`),
  ADD KEY `MaKH` (`MaKM`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`MaSize`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaBL` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDM` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT cho bảng `hoadonmomo`
--
ALTER TABLE `hoadonmomo`
  MODIFY `MaHD` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `momo`
--
ALTER TABLE `momo`
  MODIFY `MaMomo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT cho bảng `nhacc`
--
ALTER TABLE `nhacc`
  MODIFY `MaNCC` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `phieugiamgia`
--
ALTER TABLE `phieugiamgia`
  MODIFY `MaGG` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT cho bảng `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `MaPX` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadonmomo`
--
ALTER TABLE `chitiethoadonmomo`
  ADD CONSTRAINT `chitiethoadonmomo_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadonmomo` (`MaHD`),
  ADD CONSTRAINT `chitiethoadonmomo_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `fk_hoadon_momo` FOREIGN KEY (`MaMomo`) REFERENCES `momo` (`MaMomo`);

--
-- Các ràng buộc cho bảng `hoadonmomo`
--
ALTER TABLE `hoadonmomo`
  ADD CONSTRAINT `hoadonmomo_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadonmomo_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `hoadonmomo_ibfk_3` FOREIGN KEY (`MaMomo`) REFERENCES `momo` (`MaMomo`);

--
-- Các ràng buộc cho bảng `nguoinhanmomo`
--
ALTER TABLE `nguoinhanmomo`
  ADD CONSTRAINT `nguoinhanmomo_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadonmomo` (`MaHD`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
