<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý sản phẩm</title>

<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet" href="/resources/css/product.css">

</head>
<body>
	<div class="container-fluid">
        <!-- header -->
        <div>
			<jsp:include page="header.jsp" />
		</div>
        <div class="content">
        	<a href="/home" class="btnBackToHome">Trở về trang chủ</a>
        	
            <!-- <h1>sản phẩm</h1> -->
            
            <div>
                <a href="" class="btn btn-primary btnAdd">Thêm sản phẩm</a>
                <table border="1" class="table table-bordered">
                    <tr>
                        <th class="align-middle text-center" style="width: 80px;">Mã sản phẩm</th>
                        <th class="align-middle text-center" style="width: 300px;">Tên sản phẩm</th>
                        <th class="align-middle text-center">Hình ảnh</th>
                        <th class="align-middle text-center" style="width: 450px;">Chi tiết sản phẩm</th>
                        <th class="align-middle text-center">Giá</th>
                        <th class="align-middle text-center">
                            <input type="submit" value="Xóa" class="btn btn-danger align-items-center">
                        </th>
                        <th class="align-middle text-center"></th>
                    </tr>
                    <tr>
                        <td class="align-middle text-center">
                            1
                        </td>
                        <td class="align-middle text-center">
                            Bộ tua vít đa năng sửa chữa điện thoại 25 in 1 vít từ tính chất liệu cao cấp S2
                        </td>
                        <td class="align-middle text-center" text-center>
                            ...
                        </td>
                        <td class="align-middle text-center" text-center>
                            Chất liệu: thép nhậu khẩu HRC 60, hộp kim nhôm Nặng: 300g Kích thước: 168 x 67 x 17 mm. Đầu vít: 24 đầu, gồm có 4 lớp. Màu sắc: xám.
                        </td>
                        <td class="align-middle text-center" text-center>
                            64.900 ₫
                        </td>
                        <td class="align-middle text-center">
                            <div class="row justify-content-center">
                                <input type="checkbox" name="">
                            </div>
                        </td>
                        <td class="align-middle text-center" text-center>
                            <a href="" class="btn btn-secondary">Sửa</a>
                        </td>
                    </tr>
                </table>
            </div>
        </div>
    </div>
    

    <!--Optional JavaScript-->
    <!--jQuery first, then Popper.js, then Bootstrap JS-->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>