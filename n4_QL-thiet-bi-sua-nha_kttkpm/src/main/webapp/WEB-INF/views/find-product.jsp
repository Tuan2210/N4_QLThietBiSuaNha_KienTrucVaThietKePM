<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tìm kiếm sản phẩm</title>

<!--Bootstrap CSS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">

<link rel="stylesheet" href="/resources/css/product.css">
<style type="text/css">
	.btnBack {
		text-decoration: none;
		background-color: black;
		border: 2px solid cyan;
		border-radius: 10px;
		color: cyan;
		display: inline-block;
		font-size: 1em;
		padding: 8px;
		transition: 0.35s;
	}

	.btnBack:hover {
		text-decoration: none;
		background-color: white;
		color: black;
	}
</style>

</head>
<body>
	<div class="container-fluid">
        <!-- header -->
        <div>
			<jsp:include page="header.jsp" />
		</div>
		
		<!-- content -->
        <div class="content">
        	<a href="${pageContext.request.contextPath}/api/products" class="btnBack">Trở về</a>
            <div style="display: flex; align-items: center; flex-direction: column;">
            	<div class="d-flex align-items-center justify-content-center" style="margin-bottom: 10px;">
                    <%-- <form:form
                    	action="${pageContext.request.contextPath}/api/handleFindProduct" method="get" modelAttribute="product"
                		class="was-validated d-flex flex-row" enctype="multipart/form-data" novalidate="novalidate">
		                    <input type="text" name="idPrd" placeholder="Nhập mã sp cần tìm">
		                    <input type="submit" value="Tìm kiếm" class="btn-info" style="margin-left: 10px;">
                    </form:form> --%>
                    <form id="form_search" method="get" class="d-flex">
						<input type="search" class="form-control" id="txtTim" placeholder="Nhập mã sp cần tìm">
						<button id="btnSearch" type="submit" onclick="handleSearchProduct()" class="btn btn-info">Tìm kiếm</button>
					</form>
                </div>
				<table border="1" class="table table-bordered">
					<tr class="align-middle text-center">
						<th class="align-middle" style="width: 80px;">Mã sản phẩm</th>
						<th class="align-middle">Tên sản phẩm</th>
						<th class="align-middle">Hình ảnh</th>
						<th class="align-middle">Mô tả sản phẩm</th>
						<th class="align-middle" style="width: 120px;">Giá</th>
						<th class="align-middle" style="width: 180px;"></th>
					</tr>
					<c:forEach var="findPrd" items="${findProduct}">
						<tr>
							<td class="align-middle text-center">${findPrd.idPrd}</td>
							<td class="align-middle">${findPrd.title}</td>
							<td class="align-middle text-center" style="width: 200px; height: 200px;">
								<img alt="" src="/resources/${findPrd.link}" class="align-middle" width="200" height="200">
							</td>
							<td class="align-middle text-justify">${findPrd.describeDetails}</td>
							<td class="align-middle text-center">${findPrd.price}</td>
							<%-- <td class="align-middle text-center">
								<a href="${pageContext.request.contextPath}/api/handleDeleteProduct/${product.idPrd}" class="btn btn-danger align-items-center">Xóa</a>
								<a href="${pageContext.request.contextPath}/api/update-product" class="btn btn-secondary">Cập nhật</a>
							</td> --%>
							<%-- <td class="align-middle text-center"><a href="${pageContext.request.contextPath}/api/update-product" class="btn btn-secondary">Cập nhật</a></td> --%>
						</tr>
					</c:forEach>
				</table>
			</div>
        </div>
    </div>
    
    <script type="text/javascript">
		function handleSearchProduct() {
			var action_src = "${pageContext.request.contextPath}/api/handleFindProduct/"
							 + document.getElementById("txtTim").value;
			var your_form = document.getElementById('form_search');
			your_form.action = action_src;
		}
	</script>
    

    <!--Optional JavaScript-->
    <!--jQuery first, then Popper.js, then Bootstrap JS-->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>