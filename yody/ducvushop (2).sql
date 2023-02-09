-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 30, 2022 lúc 10:38 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ducvushop`
--
CREATE DATABASE IF NOT EXISTS `ducvushop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ducvushop`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

DROP TABLE IF EXISTS `danhmuc`;
CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Thời trang nam'),
(2, 'Thời trang nữ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(8, 14, '2022-11-24 06:27:17', 'admin', '0345934782', 'Tu Ha', '', 6790000, '0'),
(11, 14, '2022-11-24 06:29:14', 'Tranducvu', '0123443234', 'Hue', '', 1200000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

DROP TABLE IF EXISTS `khuyenmai`;
CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2022-11-28 18:08:54', 1),
(2, 'Giảm giá', 'Giảm giá', 50000, '2022-11-28 18:09:27', 1),
(3, 'Giá rẻ online', 'GiaReOnline', 650000, '2022-11-28 18:09:58', 1),
(4, 'Trả góp', 'TraGop', 0, '2022-11-28 18:10:53', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2022-11-28 18:11:34', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

DROP TABLE IF EXISTS `loaisanpham`;
CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Mùa Xuân', '17.jpeg', 'Mùa Xuân', 1),
(2, 'Mùa Hạ', 'c22916acc374fb3e3df8ab614c0229c6.jpg', 'Mùa Hạ', 1),
(3, 'Mùa Thu', 'fca00e23cb5687719483b055470bca58.jpg', 'Mùa Thu', 1),
(4, 'Mùa Đông', 'hdnam.jpg', 'Mùa Đông', 1),
(11, 'Mùa Xuân', '0abaca7af10ded645e3efb6847d7f298.jpg', 'Mùa Xuân', 2),
(12, 'Mùa Hạ', '23.jpeg', 'Mùa Hạ', 2),
(13, 'Mùa Thu', '28.jpg', 'Mùa Thu', 2),
(14, 'Mùa Đông', 'hsnu.jpg', 'Mùa Đông', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(0, 'tran', 'vu', '', '0345934782', 'vutd.21it@vku.udn.vn', '', 'tranducvu', 'ce27fe686649d74ee012e6d0f4993527', 1, 1),
(14, 'admin', 'admin', 'Nam', '0345934782', 'admin@gmail.com', 'Tu Ha', 'admin', '21232f297a57a5a743894a0e4a801fc3', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

DROP TABLE IF EXISTS `phanquyen`;
CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personal', 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

DROP TABLE IF EXISTS `sanpham`;
CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `ManHinh` varchar(50) DEFAULT NULL,
  `HDH` varchar(50) DEFAULT NULL,
  `CamSau` varchar(50) DEFAULT NULL,
  `CamTruoc` varchar(50) DEFAULT NULL,
  `CPU` varchar(50) DEFAULT NULL,
  `Ram` varchar(50) DEFAULT NULL,
  `Rom` varchar(50) DEFAULT NULL,
  `SDCard` varchar(50) DEFAULT NULL,
  `Pin` varchar(50) DEFAULT NULL,
  `SoSao` varchar(11) NOT NULL,
  `SoDanhGia` varchar(11) NOT NULL,
  `TrangThai` varchar(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(64, 1, 1, 'Áo Hoodie Nam', 200000, 100, 'products/6.jpeg', 'products/5.jpg', 'products/1.jpg', 0, 'Thun cotton lụa 4 chiều 100%', 'M', 'Trung bình', 'Đen', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"> Mềm mịn, đường may đẹp, chắc chắn, đảm bảo không bông tróc</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Hàng bán đúng giá, vui lòng không trả giá</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Chưa bao gồm phí giao hàng . Phí tùy địa chỉ.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', '2022-11-15 09:02:29'),
(65, 3, 2, 'Quần Jeans Baggy QJ001', 156800, 45, 'products/013f9bdb5d1608a666c2051201031f20.jpg', 'products/948b0f9e0d26cf993c2e2f308138a90a.jpg', 'products/013f9bdb5d1608a666c2051201031f20.jpg', 0, 'Jean', 'S->XL', 'Cao', 'Xanh đậm/nhạt', '', '', '', '', '', '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space: pre-wrap;\">Quần Jeans Baggy BIGSIZE - LƯNG CAO - FORM TO DÀI - Cắt Rách 1 Hông Đùi Và Gối - Không Giãn [TIEMDOJEAN].</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space: pre-wrap;\">LƯU Ý: Tuỳ chiều cao của khách mà quần dài tới mắt cá (dưới 1m6) hay trên mắt cá (trên 1m65). \r\nNgười mẫu nhà mình hay chụp trong hình cao 1m6 và 1m7. \r\nMàu mỗi lô sản xuất sẽ đậm nhạt tuỳ đợt ạ. \r\nMàu ở ngoài đẹp hơn hình shop tự chụp. </span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', '2022-09-13 09:19:59'),
(66, 1, 1, 'Quần short Nam jean', 190000, 56, 'products/c22916acc374fb3e3df8ab614c0229c6.jpg', 'products/b13262d940c94d1a4ba6791c2b47f0e2.jpg', 'products/c22916acc374fb3e3df8ab614c0229c6.jpg', 0, 'Vải Jean', 'S->XL', 'Trung bình', 'Xanh ', '', '', '', '', '', '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space: pre-wrap;\">1.VỀ SẢN PHẨM Quần short nam [ HÌNH THẬT ] jean đẹp chuẩn siêu bền SL414 STARLORD\r\n\r\n•	Vải jean không co giãn, dày dặn → Siêu bền 2 năm\r\n\r\n•	Form ống suông (ống đứng) → Dễ mặc, không kén dáng\r\n\r\n•	Khóa kéo và khuy cài bằng đồng → Không gỉ\r\n\r\n•	Túi 2 bên siêu to → Chứa smartphone, bóp ví, chìa khóa thoải mái\r\n\r\n•	Màu nhuộm 2 lần → Bền màu lâu phai\r\n \r\n2.BẢO QUẢN Quần short nam [ HÌNH THẬT ] jean đẹp chuẩn siêu bền SL414 STARLORD\r\n\r\n•	Lần giặt đầu tiên: giặt riêng với nước lạnh để tránh loang màu.\r\n\r\n•	Không dùng các chất tẩy rửa mạnh (như nước tẩy Javel...) làm bạc màu.\r\n\r\n•	Giũ mạnh rồi phơi. Quần sẽ giữ form lâu hơn và phẳng phiu khi khô.</span><br></p>', '2022-11-02 09:12:01'),
(67, 1, 1, 'Áo phông unisex nam', 40000, 45, 'products/050341b33e811ec904f79c32dc61f2e5.jpg', 'products/390c9745ed4b49693e5d73d3c4bebc82.jpg', 'products/050341b33e811ec904f79c32dc61f2e5.jpg', 0, 'Vải cao cấp', 'S->XL', 'Cao', 'Đen ', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space: pre-wrap;\">☘  Bảng kích thước \r\n???? Size XS : < 25 kg chiều cao phù hợp từ 1m1 đến 1m3\r\n???? Size S : < 45 kg chiều cao phù hợp từ 1m5 đến 1m6\r\n???? Size M : < 55 kg chiều cao phù hợp từ 1m5 đến 1m65\r\n???? Size L : < 60 kg chiều cao phù hợp từ 1m5 đến 1m7\r\n???? Size XL : 60 kg  > 68kg chiều cao phù hợp từ 1m7 đến 1m75\r\n???? Size XXL: 68 kg > 80kg chiều cao phù hợp từ 1m75 đến 1m80</span><br></p>', '2022-11-29 13:30:33'),
(68, 1, 1, 'Áo Unisex tay lỡ', 80000, 130, 'products/2a2a7eee3056cd89235e0b7169e515dd.jpg', 'products/21.jpg', 'products/23.jpeg', 0, 'Thun', 'M->XL', 'Cao', 'Đen Trắng', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Cam kết về chất lượng sản phẩm, Shop cam kết cả về CHẤT LIỆU cũng như HÌNH ẢNH (đúng với những gì được nêu bật trong phần mô tả sản phẩm).</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Giá thành thấp nhất thị trường và được bảo hành theo quy định với từng sản phẩm, được đổi trả hàng lỗi trong vòng 14 ngày kể từ khi mua hàng.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', '2022-11-24 14:05:15'),
(69, 13, 2, 'Quần Jean Dài Nữ SEMI', 128500, 100, 'products/59ed1d10adbce0b7973eabe3bff73fea.jpg', 'products/a9dbce427800d0231a0e7dd48accc3da.jpg', 'products/59ed1d10adbce0b7973eabe3bff73fea.jpg', 0, 'Jean cao cấp', 'S->XL', 'Cao', 'Xanh Nhạt', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \"Helvetica Neue\", Helvetica, Arial, 文泉驛正黑, \"WenQuanYi Zen Hei\", \"Hiragino Sans GB\", \"儷黑 Pro\", \"LiHei Pro\", \"Heiti TC\", 微軟正黑體, \"Microsoft JhengHei UI\", \"Microsoft JhengHei\", sans-serif; font-size: 14px; white-space: pre-wrap;\">Quần Jean SEMI form suông, chất vải mềm mịn, phối nút gài điều chỉnh eo rất xinh và tiện ạ ????????\r\nChất liệu: vải Jeans cao cấp. Vải mang đến cảm giác mặc rất thoải mái, không hề bí bách khi mặc thường xuyên. Vải có độ bên cao nhất, ít bị sờn, bị rách, hay xô chỉ. Dễ bảo quản, bạn có thể giặt bằng tay hoặc bằng máy mà không lo lắng vải bị rách. Ngoài ra, khi phơi hay bảo quản cũng dễ dàng hơn. </span><br></p>', '2022-11-13 19:50:59'),
(70, 3, 1, 'QUẦN TÂY NAM GALVIN', 230000, 45, 'products/e0753f7e7b110acded3ec39805a3f1df.jpg', 'products/e0753f7e7b110acded3ec39805a3f1df.jpg', 'products/e0753f7e7b110acded3ec39805a3f1df.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"> Màu sắc &amp; kích cỡ Quần tây nam :\r\n   - Màu sắc : bộ 4 màu theo ảnh ( đen- xanh than - xám - xanh đen)\r\n   - Kích thước : \r\n   + 28 : Chiều cao: 1m55-1m65, Cân nặng: dưới 56kg.\r\n   + 29 : Chiều cao: 1m60-1m70, Cân nặng: 57~62kg.\r\n   + 30 : Chiều cao: 1m65-1m80, Cân nặng: 63~67kg.\r\n   + 31 : Chiều cao: 1m65-1m80, Cân nặng: 67~70kg.\r\n   + 32 : Chiều cao: 1m70-1m85, Cân nặng: 70~74kg.\r\n   + 33 : Chiều cao: 1m70-1m85, Cân nặng: trên 75kg\r\n   (Gợi ý:Mẫu 1m76 - 65kg fit đẹp size 30) </span>', '2022-11-23 22:33:34'),
(71, 2, 1, 'QUẦN ÂU VẢI LỤA HÀN', 99000, 34, 'products/3b905b6345ad89def0dcd94d2d111b84.jpg', 'products/3b905b6345ad89def0dcd94d2d111b84.jpg', 'products/3b905b6345ad89def0dcd94d2d111b84.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Quần âu nam ống côn đủ size từ 28 đến 34 cho khách từ 45-80 kg mặc vừa:\r\n- Size 28 : Cân nặng 43-51kg, cao 1m45 - 1m55 / Dài 90cm, bụng 74cm, ống 16\r\n- Size 29 : Cân nặng 52-55kg, cao 1m5 - 1m65 / Dài 92cm, bụng 76cm, ống 17\r\n- Size 30 : Cân nặng 55-58kg, cao 1m6 - 1m7 / Dài 94cm, bụng 79cm, ống 17.5\r\n- Size 31 : Cân nặng 58-62kg, cao 1m65 - 1m72 / Dài 96cm, bụng 82cm, ống 18\r\n- Size 32 : Cân nặng 63-69kg, cao 1m69 - 1m74 / Dài 98cm, bụng 84cm, ống 18.5\r\n- Size 33 : Cân nặng 69-73kg, cao 1m72 - 1m76 / Dài 100cm, bụng 87cm, ống 19\r\n- Size 34 : Cân nặng 73-80kg, cao 1m74 - 1m8/ Dài 100cm, bụng 89cm, ống 20\r\n- Có 4 màu cơ bản: Đen, Xanh than, Ghi tối và Ghi sáng\r\n* Bảng size chỉ mang tính chất tham khảo, tùy thuộc vào số đo cơ thể và chất liệu vải khác nhau sẽ có sự chênh lệch nhất định. \r\n* Màu sắc vải sản phẩm có thể sẽ chênh lệch thực tế một phần nhỏ, do ảnh hưởng về độ lệch màu của ánh sáng nhưng vẫn đảm bảo chất lượng.</span>', '2022-11-12 22:33:59'),
(74, 13, 2, 'Quần Jean ống rộng Hot trend', 240000, 32, 'products/28.jpg', 'products/28.jpg', 'products/28.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Giá thành thấp nhất thị trường và được bảo hành theo quy định với từng sản phẩm, được đổi trả hàng lỗi trong vòng 14 ngày kể từ khi mua hàng.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\"><br></span><br></p>', NULL),
(75, 11, 2, 'Áo unissex dành cho nữ', 235000, 23, 'products/3a7ed172d07dbaafb8e7d00c2bb68784.jpg', 'products/3a7ed172d07dbaafb8e7d00c2bb68784.jpg', 'products/3a7ed172d07dbaafb8e7d00c2bb68784.jpg', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">3 size M L XL\r\nhàng đặt trước 2 màu hồng đen\r\nib shop để đc tư vấn thêm\r\n#ulzzangstyle #ulzzanggirl #ulzzangvietnam #ulzzangkorea #ulzzangvn #áo #unisex #phông</span>', NULL),
(76, 5, 1, 'Quần Jean Skinny Nam Chất Bò, Màu Sáng Co Dãn Nhẹ', 180000, 100, 'products/4f4e2757a9e89a18d6bbdc07d6cfe6d8.jpg', 'products/4f4e2757a9e89a18d6bbdc07d6cfe6d8.jpg', 'products/4f4e2757a9e89a18d6bbdc07d6cfe6d8.jpg', 4, 'Jean', 'S->XL', 'Trung bình', 'Xanh Nhạt', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">1. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm) \r\n- Hàng hoá vẫn còn mới, chưa qua sử dụng \r\n- Hàng hoá bị lỗi hoặc hư hỏng do vận chuyển hoặc do nhà sản xuất \r\n2. Trường hợp được chấp nhận: \r\n- Hàng không đúng size, kiểu dáng như quý khách đặt hàng \r\n- Không đủ số lượng, không đủ bộ như trong đơn hàng \r\n3. Trường hợp không đủ điều kiện áp dụng chính sách: \r\n- Quá 07 ngày kể từ khi Quý khách nhận hàng \r\n- Gửi lại hàng không đúng mẫu mã, không phải sản phẩm của MANDO\r\n- Không thích, không hợp, đặt nhầm mã, nhầm màu,... \r\nDo màn hình và điều kiện ánh sáng khác nhau, màu sắc thực tế của sản phẩm có thể chênh lệch khoảng 3-5%</span>', '2022-09-14 07:19:25'),
(77, 14, 1, 'Áo Nỉ Hoodie Nam Hot', 150000, 50, 'products/eb7d525d24033bb0727592aae63e29ce.jpg', 'products/eb7d525d24033bb0727592aae63e29ce.jpg', 'products/eb7d525d24033bb0727592aae63e29ce.jpg', 3, 'Nỉ', 'S->XL', 'Cao', 'Đen ', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">Áo Nỉ Hoodie Nam, Áo Hoodie Hót Trend 2021\r\n\r\nMẫu áo hót trend nhất năm đang được bạn trẻ săn đón nhiều nhất\r\n\r\n#áo\r\n#áo_hoodie\r\n#áo_hoodie_nam\r\n#áo_hoodie_nữ\r\n#áo_hoodie_fom_rộng</span>', '2022-11-02 07:40:41'),
(79, 16, 1, 'Bộ Quần Áo Nam Áo Thun Dài Tay FUTUPE Quần Jogger Bo Gấu Phong Cách Th', 65000, 120, 'products/95d14578cc498b29f106e9c792f43475.jpg', 'products/6ef40aa2da6910d48300468ca7c260b5_tn.jpg', 'products/6ef40aa2da6910d48300468ca7c260b5_tn.jpg', 3, 'Vải lụa', 'Oversize', 'Cao', 'Đen ', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Sản phẩm: Bộ Quần Áo Nam Thời Trang</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Sản phẩm: Bộ Quần Áo Nam Thời Trang</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Chưa bao gồm phí giao hàng . Phí tùy địa chỉ.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', '2022-11-13 09:04:32'),
(80, 4, 1, 'Bộ Quần Áo Nam Áo Sơ Mi Dài Tay Quần  ', 120000, 50, 'products/55c1f54f43b0416b5530bb230b55976c_tn.jpg', 'products/c7db377b177fc8e2ff75a769022dcc23_tn.jpg', 'products/55c1f54f43b0416b5530bb230b55976c_tn.jpg', 1, 'Kaki', 'S->XL', 'Cao', 'Đen Trắng', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"> Chất liệu thun mềm mại, thoáng mát, co giãn tạo cảm giác thoải mái khi mặc</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Kiểu dáng đơn giản nhưng không kém phần thời trang, trẻ trung, cá tính, sành điệu.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Đường may cẩn thận, tỉ mỉ, chắc chắn.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', '2022-11-15 09:11:50'),
(81, 14, 2, 'Set Đồ Áo Thun Aa’ Quần kaki Trắng [FREESHIP] 🌸Áo phông Nữ Tay Lỡ unis', 89000, 50, 'products/e83b7c4838ab5bff7682b373dce1bc95.jpg', 'products/06466fe33efe186a4945340a81c30ef9_tn.jpg', 'products/e83b7c4838ab5bff7682b373dce1bc95.jpg', 0, 'Cotton,Kaki', 'Oversize', 'Trung bình', 'Đa dạng để bạn lựa chọn', NULL, NULL, NULL, NULL, NULL, '5', '2', '1', '<p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Chất liệu cao cấp: mềm hơn, mịn hơn, thoáng mát hơn</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Kiểu dáng: trẻ trung, năng động</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\">Hình in: rõ nét, chất lượng cao, không phai màu.</span><span style=\"color: rgba(0, 0, 0, 0.8); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, 文泉驛正黑, &quot;WenQuanYi Zen Hei&quot;, &quot;Hiragino Sans GB&quot;, &quot;儷黑 Pro&quot;, &quot;LiHei Pro&quot;, &quot;Heiti TC&quot;, 微軟正黑體, &quot;Microsoft JhengHei UI&quot;, &quot;Microsoft JhengHei&quot;, sans-serif; font-size: 14px; white-space: pre-wrap;\"><br></span><br></p>', NULL),
(82, 14, 2, 'Áo thun unissex form rộng', 7000, 100, 'products/0abaca7af10ded645e3efb6847d7f298.jpg', 'products/0abaca7af10ded645e3efb6847d7f298.jpg', 'products/0abaca7af10ded645e3efb6847d7f298.jpg', 3, 'Vải cao cấp', 'S->XL', 'Trung bình', 'Đen ', NULL, NULL, NULL, NULL, NULL, '0', '0', '1', '<span style=\"color: rgba(0, 0, 0, 0.8); font-family: \" helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" 文泉驛正黑,=\"\" \"wenquanyi=\"\" zen=\"\" hei\",=\"\" \"hiragino=\"\" sans=\"\" gb\",=\"\" \"儷黑=\"\" pro\",=\"\" \"lihei=\"\" \"heiti=\"\" tc\",=\"\" 微軟正黑體,=\"\" \"microsoft=\"\" jhenghei=\"\" ui\",=\"\" jhenghei\",=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" white-space:=\"\" pre-wrap;\"=\"\">1. Do điều kiện ánh sáng và chế độ cài đặt màn hình nên màu sắc thực tế của sản phẩm sẽ có đôi chút khác biệt so với hình ảnh .\r\n  \r\n  2. Vui lòng cho phép sai số 2-3cm do sản phẩm được đo lường thủ công. \r\n \r\n 3. các sản phẩm chỉ có 1 form size (đầm free size ,áo free size) nên không chấp nhận đổi trả nếu không vừa khi khách tự đặt không qua tư vấn ,vui lòng chat với shop để được tư vấn kĩ hơn về kích thước.\r\n  \r\nMong bạn thông cảm. Hãy đảm bảo bạn không phiền lòng về vấn đề đó trước khi đặt mua sản phẩm.\r\n  Chúc bạn một ngày tốt lành!</span>', '2022-11-02 16:16:53');

--
-- Chỉ mục cho các bảng đã đổ
--

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
  ADD KEY `MaND` (`MaND`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `MaLSP` (`MaLSP`),
  ADD KEY `MaKM` (`MaKM`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `loaisanpham_ibfk_1` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
