<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page
	import="java.util.List, com.DB.DBConnect, com.dao.jobDAO, com.entity.Jobs"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Jobs</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

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

						<%
						int id = Integer.parseInt(request.getParameter("id"));
						jobDAO dao = new jobDAO(DBConnect.getConn());
						Jobs j = dao.getJobById(id);
						%>
						<h5>Edit Jobs</h5>
					</div>

					<form action="update" method="post">
						<input type="hidden" value="<%=j.getId() %>" name="id">
						<div class="form-group">
							<label>Job Title</label> <input type="text" name="title"
								required="required" class="form-control" value="<%=j.getTitle() %>">
						</div>
						<div class="form-row">
							<div class="form-group col-md-4">
								<label>Location</label> <select name="location"
									class="custom-select" id="inlineFormCustomSelectPref">
									<option value="<%= j.getLocation()%>"><%=j.getLocation() %></option>
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
									<option value="<%=j.getCategory() %>"><%=j.getCategory() %></option>
									<option value="Sde">Software Dev</option>
									<option value="Cloud">Cloud Engineer</option>
									<option value="Security_analyst">Security Analyst</option>
									<option value="DevOp_engg">DevOp Engineer</option>
								</select>
							</div>
							<div class="form-group col-md-4">
								<label>Status</label> <select class="form-control" name="Status">
								<option class="Active" value="<%=j.getStatus() %>"><%=j.getStatus() %></option>
									<option class="Active" value="Active">Active</option>
									<option class="Inactive" value="Inactive">Inactive</option>
								</select>
							</div>
						</div>

						<div class="form-group">
							<label>Enter Description</label>
							<textarea required rows="6" cols="" name="desc"
								class="form-control"><%=j.getDescription() %></textarea>
						</div>
						<button type="submit" class="btn btn-success">Publish Job</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
