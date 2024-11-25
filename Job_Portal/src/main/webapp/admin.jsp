<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="all_components/all_css.jsp"%>
<style type="text/css">
.back-img {
	background: url("images/admin1.avif");
	width: 100%;
	height: 90vh;
	background-repeat: repeat;
	background-size: fill;
}
</style>
</head>
<body>
	<%@ include file="all_components/navbar.jsp"%>
	<div class="container-fluid back-img">
		<div class="text-center">
			<h1 class="text p-4">Welcome to Admin Page</h1>
		</div>
	</div>
</body>
</html>