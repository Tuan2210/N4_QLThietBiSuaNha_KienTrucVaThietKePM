<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<title>Đăng ký</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/add-customer-style.css">
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

<link rel="stylesheet" href="/quan-ly-do-xay-nha/resources/css/home.css">

<link rel="icon"
	href="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
	type="image/x-icon" />

<script src="/quan-ly-do-xay-nha/resources/js/home.js"></script>
</head>
<body>
	<div class="container">
		<!--header-->
		<div class="header">
			<div id="navbar" class="row">
				<div>
					<div class="img_logo">
						<a href="./home_after_signup_signin.html"><img
							style="width: 20%;"
							src="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
							alt="logo"></a>
					</div>

					<p>Sản phẩm</p>

					<div id="form_chucnang">
						<!--thanh tìm kiếm-->
						<input type="search" class="form-control" id="txtTim"
							placeholder="Tìm kiếm">
						<button type="submit">
							<img src="/quan-ly-do-xay-nha/resources/image/icon_kinhlup.png"
								alt="">
						</button>

						<!--cart:giỏ hàng-->
						<div id="cart">
							<button id="btnCart">
								<img src="/quan-ly-do-xay-nha/resources/image/icon_giohang.png"
									alt="icon_cart">
							</button>
							<!-- <span id="soluong" class="text-white">0</span> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid bg-white">
			<div class="row">
				<div class="col-8">
					<div class="row">
						<img src="/quan-ly-do-xay-nha/resources/image/image 2.png">
					</div>
					<div class="row">
						<img src="/quan-ly-do-xay-nha/resources/image/image 7.png">
					</div>
				</div>
				<div id="form_dangki" class="col-4">
					<div id="form_dangnhap" class=" mt-5">

						<div class="header mt-3 text-center mt-5">
							<h2>Bạn đã đăng ký thành công!</h2>
						</div>
						<div class="text-center">
							<h4>
								<a href="/quan-ly-do-xay-nha/LoginPage"
									style="text-decoration: none">Đăng nhập</a>
							</h4>
							<br>
							<!-- <h4>
								<a href="/quan-ly-do-xay-nha/" style="text-decoration: none">Quay
									lại trang chủ</a>
							</h4> -->
						</div>

					</div>
				</div>
				<div class="footer">
					<div id="title" style="margin-top: 4%;">
						<div id="line-left"></div>
						<h4>KẾT NỐI VỚI CHÚNG TÔI</h4>
						<div id="line-right"></div>
					</div>

					<div id="top_footer" class="row">
						<a href="./home_before_signup_signin.html" class="col-3"><img
							style="width: 100%; margin-left: 15px;"
							src="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
							alt="logo"></a>
						<p class="col-8">Tại đây, chúng tôi cung cấp cho bạn đầy đủ về
							các công cụ, vật dụng sữa chữa nhà cửa tiện tích và tuyệt vời.
							Tất cả đều sẵn sàng cho bạn lựa chọn!</p>
					</div>
					<div id="bottom_footer" class="row">
						<div id="info" class="col-8">
							<b>Địa chỉ: </b>12 Nguyễn Văn Bảo, P.4, Gò Vấp, TP.Hồ Chí Minh <br>
							<b>Hotline: </b>0944302210 <br> <b>Email: </b>team13@gmail.com
							<br>
						</div>
						<div id="clock" class="col-4"
							style="color: darkorange; font-size: 18px;">
							<script>
								refreshClock();
							</script>
							<!-- ngày giờ -->
						</div>
					</div>
					<div
						style="background-color: #e3e8f8; color: darkblue; width: 926px;">
					</div>
				</div>
			</div>
		</div>
		<!--cart:giỏ hàng-->
		<div id="cart">
			<button id="btnCart">
				<img src="/quan-ly-do-xay-nha/resources/image/icon_giohang.png"
					alt="icon_cart">
			</button>
		</div>
	</div>
	</div>
	</div>
	</div>
	<div class="container-fluid bg-white">
		<div class="row">
			<div class="col-8">
				<div class="row">
					<img src="/quan-ly-do-xay-nha/resources/image/image 2.png">
				</div>
				<div class="row">
					<img src="/quan-ly-do-xay-nha/resources/image/image 7.png">
				</div>
			</div>
			<div id="form_dangki" class="col-4">
				<div id="form_dangnhap" class=" mt-5">

					<div class="header mt-3 text-center mt-5">
						<h2>Bạn đã đăng ký thành công!</h2>
					</div>
					<div class="text-center">
						<h4>
							<a href="/quan-ly-do-xay-nha/LoginPage"
								style="text-decoration: none">Đăng nhập</a>
						</h4>
						<br>
						<!-- <h4><a href="/quan-ly-do-xay-nha/" style="text-decoration: none">Quay lại trang chủ</a></h4> -->
					</div>

				</div>
			</div>
			<div class="footer">
				<div id="title" style="margin-top: 4%;">
					<div id="line-left"></div>
					<h4>KẾT NỐI VỚI CHÚNG TÔI</h4>
					<div id="line-right"></div>
				</div>

				<div id="top_footer" class="row">
					<a href="./home_before_signup_signin.html" class="col-3"><img
						style="width: 100%; margin-left: 15px;"
						src="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
						alt="logo"></a>
					<p class="col-8">Tại đây, chúng tôi cung cấp cho bạn đầy đủ về
						các công cụ, vật dụng sữa chữa nhà cửa tiện tích và tuyệt vời. Tất
						cả đều sẵn sàng cho bạn lựa chọn!</p>
				</div>
				<div id="bottom_footer" class="row">
					<div id="info" class="col-8">
						<b>Địa chỉ: </b>12 Nguyễn Văn Bảo, P.4, Gò Vấp, TP.Hồ Chí Minh <br>
						<b>Hotline: </b>0944302210 <br> <b>Email: </b>team13@gmail.com
						<br>
					</div>
					<div id="clock" class="col-4"
						style="color: darkorange; font-size: 18px;">
						<script>
							refreshClock();
						</script>
						<!-- ngày giờ -->
					</div>
				</div>
				<div
					style="background-color: #e3e8f8; color: darkblue; width: 926px;">
				</div>
			</div>
		</div>
	</div>
</body>

</html>

