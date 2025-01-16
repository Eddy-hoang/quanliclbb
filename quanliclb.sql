-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 16, 2025 lúc 05:55 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanliclb`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `coaches`
--

CREATE TABLE `coaches` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `salary` double NOT NULL,
  `experience_years` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `coaches`
--

INSERT INTO `coaches` (`id`, `name`, `age`, `salary`, `experience_years`) VALUES
('001', 'Park Hang_Seo', 68, 23000, 11),
('002', 'Kim Sang-sik', 48, 23000, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `players`
--

CREATE TABLE `players` (
  `id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `salary` double NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `players`
--

INSERT INTO `players` (`id`, `name`, `age`, `salary`, `position`, `goals`) VALUES
('001', 'Eddy', 18, 30000, 'hậu vệ', 11),
('002', 'Hồ Tấn Huy', 18, 2000, 'hậu vệ', 0),
('003', 'Lê Tấn Vy', 18, 1500, 'thủ môn', 0),
('004', 'Hồ Hữu Nhật', 18, 3000, 'tiền vệ', 5),
('005', 'Eddy_Hoàng', 19, 4000, 'tiền đạo', 15),
('006', 'Nguyễn Trung Nghĩa', 18, 2300, 'tiền đạo', 0),
('007', 'Võ Đức Nhân', 20, 5000, 'hậu vệ', 0),
('008', 'Thiện', 18, 15000, 'tiền đạo', 5),
('009', 'Hoàng Đức', 29, 3000, 'hậu vệ', 0),
('010', 'Eddy', 20, 3000, 'tiền đạo', 10);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `coaches`
--
ALTER TABLE `coaches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
