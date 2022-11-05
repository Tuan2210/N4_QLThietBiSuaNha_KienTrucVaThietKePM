<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Trang chủ</title>

<!--bootstrap5-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!--font chữ-->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@200&display=swap"
	rel="stylesheet">

<!--slideshow-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/assets/owl.carousel.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/assets/owl.theme.default.min.css">



<!--icon font awesome-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/all.min.css">

<link rel="stylesheet" href="/quan-ly-do-xay-nha/resources/css/home.css">

<script src="/quan-ly-do-xay-nha/resources/js/home.js"></script>

<link rel="icon"
	href="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
	type="image/x-icon" />

<style>
.row { -
	-bs-gutter-x: 0 !important;
}
</style>
</head>
<body>
	<div class="container">
		<!--header-->
		<div class="content bg-white mb-3">
			<jsp:include page="header.jsp" />
		</div>

		<div class="content  mt-3">
			<h1>Thống kê doanh thu</h1>
			<form:form action="${pageContext.request.contextPath}/config/thongke/statistical"
				method="get" class="row">
				<select name="year" class="col-3 form-select me-4" aria-label="Default select example"
					style="width: 250px;">
					<option value = "0">Thống kê theo năm</option>
					<%
					for (int i = 2019; i <= java.time.LocalDate.now().getYear(); i += 1) {
					%>
					<option value=<%=i%>><%=i%></option>
					<%
					}
					%>
				</select> <select name="month" class="col-3 form-select me-4" aria-label="Default select example"
					style="width: 250px;">
					<option value = "0">Thống kê theo tháng</option>
					<%
					for (int i = 1; i <= 12; i += 1) {
					%>
					<option value=<%=i%>>Tháng
						<%=i%></option>
					<%
					}
					%>
				</select> <select name="day" class="col-3 form-select me-4" aria-label="Default select example"
					style="width: 250px;">
					<option value = "0">Thống kê theo ngày</option>
					<%
					for (int i = 1; i <= 31; i += 1) {
					%>
					<option value=<%=i%>>
						<%=i%>
					</option>
					<%
					}
					%>
				</select>
				<button type="submit" class="col-2 btn btn-success">
					Lọc kết quả
				</button>
			</form:form>
		</div>

		<div id="content_cart" class="gh bg-white mt-3" style="width: 101%;">
			<h1 class="text-center" style="padding-top: 6px;">
				<b>GIỎ HÀNG</b>
			</h1>
			<div class="row">
				<div class="col col-md-12">
					<table class="table table-bordered">
						<thead>
							<tr style="text-align: center;">
								<th>STT</th>
								<th>Tên khách hàng</th>
								<th>Ngày mua</th>
								<th>Thành tiền</th>
							</tr>
						</thead>
						<c:forEach var="cart" items="${carts}" varStatus="loop">
							<tbody id="datarow">
								<tr style="text-align: center;">
									<td>${loop.index + 1}</td>
									<td>${cart.customer.ten}</td>
									<td>${cart.ngayLap}</td>
									<td>${cart.thanhTien}</td>
									</td>
								</tr>
							</tbody>
						</c:forEach>
						<tbody id="datarow">
							<tr style="text-align: center;">
								<td></td>
								<td></td>
								<td><b>Tổng doanh thu</b></td>
								<td>${total}</td>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<a href="../HTML/index.html" class="btn btn-warning btn-md"><i
					class="fa fa-arrow-left" aria-hidden="true"></i>&nbsp;Quay về trang
					chủ</a>
			</div>
		</div>

		<!--footer-->
		<div class="content row bg-white mt-3">
			<jsp:include page="footer.jsp" />
		</div>

		<!--nút trở về đầu trang-->
		<div id="backTop">
			<i class="fa-solid fa-arrow-up-long fa-xl" title="Trở về đầu trang"></i>
		</div>
	</div>
</body>
</html>