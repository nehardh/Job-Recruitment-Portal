<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Jobs</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>

<%@ include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@ include file="all_components/navbar.jsp"%>
	<div class="container p-2">
		<div class="col-md-10 offset-md-1">
			<div class="card">
				<div class="card-body">
					<div class="text-center text-success">
						<i class="fa fa-user-friends fa-3x" aria-hidden="true"></i>
						<c:if test="${not empty succMsg }">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if>
						<h5>Add Jobs</h5>
					</div>

					<form action="add_job" method="post">
						<div class="form-group">
							<label>Job Title</label> <input type="text"
								name="title" required="required"
								class="form-control">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option selected>Select a Location</option>
									<option value="Hyderabad">Hyderabad</option>
									<option value="Chennai">Chennai</option>
									<option value="Bangalore">Bangalore</option>
									<option value="Goa">Goa</option>
									<option value="Kochi">Kochi</option>
									<option value="Mumbai">Mumbai</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Category</label> <select class="custom-select"
									id="inlineFormCustomSelectPref" name="Category">
									<option selected>Select a Category</option>
									<option value="Sde">Software Dev</option>
									<option value="Cloud">Cloud Engineer</option>
									<option value="Security_analyst">Security Analyst</option>
									<option value="DevOp_engg">DevOp Engineer</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="Status">
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"></textarea>
						</div>
						<button type="submit" class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>

<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Post Jobs</title>
    <link rel="stylesheet" href="all_components/all_css.jsp">
</head>
<body>
    <%@ include file="all_components/navbar.jsp"%>
    
    <div class="container">
        <h2>Add New Job</h2>
        <form action="add_job" method="post">
            <div class="form-group">
                <label for="title">Job Title</label>
                <input type="text" name="title" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="location">Location</label>
                <input type="text" name="location" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="category">Category</label>
                <input type="text" name="category" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="status">Status</label>
                <input type="text" name="status" class="form-control" required>
            </div>
            <div class="form-group">
                <label for="description">Job Description</label>
                <textarea name="description" class="form-control" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Post Job</button>
        </form>
    </div>
    
    <%@ include file="all_components/footer.jsp"%>
</body>
</html>
 --%>