-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 26, 2022 lúc 12:27 PM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `doan_anhkhoa`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bang_dang_nhap`
--

CREATE TABLE `bang_dang_nhap` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bang_dang_nhap`
--

INSERT INTO `bang_dang_nhap` (`id`, `user_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5', '2022-12-20 05:11:14', '2022-12-20 05:11:14', NULL),
(2, '1', '2022-12-20 05:11:41', '2022-12-20 05:11:41', NULL),
(3, '1', '2022-12-20 05:16:47', '2022-12-20 05:16:47', NULL),
(4, '1', '2022-12-20 05:23:30', '2022-12-20 05:23:30', NULL),
(5, '1', '2022-12-20 05:25:51', '2022-12-20 05:25:51', NULL),
(6, '1', '2022-12-20 05:28:57', '2022-12-20 05:28:57', NULL),
(7, '5', '2022-12-20 05:29:40', '2022-12-20 05:29:40', NULL),
(8, '1', '2022-12-20 05:31:36', '2022-12-20 05:31:36', NULL),
(9, '1', '2022-12-20 05:42:05', '2022-12-20 05:42:05', NULL),
(10, '1', '2022-12-20 05:42:13', '2022-12-20 05:42:13', NULL),
(11, '1', '2022-12-20 05:42:50', '2022-12-20 05:42:50', NULL),
(12, '1', '2022-12-20 05:45:21', '2022-12-20 05:45:21', NULL),
(13, '1', '2022-12-20 05:47:09', '2022-12-20 05:47:09', NULL),
(14, '5', '2022-12-20 05:55:33', '2022-12-20 05:55:33', NULL),
(15, '5', '2022-12-20 06:00:07', '2022-12-20 06:00:07', NULL),
(16, '5', '2022-12-20 06:00:08', '2022-12-20 06:00:08', NULL),
(17, '5', '2022-12-20 06:07:05', '2022-12-20 06:07:05', NULL),
(18, '5', '2022-12-20 06:11:22', '2022-12-20 06:11:22', NULL),
(19, '5', '2022-12-20 06:15:01', '2022-12-20 06:15:01', NULL),
(20, '5', '2022-12-20 06:17:02', '2022-12-20 06:17:02', NULL),
(21, '5', '2022-12-20 09:27:22', '2022-12-20 09:27:22', NULL),
(22, '5', '2022-12-20 09:27:23', '2022-12-20 09:27:23', NULL),
(23, '5', '2022-12-20 09:38:54', '2022-12-20 09:38:54', NULL),
(24, '5', '2022-12-20 09:38:55', '2022-12-20 09:38:55', NULL),
(25, '5', '2022-12-20 10:35:52', '2022-12-20 10:35:52', NULL),
(26, '5', '2022-12-20 10:38:39', '2022-12-20 10:38:39', NULL),
(27, '5', '2022-12-20 11:08:15', '2022-12-20 11:08:15', NULL),
(28, '5', '2022-12-20 11:12:58', '2022-12-20 11:12:58', NULL),
(29, '5', '2022-12-20 11:17:09', '2022-12-20 11:17:09', NULL),
(30, '5', '2022-12-20 11:21:14', '2022-12-20 11:21:14', NULL),
(31, '5', '2022-12-20 11:29:58', '2022-12-20 11:29:58', NULL),
(32, '5', '2022-12-20 11:37:35', '2022-12-20 11:37:35', NULL),
(33, '5', '2022-12-20 11:43:14', '2022-12-20 11:43:14', NULL),
(34, '5', '2022-12-20 11:48:36', '2022-12-20 11:48:36', NULL),
(35, '5', '2022-12-20 11:53:27', '2022-12-20 11:53:27', NULL),
(36, '5', '2022-12-20 11:56:03', '2022-12-20 11:56:03', NULL),
(37, '5', '2022-12-20 11:59:49', '2022-12-20 11:59:49', NULL),
(38, '5', '2022-12-20 12:03:47', '2022-12-20 12:03:47', NULL),
(39, '5', '2022-12-20 12:08:18', '2022-12-20 12:08:18', NULL),
(40, '5', '2022-12-20 12:22:25', '2022-12-20 12:22:25', NULL),
(41, '5', '2022-12-20 12:59:33', '2022-12-20 12:59:33', NULL),
(42, '5', '2022-12-20 13:35:19', '2022-12-20 13:35:19', NULL),
(43, '5', '2022-12-20 14:02:40', '2022-12-20 14:02:40', NULL),
(44, '5', '2022-12-20 15:00:14', '2022-12-20 15:00:14', NULL),
(45, '5', '2022-12-20 15:02:23', '2022-12-20 15:02:23', NULL),
(46, '5', '2022-12-20 15:31:14', '2022-12-20 15:31:14', NULL),
(47, '5', '2022-12-20 16:00:45', '2022-12-20 16:00:45', NULL),
(48, '5', '2022-12-20 16:16:50', '2022-12-20 16:16:50', NULL),
(49, '10', '2022-12-20 20:35:20', '2022-12-20 20:35:20', NULL),
(50, '10', '2022-12-20 20:37:11', '2022-12-20 20:37:11', NULL),
(51, '10', '2022-12-20 20:38:57', '2022-12-20 20:38:57', NULL),
(52, '10', '2022-12-20 21:30:46', '2022-12-20 21:30:46', NULL),
(53, '10', '2022-12-20 22:18:47', '2022-12-20 22:18:47', NULL),
(54, '10', '2022-12-20 22:24:10', '2022-12-20 22:24:10', NULL),
(55, '10', '2022-12-20 22:54:19', '2022-12-20 22:54:19', NULL),
(56, '10', '2022-12-20 23:01:06', '2022-12-20 23:01:06', NULL),
(57, '10', '2022-12-20 23:04:43', '2022-12-20 23:04:43', NULL),
(58, '10', '2022-12-20 23:24:51', '2022-12-20 23:24:51', NULL),
(59, '10', '2022-12-20 23:45:43', '2022-12-20 23:45:43', NULL),
(60, '5', '2022-12-21 03:24:20', '2022-12-21 03:24:20', NULL),
(61, '5', '2022-12-21 04:13:23', '2022-12-21 04:13:23', NULL),
(62, '10', '2022-12-21 09:17:54', '2022-12-21 09:17:54', NULL),
(63, '10', '2022-12-21 09:23:56', '2022-12-21 09:23:56', NULL),
(64, '10', '2022-12-21 09:24:09', '2022-12-21 09:24:09', NULL),
(65, '10', '2022-12-21 09:25:45', '2022-12-21 09:25:45', NULL),
(66, '10', '2022-12-21 09:45:30', '2022-12-21 09:45:30', NULL),
(67, '10', '2022-12-21 10:05:17', '2022-12-21 10:05:17', NULL),
(68, '10', '2022-12-21 18:29:58', '2022-12-21 18:29:58', NULL),
(69, '10', '2022-12-21 18:45:46', '2022-12-21 18:45:46', NULL),
(70, '10', '2022-12-21 18:45:48', '2022-12-21 18:45:48', NULL),
(71, '10', '2022-12-21 21:42:28', '2022-12-21 21:42:28', NULL),
(72, '10', '2022-12-21 22:11:59', '2022-12-21 22:11:59', NULL),
(73, '11', '2022-12-21 23:42:48', '2022-12-21 23:42:48', NULL),
(74, '10', '2022-12-24 22:29:20', '2022-12-24 22:29:20', NULL),
(75, '10', '2022-12-24 22:29:21', '2022-12-24 22:29:21', NULL),
(76, '10', '2022-12-24 22:29:22', '2022-12-24 22:29:22', NULL),
(77, '10', '2022-12-24 22:29:22', '2022-12-24 22:29:22', NULL),
(78, '12', '2022-12-24 22:43:42', '2022-12-24 22:43:42', NULL),
(79, '12', '2022-12-24 22:45:05', '2022-12-24 22:45:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cau_hoi`
--

CREATE TABLE `cau_hoi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dap_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `linh_vuc`, `noi_dung`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Mạnh vì ... ,bạo vì tiền”  ', 'Gạo', 'Rau', 'Lúa', 'Mì', 'Gạo', NULL, NULL, NULL),
(2, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Một chốn đôi ...”', 'Ta', 'Quê', 'Mình ', 'Đôi', 'Quê', NULL, NULL, NULL),
(3, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Một miếng khi đói bằng một ... khi no”', 'Bịt ', 'Túm ', 'Gói', 'Tô', 'Gói', NULL, NULL, NULL),
(4, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Ăn ... nhớ kẻ trồng cây”   ', 'Quả ', 'Trái', 'Khế ', 'Cơm', 'Quả', NULL, NULL, NULL),
(5, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Người đẹp vì ..., lúa tốt vì ...”   ', 'Lụa_Phân', 'Lụa_Đất', 'Vải_Phân', 'Vải_Đất', 'Lụa_Phân', NULL, NULL, NULL),
(6, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Đồng tiền đi liền khúc ...”', 'Thịt', 'Ruột', 'Sông', 'Ruộng', 'Ruột', NULL, NULL, NULL),
(7, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Uống nước nhớ ... ”', 'Nguồn', 'Nhà', 'Sông', 'Người', 'Nguồn', NULL, NULL, NULL),
(8, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Quạ ... thì ráo, sáo ... thì mưa”', 'Hót', 'Gáy', 'Tắm', 'Lượn', 'Tắm', NULL, NULL, NULL),
(9, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Không ... thì dưa có giòi”', 'Thích', 'Ưa', 'Khoái', 'Muốn', 'Ưa', NULL, NULL, NULL),
(10, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Không ... gắp bỏ cho người”', 'Thích', 'Chịu', 'Uống', 'Ăn', 'Ăn', NULL, NULL, NULL),
(11, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Tất đất tất ...”', 'Vàng', 'Bạc', 'Kim Cương', 'Tiền', 'Vàng', NULL, NULL, NULL),
(12, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Thượng điền tích thủy hạ điền ...”', 'Khan', 'Khô', 'Khang', 'Héo', 'Khan', NULL, NULL, NULL),
(13, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Ao  ... nước động”', 'Tù', 'Sâu', 'Cạn', ' Hồ', 'Tù', NULL, NULL, NULL),
(14, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ Cây ngay không sợ chết ...”', 'Ngắt', 'Đứng', 'Héo', 'Khô', 'Đứng', NULL, NULL, NULL),
(15, 'Ca Dao Tục Ngữ', 'Điền vào thành ngữ “Cái ... cái tóc là gốc con người”', 'Răng', 'Gì', 'Tiếng', 'Nghề', 'Răng', NULL, NULL, NULL),
(16, 'Tổng Hợp', 'Trạng thái được coi là trạng thái thứ 4 sau rắn,lỏng,khí là gì ? ', 'Plasma', 'Không có', 'Chưa tìm ra', 'Plasma', 'Plasma', NULL, NULL, NULL),
(17, 'Tổng Hợp', 'Khả năng đặc biệt có thể làm người khác bị mê là gì ? ', 'Gây mê', 'Thôi miên', 'Không có', 'Bất Tỉnh', 'Thôi miên', NULL, NULL, NULL),
(18, 'Tổng Hợp', 'Khoảng cách từ trái đất đến mặt trời là bao nhiêu km ?', '149.6tr', '146.9tr', '194.6tr', '164.9tr', '149.6tr', NULL, NULL, NULL),
(19, 'Tổng Hợp', 'Khoảng cách của trung bình của tâm trái đất đến mặt trăng bằng bao nhiêu lần đường kính trái đất ?', '10', '20', '30', '40', '30', NULL, NULL, NULL),
(20, 'Tổng Hợp', 'Đâu là tên một nguyên tố hóa học ?', 'Liti', 'Lili', 'Titi', 'Tili', 'Liti', NULL, NULL, NULL),
(21, 'Tổng Hợp', 'Thăng Long được 1000 năm tuổi vào năm nào?', '2009', '2010', '2011', '2012', '2010', NULL, NULL, NULL),
(22, 'Tổng Hợp', 'Tim người gồm bao nhiêu ngăn?', 'Không có ngăn', '1', '3', '4', '4', NULL, NULL, NULL),
(23, 'Tổng Hợp', 'Chùa  đồng lớn nhất Việt Nam nằm trên ngọn núi nào ?', 'Yên tử', ' Fanxipan', 'Ngũ hành sơn', 'Đá dựng', 'Yên tử', NULL, NULL, NULL),
(24, 'Tổng Hợp', 'Tên vũ khí của thổ dân Úc sau khi tấn công có khả năng quay về vị trí cũ ?', ' Boomerang', ' Cung tên', 'Mũi chỉa', 'Giáo', ' Boomerang', NULL, NULL, NULL),
(25, 'Tổng Hợp', 'Hệ điều hành điện thoại do apple sản xuất có tên gì ?', 'Ios', 'Android', 'ColosOs', 'WindowsPhone', 'Ios', NULL, NULL, NULL),
(26, 'Tổng Hợp', 'Lần đầu tiên nước ta dùng 1000 kg thuốc nổ chống giặc ngoại xâm là ở đâu ?', 'Điện Biên Phủ', 'Cầu Giấy', 'Đà Nẵng', 'Chiến khu Việt Bắc', 'Điện Biên Phủ', NULL, NULL, NULL),
(27, 'Tổng Hợp', 'Đất nước nào là quê hương của ông giá tuyết ?', 'Phần Lan', ' Ba Lan', 'Uraina', 'Cannada', 'Phần Lan', NULL, NULL, NULL),
(28, 'Tổng Hợp', 'Nhạc sĩ Sô Panh chơi nhạc cụ nào ?', 'Piano', 'Guitar Điện', 'Saxophone', 'Trống da', 'Piano', NULL, NULL, NULL),
(29, 'Tổng Hợp', 'Tôm bóc vỏ hết, phơi khô được gọi là gì ?', 'Tôm nõn', 'Tôm hùm', 'Tôm Bẩy', 'Tôm càng', 'Tôm nõn', NULL, NULL, NULL),
(30, 'Thể Thao', 'Nước nào vô địch word cup 2022 ?', 'Bồ Đào Nha', 'Pháp', 'Quatar', 'Argentina', 'Argentina', NULL, NULL, NULL),
(31, 'Thể Thao', 'Cầu thủ nào đạt danh hiệu chiếc giày vàng word cup 2022 ?', 'Messi', 'Ronaldo', 'Mbappe', 'Neymar', 'Mbappe', NULL, NULL, NULL),
(32, 'Thể Thao', 'Đâu là môn thể thao vua ?', 'Cầu lông', 'Bóng đá', 'Bóng chuyền', 'Billiards', 'Bóng đá', NULL, NULL, NULL),
(33, 'Thể Thao', 'Môn Billiards ra đời vào năm nào ?', '1340', '1350', '1360', '1370', '1340', NULL, NULL, NULL),
(34, 'Thể Thao', 'Quả bóng vàng Việt Nam 2020 thuộc về cầu thủ nào ?', 'Công Phượng', 'Văn Quyết', 'Xuân Trường', 'Tấn Tài', 'Văn Quyết', NULL, NULL, NULL),
(35, 'Thể Thao', 'Ronaldo mặc áo số mấy khi thi đấu ở juventus ?', '6', '7', '8', '9', '7', NULL, NULL, NULL),
(36, 'Thể Thao', 'AFC Asian Cup 2011 được tổ chức tại quốc gia nào?', 'Qatar', 'Hàn Quốc', 'Nhật Bản', 'Iraq', 'Qatar', NULL, NULL, NULL),
(37, 'Thể Thao', 'Đội nào lên ngôi vô địch AFC Asian Cup 2011 tổ chức tại Qatar?', 'Nhật Bản', 'Australia', 'Hàn Quốc', 'Uzbekistan', 'Nhật Bản', NULL, NULL, NULL),
(38, 'Thể Thao', 'Giải Grand Slam đầu tiên trong năm là giải nào?', 'Austrlia mở rộng', 'Wimbledon', 'Roland Garos', 'Mỹ mở rộng', 'Austrlia mở rộng', NULL, NULL, NULL),
(39, 'Thể Thao', 'word cup mấy năm diễn ra 1 lần?', '1', '2', '3', '4', '4', NULL, NULL, NULL),
(40, 'Thể Thao', 'Bồ Đào Nha vô địch euro vào năm nào?', '2016', '2017', '2018', '2019', '2016', NULL, NULL, NULL),
(41, 'Thể Thao', 'Ronaldo sinh năm mấy?', '1985', '1986', '1987', '1988', '1985', NULL, NULL, NULL),
(42, 'Thể Thao', 'Word cup 2022 diễn ra ở nước nào ?', 'Qatar', 'Hàn Quốc', 'Nhật Bản', 'Iraq', 'Qatar', NULL, NULL, NULL),
(43, 'Thể Thao', 'Leonel Messi đá bóng cho đội tuyển nào ?', 'PSG', 'Barca', 'Real', 'M.U', 'PSG', NULL, NULL, NULL),
(44, 'Thể Thao', 'Số lượng quân cờ trong môn cờ vua là bao nhiêu ?', '30', '31', '32', '33', '32', NULL, NULL, NULL),
(45, 'Ca Dao Tục Ngữ', 'Khoa có người yêu tên gì', 'TrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọngTrọng', 'Tín', 'Vinh', 'Trường', 'Trọng', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_luot_choi`
--

CREATE TABLE `chi_tiet_luot_choi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `luot_choi_id` bigint(20) NOT NULL,
  `cau_hoi_id` bigint(20) NOT NULL,
  `phuong_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `luoi_choi`
--

CREATE TABLE `luoi_choi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nguoi_choi_id` bigint(20) NOT NULL,
  `so_cau` bigint(20) NOT NULL,
  `diem` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_12_12_010404_cauhoi', 1),
(4, '2022_12_12_010658_luotchoi', 1),
(5, '2022_12_12_010820_chi_tiet_luot_choi', 1),
(6, '2022_12_14_150001_user', 1),
(7, '2022_12_20_120350_bangdangnhap', 2),
(8, '2022_12_20_120558_bangdangnhap2', 3),
(9, '2022_12_20_120705_bangdangnhap3', 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `xoa` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ten_dang_nhap`, `password`, `email`, `avatar`, `diem_cao_nhat`, `xoa`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'khoacc', '$2y$10$5MqENDMJPpkjfr6JDrEB3O6zqr4axqg5Q3VLmmdXRADR9HUrbzSTa', 'khoacc@gmail.com', 'avatarcc', '0', 0, '2022-12-18 04:36:31', '2022-12-20 05:46:41', NULL),
(2, 'aaaa', '$2y$10$eWHss1d.N/EiljKc8YQ/4ui1Ckh9g7vsKHMA93pyCUT8XpX5zWzqO', 'a@gmail.com', 'ko có', '0', 1, '2022-12-19 23:42:15', '2022-12-19 23:42:15', NULL),
(3, 'trongne', '$2y$10$jyI5MK6OHJQT2SyuFswiw.u6L6C69Sm6gC4mwftYaDKzmNvUc3TFm', 'trongne@gmail.com', 'co', '0', 1, '2022-12-19 23:46:01', '2022-12-20 00:48:35', NULL),
(5, 'gaugau', '$2y$10$tI1p48jQ55N4I60Yu.aiie.qT97GpDzvRx1Ew7Km6AnY5i6Rmw3fq', 'gau@gmail.com', 'oo', '0', 1, '2022-12-20 00:46:50', '2022-12-20 16:05:42', NULL),
(9, 'vinh', '$2y$10$MWCz80Ruzum2d8xnjxKYY.5iiR94HXv7hIrb60rD52GwWAfUVfli2', 'vinh@gmail.com', 'ko có', '0', 1, '2022-12-20 04:27:28', '2022-12-20 04:27:28', NULL),
(10, 'huhu', '$2y$10$pU6JBQT39ECO/ey2X6NwuOnd6vZpcLkcZ9UltHWJBRL0X.kRrh1ge', 'huhu@gmail.com', 'ko có', '0', 1, '2022-12-20 20:35:10', '2022-12-20 20:36:59', NULL),
(11, 'hihi', '$2y$10$y4Ob6U1VdBarQirGevpk6.hb.YEUefijWT9qIrN6iMibY./oazRDy', 'khoa@gmail.com', 'ko có', '0', 1, '2022-12-21 23:41:52', '2022-12-21 23:41:52', NULL),
(12, 'khokh', '$2y$10$AyS3kj71S3k3jxDiV20TS.oJqMTc/.hw2Sp4tJT/m599MrcSISPDC', '0306191234@gmail.com', 'ko có', '0', 1, '2022-12-24 22:43:29', '2022-12-24 22:44:50', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bang_dang_nhap`
--
ALTER TABLE `bang_dang_nhap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `luoi_choi`
--
ALTER TABLE `luoi_choi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bang_dang_nhap`
--
ALTER TABLE `bang_dang_nhap`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `cau_hoi`
--
ALTER TABLE `cau_hoi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_luot_choi`
--
ALTER TABLE `chi_tiet_luot_choi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `luoi_choi`
--
ALTER TABLE `luoi_choi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
