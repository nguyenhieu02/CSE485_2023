-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th2 25, 2023 lúc 05:06 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `btth01_cse485_ex`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `baiviet`
--

CREATE TABLE `baiviet` (
  `ma_bviet` int(11) NOT NULL,
  `ma_tgia` int(11) NOT NULL,
  `ma_tloai` int(11) NOT NULL,
  `tieude` varchar(200) NOT NULL,
  `ten_bhat` varchar(100) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text DEFAULT NULL,
  `ngayviet` datetime NOT NULL,
  `hinhanh` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `baiviet`
--

INSERT INTO `baiviet` (`ma_bviet`, `ma_tgia`, `ma_tloai`, `tieude`, `ten_bhat`, `tomtat`, `noidung`, `ngayviet`, `hinhanh`) VALUES
(1, 1, 2, 'Lòng mẹ', 'Lòng mẹ', 'Và mẹ ơi đừng khóc nhé! Cả đời này mẹ đã khóc nhiều lắm rồi, hãy cười lên vì con đã trưởng thành! Con sẽ lại về dậy sớm nấu cơm cho mẹ, nấu nước cho mẹ tắm như ngày xưa. “Dù cho vai nắng nhưng lòng thương chẳng nhạt màu, vẫn mơ quay về vui vầy dưới bóng mẹ yêu”', NULL, '2012-07-23 00:00:00', NULL),
(2, 3, 2, 'Cảm ơn em đã rời xa anh', 'Vết mưa', 'Cảm ơn em đã cho anh những tháng ngày hạnh phúc, cho anh biết yêu và được yêu. Em cho anh được nếm trải hương vị ngọt ngào của tình yêu nhưng cũng đầy đau khổ và nước mắt. Những tháng ngày đó có lẽ suốt cuộc đời anh không bao giờ quên', NULL, '2012-02-12 00:00:00', NULL),
(3, 4, 2, 'Cuộc đời có mấy ngày mai?', 'Phôi pha', 'Đêm nay, trời quang mây tạnh, trong người nghe hoang vắng và tôi ngồi đây “Ôm lòng đêm, Nhìn vầng trăng mới về” mà ngậm ngùi “Nhớ chân giang hồ. Ôi phù du, từng tuổi xuân đã già”', NULL, '2014-03-13 00:00:00', NULL),
(4, 5, 5, 'Quê tôi!', 'Quê hương', 'Quê hương là gì mà chở đầy kí ức nhỏ xinh. Có đám trẻ nô đùa bên nhau dưới gốc ổi nhà bà Năm giữa trưa nắng gắt chỉ để chờ bà đi vắng là hái trộm. Có hai anh em tôi bì bõm lội sình bắt cua đem về nhà cho mẹ nấu canh, nấu cháo… Có ba chị em tôi lục đục tự nấu ăn khi mẹ vắng nhà. Có anh tôi luôn dắt tôi đi cùng đường ngõ xóm chỉ để em được vui. Có cả những trận cãi nhau nảy lửa của ba anh em nữa…', NULL, '2014-02-20 00:00:00', NULL),
(5, 1, 5, 'Đất nước', 'Đất nước', 'Đã bao nhiêu lần tôi tự hỏi: liệu trên Thế giới này có nơi nào chiến tranh tang thương mà lại rất đổi anh hùng như nước mình không? Liệu có mảnh đất nào mà mỗi tấc đất hôm nay đã thấm máu xương của những thế hệ đi trước nhiều như nước mình không? Và, liệu có một đất nước nào lại có nhiều bà mẹ đau khổ nhưng cũng hết sức gan góc như đất nước mình không?', NULL, '2010-05-25 00:00:00', NULL),
(6, 6, 7, 'Hard Rock Hallelujah', 'Hard Rock Hallelujah', 'Những linh hồn đang lạc lối, mù quáng mất phương hướng trong cõi trần gian đầy nghiệt ngã hãy nên lắng nghe \"Hard Rock Hallelujah\" để có thể quên tất cả mọi thứ để tìm về đúng bản chất sâu thẳm nhất trong tâm hồn chính mình!', NULL, '2013-09-12 00:00:00', NULL),
(7, 1, 7, 'The Unforgiven', 'The Unforgiven', 'Lâu lắm rồi mới nghe lại The Unforgiven II, vì bài này không phải là bài mà tôi thích. Anh bạn tôi lúc trước, đi đâu cũng nghêu ngao bài này ấy, chỉ tại vì hắn đang... thất tình mà lị. Mà sao Metallica có The Unforgiven rồi lại có thêm bài này chi nữa vậy không biết nữa, làm cho tôi cảm thấy hình như hơi bị đúng so với tâm trạng của tôi lúc này.', NULL, '2010-05-25 00:00:00', NULL),
(8, 1, 1, 'Nơi tình yêu bắt đầu', 'Nơi tình yêu bắt đầu', 'Nhiều người sẽ nghĩ làm gì có yêu nhất và làm gì có yêu mãi. Ừ! Chẳng có gì là mãi mãi cả, vì chúng ta không trường tồn vĩnh cửu', NULL, '2014-02-03 00:00:00', NULL),
(9, 1, 8, 'Love Me Like There’s No Tomorrow', 'Love Me Like There’s No Tomorrow', 'Nếu ai đã từng yêu Queen, yêu cái chất giọng cao, sắc sảo như một vết cắt thật ngọt ẩn giấu bao cảm xúc mãnh liệt của Freddie chắc không thể không \"điêu đứng\" mỗi khi nghe Love Me Like There’s No Tomorrow.', NULL, '2013-02-26 00:00:00', NULL),
(10, 2, 7, 'I\'m stronger', 'I\'m stronger', 'Em không phải là người giỏi giấu cảm xúc, nhưng em lại là người giỏi đoán biết cảm xúc của người khác vậy nên đừng cố nói nhớ em, rằng mọi thứ chỉ là do hoàn cảnh. Và cũng đừng dối em rằng anh đã từng yêu em. Em nhắm mắt cũng cảm nhận được mà, thật đấy', NULL, '2013-08-21 00:00:00', NULL),
(11, 2, 5, 'Ôi Cuộc Sống Mến Thương', 'Ôi Cuộc Sống Mến Thương', 'Có một câu nói như thế này \"Âm nhạc là một cái gì khác lạ mà hầu như tôi muốn nói nó là một phép thần diệu.Vì nó đứng giữa tư tưởng và hiện tượng, tinh thần và vật chất, mọi thứ trung gian mơ hồ thế đó mà không là thế đó giữa các sự vật mà âm nhạc hòa giải\"', NULL, '2011-10-09 00:00:00', NULL),
(12, 7, 7, 'Cây và gió', 'Cây và gió', 'Em và anh, hai đứa quen nhau thật tình cờ. Lời hát của anh từ bài hát “Cây và gió” đã làm tâm hồn em xao động. Nhưng sự thật phũ phàng rằng em chưa bao giờ nói cho anh biết những suy nghĩ tận sâu trong tim mình. Bởi vì em nhút nhát, em không dám đối mặt với thực tế khắc nghiệt, hay thực ra em không dám đối diện với chính mình.', NULL, '2013-12-05 00:00:00', NULL),
(13, 8, 2, 'Như một cách tạ ơn đời', 'Người thầy', 'Ánh nắng cuối ngày rồi cũng sẽ tắt, dòng sông con đò rồi cũng sẽ rẽ sang một hướng khác. Nhưng việc trồng người luôn cảm thụ với chuyến đò ngang, cứ tần tảo đưa rồi lặng lẽ quay về đưa sang. Con đò năm xưa của Thầy nặng trĩu yêu thương, hy sinh thầm lặng.', NULL, '2014-01-02 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tacgia`
--

CREATE TABLE `tacgia` (
  `ma_tgia` int(11) NOT NULL,
  `Tai_khoan` varchar(10) NOT NULL,
  `ten_tgia` varchar(100) NOT NULL,
  `hinh_tgia` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tacgia`
--

INSERT INTO `tacgia` (`ma_tgia`, `Tai_khoan`, `ten_tgia`, `hinh_tgia`) VALUES
(1, '', 'Nhacvietplus', NULL),
(2, '', 'Sưu tầm', NULL),
(3, '', 'Sandy', NULL),
(4, '', 'Lê Trung Ngân', NULL),
(5, '', 'Khánh Ngọc', NULL),
(6, '', 'Night Stalker', NULL),
(7, '', 'Phạm Phương Anh', NULL),
(8, '', 'Tâm tình', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `theloai`
--

CREATE TABLE `theloai` (
  `ma_tloai` int(11) NOT NULL,
  `ten_tloai` varchar(50) NOT NULL,
  `SLBaiViet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `theloai`
--

INSERT INTO `theloai` (`ma_tloai`, `ten_tloai`, `SLBaiViet`) VALUES
(1, 'Nhạc trẻ', 0),
(2, 'Nhạc trữ tình', 0),
(3, 'Nhạc cách mạng', 0),
(4, 'Nhạc thiếu nhi', 0),
(5, 'Nhạc quê hương', 0),
(6, 'POP', 0),
(7, 'Rock', 0),
(8, 'R&B', 0);

--
-- Bẫy `theloai`
--
DELIMITER $$
CREATE TRIGGER `tg_CapNhatTheLoai` AFTER UPDATE ON `theloai` FOR EACH ROW INSERT INTO baiviet
 SET action = 'update',
     SLBaiViet = OLD.SLBaiViet,
     changedat = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `Tai_khoan` varchar(10) NOT NULL,
  `Mat_khau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`Tai_khoan`, `Mat_khau`) VALUES
('012', 'hieu'),
('123', 'thien'),
('234', 'canh');

-- --------------------------------------------------------

--
-- Cấu trúc đóng vai cho view `vw_music`
-- (See below for the actual view)
--
CREATE TABLE `vw_music` (
`tieude` varchar(200)
,`ten_tloai` varchar(50)
,`ten_tgia` varchar(100)
);

-- --------------------------------------------------------

--
-- Cấu trúc cho view `vw_music`
--
DROP TABLE IF EXISTS `vw_music`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_music`  AS SELECT `baiviet`.`tieude` AS `tieude`, `theloai`.`ten_tloai` AS `ten_tloai`, `tacgia`.`ten_tgia` AS `ten_tgia` FROM ((`baiviet` join `theloai` on(`baiviet`.`ma_tloai` = `theloai`.`ma_tloai`)) join `tacgia` on(`baiviet`.`ma_tgia` = `tacgia`.`ma_tgia`))  ;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD PRIMARY KEY (`ma_bviet`),
  ADD KEY `ma_tgia` (`ma_tgia`),
  ADD KEY `ma_tloai` (`ma_tloai`);

--
-- Chỉ mục cho bảng `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`ma_tgia`);

--
-- Chỉ mục cho bảng `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`ma_tloai`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Tai_khoan`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `baiviet`
--
ALTER TABLE `baiviet`
  ADD CONSTRAINT `baiviet_ibfk_1` FOREIGN KEY (`ma_tgia`) REFERENCES `tacgia` (`ma_tgia`),
  ADD CONSTRAINT `baiviet_ibfk_2` FOREIGN KEY (`ma_tloai`) REFERENCES `theloai` (`ma_tloai`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
#a.Liệt kê các bài viết về các bài hát thuộc thể loại Nhạc trữ tình
SELECT ten_bhat, ten_tloai FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai WHERE ten_tloai = "Nhạc trữ tình";

#b.Liệt kê các bài viết của tác giả “Nhacvietplus”
SELECT *FROM baiviet WHERE ma_tgia = (SELECT ma_tgia FROM tacgia WHERE ten_tgia = "Nhacvietplus");

#c. Liệt kê các thể loại nhạc chưa có bài viết cảm nhận nào. 
SELECT ten_tloai FROM theloai WHERE ma_tloai NOT IN (SELECT ma_tloai FROM baiviet);

#d. Liệt kê các bài viết với các thông tin sau: mã bài viết, tên bài viết, tên bài hát, tên tác giả, tên thể loại, ngày viết.
SELECT ma_bviet, tieude, ten_bhat, ten_tgia, ten_tloai, ngayviet FROM baiviet, tacgia, theloai WHERE baiviet.ma_tgia = tacgia.ma_tgia AND theloai.ma_tloai = baiviet.ma_tloai;

#e. Tìm thể loại có số bài viết nhiều nhất 
SELECT COUNT(ten_tloai), ten_tloai FROM theloai INNER JOIN baiviet ON theloai.ma_tloai = baiviet.ma_tloai WHERE ten_tloai = (SELECT MAX(ten_tloai) FROM theloai);

#f. Liệt kê 2 tác giả có số bài viết nhiều nhất   
SELECT tacgia.ten_tgia, COUNT(baiviet.ma_bviet) AS so_baiviet FROM tacgia JOIN baiviet ON tacgia.ma_tgia = baiviet.ma_tgia GROUP BY tacgia.ma_tgia ORDER BY so_baiviet DESC LIMIT 2;

#g. Liệt kê các bài viết về các bài hát có tựa bài hát chứa 1 trong các từ “yêu”, “thương”, “anh”,“em” 
SELECT ten_bhat FROM baiviet WHERE (ten_bhat LIKE '%yêu%') OR (ten_bhat LIKE '%thương%') OR (ten_bhat LIKE '%anh%') OR (ten_bhat LIKE '%em%');

#h. Liệt kê các bài viết về các bài hát có tiêu đề bài viết hoặc tựa bài hát chứa 1 trong các từ “yêu”, “thương”, “anh”, “em”
SELECT ten_bhat, tieude FROM baiviet WHERE (tieude LIKE '%yêu%') OR (tieude LIKE '%thương%') OR (tieude LIKE '%anh%') OR (tieude LIKE '%em%') OR (ten_bhat LIKE '%yêu%') OR (ten_bhat LIKE '%thương%') OR (ten_bhat LIKE '%anh%') OR (ten_bhat LIKE '%em%');

#i. Tạo 1 view có tên vw_Music để hiển thị thông tin về Danh sách các bài viết kèm theo Tên thể loại và tên tác giả.
CREATE VIEW vw_Music AS SELECT baiviet.*, theloai.ten_tloai, tacgia.ten_tgia FROM baiviet INNER JOIN theloai ON baiviet.ma_tloai = theloai.ma_tloai INNER JOIN tacgia ON baiviet.ma_tgia = tacgia.ma_tgia;

#j.  Tạo 1 thủ tục có tên sp_DSBaiViet với tham số truyền vào là Tên thể loại và trả về danh sách Bài viết của thể loại đó. Nếu thể loại không tồn tại thì hiển thị thông báo lỗi.
DELIMITER //

CREATE PROCEDURE sp_DSBaiViet(IN ten_tloai VARCHAR(50))
BEGIN
    -- Kiểm tra xem thể loại có tồn tại không
    IF NOT EXISTS(SELECT 1 FROM theloai tl WHERE tl.ten_tloai = ten_tloai) THEN
        SELECT 'Không tìm thấy thể loại' AS message;
    END IF;
    
    -- Nếu tồn tại thì truy vấn danh sách bài viết của thể loại đó
    SELECT bv.*, tl.ten_tloai
    FROM baiviet bv
    JOIN theloai tl ON bv.ma_tloai = tl.ma_tloai
    WHERE tl.ten_tloai = ten_tloai;
END //

DELIMITER ;

#k.  Tạo 1 thủ tục có tên sp_DSBaiViet với tham số truyền vào là Tên thể loại và trả về danh sách Bài viết của thể loại đó. Nếu thể loại không tồn tại thì hiển thị thông báo lỗi.

#tạo trigger
DELIMITER $$
CREATE TRIGGER `tg_SuaBaiViet` AFTER UPDATE ON `baiviet` FOR EACH ROW BEGIN
		UPDATE theloai
    	SET SLBaiViet = (SELECT COUNT(*) FROM baiviet WHERE ma_tloai = NEW.ma_tloai)
    	WHERE ma_tloai = NEW.ma_tloai;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tg_ThemHBaiViet` AFTER INSERT ON `baiviet` FOR EACH ROW BEGIN
		UPDATE theloai
    	SET SLBaiViet = (SELECT COUNT(*) FROM baiviet WHERE ma_tloai = NEW.ma_tloai)
    	WHERE ma_tloai = NEW.ma_tloai;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tg_XoaBaiViet` AFTER DELETE ON `baiviet` FOR EACH ROW BEGIN
		UPDATE theloai
        SET SLBaiViet = (SELECT COUNT(*) FROM baiviet WHERE ma_tloai = OLD.ma_tloai)
        WHERE ma_tloai = OLD.ma_tloai;
END
$$
DELIMITER ;
