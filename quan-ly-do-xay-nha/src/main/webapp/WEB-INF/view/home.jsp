<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

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

</head>

<body>
	<div class="container">
		<!--header-->
		<div class="content bg-white mb-3">
			<jsp:include page="header.jsp" />
		</div>

		<!--content-->
		<div id="content">
			<!--imgtop-->
			<div id="imgTop">
				<img src="/quan-ly-do-xay-nha/resources/image/image 8.png"
					alt="img_header">
			</div>

			<!--slider-->
			<div id="title">
				<div id="line-left"></div>
				<h4>CÁC LOẠI SẢN PHẨM</h4>
				<div id="line-right"></div>
			</div>
			<div id="slider" class="owl-carousel owl-theme">
				<c:forEach var="product" items="${productSlider}">
					<div>
						<a	href="${pageContext.request.contextPath}/listProduct/info/${product.id}">
							<img src="${pageContext.request.contextPath}/resources/${product.link}" alt="${product.title}">
						</a>
					</div>
				</c:forEach>
				
				<a href="#slider" style="width: 75px;"></a>
			</div>

			<!--list sp bán chạy-->
			<div id="title" style="margin-top: 4%;">
				<div id="line-left"></div>
				<h4>SẢN PHẨM BÁN CHẠY</h4>
				<div id="line-right"></div>
			</div>
			
			<!-- list 12 sp -->
			<div id="frm-twelve-sp" class="row">
				<c:forEach var="product" items="${twelveProducts}">
					<figure align="center" class="img-thumbnail border" class="col-4">
						<a href="${pageContext.request.contextPath}/listProduct/info/${product.id}">
							<img class="rounded w-100" height="250"
								src="${pageContext.request.contextPath}/resources/${product.link}"
								alt="picmcs">
							<figcaption>
								<h6 class="text-justify"
									style="font-weight: bold; margin-top: 20px">
									<p id="productTitle">${product.title}</p>
									<p style="color: red;">${product.price}</p>
								</h6>
							</figcaption>
						</a>
					</figure>
				</c:forEach>

				<!--nút mở rộng-->
				<div id="morong" class="row">
					<button id="btnMoRong">
						<h4>MỞ RỘNG</h4>
					</button>
				</div>
			</div>
			
			<!-- list all sp -->
			<div id="frm-list-sp" class="row">
				<c:forEach var="product" items="${products}">
					<figure align="center" class="img-thumbnail border" class="col-4">
						<a href="${pageContext.request.contextPath}/listProduct/info/${product.id}">
							<img class="rounded w-100" height="250"
								src="${pageContext.request.contextPath}/resources/${product.link}"
								alt="picmcs">
							<figcaption>
								<h6 class="text-justify"
									style="font-weight: bold; margin-top: 20px">
									<p id="productTitle">${product.title}</p>
									<p style="color: red;">${product.price}</p>
								</h6>
							</figcaption>
						</a>
					</figure>
				</c:forEach>

				<!--nút thu gon-->
				<div id="thugon" class="row">
					<button id="btnThuGon">
						<h4>THU GỌN</h4>
					</button>
				</div>
			</div>

			<!--imgbottom-->
			<div id="imgBottom">
				<img src="/quan-ly-do-xay-nha/resources/image/image 34.png"
					alt="img_header">
			</div>
		</div>

		<!--nút trở về đầu trang-->
		<div id="backTop">
			<i class="fa-solid fa-arrow-up-long fa-xl" title="Trở về đầu trang"></i>
		</div>

		<!--footer-->
		<div class="content bg-white mt-3">
			<jsp:include page="footer.jsp" />
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"></script>
	<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			//slider
			$('.owl-carousel').owlCarousel({
				loop : true,
				margin : 3,
				autoWidth : true,
				nav : true,
				shadow : true,
				items : 6
			});
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
			
			//mở rộng - thu gọn
			$('#frm-list-sp').hide();
        	$('#btnMoRong').click(function() {
        		$('#frm-twelve-sp').hide();
         	   	$('#frm-list-sp').show();
       		});
       		$('#btnThuGon').click(function() {
        	    $('#frm-list-sp').hide();
        	    $('#frm-twelve-sp').show();
       		});
			
			//click mouse figure
			/* var figures = document.querySelectorAll('figure')
			for(let figure of figures){
				figure.addEventListner("click", function() {
					
				})
			} */
			
			/* $('figure').click(function(event) {
				var text_product = $(event.target).text();
				alert(text_product);
				
				//source : "${pageContext.request.contextPath}/listProduct/" +text_product
			
				var action = "${pageContext.request.contextPath}/listProduct/" + text_product;
							
			}) */
		});
		
	</script>

	<!-- auto complete -->
	<script type="text/javascript">
		$(function() {
			$("#txtTim").autocomplete({
				source : "${pageContext.request.contextPath}/search"
			});
		});
	</script>
</body>

</html>