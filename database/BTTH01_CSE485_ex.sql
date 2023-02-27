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
-- l
CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
)