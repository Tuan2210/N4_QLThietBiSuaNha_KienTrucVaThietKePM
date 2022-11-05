<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer</title>

    <!--bootstrap5-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <!--font chữ-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro:wght@200&display=swap" rel="stylesheet">

    <!--slideshow-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/assets/owl.theme.default.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery.min.js@3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/owl.carousel@2.3.4/dist/owl.carousel.min.js"></script>

    <!--icon font awesome-->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.1/css/all.min.css">

    <link rel="stylesheet" href="/quan-ly-do-xay-nha/resources/css/home.css">

    <script src="/quan-ly-do-xay-nha/resources/js/home.js"></script>
</head>

<body>
	<!--footer-->
	<div id="title">
	    <div id="line-left"></div>
	    <h4>KẾT NỐI VỚI CHÚNG TÔI</h4>
	    <div id="line-right"></div>
	</div>
	
	<div id="top_footer" class="row">
	    <a href="${pageContext.request.contextPath}/" class="col-3"><img style="width: 100%; margin-left: 15px;" src="/quan-ly-do-xay-nha/resources/image/logo_size_1-removebg-preview.png" alt="logo"></a>
	    <p class="col-4" style="width: 68%;">Tại đây, chúng tôi cung cấp cho bạn đầy đủ về các công cụ, vật dụng sửa chữa nhà cửa tiện tích và tuyệt vời. Tất cả đều sẵn sàng cho bạn lựa chọn!</p>
		<p class="col-4" style="margin-left: 27%; margin-top: -4%;">&#169; 2022 TEAM13</p>
	</div>
	
	<div id="bottom_footer" class="row">
	    <div id="info" class="col-8">
	        <b>Địa chỉ: </b>12 Nguyễn Văn Bảo, P.4, Q.Gò Vấp, TP.Hồ Chí Minh <br>
	        <b>Hotline: </b>0944302210 <br>
	        <b>Email: </b>team13@gmail.com <br>
	    </div>
	    <div id="clock" class="col-4" style="color: darkorange; font-size: 18px;">
	        <script>
	            refreshClock();
	        </script>
	        <!-- ngày giờ -->
	    </div>
	</div>
</body>

</html>