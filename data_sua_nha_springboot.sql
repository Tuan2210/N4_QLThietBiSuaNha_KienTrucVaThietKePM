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
    Link nvarchar(50) NOT NULL,
	StatusPrd varchar(4) NOT NULL,
    PRIMARY KEY (IdPrd)
);
INSERT INTO product VALUES (NULL, N'Bộ tua vít đa năng sửa chữa điện thoại 25 in 1 vít từ tính chất liệu cao cấp S2', N'64,900 ₫', N'Chất liệu: thép nhậu khẩu HRC 60, hộp kim nhôm
Nặng: 300g
Kích thước: 168 x 67 x 17 mm.
Đầu vít: 24 đầu, gồm có 4 lớp.
Màu sắc: xám.', N'images/botuavitdanang.PNG', N'true');
INSERT INTO product VALUES (NULL, N'Dụng Cụ Lấy Dấu, Định Vị Điểm Khoan - Chống Trượt', N'29,000 ₫', N'Dụng cụ đục lỗ, định vị điểm khoan là dụng cụ cầm tay giúp bạn dễ dàng đánh dấu trên các vật liệu sắt, gỗ, nhựa  với lực đẩy của lò xo cùng đầu mũi nhọn.
Thiết bị định vị được làm bằng ĐỒNG NGUYÊN CHẤT cùng lớp mạ màu vàng đẹp mắt, tránh việc gỉ cũng như đảm bảo độ bền của dụng cụ đục lỗ.
Việc sử dụng thiết bị đánh dấu điểm khoan là vô cùng đơn giản. Bạn chỉ cần xác định điểm cần đánh dấu. Sau đó, để đầu nhọn của thiết bị vào vị trí cần đánh dấu. 
Dùng tay ấn thiết bị định vị xuống và nhấc lên.
Kết quả: chúng ta có điểm đánh dấu mà không tốn nhiều sức.', N'images/dungcudinhvi.jpg', N'true');
INSERT INTO product VALUES (NULL, N'Bút thử nước TDS, dụng cụ đo TDS, máy đo độ cứng của nước - Hàng chính hãng', N'150,000 ₫', N'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, 
tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', N'images/butthunuoc.jpg', N'true');
INSERT INTO product VALUES (NULL, N'Xe đẩy hàng 4 bánh SUMIKA T300 - Khung thép, tay cầm gấp mở tiện lợi, tải trọng 300kg', N'490,000 ₫', N'Xe đẩy hàng SUMIKA T300 với khung xe được làm bằng thép siêu bền có độ bền cao, không bị biến dạng khi va đập mạnh và 
có thể chịu được tải trọng lên đến 300kg. Tay cầm của xe có độ cao phù hợp với người Việt Nam nên người dùng không phải cúi khom người khi đẩy (người cao 1m4 - 1m8 đều có thể dùng được), không gây đau lưng khi sử dụng lâu dài.', N'images/xedayhang.jpg', N'true');
INSERT INTO product VALUES (NULL, N'Găng tay bảo hộ lao động Jogger Superpro - Bao tay lao động chống dầu nhớt, trơn trượt, độ linh hoạt cao - Chính hãng', N'11,000 ₫', N'GĂNG TAY CHỐNG DẦU JOGGER SUPERPRO 2121 - GĂNG TAY BẢO HỘ LAO ĐỘNG ĐA NĂNG
Được nhập khẩu và phân phối chính thức bởi Xsafe. Đảm bảo sự linh hoạt khi thao tác cả với các chi tiết, vật dụng nhỏ và khả năng kháng dầu. Có thể giặt rửa bình thường (không sử dụng chất tẩy rửa mạnh). Bảo quản tránh sương, môi trường băng giá và ánh nắng mặt trời.', N'images/gangtay.jpeg', N'true');
INSERT INTO product VALUES (NULL, N'Máy khoan vặn vít dùng in Bosch GSR 120-LI (1 pin, 1 sạc)', N'1,665,000 ₫', N'Thân máy làm từ nhựa chất liệu cao cấp, cứng chắn, sản xuất theo tiêu chuẩn châu Âu đảm bảo độ bền. Máy có hai chế độ: khoan và bắt vít với 20 cấp trượt. 
Máy có chế độ dừng thông minh: Tự động dừng máy trong trường hợp vít đã vặn hết vào vật liệu, ngay cả khi vẫn giữ nút khởi động giúp bảo vệ vật liệu không bị vặn vít quá đà.', N'images/maykhoan.png', N'true');


