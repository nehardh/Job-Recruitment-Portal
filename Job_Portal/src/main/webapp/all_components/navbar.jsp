<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<nav class="navbar navbar-expand-lg navbar-dark bg-custom">
	<a class="navbar-brand" href="index.jsp">HireHub</a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active pr-1"><a class="nav-link" href="index.jsp"><i class="fa-solid fa-house"></i>&nbsp;Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item active pr-1"><a class="nav-link" href="add_job.jsp"><i class="fa-regular fa-plus"></i>&nbsp;Post</a>
			</li>
			<li class="nav-item active pr-1"><a class="nav-link" href="view_job.jsp"><i class="fa-regular fa-eye"></i>&nbsp;View</a>
			</li>
			<li class="nav-item active pr-1"><a class="nav-link" href="#"><i class="fa-solid fa-users"></i>&nbsp;About</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<a href="login.jsp" class="btn btn-light my-2 my-sm-0"><i class="fas fa-sign-in-alt"></i>&nbsp;LogIn</a>
			<hr>
			<a href="signup.jsp" class="btn btn-light my-2 my-sm-0"><i class="fas fa-user"></i>&nbsp;SignUp</a>
		</form>
	</div>
</nav>