<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm</title>

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
		
		<!-- content -->
        <div class="content">
        	<a href="/home" class="btnBackToHome">Trở về trang chủ</a>
            <p class="text-center"><b>Nhập thông tin để thêm</b></p>
            <div style="width: 100%;">
                <form action="/" method="POST" class="col-3 was-validated" enctype="multipart/form-data" style="margin: 0 auto;" novalidate>
                    <input type="text" name="" placeholder="Nhập tên sản phẩm" id="" class="form-control" required>
                    </br>
                    <input type="text" name="" placeholder="Nhập giá" id="" class="form-control" required>
                    </br>
                    <textarea style="height: 80px;" name="" placeholder="Nhập mô tả" id="" class="form-control" required></textarea>
                    </br>
                    <input type="file" name="" placeholder="Tải ảnh lên" id="" required>
                    </br>
                    <input type="submit" value="Thêm" class="btn-info" style="padding: 8px; margin-top: 5%; border-radius: 8px;">
                </form>
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