<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang chủ</title>

<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<!-- link hover animation: https://css-tricks.com/css-hover-effects-background-masks-3d/ -->

<link rel="stylesheet" href="/resources/css/home.css">

</head>
<body>
	<div class="container-fluid">
        <!-- header -->
        <div>
			<jsp:include page="header.jsp" />
		</div>
        <div class="content">
            <ol>
                <li>
                    <img src="https://img.icons8.com/external-kiranshastry-gradient-kiranshastry/60/null/external-user-interface-kiranshastry-gradient-kiranshastry.png" />
                    <a href="${pageContext.request.contextPath}/api/users">Quản lý người dùng</a>
                </li>
                <li>
                    <img src="https://img.icons8.com/external-kiranshastry-gradient-kiranshastry/64/null/external-tools-construction-and-tools-kiranshastry-gradient-kiranshastry.png" />
                    <a href="${pageContext.request.contextPath}/api/products">Quản lý sản phẩm</a>
                </li>
                <li>
                    <img src="https://img.icons8.com/external-kiranshastry-gradient-kiranshastry/60/null/external-user-interface-kiranshastry-gradient-kiranshastry-1.png" />
                    <a href="${pageContext.request.contextPath}/api/customers">Quản lý khách hàng</a>
                </li>
            </ol>
        </div>
    </div>
    

    <!--Optional JavaScript-->
    <!--jQuery first, then Popper.js, then Bootstrap JS-->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>