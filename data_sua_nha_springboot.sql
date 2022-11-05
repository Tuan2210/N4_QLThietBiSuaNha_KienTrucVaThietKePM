DROP SCHEMA IF EXISTS data_sua_nha_kttkpm_db;
CREATE SCHEMA data_sua_nha_kttkpm_db;

USE data_sua_nha_kttkpm_db;

DROP TABLE IF EXISTS authority;
CREATE TABLE authority(
	UserName varchar(50) NOT NULL,
	Authority varchar(50) NULL
);
INSERT INTO authority VALUES ('Huy', 'admin');
INSERT INTO authority VALUES ('Tuấn', 'employee');
INSERT INTO authority VALUES ('Hiếu', 'employee');

DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
	IdCus int NOT NULL auto_increment,
	CusName nvarchar(50) NOT NULL,
	Phone char(11) NOT NULL,
	Sex nvarchar(5) NOT NULL,
	-- Username varchar(50) NOT NULL,
    IdUser int NOT NULL,
    PRIMARY KEY (IdCus)
);
INSERT INTO customer VALUES (NULL, 'Hải', '0912345678', 'Nam', 4);

DROP TABLE IF EXISTS user;
CREATE TABLE user (
	IdUser int NOT NULL auto_increment,
	UserName varchar(50) NOT NULL,
	PassWord varchar(68) NOT NULL,
    PRIMARY KEY (IdUser)
);
INSERT INTO user VALUES (NULL, 'ghuy', '123456');
INSERT INTO user VALUES (NULL, 'qtuan', 'tuan123');
INSERT INTO user VALUES (NULL, 'thieu', '123456');
INSERT INTO user VALUES (NULL, 'hai', 'hai123');

DROP TABLE IF EXISTS product;
CREATE TABLE product (
	IdPrd int NOT NULL auto_increment,
	Title nvarchar(300) NOT NULL,
	Price nvarchar(30) NOT NULL,
	DescribeDetails nvarchar(3278) NOT NULL,
	StatusPrd varchar(4) NOT NULL,
    PRIMARY KEY (IdPrd)
);
INSERT INTO product VALUES (NULL, N'Bộ tua vít đa năng sửa chữa điện thoại 25 in 1 vít từ tính chất liệu cao cấp S2', N'64.900 ₫', N'Chất liệu: thép nhậu khẩu HRC 60, hộp kim nhôm
Nặng: 300g
Kích thước: 168 x 67 x 17 mm.
Đầu vít: 24 đầu, gồm có 4 lớp.
Màu sắc: xám.', N'true');
INSERT INTO product VALUES (NULL, N'Dụng Cụ Lấy Dấu, Định Vị Điểm Khoan - Chống Trượt', N'29.000 ₫', N'Dụng cụ đục lỗ, định vị điểm khoan là dụng cụ cầm tay giúp bạn dễ dàng đánh dấu trên các vật liệu sắt, gỗ, nhựa  với lực đẩy của lò xo cùng đầu mũi nhọn.
Thiết bị định vị được làm bằng ĐỒNG NGUYÊN CHẤT cùng lớp mạ màu vàng đẹp mắt, tránh việc gỉ cũng như đảm bảo độ bền của dụng cụ đục lỗ.
Việc sử dụng thiết bị đánh dấu điểm khoan là vô cùng đơn giản. Bạn chỉ cần xác định điểm cần đánh dấu. Sau đó, để đầu nhọn của thiết bị vào vị trí cần đánh dấu. 
Dùng tay ấn thiết bị định vị xuống và nhấc lên.
Kết quả: chúng ta có điểm đánh dấu mà không tốn nhiều sức.', N'true');
INSERT INTO product VALUES (NULL, N'Bút thử nước TDS, dụng cụ đo TDS, máy đo độ cứng của nước - Hàng chính hãng', N'150.000 ₫', N'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', N'true');