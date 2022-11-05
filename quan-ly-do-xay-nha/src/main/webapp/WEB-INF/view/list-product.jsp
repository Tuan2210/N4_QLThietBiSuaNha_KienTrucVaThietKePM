<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tag" uri="/WEB-INF/taglibs/customTaglib.tld"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>danh sách sản phẩm</title>


<!--bootstrap5-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>

<!--font chữ-->
<link rel="preconnect" href="https://fonts.googleapis.com" />
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
<link
	href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@400;700&display=swap"
	rel="stylesheet" />
<!--icon font awesome-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/all.min.css" />

<!-- css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/list_products.css" />

<!-- script -->
<script src="${pageContext.request.contextPath}/resources/js/home.js"
	async></script>

<link rel="icon"
	href="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
	type="image/x-icon" />

</head>
<body>
	<div class="container">
		<!--header-->
		<div class="content bg-white mb-3">
			<jsp:include page="header.jsp" />
		</div>

		<!-- content -->
		<div class="content row mt-5 mb-5">
			<!-- left-navbar -->
			<div class="left-navbar col-md-3 d-flex flex-column gap-2">
				<div class="left-navbar-item">
					<h5 class="text-center">Danh mục loại sản phẩm</h5>
					<div class="d-flex flex-column gap-1">
						<a class="text-dark text-decoration-none" href="#">khoan 1</a> <a
							class="text-dark text-decoration-none" href="#">khoan 2</a> <a
							class="text-dark text-decoration-none" href="#">khoan 3</a>
					</div>
				</div>

				<div class="left-navbar-item">
					<h5 class="text-center">Dịch vụ</h5>
					<div class="d-flex flex-column gap-1">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="cboGiaoHangSieuToc" /> <label class="form-check-label"
								for="cboGiaoHangSieuToc"> Giao hàng siêu tốc </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="cboGiaoHangNhanh" checked /> <label
								class="form-check-label" for="cboGiaoHangNhanh"> Giao
								hàng thường </label>
						</div>
					</div>
				</div>

				<div class="left-navbar-item">
					<h5 class="text-center">Giá</h5>
					<div class="d-flex flex-column gap-1">
						<span class="text-black-50">Chọn khoảng giá</span>

						<form>
							<div class="row justify-content-between">
								<div class="col-5">
									<input type="text" class="form-control" id="minPrice" value="0" />
								</div>
								<div class="col align-content-center">
									<span>-</span>
								</div>
								<div class="col-5">
									<input type="text" class="form-control" id="maxPrice" value="0" />
								</div>
							</div>

							<button type="submit" class="btn btn-primary m-3">Áp
								dụng</button>
						</form>
					</div>
				</div>
				<div class="left-navbar-item">
					<h5 class="text-center">Nơi bán</h5>
					<div class="d-flex flex-column gap-1">
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="cboGiaoHangSieuToc" /> <label class="form-check-label"
								for="cboGiaoHangSieuToc"> Hồ chí Minh </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="cboGiaoHangNhanh" checked /> <label
								class="form-check-label" for="cboGiaoHangNhanh"> Hà nội
							</label>
						</div>
					</div>
				</div>
			</div>
			<!-- list product -->
			<div class="col-md bg-white p-4">
				<h4 class="text-center text-uppercase">${title}</h4>
				<div
					class="list-product d-flex flex-row flex-wrap justify-content-evenly p-5 mt-3">
					<c:forEach var="product" items="${products}">
						<div class="list-product-item flex-fill mt-3">
							<a class="text-center text-decoration-none"
								href="${pageContext.request.contextPath}/listProduct/info/${product.id}">
								<div>
									<div class="thumbnail pt-4">
										<img
											src="${pageContext.request.contextPath}/resources/${product.link}"
											alt="${product.title}" width="233" height="252" />
									</div>
									<div class="info">
										<h6 class="product-name text-dark p-2 m-0">${product.title}</h6>
										<span class="product-price text-danger">${product.price}</span>
									</div>
								</div>
							</a>
						</div>
					</c:forEach>
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
