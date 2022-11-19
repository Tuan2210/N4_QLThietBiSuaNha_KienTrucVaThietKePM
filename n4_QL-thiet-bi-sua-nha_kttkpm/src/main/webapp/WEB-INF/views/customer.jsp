<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quản lý khách hàng</title>

<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet" href="/resources/css/customer.css">

</head>
<body>
	<div class="container-fluid">
        <!-- header -->
        <div>
			<jsp:include page="header.jsp" />
		</div>
        <div class="content">
        	<a href="/home" class="btnBackToHome">Trở về trang chủ</a>
            <div style="display: flex; align-items: center; flex-direction: column;">
                <a href="${pageContext.request.contextPath}/api/add-customer" class="btn btn-primary text-center btnAdd">Thêm Khách Hàng</a>
				<table border="1" class="table table-bordered">
					<tr class="align-middle text-center">
						<th style="width: 80px;">Mã khách hàng</th>
						<th>Tên khách hàng</th>
						<th>Số điện thoại</th>
						<th>Giới tính</th>
						<th style="width: 80px;">Mã người dùng</th>
						<th style="width: 80px;">Hành động</th>
					</tr>
					<c:forEach var="customer" items="${objCustomers}">
						<tr>
							<td class="align-middle text-center">${customer.idCus}</td>
							<td class="align-middle">${customer.cusName}</td>
							<td class="align-middle text-center">${customer.phone}</td>
							<td class="align-middle text-justify">${customer.sex}</td>
							<td class="align-middle text-center">${customer.idUser}</td>
							<td class="align-middle text-center">
								<a href="${pageContext.request.contextPath}/api/handleDeleteCustomer/${customer.idCus}" class="btn btn-danger align-items-center">Xóa</a>
								<a href="${pageContext.request.contextPath}/api/update-customer" class="btn btn-secondary">Cập nhật</a>
							</td>
						</tr>
					</c:forEach>
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