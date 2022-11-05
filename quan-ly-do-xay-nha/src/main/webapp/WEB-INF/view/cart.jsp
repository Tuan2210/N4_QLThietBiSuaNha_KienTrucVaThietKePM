<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ hàng</title>

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
<script
	src="https://cdn.jsdelivr.net/npm/jquery.min.js@3.5.1/jquery.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"></script>

<!--icon font awesome-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/all.min.css">

<script src="${pageContext.request.contextPath}/resources/js/home.js"></script>


<link rel="icon"
	href="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
	type="image/x-icon" />

<style type="text/css">
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 15% auto; /* 15% from the top and centered */
	padding: 20px;
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* The Close Button */
.close {
	color: #aaa;
	float: right;
	font-size: 28px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: black;
	text-decoration: none;
	cursor: pointer;
}

.row {
	--bs-gutter-x: 0 !important;
}

</style>
</head>
<body>
	<div class="container">
		<!--header-->
		<div class="content bg-white mb-3">
			<jsp:include page="header.jsp" />
		</div>

		<!-- giỏ hàng -->
		<div id="content_cart" class="gh bg-white">
			<h1 class="text-center" style="padding-top: 6px;">
				<b>GIỎ HÀNG</b>
			</h1>
			<div class="row">
				<div class="col col-md-12">
					<table class="table table-bordered">
						<thead>
							<tr style="text-align: center;">
								<th style="width: 78.47px;">STT</th>
								<th style="width: 300px;">Ảnh sản phẩm</th>
								<th style="width: 250px;">Tên sản phẩm</th>
								<th style="width: 100px;">Số lượng</th>
								<th style="width: 200px;">Đơn giá</th>
								<th style="width: 200px;">Thành tiền</th>
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody id="datarow">

							<c:forEach var="detail" items="${listDetail}" varStatus="loop">
								<tr style="text-align: center;">
									<td>${loop.index + 1}</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/${detail.product.link}"
										class="hinhdaidien" style="width: 75%;"></td>
									<td>${detail.product.title}</td>
									<td>${detail.soLuong}</td>
									<td>${detail.product.price}</td>
									<td>${detail.gia}</td>
									<td>
										<!-- Nút xóa, bấm vào sẽ xóa thông tin dựa vào khóa chính `sp_ma` -->
										<a id="delete_1" data-sp-ma="2"
										class="btn btn-danger btn-delete-sanpham"
										href="${pageContext.request.contextPath}/delete/productId=${detail.product.id}/orderId=${detail.cart.id}">
											<i class="fa fa-trash" aria-hidden="true"></i> <b>Xóa</b>
									</a>
									</td>
								</tr>
							</c:forEach>

							<tfoot style="text-align: center;"><tr>
								<th></th>
								<th></th>
								<th></th>

								<th></th>
								<th>Tổng tiền:</th>
								<th>${cart.thanhTien}</th>
								<th><form
										action="${pageContext.request.contextPath}/cart/payment"
										method="get">
										<button type="submit" id="btnThanhToan" class="btn btn-info ">
											<b>Thanh Toán</b>
										</button>
									</form></th>
							</tr>
						</tfoot>

						</tbody>
					</table>
				</div>
				<a href="${pageContext.request.contextPath}/"
					class="btn btn-warning btn-md"><i class="fa fa-arrow-left"
					aria-hidden="true"></i>&nbsp;Quay về trang chủ</a>
			</div>
		</div>
		
		<!--footer-->
		<div class="content bg-white mt-3">
			<jsp:include page="footer.jsp" />
		</div>
		
		<!--nút trở về đầu trang-->
		<div id="backTop">
			<i class="fa-solid fa-arrow-up-long fa-xl" title="Trở về đầu trang"></i>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>

	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>


	<script type="text/javascript">

	$(document).ready(function() {
		//nút trở về đầu trang
		$(window).scroll(function() {
			if ($(this).scrollTop()) {
				$('#backTop').fadeIn();
			} else {
				$('#backTop').fadeOut();
			}
		});
		$("#backTop").click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 100); //100 là 0.1s
		}); 
	})
		<!-- auto complete -->
		$(function() {

			$("#txtTim").autocomplete({
				source : "${pageContext.request.contextPath}/search"
			});
		})
		

		// Get the button that opens the modal
		var btn = document.getElementById("btnThanhToan");


		// When the user clicks on the button, open the modal
		btn.onclick = function() {
			alert("Bạn đã thanh toán thành công");
		}


	</script>
</body>
</html>