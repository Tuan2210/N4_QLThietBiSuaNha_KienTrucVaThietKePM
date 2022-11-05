<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản lý sản phẩm</title>

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

<!-- modal js -->
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/poper-2.9.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

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

.row { -
	-bs-gutter-x: 0 !important;
}

/* nav */
#main-nav {
	margin-top: 15px;
	background-color: black;
	box-shadow: 0px 0px 1px black;
	position: sticky;
	height: 45px;
	z-index: 1;
	top: 0;
}

#main-nav .nav {
	width: 100%;
	float: left;
}

#main-nav li a {
	font-size: 20px;
	border-left: 1px solid white;
}

#main-nav>ul>li:hover>a {
	color: cyan !important;
}

#main-nav li:hover .dropdown-menu {
	display: block;
	top: 43px;
	padding: 0px 1px 1px 1px;
	border: 1px double gray;
}

#main-nav .dropdown-item:hover {
	color: cyan;
	background-color: black;
}

.sub-menu {
	width: 10%;
	float: left;
	display: none;
}

.sub-menu img {
	width: 30px;
	height: 30px;
	margin: 8px 0 5px 10px;
	background-color: black;
	border: none;
	float: left;
}

.sub-menu label {
	margin-bottom: 0 !important;
}

@media ( max-width :800px) {
	#main-nav>.nav {
		display: none;
	}
	.sub-menu {
		display: block;
	}
}
</style>
</head>
<body>
	<div class="container">
		<!--header-->
		<div class="content bg-white mb-3">
			<jsp:include page="header.jsp" />
		</div>

		<!-- navigation -->

		<div id="main-nav">
			<ul class="nav row">
				<li class="nav-item col-6 text-center">
					<div class="sub-bar"></div> <a
					href="${pageContext.request.contextPath}/config/thongke"
					class="nav-link text-white "><img
						src="${pageContext.request.contextPath}/resources/image/bar-chart-5-24.png" />
						Thống kê</a>
				</li>
				<li class="nav-item dropdown col-6 text-center"><a
					href="${pageContext.request.contextPath}/config"
					class="nav-link text-white"><img
						src="https://img.icons8.com/glyph-neue/32/ffffff/manager.png" />
						Quản lý sản phẩm</a> <!-- <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">1</a>
                            <a href="#" class="dropdown-item">2</a>
                            <a href="#" class="dropdown-item">3</a>
                        </div> --></li>
			</ul>
		</div>

		<!-- giỏ hàng -->
		<div id="content_cart" class="gh bg-white">
			<h1 class="text-center" style="padding-top: 6px;">
				<b>QUẢN LÝ SẢN PHẨM</b>
			</h1>
			<div class="text-center m-3">
				<a id="btnAddPrd" data-sp-ma="2"
					class="btn btn-warning btn-delete-sanpham text-white"
					href="${pageContext.request.contextPath}/config/createProduct"><i
					class="fa-solid fa-circle-plus"></i>Thêm sản phẩm </a>
			</div>

			<div class="row">
				<div class="col col-md-12">
					<table class="table table-bordered">
						<thead>
							<tr style="text-align: center;">
								<th style="width: 78.47px;">Mã sản phẩm</th>
								<th style="width: 100px;">Ảnh sản phẩm</th>
								<th style="width: 450px;">Tên sản phẩm</th>
								<th style="width: 200px;">Đơn giá</th>
								<th style="width: 100px;">Tình trạng</th>
								<th>Hành động</th>
							</tr>
						</thead>
						<tbody id="datarow">

							<c:forEach var="product" items="${products}" varStatus="loop">
								<tr style="text-align: center;">
									<td>${product.id}</td>
									<td><img
										src="${pageContext.request.contextPath}/resources/${product.link}"
										class="hinhdaidien" style="width: 75%;"></td>
									<td>${product.title}</td>
									<td>${product.price}</td>
									<td><c:choose>
											<c:when test="${product.status}">
        									Còn bán
    									</c:when>
											<c:otherwise>
        									Ngừng bán 
								    	</c:otherwise>
										</c:choose></td>
									<td><c:choose>
											<c:when test="${product.status}">
												<a id="delete_1" data-sp-ma="2"
													class="btn btn-danger btn-delete-sanpham"
													href="${pageContext.request.contextPath}/config/updateStatusNgungBan/${product.id}">
													<i class="fa fa-trash" aria-hidden="true"></i> <b>Ngừng
														bán</b>

												</a>
											</c:when>
											<c:otherwise>
												<a id="delete_1" data-sp-ma="2"
													class="btn btn-success btn-delete-sanpham"
													href="${pageContext.request.contextPath}/config/updateStatusConBan/${product.id}">
													<i class="fa-solid fa-circle-check"></i> <b> Bán</b>

												</a>
											</c:otherwise>
										</c:choose> <a id="delete_1" data-sp-ma="2"
										class="btn btn-primary btn-delete-sanpham"
										href="${pageContext.request.contextPath}/config/updateProduct/${product.id}">
											<i class="fa-solid fa-rotate"></i> <b>Cập nhật</b>

									</a></td>
								</tr>
							</c:forEach>



						</tbody>
					</table>
				</div>
				<tag:paginate max="15" offset="${offset}" count="${count}"
					uri="${requestScope['javax.servlet.forward.request_uri']}"
					next="&raquo;" previous="&laquo;" />
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


	</script>
</body>
</html>