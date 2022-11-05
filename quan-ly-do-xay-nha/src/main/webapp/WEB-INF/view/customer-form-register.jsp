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
<script src="/quan-ly-do-xay-nha/resources/js/regex.js"></script>

<style type="text/css">
.text-danger {
	margin-left: 35%;
}
</style>
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
				<div class="col-8">
					<div class="row">
						<img src="/quan-ly-do-xay-nha/resources/image/image 2.png">
					</div>
					<div class="row">
						<img src="/quan-ly-do-xay-nha/resources/image/image 7.png">
					</div>
				</div>
				<div id="form_dangki" class="col-4">
					<form:form
						action="${pageContext.request.contextPath}/register/processRegistrationForm"
						modelAttribute="crmUser" class="form-horizontal">
						<div class="header mt-1 text-center">
							<h2>Đăng ký</h2>
						</div>
						<div>
							<!--Tên tài khoản-->
							<div class="row">
								<div class="col-4">
									<label for="tenTaiKhoan" class="form-label"><strong>Tên
											tài khoản</strong></label>
								</div>
								<div class="col-8 mb-2">
									<input type="text" class="form-control" name="userName"
										id="userName" placeholder="Tên đăng nhập">
								</div>
								<span id="tenTkDK" class="text-danger">*</span>
							</div>
							<!--Họ và tên-->
							<div class="row">
								<div class="col-4">
									<label for="hoTen" class="form-label"><strong>Họ
											và tên</strong></label>
								</div>
								<div class="col-8">
									<input id="fullName" type="text" class="form-control"
										name="ten" placeholder="Tên của bạn">
								</div>
								<span id="hoTenDK" class="text-danger">*</span>
							</div>
							<!--Email-->
							<div class="row mt-4">
								<div class="col-4">
									<label for="email" class="form-label"><strong>Email</strong></label>
								</div>
								<div class="col-8">
									<input id="email" type="email" class="form-control"
										name="email" placeholder="Email">
								</div>
								<span id="emailDK" class="text-danger">*</span>
							</div>
							<!--Điện thoại-->
							<div class="row mt-4">
								<div class="col-4">
									<label for="dienThoai" class="form-label"><strong>Số
											điện thoại</strong></label>
								</div>
								<div class="col-8">
									<input type="tel" class="form-control" name="sdt"
										id="dienThoai" placeholder="Số điện thoại">
								</div>
								<span id="sdtDK" class="text-danger">*</span>
							</div>
							<!--Mật khẩu-->
							<div class="row mt-4">
								<div class="col-4">
									<label for="matKhau" class="form-label"><strong>Mật
											khẩu</strong></label>
								</div>
								<div class="col-8">
									<input id="passWord" type="password" class="form-control"
										name="password" placeholder="Vui lòng nhập mật khẩu">
								</div>
								<span id="mkDK" class="text-danger">*</span>
							</div>
							<!--Xác nhận mật khẩu-->
							<!-- <div class="row mt-4">
								<div class="col-4 mt-2">
									<label for="reMatKhau" style="margin-left: -15% class="form-label"><strong>Nhập
											lại mật khẩu</strong></label>
								</div>
								<div class="col-8">
									<input id="re-enterPwDK" type="password" path="password" class="form-control"
										name="password" placeholder="Xác nhận mật khẩu">
								</div>
								<span id="checkRePass" class="text-danger">*</span>
							</div> -->
							<!-- radio nam/nu -->
							<div class="row">
								<div class="col-4">
									<label for="gioiTinh" class="form-label"><strong>Giới
											tính</strong></label>
								</div>
								<div class="col-8 mt-2">
									<input type="radio" class="form-check-input" id="gioiTinh1"
										name="gioiTinh" value="Nam" checked="checked"><strong>
										Nam </strong> <input type="radio" class="form-check-input"
										id="gioiTinh2" name="gioiTinh" value="Nữ"><strong>
										Nữ</strong>
								</div>

							</div>
							<div class="row mt-4">
								<div class="form-check">
									<input type="checkbox" class="form-check-input" id="security"
										checked="checked">Tôi đồng ý với các điều kiện,
									điều khoản và chính sách bảo mật.
								</div>
								<!-- <div class="form-check mt-2">
									<input type="checkbox" class="form-check-input" id="news">Tôi
									muốn nhận bản tin/ thông báo mới nhất.
								</div> -->
							</div>
							<div class="row mt-2">
								<div class="col-4 mt-2"></div>
								<div class="col-8">
									<label for="quenMatKhau" class="float-end"><a
										class="text-dark" style="text-decoration: none"
										href="LoginPage"><strong>Đã có tài khoản?
												Đăng nhập ngay!</strong></a></label>
								</div>
							</div>
							<div class="row m-4">
								<button type="submit" class="btn btn-info btn-lg text-white"
									onclick="handleRegister()">
									<strong>Đăng ký</strong>
								</button>
							</div>
						</div>
					</form:form>
				</div>
			</div>
			<div class="footer">
				<div id="title" style="margin-top: 4%;">
					<div id="line-left"></div>
					<h4>KẾT NỐI VỚI CHÚNG TÔI</h4>
					<div id="line-right"></div>
				</div>

				<div id="top_footer" class="row">
					<a href="/quan-ly-do-xay-nha/" class="col-3"><img
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

	<!-- <script type="text/javascript">
    function matchpass() {
        var firstpassword = document.form_dangki.password.value;
        var secondpassword = document.form_dangki.password2.value;
 
        if (secondpassword == firstpassword) {
            return true;
        } else {
            alert("Mật khẩu phải giống nhau!");
            return false;
        }
    }
	</script> -->
</body>

</html>










