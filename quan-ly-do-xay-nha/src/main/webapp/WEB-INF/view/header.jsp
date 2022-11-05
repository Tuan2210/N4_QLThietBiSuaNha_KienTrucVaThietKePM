<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Header</title>


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

<!--icon font awesome-->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/all.min.css">


<script src="/quan-ly-do-xay-nha/resources/js/home.js"></script>

<!-- Auto complete  -->
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
	
<style type="text/css">
#logout,#config {
	display: none;
}
<security:authorize access="hasAnyRole('EMPLOYEE','MANAGER', 'ADMIN')">
			#logout{display: inline-block;}
			#btnUser{display: none;}
</security:authorize>


<security:authorize access="hasAnyRole('ADMIN')">
			#config{display: inline-block;}
</security:authorize>
</style>
</head>

<body>
	<div class="container">
		<!--header-->
		<div class="header">
			<div id="navbar" class="row">
				<div>
					<div class="img_logo">
						<a href="${pageContext.request.contextPath}/"><img
							style="width: 20%;"
							src="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png"
							alt="logo"></a>
					</div>
					
					<!-- ten dang nhap -->
					<div id="tenLogin">
						<security:authorize access="hasAnyRole('EMPLOYEE','MANAGER', 'ADMIN')">
							<h6><label>Xin chào,&nbsp;</label><security:authentication property="principal.username" />!</h6>
						</security:authorize>
					</div>

					<p>Sản phẩm</p>

					<div id="form_chucnang">
						<!--thanh tìm kiếm-->
						<form id="form_search" method="get" class="d-flex">
							<input type="search" class="form-control" id="txtTim"
								placeholder="Tìm kiếm">
							<button id="btnSearch" type="submit"
								onclick="handleSearchProduct()">
								<img src="/quan-ly-do-xay-nha/resources/image/icon_kinhlup.png"
									alt="">
							</button>
						</form>


						<!--user-->
						<form id="user" method="get" class="d-flex"
							action="${pageContext.request.contextPath}/LoginPage">
							<!-- <i class="fa-solid fa-user fa-xl"></i> -->
							<button id="btnUser">
								<img src="/quan-ly-do-xay-nha/resources/image/icon_user.png"
									alt="icon_user">
							</button>
						</form>
						
						<!-- log out -->
						<div id="logout">
							<form:form action="${pageContext.request.contextPath}/logout"
								method="POST">

								<button type="submit">
									<img style="width: 30px; height: 30px; margin-top: 2px"
										src="https://img.icons8.com/external-tanah-basah-glyph-tanah-basah/48/000000/external-exit-essentials-tanah-basah-glyph-tanah-basah-2.png" />
								</button>

							</form:form>
						</div>

						<!--cart:giỏ hàng-->
						<form id="cart" method="get" class="d-flex"
							action="${pageContext.request.contextPath}/cart">
							<button id="btnCart">
								<img src="/quan-ly-do-xay-nha/resources/image/icon_giohang.png"
									alt="icon_cart">
							</button>
						</form>
						
						<div id="config">
							<form:form action="${pageContext.request.contextPath}/config"
								method="get">

								<button type="submit">
									<img style="width: 30px; height: 30px; margin-top: 2px"
										src="https://img.icons8.com/material-rounded/24/000000/automatic.png" />
								</button>

							</form:form>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function handleSearchProduct() {
			var action_src = "${pageContext.request.contextPath}/listProduct/"
					+ document.getElementById("txtTim").value;
			var your_form = document.getElementById('form_search');
			your_form.action = action_src;
		}
	</script>

</body>

</html>