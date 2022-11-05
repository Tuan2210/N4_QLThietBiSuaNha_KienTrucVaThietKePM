<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thêm sản phẩm</title>

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
</head>
<body>
	<div class="container">
		<!--header-->
		<div class="content bg-white mb-3">
			<jsp:include page="header.jsp" />
		</div>
		<form:form
			action="${pageContext.request.contextPath}/config/handleProduct"
			method="get" modelAttribute="product" enctype="multipart/form-data">
			<div class="m-5">
				<!-- modal add -->

				<div class="nav nav-tabs bg-dark" role="tablist">
					<p class="nav-item text-white" style="margin: 0 auto">Form thêm
						sản phẩm</p>
				</div>
				<div class="form-input">
					<input type="text" id="tensp" class="form-control mt-5"
						placeholder="Nhập tên sản phẩm" name="title"> <input
						type="text" id="gia" class="form-control mt-5"
						placeholder="Nhập giá" name="price"><br> <br> <input
						type="file" id="anh" name="link" accept="image/*">
					<textarea type="text" id="mota" class="form-control mt-5"
						placeholder="Nhập mô tả" name="description"></textarea>
				</div>
				<div class="btndangnhap text-center">
					<button id="btnAdd" class="btn btn-dark mt-5 mb-5" type="submit">
						Thêm <span data-dismiss="modal"&times;></span>
					</button>

				</div>
			</div>
		</form:form>





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