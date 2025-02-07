<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<%@ include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="all_components/navbar.jsp" %>
	<div class="container-fluid">
		<div class="row p-4">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>User Registration</h5>
						</div>
						<%-- <c:if test="${not empty succMsg }">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> --%>
						<form action="register" method="post">
							<div class="form-group">
								<label>Full Name</label> <input type="text"
									required="required" class="form-control" id="exampleInputEmail"
									aria-descibeby="emailHelp" name="em">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail">Qualification</label> <input
									type="password" required="required" class="form-control"
									id="exampleInputEmail" name="emailHelp">
							</div>
							<div class="form-group">
								<label>Email</label> <input type="email"
									required="required" class="form-control" id="exampleInputEmail"
									aria-descibeby="emailHelp" name="em">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" required="required" class="form-control"
									id="exampleInputPassword1" name="ps">
							</div>
							
							<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>