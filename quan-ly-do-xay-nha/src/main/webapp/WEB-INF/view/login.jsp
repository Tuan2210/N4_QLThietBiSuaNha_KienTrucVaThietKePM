<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>

<title>Đăng nhập</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

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
						<a href="/quan-ly-do-xay-nha/"><img
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
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container-fluid bg-white">
			<div class="row">
				<div class="col-7">
					<img src="/quan-ly-do-xay-nha/resources/image/background1.jpg"
						class="float-start">
				</div>
				<div id="form_dangnhap" class="col-4">
					<form:form action="${pageContext.request.contextPath }/users"
						method="POST" class="form-horizontal">

						<div class="header mt-5 text-center">
							<h2>Đăng nhập</h2>
						</div>
						<div class="form-group">
							<div class="col-xs-15">
								<div>

									<!-- Check for login error -->

									<c:if test="${param.error != null}">

										<div class="alert alert-danger col-xs-offset-1 col-xs-10">
											Tên đăng nhập/ Mật khẩu không được để trống!</div>

									</c:if>

									<!-- Check for logout -->

									<c:if test="${param.logout != null}">

										<div class="alert alert-success col-xs-offset-1 col-xs-10">
											Bạn đã đăng xuất thành công!</div>

									</c:if>

								</div>
							</div>
						</div>
						<div>
							<div class="row">
								<div class="col-4 mt-2">
									<label for="tenTaiKhoan" class="form-label"><strong>Tên
											đăng nhập</strong></label>
								</div>
								<div class="col-8">
									<input type="text" class="form-control" id="tenDangNhap"
										name="username" placeholder="Tên đăng nhập">
								</div>
							</div>
							<div class="row mt-2">
								<div class="col-4 mt-2">
									<label for="matKhau" class="form-label"><strong>Mật
											khẩu</strong></label>
								</div>
								<div class="col-8">
									<input type="password" class="form-control" id="matKhau"
										name="password" placeholder="Vui lòng nhập mật khẩu">
								</div>
							</div>

							<div class="row mt-2">

								<div class="col-12">
									<label for="quenMatKhau" class="" style="margin-left: 30px;"><a
										class="text-muted" href="http:// "
										style="text-decoration: none">Quên mật khẩu?</a></label> <label
										for="quenMatKhau" class="float-end"><a
										class="text-dark" href="RegisterPage"
										style="text-decoration: none"><strong>Chưa có
												tài khoản? Đăng kí ngay!</strong></a></label>
								</div>
							</div>

							<div class="row m-4">
								<button type="submit" value="Login"
									class="btn btn-info btn-lg text-white">
									<strong>Đăng nhập</strong>
								</button>
							</div>

						</div>
					</form:form>
				</div>
			</div>
			<div class="footer">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
				<div id="title" style="margin-top: 4%;">
					<div id="line-left"></div>
					<h4>KẾT NỐI VỚI CHÚNG TÔI</h4>
					<div id="line-right"></div>
				</div>

				<div id="top_footer" class="row">
					<a href="${pageContext.request.contextPath}/" class="col-3"><img
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